;;; -*- Gerbil -*-
;;; © vyzo
;;; user loggeers
(import ./interface
        ./level
        ./macros
        ./system
        (for-syntax :std/stxutil))
(export #t)

(defsyntax (deflogger stx)
  (syntax-case stx ()
    ((_ id options ...)
     (identifier? #'id)
     (let (opts (parse-options stx #'(options ...) '(name: level: time: decorate:)))
       (with-syntax* ((name      (pgetq name:  opts #'id))
                      (level     (pgetq level: opts #'(user-log-level 'name)))
                      (get-time  (pgetq time:  opts 'current-time-coarse))
                      (make-logger
                       (cond
                        ((pgetq decorate: opts)
                         => (lambda (decoration)
                              (syntax-case decoration ()
                                ((base decorator)
                                 #'(decorate-logger base decorator))
                                (_ (raise-syntax-error #f "invalid decoration" stx decoration)))))
                        (else
                         #'(get-logger 'name level)))))
         #'(begin
             (def id make-logger)
             (deflogger-macros id name get-time)))))))

(defstruct (UserLogger BasicLogger)
  ((system    :- :thread)))

(defstruct UserLoggerDecorator
  ((base     ::- Logger)
   (decorate :-  :procedure)))

(def (get-logger (subsystem : :symbol) (level : :fixnum))
  => Logger
  (get-user-logger
   subsystem
   (lambda ((system-thread :- :thread))
     (Logger
      (UserLogger subsystem level system-thread)))))

(def (decorate-logger (base : Logger) (decorator : :procedure))
  => Logger
  (Logger
   (UserLoggerDecorator base decorator)))

(defmethod {log UserLogger}
  (lambda (self record)
    (thread-send self.system record))
  interface: Logger)

(defmethod {log UserLoggerDecorator}
  (lambda (self record)
    (self.base.log (self.decorate record)))
  interface: Logger)

(defmethod {name UserLoggerDecorator}
  (lambda (self) (self.base.name))
  interface: Logger)

(defmethod {level UserLoggerDecorator}
  (lambda (self) (self.base.level))
  interface: Logger)

(defmethod {set-level! UserLoggerDecorator}
  (lambda (self level) (self.base.set-level! level))
  interface: Logger)
