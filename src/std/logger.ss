;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Logging support

(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/format
        :std/srfi/19)
(export start-logger!
        current-logger
        current-logger-options
        make-logger-options
        logger-options?
        deflogger
        errorf
        warnf
        infof
        debugf
        verbosef
        )

(def default-level 1) ; WARN
(def verbose-level 4)

(def levels
  (hash (0 'ERROR)
        (1 'WARN)
        (2 'INFO)
        (3 'DEBUG)
        (4 'VERBOSE)))

(def symbolic-levels
  (hash (ERROR 0)
        (WARN 1)
        (INFO 2)
        (DEBUG 3)
        (VERBOSE 4)))

(def (level->symbolic level)
  (hash-ref levels level 'UNKNOWN))

(def (object->level level)
  (cond
   ((fixnum? level) level)
   ((symbol? level)
    (hash-ref symbolic-levels level verbose-level))
   (else
    (raise-bad-argument 'logger "log level: fixnum or symbol" level))))

;; the current logger actor
(def current-logger
  (make-parameter #f))

(def (get-logger)
  (cond
   ((not (actor-thread? (current-thread)))
    (current-logger))
   ((thread-local-get 'logger))
   (else
    (let (logger (current-logger))
      (thread-local-set! 'logger logger)
      logger))))

;; options can be:
;; - a level, either symbolic or a fixnum
;; - a logger-options object, which specifies per source options as a hash table of source -> level
(def current-logger-options
  (make-parameter 1))

(def (get-logger-options)
  (cond
   ((not (actor-thread? (current-thread)))
    (current-logger-options))
   ((thread-local-get 'logger-options))
   ((current-logger-options)
    => (lambda (opts)
         (let (opts (if (symbol? opts) (object->level opts) opts))
           (thread-local-set! 'logger-options opts)
           opts)))))

(defstruct logger-options (threshold sources))

;; the generic message logger
(def (log-message source level fmt args)
  (def (log-it logger threshold)
    (let ((level (object->level level))
          (threshold (object->level threshold)))
      (when (##fx<= level threshold)
        (let ((now (current-date))
              (msg (if (null? args) fmt (apply format fmt (map exception->string args)))))
          (thread-send logger (!log-message now level source msg))))))

  (cond
   ((get-logger)
    => (lambda (logger)
         (let (opts (get-logger-options))
           (cond
            ((logger-options? opts)
             (cond
              ((hash-get (logger-options-sources opts) source)
               => (cut log-it logger <>))
              (else
               (log-it logger (logger-options-threshold opts)))))
            (else
             (log-it logger opts))))))))

(def (exception->string obj)
  (if (exception? obj)
    (let (outp (open-output-string))
      (display-exception obj outp)
      (get-output-string outp))
    obj))

;; log sources
(defsyntax (deflogger stx)
  (syntax-case stx ()
    ((_ source)
     (with-syntax ((errorf   (stx-identifier #'source 'errorf))
                   (warnf    (stx-identifier #'source 'warnf))
                   (infof    (stx-identifier #'source 'infof))
                   (debugf   (stx-identifier #'source 'debugf))
                   (verbosef (stx-identifier #'source 'verbosef)))
       #'(begin
           (def (errorf fmt . args)
             (log-message 'source 0 fmt args))
           (def (warnf fmt . args)
             (log-message 'source 1 fmt args))
           (def (infof fmt . args)
             (log-message 'source 2 fmt args))
           (def (debugf fmt . args)
             (log-message 'source 3 fmt args))
           (def (verbosef fmt . args)
             (log-message 'source 4 fmt args)))))))

;; the default logger
(deflogger default)

;;; logger implementation
(defstruct !log-message (ts level source msg))

(def (start-logger! (output (current-error-port)))
  (cond
   ((current-logger) => values)
   (else
    (let* (((values port own-port?)
            (cond
             ((output-port? output)
              (values output #f))
             ((string? output)
              (values (open-output-file [path: output append: #t]) #t))
             (else
              (raise-bad-argument 'start-logger! "filename or port" output))))
           (srv (spawn/name 'logger logger-server port own-port?)))
      (current-logger srv)
      srv))))

(def (logger-server port own-port?)
  (def (loop)
    (match (thread-receive)
      ((!log-message ts level source msg)
       (fprintf port "~a ~a ~a ~a~n"
                (date->string ts "~4")
                (level->symbolic level)
                source msg)
       (force-output port)
       (loop))
      ('shutdown
       (void))
      (else
       (loop))))

  (try (loop)
    (finally (when own-port? (close-port port)))))
