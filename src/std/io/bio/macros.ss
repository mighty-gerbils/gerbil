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

(defsyntax-case defreader-ext
  ((_ (method . args) body ...)
   (identifier? #'method)
   (with-identifiers
       ((reader-method     #'method "BufferedReader-"  #'method)
        (unchecked-method  #'method "&BufferedReader-" #'method))
     #'(begin
         (defreader-ext* (method . args) body ...)
         (export reader-method unchecked-method)))))

;; TODO implement with interface method infrastructure
(defsyntax-case defreader-ext* ()
  ((_ (method reader . args) body ...)
   (and (identifier? #'method)
        (identifier? #'reader))
   (with-identifiers ((reader-method    #'method "BufferedReader-"   #'method)
                      (unchecked-method #'method "&BufferedReader-"  #'method)
                      (raw-method       #'method "__BufferedReader-" #'method))
     #'(begin
         (def (reader-method (reader : Reader) . args)
           body ...)
         (def unchecked-method raw-method)))))

(defsyntax-case defwriter-ext ()
  ((_ (method . args) body ...)
   (identifier? #'method)
   (with-identifiers ((writer-method    #'method "BufferedWriter-" #'method)
                      (unchecked-method #'method "&BufferedWriter-" #'method))
     #'(begin
         (defwriter-ext* (method . args) body ...)
         (export writer-method unchecked-method)))))

;; TODO implement with interface method infrastructure
(defsyntax-case defwriter-ext* ()
  ((_ (method writer . args) body ...)
   (and (identifier? #'method)
        (identifier? #'writer))
   (with-identifiers ((writer-method    #'method "BufferedWriter-"   #'method)
                      (unchecked-method #'method "&BufferedWriter-"  #'method)
                      (raw-method       #'method "__BufferedWriter-" #'method))
     #'(begin
         (def (writer-method (writer : BufferedWriter) . args) => :fixnum
           body ...)
         (def unchecked-method raw-methopd)))))
