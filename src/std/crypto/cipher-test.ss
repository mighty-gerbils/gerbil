(import :std/test
        :std/io
        ./cipher
        ./random)
(export cipher-test)

(def plaintext
  "the quick brown fox jumped over the fence")

(defrule (encrypt-decrypt cipher plaintext)
  (let* ((c (cipher))
         (plain-bytes (string->utf8 plaintext))
         (key (random-bytes (cipher-key-length c)))
         (iv  (random-bytes (cipher-iv-length  c))))
    (check (decrypt (cipher) key iv (encrypt c key iv plain-bytes))
           => plain-bytes)))

(defrule (io-encrypt-decrypt cipher plaintext)
  (let* ((c (cipher))
         (plain-bytes (string->utf8 plaintext))
         (key (random-bytes (cipher-key-length c)))
         (iv  (random-bytes (cipher-iv-length  c))))
    (let ((r (open-buffered-reader plain-bytes))
          (w (open-buffered-writer #f)))
      (io-encrypt! r w c key iv)
      (let* ((b (get-memory-output-u8vector w))
             (r (open-buffered-reader b))
             (w (open-buffered-writer #f)))
        (io-decrypt! r w (cipher) key iv)
        (let (b (get-memory-output-u8vector w))
          (check-equal? b plain-bytes))))))

(def cipher-test
  (test-suite "cipher"
    (test-case "encrypt-decrypt"
      (encrypt-decrypt Cipher::aes-128-cfb plaintext)
      (encrypt-decrypt Cipher::aes-192-cfb plaintext)
      (encrypt-decrypt Cipher::aes-256-cfb plaintext)
      )
    (test-case "io"
      (io-encrypt-decrypt Cipher::aes-128-cfb plaintext)
      (io-encrypt-decrypt Cipher::aes-192-cfb plaintext)
      (io-encrypt-decrypt Cipher::aes-256-cfb plaintext)
      )))
