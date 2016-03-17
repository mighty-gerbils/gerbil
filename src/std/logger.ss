;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Logging support
package: std

(import :gerbil/gambit/ports
        :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/sugar
        :std/format
        :std/srfi/19
        )
(export start-logger!
        debug warning
        log-error log-message)

(def current-logger
  (make-parameter #f))

(def (start-logger! (output (current-error-port)))
  (unless (current-logger)
    (let* (((values port own-port?)
            (cond
             ((output-port? output)
              (values output #f))
             ((string? output)
              (values (open-output-file [path: output append: #t]) #t))
             (else
              (error "Bad output; expected filename or port" output))))
           (srv (spawn logger-server port own-port?)))
      (current-logger srv)
      srv)))

(defstruct !log-message (source level e))

(def (logger-server port own-port?)
  (def (loop)
    (match (thread-receive)
      ((!log-message source level message)
       (fprintf port "[~a] ~a ~a: ~a~n"
                level (date->string (current-date) "~4")
                source message)
       (force-output port)
       (loop))))

  (try (loop)
    (finally (when own-port? (close-port port)))))

(def (debug fmt . args)
  (log-message 'debug (apply format fmt args)))

(def (warning fmt . args)
  (log-message 'warning  (apply format fmt args)))

(def (log-error what exn)
  (let (outp (open-output-string))
    (fprintf outp "~a: " what)
    (display-exception exn outp)
    (log-message 'error (get-output-string outp))))

(def (log-message level msg)
  (thread-send (current-logger) (make-!log-message (current-thread) level msg)))
