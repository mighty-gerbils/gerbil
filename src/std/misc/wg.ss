;;; -*- Gerbil -*-
;;; © vyzo
;;; transient parallel workgroups
(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/error
        :std/iter
        ./channel)
(export WG? make-wg wg-add! wg-wait!)

(defstruct WG (workch workers)
  final: #t unchecked: #t)

(def (make-wg cores)
  (let* ((ch (make-channel))
         (wg (WG ch #f))
         (threads (map (lambda (x) (spawn/name [worker x] worker wg)) (iota cores))))
    (set! (&WG-workers wg) threads)
    wg))

(def (worker wg)
  (with-exception-stack-trace (cut worker-main wg)))

(def (worker-main wg)
  (let (ch (&WG-workch wg))
    (let loop ()
      (let (next (channel-get ch))
        (unless (eof-object? next)
          (next)
          (loop))))))

(def (wg-add! wg thunk)
  (if (WG? wg)
    (let (ch (&WG-workch wg))
      (channel-put ch thunk))
    (thunk)))

(def (wg-wait! wg)
  (if (WG? wg)
    (let ((ch (&WG-workch wg))
          (threads (&WG-workers wg)))
      (channel-close ch)
      (for (worker threads)
        (with-catch
          (lambda (e) (raise (if (uncaught-exception? e) (uncaught-exception-reason e) e)))
          (cut thread-join! worker))))
    (void)))
