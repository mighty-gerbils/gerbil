;;; -*- Gerbil -*-
;;; © vyzo
;;; utility macros
(import :std/error
        ../interface
        ./types)
(export #t)

(defrule (__zero arg ...) 0)
(defrule (__fail-output! where arg ...)
  (raise-io-error where "unable to perform output operation" args: [arg ...]))

(defrule (__check-buffer-open! where buffer)
  (using (bio buffer :- basic-buffer)
    (when bio.closed?
      (raise-io-closed where "buffer closed"))))

(defrule (is-input-buffer-instance? reader)
  (basic-input-buffer? (&interface-instance-object reader)))
(defrule (is-output-buffer-instance? writer)
  (basic-output-buffer? (&interface-instance-object writer)))

(defsyntax-case defreader-ext ()
  ((_ (method reader . args) body ...)
   (identifier? #'method)
   (with-identifiers
       ((checked-macro    #'method "BufferedReader-"  #'method)
        (unchecked-macro  #'method "&" #'checked-macro)
        (checked-method   #'method "::" #'checked-macro)
        (unchecked-method #'method "__" #'checked-macro))
     #'(begin
         (definterface-extension-method BufferedReader (method reader . args)
           body ...)
         (export checked-macro unchecked-macro checked-method unchecked-method)))))

(defsyntax-case defwriter-ext ()
  ((_ (method writer . args) body ...)
   (identifier? #'method)
   (with-identifiers
       ((checked-macro    #'method "BufferedWriter-"  #'method)
        (unchecked-macro  #'method "&" #'checked-macro)
        (checked-method   #'method "::" #'checked-macro)
        (unchecked-method #'method "__" #'checked-macro))
     #'(begin
         (definterface-extension-method BufferedWriter (method writer . args)
           => :fixnum
           body ...)
         (export checked-macro unchecked-macro checked-method unchecked-method)))))
