;;; -*- Gerbil -*-
;;; © vyzo
;;; logging macros
(import :std/time
        :std/misc/alist
        :std/format
        ./level
        ./interface
        ./user)
(export #t)

(defsyntax (deflogger-macros stx)
  (syntax-case stx ()
    ((_ id name get-time)
     (with-syntax ((log.level     (stx-identifier #'id #'id ".level"))
                   (log.log       (stx-identifier #'id #'id ".log"))
                   (log.critical  (stx-identifier #'id #'id ".critical"))
                   (log.criticalf (stx-identifier #'id #'id ".criticalf"))
                   (log.error     (stx-identifier #'id #'id ".error"))
                   (log.errorf    (stx-identifier #'id #'id ".errorf"))
                   (log.warn      (stx-identifier #'id #'id ".warn"))
                   (log.warnf     (stx-identifier #'id #'id ".warnf"))
                   (log.info      (stx-identifier #'id #'id ".info"))
                   (log.infof     (stx-identifier #'id #'id ".infof"))
                   (log.debug     (stx-identifier #'id #'id ".debug"))
                   (log.debugf    (stx-identifier #'id #'id ".debugf"))
                   (log.verbose   (stx-identifier #'id #'id ".verbose"))
                   (log.verbosef  (stx-identifier #'id #'id ".verbosef")))
       #'(begin
           (deflogr log.critical  CRITICAL name get-time log.level log.log)
           (deflogf log.criticalf CRITICAL name get-time log.level log.log)
           (deflogr log.error     ERROR    name get-time log.level log.log)
           (deflogf log.errorf    ERROR    name get-time log.level log.log)
           (deflogr log.warn      WARN     name get-time log.level log.log)
           (deflogf log.warnf     WARN     name get-time log.level log.log)
           (deflogr log.info      INFO     name get-time log.level log.log)
           (deflogf log.infof     INFO     name get-time log.level log.log)
           (deflogr log.debug     DEBUG    name get-time log.level log.log)
           (deflogf log.debugf    DEBUG    name get-time log.level log.log)
           (deflogr log.verbose   VERBOSE  name get-time log.level log.log)
           (deflogf log.verbosef  VERBOSE  name get-time log.level log.log))))))

(defrule (deflogr name level source get-time get-level log-it)
  (defrule (name msg arg (... ...))
    (when (fx<= level (get-level))
      (log-it
       (Record (get-time)
               level 'source msg
               (wacollect arg ...))))))

(defrule (deflogf name level source)
  (defrule (name fmt arg (... ...))
    (when (fx<= level (get-level))
      (log-it
       (Record (get-time)
               level 'source
               (@format fmt arg (... ...))
               (wanull))))))
