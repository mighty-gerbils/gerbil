;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/misc/channel test

(import :std/misc/channel
        :std/test
        :std/sugar
        :std/error
        :gerbil/gambit)
(export channel-test)

(def (channel-reader ch count)
  (let lp ((i 0))
    (if (fx< i count)
      (let (next (channel-get ch))
        (check next => i)
        (lp (fx1+ i)))
      (let (next (channel-get ch))
        (check next => #!eof))))
  (void))

(def (channel-writer ch count)
  (let lp ((i 0))
    (when (fx< i count)
      (channel-put ch i)
      (lp (fx1+ i))))
  (channel-close ch)
  (void))

(def (channel-sync-reader ch count)
  (let lp ((i 0))
    (if (fx< i count)
      (let (next (channel-get ch))
        (match next
          ([thread . token]
           (thread-send thread token)
           (lp i))
          (else
           (check next => i)
           (lp (fx1+ i)))))
      (let (next (channel-get ch))
        (match next
          ([thread . token]
           (thread-send thread token)
           (lp i))
          (else
           (check next => #!eof))))))
  (void))

(def (channel-sync-writer ch count)
  (let lp ((i 0))
    (when (fx< i count)
      (if (channel-try-put ch i)
        (lp (fx1+ i))
        (let (token (gensym))
          (channel-sync ch (cons (current-thread) token))
          (check (thread-receive) => token)
          (lp i)))))
  (channel-close ch)
  (void))

(def (do-thread-join! thr)
  (try
   (thread-join! thr)
   (catch (uncaught-exception? e)
     (raise (uncaught-exception-reason e)))))

(def channel-test
  (test-suite  "test :std/misc/channel"
    (test-case "test concurrent buffering"
      (def ch (make-channel 10))
      (let ((rd (spawn channel-reader ch 100))
            (wr (spawn channel-writer ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test delayed writer buffering"
      (def ch (make-channel 10))
      (let* ((rd (spawn channel-reader ch 100))
             (_ (thread-sleep! 1))
             (wr (spawn channel-writer ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test delayed reader buffering"
      (def ch (make-channel 10))
      (let* ((wr (spawn channel-writer ch 100))
             (_ (thread-sleep! 1))
             (rd (spawn channel-reader ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test reader-writer sync buffering"
      (def ch (make-channel 10))
      (let* ((wr (spawn channel-sync-writer ch 100))
             (_ (thread-sleep! 1))
             (rd (spawn channel-sync-reader ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))))
