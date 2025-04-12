;;; -*- Gerbil -*-
;;; © vyzo
;;; actor TLS utilities
(import :gerbil/gambit
        :std/error
        :std/iter
        :std/net/ssl/libssl
        :std/misc/template
        :std/misc/process
        :std/misc/ports
        ./path
        ./server-identifier)
(export ensemble-tls-base-path
        ensemble-tls-server-path
        ensemble-tls-cafile
        get-actor-tls-context
        actor-tls-certificate-server-id
        actor-tls-certificate-ensemble-domain
        actor-tls-certificate-capabilities
        actor-tls-certificate-host
        actor-tls-host
        actor-tls-domain
        generate-actor-tls-root-ca!
        generate-actor-tls-sub-ca!
        generate-actor-tls-cafiles!
        generate-actor-tls-cert!
        )
(def (current-time-seconds)
  (inexact->exact (floor (time->seconds (current-time)))))

(def (ensemble-tls-base-path)
  (path-expand "tls" (ensemble-base-path)))

(def (ensemble-tls-server-path server-id)
  (path-expand "tls" (ensemble-server-path server-id)))

(def (ensemble-tls-cafile)
  (path-expand "ca.pem" (ensemble-tls-base-path)))

(def (ensemble-tls-caroot)
  (path-expand "caroot.pem" (ensemble-tls-base-path)))

(def (ensemble-tls-capath)
  (path-expand "ca-certificates" (ensemble-tls-base-path)))

(def (get-actor-tls-context server-id)
  (let* ((cafile (ensemble-tls-cafile))
         (caroot (ensemble-tls-caroot))
         (capath (ensemble-tls-capath))
         (server-base (ensemble-tls-server-path server-id))
         (chain.pem  (path-expand "chain.pem" server-base))
         (server.key (path-expand "server.key" server-base)))
    (and (andmap file-exists? [cafile server-base chain.pem server.key])
         (make-actor-tls-context caroot cafile capath chain.pem server.key))))

(def (sans-uri-value->symbol pre value)
  (and (string-prefix? pre value)
       (string->symbol
        (substring value (string-length pre) (string-length value)))))

(def (actor-tls-certificate-server-id x509)
  (cons (actor-tls-certificate-ensemble-srv x509)
        (actor-tls-certificate-ensemble-domain x509)))

(def (actor-tls-certificate-host x509)
  (X509_get_subject_name x509))

(def (actor-tls-certificate-ensemble-srv x509)
  (let (san-uris (X509_get_san_uris x509))
    (or (and san-uris
             (ormap (cut sans-uri-value->symbol "srv:" <>)
                    (string-split san-uris #\,)))
        (let (name (X509_get_subject_name x509))
          (and name
               (string->symbol (car (string-split name #\.))))))))

(def (actor-tls-certificate-ensemble-domain x509)
  (alet (san-uris (X509_get_san_uris x509))
    (or (ormap (cut sans-uri-value->symbol "dom:" <>)
               (string-split san-uris #\,))
        '/)))

(def (actor-tls-certificate-capabilities x509)
  (alet (san-uris (X509_get_san_uris x509))
    (filter-map (cut sans-uri-value->symbol "cap:" <>)
                (string-split san-uris #\,))))

(def +tls-domain+ #f)
(def (actor-tls-domain)
  (cond
   (+tls-domain+)
   (else
    (let (tls-domain
          (call-with-input-file (path-expand "domain" (ensemble-tls-base-path))
            read-line))
      (set! +tls-domain+ tls-domain)
      tls-domain))))

(def (actor-tls-host server-id
                     (~ensemble-domain (ensemble-domain))
                     (tls-domain (actor-tls-domain)))
  (if (pair? server-id)
    (actor-tls-host (car server-id) (cdr server-id) tls-domain)
    (let (server-id-str (symbol->string server-id))
      (string-join
       [server-id-str
        (reverse
         (filter (? (not string-empty?))
                 (string-split (symbol->string ~ensemble-domain) #\/)))
        ...
        tls-domain]
       #\.))))

(def (generate-actor-tls-root-ca! root-ca-passphrase
                                  domain: (domain "ensemble.internal")
                                  country-name: (country-name "UN")
                                  organization-name: (organization-name "Mighty Gerbils")
                                  common-name: (common-name (string-append organization-name " Root CA")))
  (let* ((base-path (ensemble-tls-base-path))
         (root-ca-path (path-expand "root-ca" base-path))
         (root-ca.conf (path-expand "root-ca.conf" root-ca-path))
         (root-ca.key  (path-expand "private/root-ca.key" root-ca-path))
         (root-ca.csr  (path-expand "root-ca.csr" root-ca-path))
         (root-ca.crt  (path-expand "root-ca.crt" root-ca-path))
         (ca-certificates (path-expand "ca-certificates" base-path)))

    ;; sanity check: refuse to remove an existing root-ca
    (when (file-exists? root-ca-path)
      (error "root-ca already exists" root-ca-path))

    (create-directory* base-path)

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
                       (invoke "openssl" ["rand" "-hex" "16"]
                               stdout-redirection: #t))
    (write-file-string (path-expand "db/crlnumber" root-ca-path) "1001")

    ;; root-ca.conf
    (displayln "... generate " root-ca.conf)
    (call-with-output-file root-ca.conf
      (cut write-template root-ca.conf-template <>
           domain: domain
           country-name: country-name
           organization-name: organization-name
           common-name: common-name
           home: root-ca-path))

    ;; root-ca.csr
    (displayln "... generate " root-ca.csr " " root-ca.key)
    (invoke "openssl"
            ["req" "-new"
             "-config" root-ca.conf
             "-out" root-ca.csr
             "-keyout" root-ca.key
             ;; TODO improve security aspects of this; it is fine for now, but
             ;;      an organization with high security requirements may want to
             ;;      pass the passphrase more securely.
             ;;      patches welcome if you are concerned about this.
             "-passout" (string-append "pass:" root-ca-passphrase)])

    ;; root-ca.crt
    (displayln "... generate " root-ca.crt)
    (invoke "openssl"
            ["ca" "-selfsign" "-batch" "-notext"
             "-config" root-ca.conf
             "-in" root-ca.csr
             "-out" root-ca.crt
             "-extensions" "ca_ext"
             ;; TODO see above
             "-passin" (string-append "pass:" root-ca-passphrase)])

    ;; initialize trust-store
    (create-directory* ca-certificates)
    (copy-file root-ca.crt (path-expand "root-ca.crt" ca-certificates))))


(def (generate-actor-tls-sub-ca! root-ca-passphrase
                                 sub-ca-passphrase
                                 country-name: (country-name "UN")
                                 organization-name: (organization-name "Mighty Gerbils")
                                 common-name: (common-name (string-append organization-name " Subordinate CA")))
  (let* ((base-path (ensemble-tls-base-path))
         (root-ca-path (path-expand "root-ca" base-path))
         (root-ca.conf (path-expand "root-ca.conf" root-ca-path))
         (sub-ca-path  (path-expand "sub-ca" base-path))
         (sub-ca.conf  (path-expand "sub-ca.conf" sub-ca-path))
         (sub-ca.key   (path-expand "private/sub-ca.key" sub-ca-path))
         (sub-ca.csr   (path-expand "sub-ca.csr" sub-ca-path))
         (sub-ca.crt   (path-expand "sub-ca.crt" sub-ca-path))
         (ca-certificates (path-expand "ca-certificates" base-path))
         (domain          (actor-tls-domain)))

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
                       (invoke "openssl" ["rand" "-hex" "16"]
                               stdout-redirection: #t))
    (write-file-string (path-expand "db/crlnumber" sub-ca-path) "1001")

    (displayln "... generate " sub-ca.conf)
    ;; sub-ca.conf
    (call-with-output-file sub-ca.conf
      (cut write-template sub-ca.conf-template <>
           domain: domain
           home: sub-ca-path
           country-name: country-name
           organization-name: organization-name
           common-name: common-name))

    ;; sub-ca.key, sub-ca.csr
    (displayln "... generate " sub-ca.csr " " sub-ca.key)
    (invoke "openssl"
            ["req" "-new"
             "-config" sub-ca.conf
             "-out" sub-ca.csr
             "-keyout" sub-ca.key
             ;; TODO see above
             "-passout" (string-append "pass:" sub-ca-passphrase)])

    ;; sub-ca.crt
    (displayln "... generate " sub-ca.crt)
    (invoke "openssl"
            ["ca" "-batch" "-notext"
             "-config" root-ca.conf
             "-in" sub-ca.csr
             "-out" sub-ca.crt
             "-extensions" "sub_ca_ext"
             ;; TODO see above
             "-passin" (string-append "pass:" root-ca-passphrase)])

    ;; update trust store
    (copy-file sub-ca.crt (path-expand "sub-ca.crt" ca-certificates))))

(def (generate-actor-tls-cafiles! force: (force? #f))
  (let* ((cafile (ensemble-tls-cafile))
         (base-path (ensemble-tls-base-path))
         (ca-certificates (path-expand "ca-certificates" base-path))
         (sub-ca.crt (path-expand "sub-ca.crt" ca-certificates))
         (root-ca.crt (path-expand "root-ca.crt" ca-certificates))
         (caroot.pem (path-expand "caroot.pem" base-path)))
    (when (file-exists? cafile)
      (if force?
        (delete-file cafile)
        (error "cafile already exists" cafile)))
    (invoke "openssl" ["rehash" ca-certificates])
    (call-with-output-file cafile
      (lambda(output)
        (for (f [sub-ca.crt root-ca.crt])
          (let (blob (read-file-u8vector f))
            (write-subu8vector blob 0 (u8vector-length blob) output)))))
    (copy-file root-ca.crt caroot.pem)))

(def (generate-actor-tls-cert! sub-ca-passphrase
                               server-id: server-id
                               ensemble-domain: (~ensemble-domain (ensemble-domain))
                               tls-domain: (tls-domain (actor-tls-domain))
                               capabilities: (capabilities [])
                               country-name: (country-name "UN")
                               organization-name: (organization-name "Mighty Gerbils")
                               location: (location "Internet"))
  (parameterize ((ensemble-domain ~ensemble-domain))
    (let* ((base-path (ensemble-tls-base-path))
           (root-ca-path (path-expand "root-ca" base-path))
           (sub-ca-path  (path-expand "sub-ca" base-path))
           (sub-ca.conf  (path-expand "sub-ca.conf" sub-ca-path))
           (server-path  (ensemble-tls-server-path server-id))
           (server.conf  (path-expand "server.conf" server-path))
           (server.key   (path-expand "server.key" server-path))
           (server.csr   (path-expand "server.csr" server-path))
           (server.crt   (path-expand "server.crt" server-path))
           (chain.pem    (path-expand "chain.pem" server-path)))

      ;; sanity check: must have a sub-ca
      (unless (file-exists? sub-ca-path)
        (error "sub-ca does not exist" sub-ca-path))

      (unless (file-exists? server-path)
        (create-directory* server-path))

      ;; server.conf
      (displayln "... generate " server.conf)
      (call-with-output-file server.conf
        (cut write-template server.conf-template <>
             server:
             (string-append "URI.0 = srv:"
                            (symbol->string (server-identifier-id server-id))
                            "\n")
             ensemble-domain:
             (string-append "URI.1 = dom:"
                            (symbol->string (server-identifier-domain server-id))
                            "\n")
             capabilities:
             (string-join
              (map (lambda (i x)
                     (string-append "URI." (number->string i) " = cap:" x))
                   (iota (length capabilities) 2)
                   (map symbol->string capabilities))
              "\n")
             server-host: (actor-tls-host server-id ~ensemble-domain tls-domain)
             country-name: country-name
             organization-name: organization-name
             location: location))

      ;; server.key
      (unless (file-exists? server.key)
        (displayln "... generate " server.key)
        (invoke "openssl"
                ["genpkey"
                 ;"-quiet"
                 "-algorithm" "RSA"
                 "-pkeyopt" "rsa_keygen_bits:4096"
                 "-out" server.key]))

      ;; server.csr
      (when (file-exists? server.csr)
        (rename-file server.csr
                     (string-append server.csr ".bak." (number->string (current-time-seconds)))))
      (displayln "... generate " server.csr)
      (invoke "openssl"
              ["req" "-new"
               "-config" server.conf
               "-key" server.key
               "-out" server.csr])

      ;; server.cert
      (when (file-exists? server.crt)
        (rename-file server.crt
                     (string-append server.crt ".bak." (number->string (current-time-seconds)))))
      (displayln "... generate " server.crt)
      (invoke "openssl"
              ["ca" "-batch" "-notext"
               "-config" sub-ca.conf
               "-in" server.csr
               "-out" server.crt
               "-extensions" "actor_ext"
               ;; TODO see above
               "-passin" (string-append "pass:" sub-ca-passphrase)])

      (displayln "... generate " chain.pem)
      (call-with-output-file chain.pem
        (lambda(output)
          (for (f [server.crt (ensemble-tls-cafile)])
            (let (blob (read-file-u8vector f))
              (write-subu8vector blob 0 (u8vector-length blob) output))))))))

(def root-ca.conf-template #<<END
[default]
name                    = root-ca
domain_suffix           = ${domain}
aia_url                 = http://$name.$domain_suffix/$name.crt
crl_url                 = http://$name.$domain_suffix/$name.crl
ocsp_url                = http://ocsp.$name.$domain_suffix:9080
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
subjectKeyIdentifier    = hash

[crl_info]
URI.0                   = $crl_url

[issuer_info]
caIssuers;URI.0         = $aia_url
OCSP;URI.0              = $ocsp_url

[ocsp_ext]
authorityKeyIdentifier  = keyid:always
basicConstraints        = critical,CA:false
extendedKeyUsage        = OCSPSigning
noCheck                 = yes
keyUsage                = critical,digitalSignature
subjectKeyIdentifier    = hash

END
)

(def sub-ca.conf-template #<<END
[default]
name                    = sub-ca
domain_suffix           = ${domain}
aia_url                 = http://$name.$domain_suffix/$name.crt
crl_url                 = http://$name.$domain_suffix/$name.crl
ocsp_url                = http://ocsp.$name.$domain_suffix:9081
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
copy_extensions         = copy
default_days            = 365
default_crl_days        = 30
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

[actor_ext]
authorityInfoAccess     = @issuer_info
authorityKeyIdentifier  = keyid:always
basicConstraints        = critical,CA:false
crlDistributionPoints   = @crl_info
extendedKeyUsage        = clientAuth,serverAuth
keyUsage                = critical,digitalSignature,keyEncipherment
subjectKeyIdentifier    = hash

[crl_info]
URI.0                   = $crl_url

[issuer_info]
caIssuers;URI.0         = $aia_url
OCSP;URI.0              = $ocsp_url

[ocsp_ext]
authorityKeyIdentifier  = keyid:always
basicConstraints        = critical,CA:false
extendedKeyUsage        = OCSPSigning
keyUsage                = critical,digitalSignature
subjectKeyIdentifier    = hash

END
)

(def server.conf-template #<<END
[req]
prompt = no
distinguished_name = dn
req_extensions = ext

[dn]
CN = ${server-host}
O  = ${organization-name}
L  = ${location}
C  = ${country-name}

[ext]
subjectAltName          = @sans

[sans]
DNS = ${server-host}
${server}
${ensemble-domain}
${capabilities}
END
)
