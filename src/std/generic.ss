;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Generics support macros
package: std

(import :gerbil/gambit)
(export #t)

(begin-syntax
  (defclass (generic-info macro-object) (dispatch-table procedure)
    id: std/generic#generic-info::t)

  (defstruct generic-type-info (type predicate)
    id: std/generic#generic-type-info::t)
  )

(defsyntax (defgeneric stx)
  (def (generate-generic id default)
    (with-syntax* ((id id)
                   (default default)
                   (dispatch-table-id (stx-identifier #'id #'id "::t"))
                   (dispatch-table
                    #'(def dispatch-table-id
                        (make-generic 'id default)))
                   (procedure-id (stx-identifier #'id #'id "::apply"))
                   (procedure
                    (syntax/loc stx
                      (def (procedure-id . args)
                        (apply generic-dispatch dispatch-table-id args))))
                   (meta
                    #'(defsyntax id
                        (make-generic-info
                         dispatch-table: (quote-syntax dispatch-table-id)
                         procedure: (quote-syntax procedure-id)
                         macro:
                         (syntax-rules ()
                           ((_ arg (... ...))
                            (procedure-id arg (... ...)))
                           (id (identifier? #'id) procedure-id))))))
      #'(begin dispatch-table procedure meta)))

  (syntax-case stx ()
    ((_ id)
     (identifier? #'id)
     (generate-generic #'id #f))
    ((_ id default)
     (identifier? #'id)
     (generate-generic #'id #'default))))

(defrules defgeneric-type ()
  ((_ id (type-id ...) pred)
   (and (identifier? #'id)
        (identifier-list? #'(type-id ...))
        (identifier? #'pred))
   (defsyntax id
     (make-generic-type-info '(type-id ... t)
                             (quote-syntax pred)))))

(defsyntax (defmethod stx)
  (def (wrap e-stx)
    (stx-wrap-source e-stx (stx-source stx)))

  (def (class-method-option? x)
    (memq (stx-e x) '(rebind:)))

  (def (generic-type-id? id)
    (and (identifier? id)
         (let (info (syntax-local-value id false))
           (or (generic-type-info? info)
               (runtime-type-info? info)))))

  (def (generate-generic-dispatch arg-id type-info)
    (with-syntax ((arg-id arg-id))
      (cond
       ((generic-type-info? type-info)
        (with-syntax ((pred (generic-type-info-predicate type-info))
                      (type (generic-type-info-type type-info)))
          #'((pred arg-id) 'type)))
       ((runtime-struct-info? type-info)
        (with-syntax ((struct::t (@ type-info runtime-identifier)))
          #'((struct-instance? struct::t arg-id) struct::t)))
       ((runtime-class-info? type-info)
        (with-syntax ((class:t (@ type-info runtime-identifier)))
          #'((class-instace? class::t arg-id) class::t)))
       (else
        (raise-syntax-error #f "Bad syntax; unknown argument type" stx)))))

  (syntax-case stx (@method)
    ((_ (@method id type) impl . opts)
     (and (identifier? #'id)
          (syntax-local-type-info? #'type)
          (stx-plist? #'opts class-method-option?))
     (with-syntax* (((values klass)
                     (syntax-local-value #'type))
                    (type::t
                     (runtime-type-identifier klass))
                    (name
                     (stx-identifier #'id #'type "::" #'id))
                    (defimpl
                      (wrap #'(def name impl)))
                    (rebind?
                     (and (stx-e (stx-getq rebind: #'rest)) #t))
                    (bind
                     (wrap #'(bind-method! type::t 'id name rebind?))))
       (wrap #'(begin defimpl bind))))

    ((_ (generic-id (arg-id type-id) ...) body ...)
     (and (identifier? #'generic-id)
          (generic-info? (syntax-local-value #'generic-id false))
          (identifier-list? #'(arg-id ...))
          (stx-andmap generic-type-id? #'(type-id ...)))
     (with-syntax* ((pred-id (genident #'generic-id))
                    (impl-id (genident #'generic-id))
                    (generic::t
                     (@ (syntax-local-value #'generic-id)
                        dispatch-table))
                    (@next-method
                     (datum->syntax #'generic-id '@next-method))
                    ((values type-infos)
                     (stx-map syntax-local-value #'(type-id ...)))
                    (((predicate-check arg-type) ...)
                     (map generate-generic-dispatch
                          (syntax->list #'(arg-id ...))
                          type-infos))
                    (defpred
                     (wrap
                      #'(def (pred-id arg-id ...)
                          (and predicate-check ...))))
                    (defimpl
                     (wrap
                      #'(def (impl-id @next-method arg-id ...)
                          body ...))))
       (wrap
        #'(begin
            defpred defimpl
            (generic-add-method! generic::t pred-id impl-id [arg-type ...])))))))

(defgeneric-type <t> () true)
(defgeneric-type <void> (void) void?)
(defgeneric-type <null> (null) null?)
(defgeneric-type <boolean> (boolean) boolean?)
(defgeneric-type <number> (number) number?)
(defgeneric-type <real> (real number) real?)
(defgeneric-type <integer> (integer real number) integer?)
(defgeneric-type <fixnum> (fixnum integer real number) fixnum?)
(defgeneric-type <flonum> (flonum real number) flonum?)
(defgeneric-type <rational> (rational real number) rational?)
(defgeneric-type <complex> (complex number) complex?)
(defgeneric-type <string> (string) string?)
(defgeneric-type <symbol> (symbol) symbol?)
(defgeneric-type <keyword> (keyword) keyword?)
(defgeneric-type <u8vector> (u8vector) u8vector?)
(defgeneric-type <vector> (vector) vector?)
(defgeneric-type <values> (values) ##values?)
(defgeneric-type <pair> (pair) pair?)
(defgeneric-type <list> (list pair null) list?)
(defgeneric-type <procedure> (procedure) procedure?)
(defgeneric-type <object> (object) object?)
(defgeneric-type <hash-table> (hash-table object) hash-table?)
(defgeneric-type <thread> (thread object) thread?)
(defgeneric-type <mutex> (mutex object) mutex?)
(defgeneric-type <condvar> (condvar object) condition-variable?)
(defgeneric-type <port> (port object) port?)
(defgeneric-type <input-port> (input-port port object) input-port?)
(defgeneric-type <output-port> (output-port port object) output-port?)
(defgeneric-type <exception> (exception object) exception?)
