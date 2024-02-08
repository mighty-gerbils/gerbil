;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-9: Defining record types

(import (for-syntax :std/stxutil))

(export define-record-type)

(defsyntax (define-record-type stx)
  (def (slot-spec? slot-spec)
    (syntax-case slot-spec ()
      ((slot a m) #t)
      ((slot a) #t)
      (_ #f)))

  (def (slot-accessor slot-spec)
    (syntax-case slot-spec ()
      ((slot a m) #'a)
      ((slot a) #'a)))

  (def (slot-mutator slot-spec)
    (syntax-case slot-spec ()
      ((slot a m) #'m)
      ((slot a) (stx-identifier #'a #'a "-set!"))))

  (syntax-case stx ()
    ((_ type (constructor slot ...) predicate slot-spec ...)
     (and (identifier? #'type)
          (identifier? #'constructor)
          (stx-andmap identifier? #'(slot ...))
          (identifier? #'predicate)
          (stx-andmap slot-spec? #'(slot-spec ...)))
     (if (fx= (length #'(slot ...)) (length #'(slot-spec ...)))
       (with-syntax* ((type-id (make-class-type-id #'type))
                      (type::t (stx-identifier #'type #'type "::t"))
                      ((accessor ...) (map slot-accessor #'(slot-spec ...)))
                      ((mutator ...) (map slot-mutator #'(slot-spec ...)))
                      ((unchecked-accessor ...)
                       (map (lambda (id) (stx-identifier id "&" id))
                            #'(accessor ...)))
                      ((unchecked-mutator ...)
                       (map (lambda (id) (stx-identifier id "&" id))
                            #'(mutator ...))))
         #'(begin
             (defstruct-type type::t #f constructor predicate
               id: type-id
               final: #t
               slots:
               ((slot accessor mutator) ...))
             (defsyntax type
               (make-class-type-info
                id: 'type-id
                name: 'type
                slots: '(slot ...)
                super: []
                struct?: #t
                final?: #t
                constructor-method: #f
                type-descriptor: (quote-syntax type::t)
                constructor: (quote-syntax constructor)
                predicate: (quote-syntax predicate)
                accessors: [['slot :: (quote-syntax accessor)] ...]
                mutators:  [['slot :: (quote-syntax mutator)] ...]
                unchecked-accessors: [['slot :: (quote-syntax unchecked-accessor)] ...]
                unchecked-mutators: [['slot :: (quote-syntax unchecked-mutator)] ...]))))
       (raise-syntax-error 'define-record-type "constructor - slot mismatch"
                           stx #'(slot ...) #'(slot-spec ...))))))
