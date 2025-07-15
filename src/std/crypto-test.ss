;;; -*- Gerbil -*-
;;; (C) me at drewc.ca
;;; (C) fare at tunes.org
;;; :std/crypto unit-tests

(import :std/test
        :std/iter
        :std/format
        :std/misc/ports
        :std/text/json
        :std/text/base64
        :std/misc/process
        :std/text/hex
        :std/crypto
        :std/crypto/libcrypto
        :std/make
        :gerbil/compiler)
(export crypto-test)

(defsyntax (test-inline stx)
  (syntax-case stx (>)
    ((_ test-case: name rest ...)
     #'(test-case name (test-inline rest ...)))
    ((_ > form > rest ...)
     #'(begin (when std/test#*test-verbose*
		  (displayln "... "
			     (with-output-to-string (cut write 'form))))
		form (test-inline > rest ...)))
    ((_ > test result rest ...)
     #'(begin (check test => 'result) (test-inline rest ...)))
    ((empty ...) #'(begin empty ... #!void))
    (_ #!void)))

(defsyntax (source-file stx)
  (##container->path (##locat-container (stx-source stx))))
(def here (path-directory (source-file)))

(def crypto-test
  (test-suite "test :std/crypto"
    (test-inline
     test-case: "Test RSA JWT Signature"
     > (def token "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImlhdCI6MTc1MjAxNzc2NSwiZXhwIjoxNzUyMDIxMzY1LCJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1mYnN2Y0BlbGVjdHJvbmljLWNsYWltcy1tYW5hZ2VyLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstZmJzdmNAZWxlY3Ryb25pYy1jbGFpbXMtbWFuYWdlci5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IjEifQ.XEBUFxgXvN0etkU1Fd4q7B-uqAVtlkJQOwG_dvj1osxvk6nnnByTO3BTgQgILXNhkPzePh9-LCZc_70VYGbodnzK7VxwjHas5Kg9LXueSdkdXDXwzdB2b1hPoXg95BVBe5iOou5j6g9PlRfrjkL05MIKE9dKuZl8n3Am11LUTijRyc20nWSwS86OmElkiU_XUD_O_r_CyygAUdNxIYkpWZVcbKsFaZpc9rA9Lj8DDLH-l7EeBkywv1Oi7dKd-9HxIYB8vVnp3txNhM6egP293YY9OqKDvOB6lvJ7mKaPTWbpY3PDh6XU4I5HUHKmU8bRReO0ZkPyy8t6oi3HVx_KoQ")
     > (defvalues (header payload signature) (apply values (string-split token #\.)))
     > (def (BASE64URL thing)
         (let ((u8 (if (u8vector? thing) thing (string->utf8 thing))))
           (u8vector->base64-string u8 urlsafe?: #t padding?: #f)))
     
     > (def (STRING b64)
         (utf8->string (base64-string->u8vector b64 urlsafe?: #t)))
     > (STRING header)
     "{\"alg\":\"RS256\",\"typ\":\"JWT\"}"
     > (string=? header (BASE64URL (STRING header)))
     #t
     > (def conf (with-input-from-file (path-expand "crypto/test-conf.json" here) read-json))
     > (def pkey
         (let lp ((conf conf) (k ["firebase" "auth" "private_key"]))
           (let (v (hash-get conf (car k)))
     	(if (null? (cdr k)) (hash-get conf (car k))
     	    (lp v (cdr k))))))
     > (display pkey)
     > (write pkey)
     > (def u8-pkey (string->utf8 pkey))
     > (u8vector-length u8-pkey)
     1704
     > (def bio (BIO_new_mem_buf u8-pkey))
     > (foreign? bio)
      #t
     > (def v (make-u8vector 5))
     > (BIO_read bio v -1)
     > v
     #u8(45 45 45 45 45)
     > (def in (BIO_new_mem_buf u8-pkey))
     ;;;> (def _ekey 
     ;;;    (EVP_PKEY_new_from_bio
     ;;;     in #;"PrivateKeyInfo" #f #;"RSA" #f #;OSSL_KEYMGMT_SELECT_PRIVATE_KEY ))
     > (def ekey (bytes->pkey u8-pkey))
     > (def privkey (bytes->private-key "RSA" u8-pkey))
     > (def out (BIO_new (BIO_s_mem)))
     > (EVP_PKEY_to_bio ekey out "PEM" "PrivateKeyInfo" EVP_PKEY_KEYPAIR)
     1
     > (def print (make-u8vector 2048))
     > (def printn (BIO_read out print -1))
     > printn
      1704
     > (u8vector-shrink! print printn)
     > (string=? (utf8->string print) pkey)
     #t
     > (display (utf8->string print))
     > (set! print (pkey->bytes
     	       ekey format: "PEM" bytes: (make-u8vector 128)
     	       selection: EVP_PKEY_PUBLIC_KEY))
     > (display (utf8->string print))
     > (set! print (pkey->bytes
     	       (keygen/ed25519) format: "PEM" bytes: (make-u8vector 128)
     	       selection: 'PUBLIC_KEY))
     > (display (utf8->string print))
     > (set! print (pkey->bytes
     	       privkey format: "PEM" bytes: (make-u8vector 128)))
     > (display (utf8->string print))
     
     
     
     > (def sig (digest-sign ekey (string->utf8 (format "~a.~a" header payload))
     			model: 'sha256))
     > (string=? (BASE64URL sig) signature)
     #t
     > (EVP_PKEY_get0_type_name ekey)
     "RSA"
     > (EVP_PKEY_get0_type_name (keygen/ed25519))
     "ED25519"
     )
    (test-inline
     test-case: "Test Tutorial"
     > (def token "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImlhdCI6MTc1MjAxNzc2NSwiZXhwIjoxNzUyMDIxMzY1LCJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1mYnN2Y0BlbGVjdHJvbmljLWNsYWltcy1tYW5hZ2VyLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstZmJzdmNAZWxlY3Ryb25pYy1jbGFpbXMtbWFuYWdlci5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IjEifQ.XEBUFxgXvN0etkU1Fd4q7B-uqAVtlkJQOwG_dvj1osxvk6nnnByTO3BTgQgILXNhkPzePh9-LCZc_70VYGbodnzK7VxwjHas5Kg9LXueSdkdXDXwzdB2b1hPoXg95BVBe5iOou5j6g9PlRfrjkL05MIKE9dKuZl8n3Am11LUTijRyc20nWSwS86OmElkiU_XUD_O_r_CyygAUdNxIYkpWZVcbKsFaZpc9rA9Lj8DDLH-l7EeBkywv1Oi7dKd-9HxIYB8vVnp3txNhM6egP293YY9OqKDvOB6lvJ7mKaPTWbpY3PDh6XU4I5HUHKmU8bRReO0ZkPyy8t6oi3HVx_KoQ")
     > (defvalues (header payload signature) (apply values (string-split token #\.)))
     > (def (STRING b64)
         (utf8->string (base64-string->u8vector b64 urlsafe?: #t)))
     > (STRING header)
     "{\"alg\":\"RS256\",\"typ\":\"JWT\"}"
     > (def (BASE64URL thing)
         (let ((u8 (if (u8vector? thing) thing (string->utf8 thing))))
           (u8vector->base64-string u8 urlsafe?: #t padding?: #f)))
     > (string=? header (BASE64URL (STRING header)))
     #t
     > (def pkey-text "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDT0U3Pw6EkTaQO\nQFBkcMsTEBeyBibv5NvBvevWvVCF1IN0j1hz3gsudOHbe2Uo9Ncm4HxK7QFrZsh9\nHZcFGALYyGRCqPX2RK/Zg66yqh0rdQdzhTr6JNDI2q63kxfaCzXS6ZIAMJ7XzMT0\nNl+O5V5JK8EO+MegvRrq1lgxBP8OGGhC2G+yC/uilZ43gtCZKioa2uZba0nWa4hX\ngH/DMmNeasLTFFDMcikabDtZSKsxtVa8NIZ0YgpUQkaAMf73vjcBHHKocytFJOBR\nU/uwKUVtkwhDYvAVLJXITIJe91UyJ+57uIEBeEbIGeBEfzrp9SVuwYyIvwr84WHe\n/NMkjTErAgMBAAECgf8LywrYJ7drrMW2YoE1RPEnc1UxhUQWwLzVRsytyU2ZeQgA\nh6Qq6epy9oNaMad/Kj00HSBQHD8UPxDMoK+Q+x1cAcw5eNumnPc0HMVcaQhRVCBu\nLobB/DbO3Wteh1itCKmbEusMZ3NmmmwTqxSS/GrGyWSyKThh1u0A1mX0sdKE3VlU\nkzJsX+WKDENraG7RKXh89d98Vq7bjeSHW6AJr+i16XXgM68obFSpY6EDxz5NtTOt\nJEllJMCLKIlaHLDz08/nZXRvmfEFYjf6+Z2CsffNXUjoi1ECWjEpUN74yPR4C/Rx\nYDIyObg8LIQXrGGXmL1t10DYV2VDVecV+V3hTj0CgYEA8Y8VdUf9Si0mLuxicTj1\nflUKhr/2hAfOvy3KOH74kR4iiC1rBZToFc35xzGeOGuVrF2OVyZrUTvhDFdz8MZ7\nrL1wjadoaiiYIAgL5gMFB846Qhm0gRSSIPzPesYI6oid3vIaQ/yCNwtdmcrUqoyQ\n/uPV/YmrOJy9JVc0P9R2kM0CgYEA4HsL9ph5JJo8g7Rl2eCK8M2VK9vEUK+ka01U\nz9hVXfFkEEZCSF7H3CAk7H3jKKTx2ZXw6G60v+FsRHhL6oLqZgmUMMsVeDydNKyr\nIkw+wGj56JFJXFDYYyvMOOU0Tz4YM0vubrGUycTx9tDE7ZBKAijIrT8J5sa0rcoG\nqFvr6dcCgYEAiWpeSKO1YZchm5v5vHMspLt4C4P0ltNiN7uyyETi3psIBfPgaAJ3\nrL/KEhkV6v643J80NDu03Td1JPIzEIu5G2GBP/Q2H/4L3Fz3d9fL6s7UsXmyB6RO\nJNnspek2dUVWmdecPYTOBsY+bxjFtmfUrEusFllUwBXaO/3JyW3yLRkCgYARvUeN\nvjDclp+vnMLru9Xe/7AJHj3eTnME08CfCC5+1QOeUZ8NTwgmOhgQ5EXeQWKnWjUG\neTEpdKv0oTkGmD/jvmAKlxHkRY36yqZfeH0BAYq2OTz94ZmoBJ8H4/0FQhfxfc+i\nyb/DTh/87DSTvXJLx2NMZY3nwc4naa6rAVCcUwKBgQDW4QP3cPiOpyNUlws0D98L\nAvTJxS1GW4z6jkAfcpArQ9FF5cDva4JkEzjFDSMj69KG0rCFzmbSbAKMUGcne8lh\nNzJ15SNHJ6tBLGsllB0vqv7SWWj4kEWC7snXcNETaCvVzUbV0boQZAcJ7gOSweWw\nErJ9eO6qLxw64/e2dwwDHA==\n-----END PRIVATE KEY-----\n")
     > (def pkey-bytes (string->utf8 pkey-text))
     > (def pkey (bytes->private-key #f pkey-bytes))
     > (def pkey-out-bytes
         (private-key->bytes pkey format: "PEM" structure: "PrivateKeyInfo"))
     > (string=? (utf8->string pkey-out-bytes) pkey-text)
     #t
     > (def signing-input (string->utf8 (format "~a.~a" header payload)))
     > (def signing-output (digest-sign pkey signing-input model: 'sha256))
     > (string=? signature (BASE64URL signing-output))
     #t
     )

    #;(test-case "static compilation with libcrypto"
      (def test-dir "/tmp/test.out")
      (def src (path-expand "crypto/digest-test.ss" here))
      (def exe (path-expand "digest-test.exe" test-dir))
      (create-directory* test-dir)
      (compile-module
       src [invoke-gsc: #t optimize: #f verbose: #f debug: #f static: #t
            output-dir: test-dir
            gsc-options: [(include-gambit-sharp)...]])
      (compile-exe
       src [invoke-gsc: #t output-file: exe optimize: #f verbose: #f debug: #f static: #t
            output-dir: test-dir
            gsc-options: [(include-gambit-sharp)...]])
      (check (run-process/batch [exe]) => (void)))))
