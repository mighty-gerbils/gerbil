;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :gerbil/core prelude ssxi
prelude: :gerbil/compiler/ssxi
package: gerbil

;; inline rules for runtime primitives
(declare-inline-rules!
 (direct-instance?
  (ast-rules (%#call)
        ((%#call _ klass obj)
         (%#call (%#ref ##structure-direct-instance-of?)
                 obj
                 (%#call (%#ref ##type-id) klass)))))

 (make-object
  (lambda (ast)
    (ast-case ast (%#call %#quote)
      ((%#call make-object klass (%#quote len))
       (with-syntax (((init ...) (make-list (fx1- (stx-e #'len)) '(%#quote #f))))
         #'(%#call (%#ref ##structure) klass init ...)))
      ((%#call make-object klass len)
       (with-syntax (($obj (make-symbol (gensym '__obj))))
         #'(%#let-values ((($obj) (%#call (%#ref ##make-structure) klass len)))
                         (%#begin
                          (%#call (%#ref object-fill!) (%#ref $obj) (%#quote #f))
                          (%#ref $obj))))))))

 (struct-instance-init!
  (lambda (ast)
    (ast-case ast (%#call %#ref)
      ((%#call _ self)
       #'(%#quote #!void))
      ((%#call _ (%#ref self) arg ...)
       (with-syntax* (((values arg-count) (length #'(arg ...)))
                      ((off ...) (iota arg-count 1))
                      (count arg-count))
         #'(%#if (%#call (%#ref ##fx<)
                         (%#quote count)
                         (%#call (%#ref ##structure-length) (%#ref self)))
                 (%#begin
                  (%#call (%#ref ##unchecked-structure-set!) (%#ref self) arg (%#quote off) (%#quote #f) (%#quote #f))
                  ...
                  (%#quote #!void))
                 (%#call (%#ref error)
                         (%#quote "struct-instance-init!: too many arguments for struct")
                         (%#ref self)
                         (%#quote count)
                         (%#call (%#ref ##vector-length) (%#ref self))))))
      ((%#call recur self arg ...)
       (with-syntax (($self (make-symbol (gensym '__self))))
         #'(%#let-values ((($self) self))
                         (%#call recur (%#ref $self) arg ...)))))))

 (call-method
  (lambda (ast)
    (ast-case ast (%#call %#ref)
      ((%#call _ (%#ref self) method arg ...)
       (with-syntax (($method (make-symbol (gensym '__method))))
         #'(%#let-values ((($method) (%#call (%#ref method-ref) (%#ref self) method)))
                         (%#if (%#ref $method)
                               (%#call (%#ref $method) (%#ref self) arg ...)
                               (%#call (%#ref error) (%#quote "Missing method")
                                       (%#ref self) method)))))
      ((%#call recur self method arg ...)
       (with-syntax (($self (make-symbol (gensym '__self))))
         #'(%#let-values ((($self) self))
                         (%#call recur (%#ref $self) method arg ...)))))))


 (true
  (ast-rules (%#call %#ref)
    ((%#call _ (%#ref arg) ...)
     (%#quote #t))
    ((%#call _ arg ...)
     (%#begin arg ... (%#quote #t)))))
 (true?
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref eq?) arg (%#quote #t)))))
 (false
  (ast-rules (%#call %#ref)
    ((%#call _ (%#ref arg) ...)
     (%#quote #f))
    ((%#call _ arg ...)
     (%#begin arg ... (%#quote #f)))))
 (void
  (ast-rules (%#call %#ref)
    ((%#call _ (%#ref arg) ...)
     (%#quote #!void))
    ((%#call _ arg ...)
     (%#begin arg ... (%#quote #!void)))))
 (void?
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref eq?) arg (%#quote #!void)))))
 (identity
  (ast-rules (%#call)
    ((%#call _ arg)
     arg)))
 (cons*
  (ast-rules (%#call)
    ((%#call _ x y)
     (%#call (%#ref cons) x y))
    ((%#call recur x y rest ...)
     (%#call (%#ref cons) x (%#call recur y rest ...)))))
 (values-count
  (lambda (ast)
    (ast-case ast (%#call %#ref)
      ((%#call _ (%#ref var))
       #'(%#if (%#call (%#ref ##values?) (%#ref var))
               (%#call (%#ref ##vector-length) (%#ref var))
               (%#quote 1)))
      ((%#call recur expr)
       (with-syntax (($values (make-symbol (gensym '__values))))
         #'(%#let-values ((($values) expr))
                         (%#call recur (%#ref $values))))))))
 (values->list
  (lambda (ast)
    (ast-case ast (%#call %#ref)
      ((%#call _ (%#ref var))
       #'(%#if (%#call (%#ref ##values?) (%#ref var))
               (%#call (%#ref ##vector->list) (%#ref var))
               (%#call (%#ref list) (%#ref var))))
      ((%#call recur expr)
       (with-syntax (($values (make-symbol (gensym '__values))))
         #'(%#let-values ((($values) expr))
                         (%#call recur (%#ref $values))))))))
 (1+
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref +) arg (%#quote 1)))))
 (1-
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref -) arg (%#quote 1)))))
 (fx1+
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref fx+) arg (%#quote 1)))))
 (fx1-
  (ast-rules (%#call)
    ((%#call _ arg)
     (%#call (%#ref fx-) arg (%#quote 1))))))
