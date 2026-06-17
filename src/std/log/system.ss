;;; -*- Gerbil -*-
;;; © vyzo
;;; system logger
(import :gerbil/runtime/thread
        :std/hash/types
        :std/error
        ./interface
        ./level
        ./macros
        ./console
        ./proto)
(export #t)

(defclass SystemLogger
  ((mx      :- :mutex)
   (thread  :- :thread)
   (level   :- :fixnum)
   (sources :- HashTable)
   (sinks   :- HashTable))
  final: #t)

(def __system
  (delay-atomic
   (begin
     (force std/log/level#__default-log-levels!)
     (let* ((sys
             (SystemLogger
              mx:      (make-mutex 'logger)
              thread:  #f
              level:   (default-log-level)
              sources: (make-hash-table)
              sinks:   (make-hash-table)))
            (thread
             (spawn-thread (cut with-exception-stack-trace
                                (cut system-logger-thread sys))
                           '/system/log
                           (system-thread-group))))
       (set! (SystemLogger-thread sys)
         thread)
       ;; TODO log unhandled actor exceptions
       sys))))

(def (system-logger) => SystemLogger
  (:- (force __system) SystemLogger))

(def (get-user-logger (name : :string)
                      (new  : :procedure))
  => Logger
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx :- Logger
      (cond
       ((hash-get sys.sources name))
       (else
        (let (logger (Logger (new sys.thread)))
          (hash-put! sys.sources name logger)
          logger))))))

(def (add-system-sink! (sink : LogSink))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (using (sys (system-logger) :- SystemLogger)
        (let (name (sink.name))
          (when (hash-key? sys.sinks name)
            (raise-context-error add-system-sink! "duplicate sink" sink))
          (hash-put! sys.sinks name sink)
          (thread-send sys.thread (!UPDATE:add-sink sink)))))))

;; dynamic log options
(def (set-system-log-level! (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (let (current sys.level)
        (unless (fx= current level)
          (set! sys.level level)
          (thread-send sys.thread (!UPDATE:set-system-level level)))))))

(def (system-log-lovel) => :fixnum
  (using (sys (system-logger) :- SystemLogger)
    (:- (do-with-lock sys.mx sys.level) :fixnum)))

(def (set-source-log-level! (source : :string)
                            (level  : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (cond
       ((hash-get sys.sources source)
        => (lambda ((log :- Logger))
             (log.set-level! level)))
       (else
        (raise-context-error set-subsystem-log-level! "unknown subsystem" source))))))

(def (set-sink-log-level! (sink  : :string)
                          (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (cond
       ((hash-get sys.sinks sink)
        => (lambda ((log :- LogSink))
             (log.set-level! level)))
       (else
        (raise-context-error set-sink-log-level! "unknown sink" sink))))))

(def (current-log-sources) => :list
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx :- :list
      (hash-keys sys.sources))))

(def (current-log-sinks) => :list
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx :- :list
      (hash-keys sys.sinks))))

;; the system logger thread
(def (system-logger-thread (sys :- SystemLogger))
  (mutex-lock! sys.mx)
  (let ((level    sys.level)
        (sources (hash-copy sys.sources))
        (sinks   (hash-copy sys.sinks)))
    (mutex-unlock! sys.mx)
    (let/cc exit
      (using (console (console-log-sink) :- LogSink)
        (deflogger-macros console "/system/log")
        (console.info "starting system logger")
        (while #t
          (let (msg (thread-receive))
            (cond
             ((Record? msg)
              (using (msg : Record)
                (when (fx<= msg.level level)
                  (cond
                   ((hash-get sources msg.source)
                    => (lambda ((source :- Logger))
                         (when (fx<= msg.level (source.level))
                           (hash-for-each
                            (lambda (name (sink :- LogSink))
                              (when (fx<= msg.level (sink.level))
                                (sink.log msg)))
                            sinks))))
                   (else
                    (console.warn "unknown record source" source: msg.source))))))
             ((!STOP? msg)
              (console.info "stopping system logger")
              (hash-for-each
                  (lambda (name (sink :- LogSink))
                    (try (sink.stop!)
                         (catch (e)
                           (console.error "failed to stop log sink"
                                          sink: (sink.name) error: e))))
                sinks)
              (exit (!STOP-how msg)))
             ((!UPDATE? msg)
              (match msg
                ((!UPDATE:add-sink sink)
                 (do-with-lock sys.mx
                   (using (sink :- LogSink)
                     (hash-put! sinks (sink.name) sink))))
                ((!UPDATE:set-system-level system-level)
                 (do-with-lock sys.mx
                   (set! level system-level)))
                (else
                 (console.warn "unexpected system update message" message: msg))))
             (else
              (console.warn "unexpected message" message: msg)))))))))
