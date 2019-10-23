;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SASL authentication mechanisms

(import :std/crypto
        :std/text/base64
        :std/text/utf8
        :std/text/hex
        :std/sugar
        :std/error)
(export scram-context?
        scram-sha-1-begin
        scram-sha-256-begin
        scram-client-first-message
        scram-client-first-server-message!
        scram-client-final-message
        scram-client-final-server-message!)

;; SCRAM RFC 5802
(defstruct scram-context (h hmac user pass nonce cfm sfm r s i p v)
  constructor: :init!
  final: #t)

(defmethod {:init! scram-context}
  (lambda (self h hmac user pass)
    (struct-instance-init! self h hmac user pass)))

(def (scram-sha-1-begin user pass)
  (make-scram-context sha1 hmac-sha1 user pass))

;; SCRAM-SHA-256 RFC 7677
(def (scram-sha-256-begin user pass)
  (make-scram-context sha256 hmac-sha256 user pass))

(def (scram-client-first-message ctx (nonce #f))
  (def (first-message cfm)
    (string-append "n,," cfm))

  (let* ((nonce (or nonce (base64-encode (random-bytes 16))))
         (cfm (string-append "n=" (scram-context-user ctx)
                             ",r=" nonce)))
    (set! (scram-context-cfm ctx) cfm)
    (set! (scram-context-nonce ctx) nonce)
    (first-message cfm)))

(def (scram-client-first-server-message! ctx sfm)
  (let* ((msg (scram-parse-message sfm))
         (r (or (assget "r" msg)
                (fail "Invalid server message; missing nonce" msg)))
         (s (base64-decode
             (or (assget "s" msg)
                 (fail "Invalid server message; missing salt" msg))))
         (i (string->number
             (or (assget "i" msg)
                 (fail "Invalid server message; missing iteration count" msg))))
         (nonce (scram-context-nonce ctx)))
    (unless (and (fx> (string-length r) (string-length nonce))
                 (string-prefix? nonce r))
      (fail "Invalid server nonce" r nonce))
    (set! (scram-context-sfm ctx) sfm)
    (set! (scram-context-r ctx) r)
    (set! (scram-context-s ctx) s)
    (set! (scram-context-i ctx) i)
    (void)))

(def (scram-client-final-message ctx)
  (def (final-message csm p)
    (string-append csm ",p=" p))

  (with ((scram-context h hmac user passwd _ cfm sfm r s i) ctx)
    (let* ((csm           (string-append "c=biws,r=" r))
           (salted-passwd (scram-Hi hmac passwd s i))
           (client-key    (hmac salted-passwd (string->utf8 "Client Key")))
           (stored-key    (h client-key))
           (auth-message  (string->utf8 (string-append cfm "," sfm "," csm)))
           (client-sign   (hmac stored-key auth-message))
           (client-proof  (bytes-xor client-key client-sign))
           (p             (base64-encode client-proof))
           (server-key    (hmac salted-passwd (string->utf8 "Server Key")))
           (server-sign   (hmac server-key auth-message))
           (v             (base64-encode server-sign)))
      (set! (scram-context-p ctx) p)
      (set! (scram-context-v ctx) v)
      (final-message csm p))))

(def (scram-client-final-server-message! ctx smsg)
  (let* (msg (scram-parse-message smsg))
    (cond
     ((assget "e" msg)
      => (lambda (what)
           (fail "Authentication failed" what)))
     ((assget "v" msg)
      => (lambda (v)
           (let (verifier (scram-context-v ctx))
             (unless (equal? v verifier)
               (fail "Authentication failed; invalid server signature" v verifier)))))
     (else
      (fail "Malformed server message; missing verifier or error" msg)))))

(def (scram-Hi hmac passwd salt count)
  (let* ((key (string->utf8 passwd))
         (u1 (hmac key (u8vector-append salt '#u8(0 0 0 1)))))
    (let lp ((i 1) (ui u1) (hi u1))
      (if (fx< i count)
        (let* ((ui+1 (hmac key ui))
               (hi+1 (bytes-xor ui+1 hi)))
          (lp (fx1+ i) ui+1 hi+1))
        hi))))

(def (bytes-xor a b)
  (let ((len (u8vector-length a))
        (len-b (u8vector-length b)))
    (if (fx= len len-b)
      (let (res (make-u8vector len))
        (let lp ((i 0))
          (if (fx< i len)
            (begin
              (##u8vector-set! res i (##fxxor (##u8vector-ref a i) (##u8vector-ref b i)))
              (lp (fx1+ i)))
            res)))
      (error "Cannot xor bytes; length mismatch" a b))))

(def (scram-parse-message msg)
  (try
   (map (lambda (str)
          (cond
           ((string-index str #\=)
            => (lambda (ix)
                 (cons (substring str 0 ix)
                       (substring str (fx1+ ix) (string-length str)))))
           (else
            (cons "str" #f))))
        (string-split msg #\,))
   (catch (e)
     (fail "Malformed message" msg e))))

(def (fail what . irritants)
  (apply raise-io-error 'sasl-authenticate what irritants))
