;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server administration utils
(import :std/error
        :std/crypto
        :std/text/utf8
        :std/misc/ports
        ./path
        ./server-identifier)
(export default-admin-pubkey-path
        default-admin-privkey-path
        get-admin-pubkey
        get-admin-privkey
        generate-admin-keypair!
        admin-auth-challenge-sign
        admin-auth-challenge-verify)

(def (default-admin-pubkey-path)
  (path-expand "admin.pub" (ensemble-base-path)))

(def (default-admin-privkey-path)
  (path-expand "admin.priv" (ensemble-base-path)))

(def (get-admin-pubkey (path (default-admin-pubkey-path)))
  (let (path (path-expand path))
    (if (file-exists? path)
      (bytes->public-key EVP_PKEY_ED25519 (read-file-u8vector path))
      #f)))

(def (get-admin-privkey passphrase (path (default-admin-privkey-path)))
  (let (path (path-expand path))
    (if (file-exists? path)
      (let* ((blob (read-file-u8vector path))
             (cipher (make-cipher))
             (iv-length (cipher-iv-length cipher))
             (iv (subu8vector blob 0 iv-length))
             (ciphertext (subu8vector blob iv-length (u8vector-length blob)))
             (plaintext
              (decrypt cipher
                       (passphrase->key passphrase (cipher-key-length cipher))
                       iv
                       ciphertext))
             (magic-length (u8vector-length privkey-magic))
             (magic (subu8vector plaintext 0 magic-length))
             (privkey-bytes (subu8vector plaintext magic-length (u8vector-length plaintext))))
        (if (equal? magic privkey-magic)
          (bytes->private-key EVP_PKEY_ED25519 privkey-bytes)
          (error "incorrect passphrase")))
      #f)))

(def (generate-admin-keypair! passphrase
                              (pubk-path  (default-admin-pubkey-path))
                              (privk-path (default-admin-privkey-path))
                              force: (force? #f))
  (let ((pubk-path (path-expand pubk-path))
        (privk-path (path-expand privk-path)))
    (unless force?
      (when (file-exists? pubk-path)
        (error "public key file already exists" pubk-path))
      (when (file-exists? privk-path)
        (error "private key file already exists" privk-path)))
    (let* ((pkey (keygen/ed25519))
           (pubk-bytes (public-key->bytes pkey))
           (privk-bytes (private-key->bytes pkey))
           (cipher (make-cipher))
           (iv-length (cipher-iv-length cipher))
           (iv (random-bytes iv-length))
           (plaintext (u8vector-append privkey-magic privk-bytes))
           (ciphertext
            (encrypt cipher
                     (passphrase->key passphrase (cipher-key-length cipher))
                     iv
                     plaintext))
           (privk-blob (u8vector-append iv ciphertext))
           (pubk-path-tmp (string-append pubk-path ".tmp"))
           (privk-path-tmp (string-append privk-path ".tmp")))
      (when (file-exists? pubk-path-tmp)
        (delete-file pubk-path-tmp))
      (when (file-exists? privk-path-tmp)
        (delete-file privk-path-tmp))
      (call-with-output-file pubk-path-tmp
        (lambda (out) (write-subu8vector pubk-bytes 0 (u8vector-length pubk-bytes) out)))
      (call-with-output-file privk-path-tmp
        (lambda (out) (write-subu8vector privk-blob 0 (u8vector-length privk-blob) out)))
      (move-file pubk-path-tmp pubk-path)
      (move-file privk-path-tmp privk-path))))

(def (admin-auth-challenge-sign privk server-id client-id challenge-bytes)
  (let (challenge
        (u8vector-append
         (string->utf8
          (string-append "[gerbil:ensemble:auth:"
                         (server-identifier->flat-string server-id) ":"
                         (server-identifier->flat-string client-id) "]"))
         challenge-bytes))
    (digest-sign privk challenge)))

(def (admin-auth-challenge-verify pubk server-id client-id challenge-bytes sig)
  (let (challenge
        (u8vector-append
         (string->utf8
          (string-append "[gerbil:ensemble:auth:"
                         (server-identifier->flat-string server-id) ":"
                         (server-identifier->flat-string client-id) "]"))
         challenge-bytes))
    (digest-verify pubk sig challenge)))

(def salt "gerbil:ensemble:admin")
(def (passphrase->key pass size)
  (scrypt pass salt size))

(def privkey-magic
  (string->utf8 "%privkey/ed25519%"))

(def (make-cipher)
  (make-aes-256-cfb-cipher))
