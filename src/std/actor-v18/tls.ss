;;; -*- Gerbil -*-
;;; © vyzo
;;; actor TLS utilities
(import :gerbil/gambit/os
        :std/iter
        :std/net/ssl/libssl
        :std/misc/template
        :std/misc/process
        :std/misc/ports
        ./path)
(export ensemble-tls-base-path
        ensemble-tls-server-path
        ensemble-tls-ca-certificates-file-path
        get-actor-tls-context
        actor-tls-certificate-id
        actor-tls-certificate-cap
        actor-tls-host
        generate-actor-tls-root-ca!
        generate-actor-tls-sub-ca!
        generate-actor-tls-cert!
        )
(def (current-time-seconds)
  (inexact->exact (floor (time->seconds (current-time)))))

(def (ensemble-tls-base-path)
  (path-expand "tls" (ensemble-base-path)))

(def (ensemble-tls-server-path server-id)
  (path-expand "tls" (ensemble-server-path server-id)))

(def (ensemble-tls-ca-certificates-file-path)
  (path-expand "ca.pem" (ensemble-tls-base-path)))

(def (get-actor-tls-context server-id)
  (let* ((ca.pem (ensemble-tls-ca-certificates-file-path))
         (server-base (ensemble-tls-server-path server-id))
         (server.crt (path-expand "server.crt" server-base))
         (server.key (path-expand "server.key" server-base)))
    (and (andmap file-exists? [ca.pem server-base server.crt server.key])
         (make-actor-tls-context ca.pem server.crt server.key))))

(def (actor-tls-certificate-id x509)
  (let (name (X509_get_text_by_NID x509 NID_commonName))
    (and name
         (car (string-split name #\.)))))

(def (actor-tls-certificate-cap x509)
  (let (altname (X509_get_text_by_NID x509 NID_subject_alt_name))
    (and altname
         (filter-map (lambda (x)
                       (and (string-prefix? "URI:cap:" x)
                            (string->symbol
                             (substring x (string-length "URI:cap:") (string-length x)))))
                     (string-split altname #\,)))))

(def (actor-tls-domain)
  (read-file-string (path-expand "domain" (ensemble-tls-base-path))))

(def (actor-tls-host server-id)
  (let (domain (actor-tls-domain))
    (string-append (symbol->string server-id) "." domain)))

(def (generate-actor-tls-root-ca! root-ca-passphrase
                                  domain: (domain "ensemble.local")
                                  country-name: (country-name "UN")
                                  organization-name: (organization-name "Mighty Gerbils")
                                  common-name: (common-name "Gerbil Ensemble Root CA"))
  (let* ((base-path (ensemble-tls-base-path))
         (root-ca-path (path-expand "root-ca" base-path))
         (root-ca.conf (path-expand "root-ca.conf" root-ca-path))
         (root-ca.key  (path-expand "private/root-ca.key" root-ca-path))
         (root-ca.csr  (path-expand "root-ca.csr" root-ca-path))
         (root-ca.crt  (path-expand "root-ca.crt" root-ca-path))
         (ca-certificates (path-expand "ca-certificates" base-path))
         (ca.pem          (path-expand "ca.pem" base-path)))
    ;; sanity check: refuse to remove an existing root-ca
    (when (file-exists? root-ca-path)
      (error "root-ca already exists" root-ca-path))

    ;; write the domain so that actor-tls-host can find it
    (write-file-string (path-expand "domain" base-path) domain)

    ;; create root-ca directory structure
    (create-directory* root-ca-path)
    (for (dir '("certs" "db"))
      (create-directory* (path-expand dir root-ca-path)))
    (for (dir '("private"))
      (create-directory* (path-expand dir root-ca-path) #o700))
    (write-file-string (path-expand "db/index" root-ca-path) "")
    (write-file-string (path-expand "db/serial" root-ca-path)
                       (read-all-as-string (invoke "openssl" ["rand" "-hex" "16"]
                                                   stdout-redirection: #f)))
    (write-file-string (path-expand "db/crlnumber" root-ca-path) "1001")

    ;; root-ca.conf
    (call-with-output-file root-ca.conf
      (cut write-template root-ca.conf-template <>
           domain: domain
           country-name: country-name
           organization-name: organization-name
           common-name: common-name
           home: root-ca-path))

    ;; root-ca.csr
    (invoke "openssl"
            ["req" "-new "
             "-config" root-ca.conf
             "-out" root-ca.csr
             "-keyout" root-ca.key
             ;; TODO improve security aspects of this; it is fine for now, but
             ;;      an organization with high security requirements may want to
             ;;      pass the passphrase more securely.
             ;;      patches welcome if you are concerned about this.
             "-passin" (string-append "pass:" root-ca-passphrase)])

    ;; root-ca.crt
    (invoke "openssl"
            ["ca" "-selfsign"
             "-config" root-ca.conf
             "-in" root-ca.csr
             "-out" root-ca.crt
             "-extensions" "ca_ext"
             ;; TODO see above
             "-passin" (string-append "pass:" root-ca-passphrase)])

    ;; initialize trust-store
    (create-directory* ca-certificates)
    (copy-file root-ca.crt ca-certificates)
    (call-with-output-file [path: ca.pem append: #t]
      (lambda (out)
        (let (blob (read-file-u8vector root-ca.crt))
          (write-subu8vector blob 0 (u8vector-length blob) out))))))


(def (generate-actor-tls-sub-ca! root-ca-passphrase
                                 sub-ca-passphrase
                                 country-name: (country-name "UN")
                                 organization-name: (organization-name "Mighty Gerbils")
                                 common-name: (common-name "Gerbil Ensemble Subordinate CA"))
  (let* ((base-path (ensemble-tls-base-path))
         (root-ca-path (path-expand "root-ca" base-path))
         (root-ca.conf (path-expand "root-ca.conf" root-ca-path))
         (sub-ca-path  (path-expand "sub-ca" base-path))
         (sub-ca.conf  (path-expand "sub-ca.conf" sub-ca-path))
         (sub-ca.key   (path-expand "private/sub-ca.key" sub-ca-path))
         (sub-ca.csr   (path-expand "sub-ca.csr" sub-ca-path))
         (sub-ca.crt   (path-expand "sub-ca.crt" sub-ca-path))
         (ca-certificates (path-expand "ca-certificates" base-path))
         (ca.pem          (path-expand "ca.pem" base-path)))

    ;; sanity check: refuse to remove an existing root-ca or sub-ca
    (unless (file-exists? root-ca-path)
      (error "root-ca does not exist" root-ca-path))
    (when (file-exists? sub-ca-path)
      (error "sub-ca already exists" sub-ca-path))

    ;; create root-ca directory structure
    (create-directory* sub-ca-path)
        (for (dir '("certs" "db"))
      (create-directory* (path-expand dir sub-ca-path)))
    (for (dir '("private"))
      (create-directory* (path-expand dir sub-ca-path) #o700))
    (write-file-string (path-expand "db/index" sub-ca-path) "")
    (write-file-string (path-expand "db/serial" sub-ca-path)
                       (read-all-as-string (invoke "openssl" ["rand" "-hex" "16"]
                                                   stdout-redirection: #f)))
    (write-file-string (path-expand "db/crlnumber" sub-ca-path) "1001")

    ;; sub-ca.conf
    (call-with-output-file sub-ca.conf
      (cut write-template sub-ca.conf-template <>
           country-name: country-name
           organization-name: organization-name
           common-name: common-name))

    ;; sub-ca.key, sub-ca.csr
    (invoke "openssl"
            ["req" "-new"
             "-config" sub-ca.conf
             "-out" sub-ca.csr
             "-keyout" sub-ca.key
             ;; TODO see above
             "-passin" (string-append "pass:" sub-ca-passphrase)])

    ;; sub-ca.crt
    (invoke "openssl"
            ["ca"
             "-config" root-ca.conf
             "-in" sub-ca.csr
             "-out" sub-ca.crt
             "-extensions" "sub_ca_ext"
             ;; TODO see above
             "-passin" (string-append "pass:" root-ca-passphrase)])

    ;; update trust store
    (copy-file sub-ca.crt ca-certificates)
    (call-with-output-file [path: ca.pem append: #t]
      (lambda (out)
        (let (blob (read-file-u8vector sub-ca.crt))
          (write-subu8vector blob 0 (u8vector-length blob) out))))
    ))

(def (generate-actor-tls-cert! sub-ca-passphrase
                               server-id: server-id
                               capabilities: (capabilities [])
                               country-name: (country-name "UN")
                               organization-name: (organization-name "Mighty Gerbils")
                               location: (location "Internet"))

  (let* ((base-path (ensemble-tls-base-path))
         (root-ca-path (path-expand "root-ca" base-path))
         (root-ca.crt  (path-expand "root-ca.crt" root-ca-path))
         (sub-ca-path  (path-expand "sub-ca" base-path))
         (sub-ca.conf  (path-expand "sub-ca.conf" sub-ca-path))
         (server-path  (ensemble-tls-server-path server-id))
         (server.conf  (path-expand "server.conf" server-path))
         (server.key   (path-expand "server.key" server-path))
         (server.csr   (path-expand "server.csr" server-path))
         (server.crt   (path-expand "server.crt" server-path))
         (domain      (actor-tls-domain)))

    ;; sanity check: must have a sub-ca
    (unless (file-exists? sub-ca-path)
      (error "sub-ca does not exist" sub-ca-path))

    (unless (file-exists? server-path)
      (create-directory* server-path))

    ;; server.conf
    (call-with-output-file server.conf
      (cut write-template server.conf-template <>
           server-id: server-id
           capabilities:
           (string-join
            (map (lambda (i x)
                   (string-append "URI." (number->string i) " = cap:" x))
                 (iota (length capabilities))
                 (map symbol->string capabilities))
            "\n")
           domain: domain
           country-name: country-name
           organization-name: organization-name
           location: location))

    ;; server.key
    (unless (file-exists? server.key)
      (invoke "openssl"
              ["genpkey"
               "-quiet"
               "-algorithm" "RSA"
               "-pkeyopt" "rsa_keygen_bits:2048"
               "-out" server.key]))

    ;; server.csr
    (when (file-exists? server.csr)
      (rename-file server.csr
                   (string-append server.csr ".bak." (number->string (current-time-seconds)))))
    (invoke "openssl"
            ["req -new"
             "-config" server.conf
             "-key" server.key
             "-out" server.csr])

    ;; server.cert
    (when (file-exists? server.crt)
      (rename-file server.crt
                   (string-append server.crt ".bak." (number->string (number->string (current-time-seconds))))))
    (invoke "openssl"
            ["ca"
             "-config" sub-ca.conf
             "-in" server.csr
             "-out" server.crt
             "-extensions" "actor_ext"
             ;; TODO see above
             "-passin" (string-append "pass:" sub-ca-passphrase)])))

(def root-ca.conf-template #<<END
[default]
name                    = root-ca
domain_suffix           = ${domain}
aia_url                 = http://$name.$domain_suffix/$name.crt
crl_url                 = http://$name.$domain_suffix/$name.crl
default_ca              = ca_default
name_opt                = utf8,esc_ctrl,multiline,lname,align

[ca_dn]
countryName             = "${country-name}"
organizationName        = "${organization-name}"
commonName              = "${common-name}"

[ca_default]
home                    = ${home}
database                = $home/db/index
serial                  = $home/db/serial
crlnumber               = $home/db/crlnumber
certificate             = $home/$name.crt
private_key             = $home/private/$name.key
RANDFILE                = $home/private/random
new_certs_dir           = $home/certs
unique_subject          = no
copy_extensions         = none
default_days            = 3650
default_crl_days        = 365
default_md              = sha256
policy                  = policy_c_o_match

[policy_c_o_match]
countryName             = optional
stateOrProvinceName     = optional
organizationName        = optional
organizationalUnitName  = optional
commonName              = supplied
emailAddress            = optional

[req]
default_bits            = 4096
encrypt_key             = yes
default_md              = sha256
utf8                    = yes
string_mask             = utf8only
prompt                  = no
distinguished_name      = ca_dn
req_extensions          = ca_ext

[ca_ext]
basicConstraints        = critical,CA:true
keyUsage                = critical,keyCertSign,cRLSign
subjectKeyIdentifier    = hash

[sub_ca_ext]
authorityInfoAccess     = @issuer_info
authorityKeyIdentifier  = keyid:always
basicConstraints        = critical,CA:true,pathlen:0
crlDistributionPoints   = @crl_info
extendedKeyUsage        = clientAuth,serverAuth
keyUsage                = critical,keyCertSign,cRLSign
nameConstraints         = @name_constraints
subjectKeyIdentifier    = hash

[crl_info]
URI.0                   = $crl_url

[issuer_info]
caIssuers;URI.0         = $aia_url

[name_constraints]
permitted;DNS.0=${domain}
excluded;IP.0=0.0.0.0/0.0.0.0
excluded;IP.1=0:0:0:0:0:0:0:0/0:0:0:0:0:0:0:0
END
)

(def sub-ca.conf-template #<<END
[default]
name                    = sub-ca

[ca_dn]
countryName             = "${country-name}"
organizationName        = "${organization-name}"
commonName              = "${common-name}"

[ca_default]
default_days            = 365
default_crl_days        = 30
copy_extensions         = copy

[actor_ext]
authorityInfoAccess     = @issuer_info
authorityKeyIdentifier  = keyid:always
basicConstraints        = critical,CA:false
crlDistributionPoints   = @crl_info
keyUsage                = critical,digitalSignature,keyEncipherment
extKeyUsage             = critical,serverAuth,clientAuth
subjectKeyIdentifier    = hash
END
)

(def server.conf-template #<<END
[req]
prompt = no
distinguished_name = dn
req_extensions = ext

[dn]
CN = ${server-id}.${domain}
O  = ${organization-name}
L  = ${location}
C  = ${country-name}

[ext]
subjectAltName      = @sans

[sans]
DNS = ${server-id}.${domain}
${capabilities}

END
)
