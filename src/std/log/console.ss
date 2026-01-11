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
     'console
     (default-log-level)
     ##console-port
     format-record))))

(def (console-log-sink) => LogSink
  (:- (force __console)
      LogSink))

(defstruct (PortLogSink BasicLogger)
  ((port   :- :port)
   (format :- :procedure)))

(defmethod {start! PortLogSink}
  void
  interface: LogSink)

(defmethod {stop! PortLogSink}
  void
  interface: LogSink)

(defmethod {log PortLogSink}
  (lambda (self record)
    (write-string (self.format record) self.port)
    (newline self.port)
    (force-output self.port))
  interface: Logger)
