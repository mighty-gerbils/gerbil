;;; -*- Gerbil -*-
;;; © vyzo
;;; user loggeers
(import :std/interface
        ./interface
        ./level
        ./macros
        ./system)
(export #t)

(defsyntax (deflogger stx)
  (def (option? key)
    (memq (stx-e key)
          '(name: level: decorate:)))
  (def (options? body)
    (stx-plist? body option?))
  (def (get-option opt options default)
    (or (stx-getq opt options)
        default))

  (syntax-case stx ()
    ((_ id options ...)
     (and (identifier? #'id)
          (options? #'(options ...)))
     (let (opts #'(options ...))
       (with-syntax* ((name      (get-option name:  opts #'id))
                      (level     (get-option level: opts #'(user-log-level 'name)))
                      (make-logger
                       (cond
                        ((get-option decorate: opts #f)
                         => (lambda (decoration)
                              (syntax-case decoration ()
                                ((base decorator)
                                 #'(decorate-logger base decorator))
                                (_ (raise-syntax-error #f "invalid decoration" stx decoration)))))
                        (else
                         #'(get-logger 'name level)))))
         (with-identifiers ((id.level #'id #'id ".level")
                            (id.log   #'id #'id ".log"))
           #'(begin
               (def id make-logger)
               (defrule (id.level)
                 (Logger-level id))
               (defrule (id.log arg (... ...))
                 (Logger-log id arg (... ...)))
               (deflogger-macros id name))))))))

(defstruct (UserLogger BasicLogger)
  ((system   :- :thread)))

(defstruct UserLoggerDecorator
  ((base     ::- Logger)
   (decorate :-  :procedure)))

(def (get-logger (source : :string) (level : :fixnum))
  => Logger
  (get-user-logger
   source
   (lambda ((system-thread :- :thread))
     (Logger
      (UserLogger source level system-thread)))))

(def (decorate-logger (base : Logger) (decorator : :procedure))
  => Logger
  (Logger
   (UserLoggerDecorator base decorator)))

(implement Logger
  (UserLogger
   (log
    (lambda (self record)
      (thread-send self.system record))))
  (UserLoggerDecorator
   (log
    (lambda (self record)
      (self.base.log (self.decorate record))))
   (name
    (lambda (self)
      (self.base.name)))
   (level
    (lambda (self)
      (self.base.level)))
   (set-level!
    (lambda (self level)
      (self.base.set-level! level)))))
