;;; -*- Gerbil -*-
;;; © vyzo
;;; logging macros
(import :std/time/precise
        :std/list/walist
        :std/format
        ./level
        ./interface)
(export #t)

(defsyntax (deflogger-macros stx)
  (syntax-case stx ()
    ((_ id name)
     (and (identifier? #'id)
          (stx-string? #'name))
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
           (deflogr log.critical  CRITICAL name log.level log.log)
           (deflogf log.criticalf CRITICAL name log.level log.log)
           (deflogr log.error     ERROR    name log.level log.log)
           (deflogf log.errorf    ERROR    name log.level log.log)
           (deflogr log.warn      WARN     name log.level log.log)
           (deflogf log.warnf     WARN     name log.level log.log)
           (deflogr log.info      INFO     name log.level log.log)
           (deflogf log.infof     INFO     name log.level log.log)
           (deflogr log.debug     DEBUG    name log.level log.log)
           (deflogf log.debugf    DEBUG    name log.level log.log)
           (deflogr log.verbose   VERBOSE  name log.level log.log)
           (deflogf log.verbosef  VERBOSE  name log.level log.log))))))

(defrule (deflogr id level source get-level log-it)
  (defrule (id msg arg (... ...))
    (when (fx<= level (get-level))
      (log-it
       (Record (current-time-coarse)
               level 'source msg
               (wacollect arg (... ...)))))))

(defrule (deflogf id level source get-level log-it)
  (defrule (id fmt arg (... ...))
    (when (fx<= level (get-level))
      (log-it
       (Record (current-time-coarse)
               level 'source
               (format fmt arg (... ...))
               (wanull))))))
