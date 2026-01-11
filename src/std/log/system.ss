;;; -*- Gerbil -*-
;;; © vyzo
;;; system logger
(import :gerbil/runtime/thread
        :std/hash-table
        :std/error
        :std/time
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
   (SystemLogger
    mx:      (make-mutex 'logger)
    thread:  #f
    level:   (default-log-level)
    sources: (make-hash-table-eq)
    sinks:   (make-hash-table-eq))))

(def (system-logger) => SystemLogger
  (:- (force __system) SystemLogger))

(def (get-user-logger (name : :symbol)
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

(def (start-system-logger!
      sinks: (sinks [console-log-sink] : :list)
      level: (level (default-log-level) : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (unless sys.thread
        (force __default-log-levels!)
        (for-each
          (lambda (make-sink)
            (__add-system-sink/lock! (make-sink)))
          sinks)
        (set! sys.level level)
        (set! sys.thread
          (spawn-thread (cut system-logger-thread sys)
                        'system-logger))))))

(def (stop-system-logger!)
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (when sys.thread
        (thread-send sys.thread !STOP!)
        (unwind-protect
          (thread-join! sys.thread)
          (set! sys.thread #f))))))

(def (add-system-sink! (sink : LogSink))
  (do-with-lock sys.mx
    (__add-system-sink/lock! sink)))

(def (__add-system-sink/lock! (sink : LogSink))
  (using (sys (system-logger) :- SystemLogger)
    (let (name (sink.name))
      (when (hash-key? sys.sinks name)
        (raise-context-error add-system-sink! "duplicate sink" sink))
      (hash-put! sys.sinks name sink)
      (when sys.thread
        (thread-send sys.thread (!UPDATE:add-sink sink))))))

;; dynamic log options
(def (set-system-log-level! (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (let (current sys.level)
        (unless (fx= current level)
          (set! sys.level level)
          (when sys.thread
            (thread-send sys.thread (!UPDATE:set-system-level level))))))))

(def (system-log-lovel) => :fixnum
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx sys.level)))

(def (set-subsystem-log-level! (name  : :symbol)
                               (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (cond
       ((hash-get sys.sources name)
        => (lambda ((log :- Logger))
             (log.set-level! level)))
       (else
        (raise-context-error set-subsystem-log-level! "unknown subsystem" name))))))

(def (set-sink-log-level! (sink  : :symbol)
                          (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (do-with-lock sys.mx
      (cond
       ((hash-get sys.sinks sink)
        => (lambda ((log :- LogSink))
             (log.set-level! level)))
       (else
        (raise-context-error set-sink-log-level! "unknown sink" sink))))))

(def (current-log-subsystems) => :list
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
        (deflogger-macros console system/logger current-time-coarse)
        (console.debug "starting system logger")
        (while #t
          (let (msg (thread-receive))
            (cond
             ((Record? msg)
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
                  (console.warn "unknown record source" source: msg.source)))))
             ((!STOP how)
              (console.debug "stopping system logger")
              (hash-for-each
                  (lambda (name (sink :- LogSink))
                    (try (sink.stop!)
                         (catch (e)
                           (console.error "failed to stop log sink"
                                          sink: (sink.name) error: e))))
                sinks)
              (exit how))
             ((!Update? msg)
              (match msg
                ((!Update:add-sink sink)
                 (with-lock sys.mx
                   (using (sink :- LogSink)
                     (hash-put! sinks (sink.name) sink))))
                ((!UPDATE:set-system-level system-level)
                 (with-lock sys.mx
                   (set! level system-level)))
                (else
                 (console.warn "unexpected system update message" message: msg))))
             (else
              (console.warn "unexpected message" message: msg)))))))))
