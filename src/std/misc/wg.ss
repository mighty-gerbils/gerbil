;;; -*- Gerbil -*-
;;; © vyzo
;;; transient parallel workgroups
(import :std/error
        :std/contract
        :std/iter
        ./channel)
(export WG? make-wg wg-add! wg-wait!)

(defstruct WG (workch workers)
  final: #t )

(def (make-wg cores)
  (let* ((ch (make-channel))
         (wg (WG ch #f))
         (threads (map (lambda (x) (spawn/name [worker x] worker wg)) (iota cores))))
    (set! (&WG-workers wg) threads)
    wg))

(def (worker (wg :- WG))
  (let (ch wg.workch)
    (let loop ()
      (let (next (channel-get ch))
        (unless (eof-object? next)
          (next)
          (loop))))))

(def (wg-add! wg thunk)
  (if (WG? wg)
    (using (wg :- WG)
      (channel-put wg.workch thunk))
    (thunk)))

(def (wg-wait! wg)
  (if (WG? wg)
    (using (wg :- WG)
      (channel-close wg.workch)
      (for (worker wg.workers)
        (with-catch
          (lambda (e) (raise (if (uncaught-exception? e) (uncaught-exception-reason e) e)))
          (cut thread-join! worker))))
    (void)))
