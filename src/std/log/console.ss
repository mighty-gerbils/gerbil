;;; -*- Gerbil -*-
;;; © vyzo
;;; console logging
(import :std/interface
        :std/io
        ./interface
        ./level
        ./format)
(export console-log-sink)

(def __console
  (delay-atomic
   (LogSink
    (PortLogSink
     "/system/console"
     (default-log-level)
     ##console-port))))

(def (console-log-sink) => LogSink
  (:- (force __console)
      LogSink))

(defstruct (PortLogSink BasicLogger)
  ((writer :- BufferedWriter))
  constructor: :init!)

(defmethod {:init! PortLogSink}
  (lambda (self (name  : :string)
           (level : :fixnum)
           (port  :~ output-port?))
    (set! self.name name)
    (set! self.level level)
    (set! self.writer (open-buffered-writer port))))

(implement
  (Logger
   (PortLogSink
    (log
     (lambda (self record)
       (format-log-line self.writer record)
       (self.writer.flush)))))
  (LogSink
   (PortLogSink
    (start! void)
    (stop! void))))
