;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write lock test
(cond-expand
  ;; this test is quite flaky on CI (it is a race condition after all)
  ;; so it is not enabled by default.
  (enable-rwlock-test
   (import :gerbil/gambit
           :std/test
           :std/iter
           ./rwlock
           ./barrier)
   (export rwlock-test)

   (def rwlock-test
     (test-suite "read/write locks"
       (test-case "many readers"
         (let* ((readers 100)
                (threads [])
                (barrier (make-barrier readers))
                (rwlock (make-rwlock))
                (wait-time .1)
                (start (current-time)))
           (for (i (in-range readers))
             (let (thread (spawn (lambda ()
                                   (rwlock-read-lock! rwlock)
                                   (barrier-post! barrier)
                                   ;; wait till everyone has read locked
                                   (barrier-wait! barrier)
                                   (thread-sleep! wait-time)
                                   (rwlock-read-unlock! rwlock))))
               (set! threads (cons thread threads))))
           (for (thread threads)
             (check (thread-join! thread) => #!void))
           (let (end (current-time))
             ;; if it successfully parrelized the reader access it must have taken
             ;; at most  wait-time with some fuzz.
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (<= dt (* 1.2 wait-time)))))))
       (test-case "many writers"
         (let* ((writers 100)
                (threads [])
                (barrier (make-barrier writers))
                (rwlock (make-rwlock))
                (wait-time .1)
                (start (current-time)))
           (for (i (in-range writers))
             (let (thread (spawn (lambda ()
                                   (barrier-post! barrier)
                                   ;; wait till everyone has started
                                   (barrier-wait! barrier)
                                   ;; lock
                                   (rwlock-write-lock! rwlock)
                                   ;; wait a little and unlock
                                   (thread-sleep! wait-time)
                                   (rwlock-write-unlock! rwlock))))
               (set! threads (cons thread threads))))
           (for (thread threads)
             (check (thread-join! thread) => #!void))
           (let (end (current-time))
             ;; if it successfully serialized the writer access it must have taken
             ;; at least writers * wait-time.
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (>= dt (* writers wait-time)))))))
       (test-case "many readers and one writer"
         (let* ((readers 100)
                (reader-threads [])
                (writer-thread #f)
                (rwlock (make-rwlock))
                (reader-wait-time .1)
                (writer-wait-time .5)
                (start (current-time)))
           ;; spawn half the readers before the writer and the other half after
           (for (i (in-range (/ readers 2)))
             (let (thread (spawn (lambda ()
                                   (rwlock-read-lock! rwlock)
                                   (thread-sleep! reader-wait-time)
                                   (rwlock-read-unlock! rwlock))))
               (set! reader-threads (cons thread reader-threads))))
           (set! writer-thread
             (spawn (lambda ()
                      (rwlock-write-lock! rwlock)
                      (thread-sleep! writer-wait-time)
                      (rwlock-write-unlock! rwlock))))
           (for (i (in-range (/ readers 2)))
             (let (thread (spawn (lambda ()
                                   (rwlock-read-lock! rwlock)
                                   (thread-sleep! reader-wait-time)
                                   (rwlock-read-unlock! rwlock))))
               (set! reader-threads (cons thread reader-threads))))
           ;; wait for the writer
           (check (thread-join! writer-thread) => #!void)
           (let (end (current-time))
             ;; it must have taken about reader-wait-time + writer-wait-time (with some fuzz)
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (and (>= dt (+ reader-wait-time writer-wait-time))
                                   <= dt (* 1.2 (+ reader-wait-time writer-wait-time))))))
           ;; wait for the readers
           (for (thread reader-threads)
             (check (thread-join! thread) => #!void))
           (let (end (current-time))
             ;; it must have taken at most 2*reader-wait-time + writer-wait-time, with some
             ;; fuzee
             (check (- (time->seconds end) (time->seconds start))
                    ? (lambda (dt) (and (>= dt (+ (* 2 reader-wait-time) writer-wait-time))
                                   <= dt (* 1.2 (+ (* 2 reader-wait-time) writer-wait-time))))))))))))
