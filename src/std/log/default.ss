;;; -*- Gerbil -*-
;;; © vyzo
;;; default process loggeers
(import :std/time
        ./interface
        ./level
        ./macros
        ./user)

(def __default
  (delay-atomic
   (get-logger 'user (default-log-level))))

(def (default-logger) => Logger
  (:- (force __default) Logger))

(defrule (default-logger-level)
  (using (log (default-logger) :- Logger)
    (log.level)))

(defrule (default-logger-log record)
  (using (log (default-logger) :- Logger)
    (log.log record)))

(deflogr log.critical  CRITICAL name current-time-coarse default-logger-level default-logger-log)
(deflogf log.criticalf CRITICAL name current-time-coarse default-logger-level default-logger-log)
(deflogr log.error     ERROR    name current-time-coarse default-logger-level default-logger-log)
(deflogf log.errorf    ERROR    name current-time-coarse default-logger-level default-logger-log)
(deflogr log.warn      WARN     name current-time-coarse default-logger-level default-logger-log)
(deflogf log.warnf     WARN     name current-time-coarse default-logger-level default-logger-log)
(deflogr log.info      INFO     name current-time-coarse default-logger-level default-logger-log)
(deflogf log.infof     INFO     name current-time-coarse default-logger-level default-logger-log)
(deflogr log.debug     DEBUG    name current-time-coarse default-logger-level default-logger-log)
(deflogf log.debugf    DEBUG    name current-time-coarse default-logger-level default-logger-log)
(deflogr log.verbose   VERBOSE  name current-time-coarse default-logger-level default-logger-log)
(deflogf log.verbosef  VERBOSE  name current-time-coarse default-logger-level default-logger-log)
