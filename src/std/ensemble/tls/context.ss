;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls context
(import :std/error
        :std/ffi
        :std/iter
        :std/net/ssl)
(export #t)

(def (ensemble-tls-base-path)
  => :string
  (path-expand "tls" (gerbil-path)))

(def (ensemble-tls-ca-file (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand "ca.pem" base))

(def (ensemble-tls-ca-root-file (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand "caroot.pem" base))

(def (ensemble-tls-ca-dir (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand "ca-certificates" base))

(def (ensemble-tls-host-path (host : :string)
                             (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand host (path-expand "host" base)))

(def (ensemble-tls-host-chain-file (host : :string)
                                   (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand "chain.pem" (ensemble-tls-host-path host base)))

(def (ensemble-tls-host-key-file (host : :string)
                                 (base (ensemble-tls-base-path) : :string))
  => :string
  (path-expand "host.key" (ensemble-tls-host-path host base)))

(def (make-tls-context (tls-path : :string) (host : :string))
  => :foreign
  (let* ((cafile (ensemble-tls-ca-file tls-path))
         (caroot (ensemble-tls-ca-root-file tls-path))
         (capath (ensemble-tls-ca-dir tls-path))
         (chain.pem  (ensemble-tls-host-chain-file host tls-path))
         (server.key (ensemble-tls-host-key-file host tls-path)))
    (for (f [cafile caroot capath chain.pem server.key])
      (unless (file-exists? f)
        (raise-contract-violation make-tls-context "file does not exist"
                                  file: f)))
    (:- (check-pointer make-tls-context
                       (make-actor-tls-context caroot cafile capath chain.pem server.key))
        :foreign)))
