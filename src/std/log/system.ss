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
        ./console)
(export #t)

(defstruct SystemLogger
  ((mx      :- :mutex)
   (running :- :boolean)
   (thread  :- :thread)
   (level   :- :fixnum)
   (sources :- HashTable)
   (sinks   :- HashTable))
  final: #t)

(def __system
  (delay-atomic
   (rec sys
     (SystemLogger
      (make-mutex 'logger)
      #f
      (make-system-thread (cut system-logger-thread sys) 'logger)
      0
      (make-hash-table-eq)
      (make-hash-table-eq)))))

(def (system-logger) => SystemLogger
  (:- (force __system) SystemLogger))

(def (get-user-logger (name : :symbol)
                      (new  : :procedure))
  => Logger
  (using (sys (system-logger) :- SystemLogger)
    (:-
     (with-lock sys.mx
      (lambda ()
        (cond
         ((hash-get sys.sources name))
        (else
         (let (logger (Logger (new sys.thread)))
           (hash-put! sys.sources name logger)
           logger)))))
     Logger)))

(def (start-system-logger!
      sinks: (sinks [console-log-sink] : :list)
      level: (level (default-log-level) : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda ()
        (for-each
          (lambda (make-sink)
            (__add-system-sink/lock! (make-sink)))
          sinks)
        (set! sys.level level)
        (unless sys.running
          (thread-start! sys.thread)
          (set! sys.running #t))))))

(def (stop-system-logger!)
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda ()
        (when sys.running
          (set! sys.running #f)
          (thread-send sys.thread !STOP!)
          (thread-join! sys.thread))))))

(def (add-system-sink! (sink : LogSink))
  (with-lock sys.mx
    (cut __add-system-sink/lock! sink)))

(def (__add-system-sink/lock! (sink : LogSink))
  (using (sys (system-logger) :- SystemLogger)
    (let (name (sink.name))
      (when (hash-key? sys.sinks name)
        (raise-context-error add-system-sink! "duplicate sink" sink))
      (hash-put! sys.sinks name sink)
      (when sys.running
        (thread-send sys.thread (!UPDATE:add-sink sink))))))

;; dynamic log options
(def (set-system-log-level! (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda ()
        (let (current sys.level)
          (unless (fx= current level)
            (set! sys.level level)
            (when sys.running
              (thread-send sys.thread (!UPDATE:set-system-level level)))))))))

(def (system-log-lovel) => :fixnum
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda () sys.level))))

(def (set-subsystem-log-level! (name  : :symbol)
                               (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda ()
        (cond
         ((hash-get sys.sources name)
          => (lambda ((log :- Logger))
               (log.set-level! level)))
         (else
          (raise-context-error set-subsystem-log-level! "unknown subsystem" name)))))))

(def (set-sink-log-level! (sink  : :symbol)
                          (level : :fixnum))
  (using (sys (system-logger) :- SystemLogger)
    (with-lock sys.mx
      (lambda ()
        (cond
         ((hash-get sys.sinks sink)
          => (lambda ((log :- LogSink))
               (log.set-level! level)))
         (else
          (raise-context-error set-sink-log-level! "unknown sink" sink)))))))

(def (current-log-subsystems) => :list
  (using (sys (system-logger) :- SystemLogger)
    (:-
     (with-lock sys.mx
       (lambda ()
         (hash-keys sys.sources)))
     :list)))

(def (current-log-sinks) => :list
  (using (sys (system-logger) :- SystemLogger)
    (:-
     (with-lock sys.mx
       (lambda ()
         (hash-keys sys.sinks)))
     :list)))

;; the system logger thread
(defstruct !SystemLoggerMessage ())
(defstruct (!STOP !SystemLoggerMessage) () final: #t)
(defstruct (!UPDATE !SystemLoggerMessage) ())
(defstruct (!UPDATE:add-sink !UPDATE) ((sink :- LogSink)) final: #t)
(defstruct (!UPDATE:set-system-level !UPDATE) ((level :- :fixnum)) final: #t)

(def !STOP! (!STOP))

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
             ((!STOP? msg)
              (console.debug "stopping system logger")
              (hash-for-each
                  (lambda (name (sink :- LogSink))
                    (with-error-to-console (sink.stop!)))
                sinks)
              (exit 'STOP))
             ((!Update? msg)
              (match msg
               ((!Update:add-sink sink)
                (mutex-lock! sys.mx)
                (using (sink :- LogSink)
                  (hash-put! sinks (sink.name) sink))
                (mutex-unlock! sys.mx))
               ((!UPDATE:set-system-level system-level)
                (mutex-lock! sys.mx)
                (set! level system-level)
                (mutex-unlock! sys.mx))
               (else
                (console.warn "unexpected system update message" message: msg))))
             (else
              (console.warn "unexpected message" message: msg)))))))))
