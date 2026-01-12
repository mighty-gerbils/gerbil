;;; -*- Gerbil -*-
;;; © vyzo
;;; console logging
(import ./interface
        ./level
        ./format)
(export #t)

(def __console
  (delay-atomic
   (LogSink
    (PortLogSink
     'system/console
     (default-log-level)
     ##console-port
     record->string
     (lambda (record) #t)))))

(def (console-log-sink) => LogSink
  (:- (force __console)
      LogSink))

(defstruct (PortLogSink BasicLogger)
  ((port   :- :port)
   (format :- :procedure)
   (accept :- :procedure)))

(defmethod {start! PortLogSink}
  void
  interface: LogSink)

(defmethod {stop! PortLogSink}
  void
  interface: LogSink)

(defmethod {log PortLogSink}
  (lambda (self record)
    (when (self.accept record)
      (write-string (self.format record) self.port)
      (newline self.port)
      (force-output self.port)))
  interface: Logger)
