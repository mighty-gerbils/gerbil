;;; -*- Gerbil -*-
;;; © vyzo
;;; default process loggeers
(import :std/format
        ./interface
        ./level
        ./macros
        ./user)
(export default-logger
        log.critical
        log.criticalf
        log.error
        log.errorf
        log.warn
        log.warnf
        log.info
        log.infof
        log.debug
        log.debugf
        log.verbose
        log.verbosef)

(def __default
  (delay-atomic
   (get-logger "user" (user-log-level "user"))))

(def (default-logger) => Logger
  (:- (force __default) Logger))

(defrule (default-logger-level)
  (using (log (default-logger) :- Logger)
    (log.level)))

(defrule (default-logger-log record)
  (using (log (default-logger) :- Logger)
    (log.log record)))

(deflogr log.critical  CRITICAL "user" default-logger-level default-logger-log)
(deflogf log.criticalf CRITICAL "user" default-logger-level default-logger-log)
(deflogr log.error     ERROR    "user" default-logger-level default-logger-log)
(deflogf log.errorf    ERROR    "user" default-logger-level default-logger-log)
(deflogr log.warn      WARN     "user" default-logger-level default-logger-log)
(deflogf log.warnf     WARN     "user" default-logger-level default-logger-log)
(deflogr log.info      INFO     "user" default-logger-level default-logger-log)
(deflogf log.infof     INFO     "user" default-logger-level default-logger-log)
(deflogr log.debug     DEBUG    "user" default-logger-level default-logger-log)
(deflogf log.debugf    DEBUG    "user" default-logger-level default-logger-log)
(deflogr log.verbose   VERBOSE  "user" default-logger-level default-logger-log)
(deflogf log.verbosef  VERBOSE  "user" default-logger-level default-logger-log)
