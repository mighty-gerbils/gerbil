;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-9: Defining record types

(import (for-syntax :std/stxutil))

(export define-record-type)

(defsyntax (define-record-type stx)
  (def (field-spec? stx)
    (syntax-case stx ()
      ((id accessor)
       (and (identifier? #'id)
            (identifier? #'accessor)))
      ((id accessor mutator)
       (and (identifier? #'id)
            (identifier? #'accessor)
            (identifier? #'mutator)))))

  (def (check-fields fields error-msg)
    (let lp ((rest fields))
      (match rest
        ([hd . rest]
         (if (memq hd rest)
           (raise-syntax-error 'define-record-type error-msg stx hd)
           (lp rest)))
        (else #!void))))

  (def (field-offset field fields)
    (let (field (stx-e field))
      (let lp ((rest fields) (off 0))
        (match rest
          ([(eq? field) . _] off)
          ([_ . rest] (lp rest (fx1+ off)))))))

  (def (module-type-id type-t)
    (cond
     ((module-context-ns (current-expander-context))
      => (lambda (ns) (format-id type-t "~a#~a" ns type-t)))
     (else
      (let (mid (expander-context-id (current-expander-context)))
        (format-id type-t "~a#~a" mid type-t)))))

  (def (generate-type type-id fields)
    (with-syntax ((klass type-id)
                  (id
                   (if (module-context? (current-expander-context))
                     (module-type-id type-id)
                     (gensym (stx-e type-id))))
                  (field-count (length fields))
                  (plist [[fields: fields ...]]))
      #'(define klass (make-struct-type 'id #f field-count 'klass 'plist #f))))

  (def (generate-predicate type-id predicate-id)
    (with-syntax ((klass type-id)
                  (predicate predicate-id))
      #'(define predicate (make-struct-predicate klass))))

  (def (generate-accessors type fields field-spec)
    (with-syntax ((klass type))
      (let lp ((rest field-spec) (accessors []))
        (syntax-case rest ()
          (((field accessor . _) . rest)
           (with-syntax ((offset (field-offset #'field fields)))
             (let (defn #'(define accessor (make-struct-field-accessor klass offset)))
               (lp #'rest (cons defn accessors)))))
          (_ (with-syntax (((defn ...) (reverse accessors)))
               #'(begin defn ...)))))))

  (def (generate-mutators type fields field-spec)
    (with-syntax ((klass type))
      (let lp ((rest field-spec) (mutators []))
        (syntax-case rest ()
          (((field accessor) . rest)
           (lp #'rest mutators))
          (((field accessor mutator) . rest)
           (with-syntax ((offset (field-offset #'field fields)))
             (let (defn #'(define mutator (make-struct-field-mutator klass offset)))
               (lp #'rest (cons defn mutators)))))
          (_ (with-syntax (((defn ...) (reverse mutators)))
               #'(begin defn ...)))))))

  (def (generate-constructor type fields ctor-spec)
    (with-syntax ((klass type)
                  ((ctor-name field ...) ctor-spec))
      #'(define (ctor-name field ...)
          (make-struct-instance klass field ...))))

  (syntax-case stx ()
    ((_ type (constructor field ...) predicate field-spec ...)
     (and (identifier? #'type)
          (identifier? #'constructor)
          (stx-andmap identifier? #'(field ...))
          (stx-andmap field-spec? #'(field-spec ...)))
     (with-syntax* (((values fields) (stx-map (lambda (f) (stx-e (stx-car f)))
                                              #'(field-spec ...)))
                    (_ (check-fields fields "Duplicate record field"))
                    (_ (check-fields (stx-map stx-e #'(field ...))
                                     "Duplicate record field initializer"))
                    (define-struct-type
                      (generate-type #'type fields))
                    (define-predicate
                      (generate-predicate #'type #'predicate))
                    (define-accessors
                     (generate-accessors #'type fields #'(field-spec ...)))
                    (define-mutators
                     (generate-mutators #'type fields #'(field-spec ...)))
                    (define-constructor
                      (generate-constructor #'type fields #'(constructor field ...))))
       #'(begin
           define-struct-type
           define-predicate
           define-accessors
           define-mutators
           define-constructor)))))
