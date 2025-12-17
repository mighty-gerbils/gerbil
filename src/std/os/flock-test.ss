(import (only-in :std/test
                 test-suite
                 test-case
                 check
                 check-exception)
        (only-in :std/error
                 timeout-error?)
        (only-in :std/misc/string
                 random-string)
        (only-in :std/os/fdio
                 S_IRUSR
                 S_IWUSR
                 _open)
        (only-in :std/os/fcntl
                 O_RDONLY
                 O_CREAT)
        (only-in :std/os/temporaries
                 call-with-temporary-file-name)
        (only-in ./flock
                 flock/block
                 LOCK_EX
                 LOCK_SH))
(export flock-test)

(def tmp-prefix "gerbil-flock-test")
(def flags (fxior O_RDONLY O_CREAT))
(def mode (fxior S_IRUSR S_IWUSR))

(def flock-test
  (test-suite "test :std/os/flock"
    (test-case "cooperative flock/block"
      (call-with-temporary-file-name
       tmp-prefix
       (lambda (path)
         (flock/block (_open path flags mode) LOCK_SH)
         (check (flock/block (_open path flags mode) LOCK_SH) ? void?))))

    (test-case "uncooperative flock/block"
      (call-with-temporary-file-name
       tmp-prefix
       (lambda (path)
         (flock/block (_open path flags mode) LOCK_EX)
         (let ((fuse #f))
           (spawn (lambda ()
                    (thread-sleep! 1)
                    (set! fuse #t)))
           (check-exception (flock/block (_open path flags mode) LOCK_EX 3) timeout-error?)
           (check fuse => #t)))))))
