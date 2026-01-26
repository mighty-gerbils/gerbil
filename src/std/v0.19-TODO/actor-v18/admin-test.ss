;;; -*- Gerbil -*-
;;; © vyzo
;;; test for actor server administration utils
(import :std/test
        :std/os/temporaries
        ./admin)
(export actor-admin-util-test)

(def actor-admin-util-test
  (test-suite "adminitrative utils"
    (test-case "keypair generation and authorization"
      (def pubk-path (make-temporary-file-name "pubk"))
      (def privk-path (make-temporary-file-name "privk"))
      (def passphrase "oh so secret")

      (generate-admin-keypair! passphrase pubk-path privk-path)

      (def pubk (get-admin-pubkey pubk-path))
      (def privk (get-admin-privkey passphrase privk-path))

      (def sig (admin-auth-challenge-sign privk '(a . /) '(b . /) '#u8(1 2 3 4)))

      (check (admin-auth-challenge-verify pubk '(a . /) '(b . /) '#u8(1 2 3 4) sig) => #t)
      (check (admin-auth-challenge-verify pubk '(a . /) '(b . /) '#u8(1 2 3 4) '#u8(1 2 3 4)) => #f)


      (delete-file pubk-path)
      (delete-file privk-path))))
