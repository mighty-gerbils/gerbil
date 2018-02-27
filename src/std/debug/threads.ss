;;; -*- Gerbil -*-
;;; © vyzo
;;; thread debugging utilities
package: std/debug

(import :gerbil/gambit/threads
        :gerbil/gambit/continuations
        :std/misc/threads)
(export #t)

(def (dump-thread-stack-trace! thread (port (current-error-port)))
  (let (cont (##thread-continuation-capture thread))
    (display-continuation-backtrace
     cont
     port
     #t                                 ; all-frames?
     #f                                 ; display-env?
     )))

(def (dump-thread! thread (port (current-error-port)))
  (unless (eq? thread (current-thread))
    (display (thread-name thread) port)
    (newline port)
    (dump-thread-stack-trace! thread port)))

(def (dump-thread-group! (tg (current-thread-group))
                         (port (current-error-port)))
  (for-each (cut dump-thread! <> port)
            (thread-group->thread-list tg)))

(def (dump-thread-group!* (tg (current-thread-group))
                          (port (current-error-port)))
  (dump-thread-group! tg port)
  (for-each (cut dump-thread-group!* <> port)
            (thread-group->thread-group-list tg)))

(def (dump-all-threads! (port (current-error-port)))
  (dump-thread-group!* (primordial-thread-group) port))
