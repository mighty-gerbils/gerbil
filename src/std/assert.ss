;;; -*- Gerbil -*-
;;; © vyzo and contributors
;;; assert macro, originally written by vyzo and enhanced by alex knauth

(import
  :std/error
  :std/sugar
  :std/format
  (for-syntax (only-in :gerbil/expander core-bound-identifier?)))
(export assert! assertion-failed?)

(deferror-class AssertionFailed () assertion-failed?)
(def (raise-assertion-failed message)
  (raise (AssertionFailed message where: 'assert)))

(begin-syntax
  ;; original idea from Jack Firth, Sam Phillips, and Alex Knauth for Rackunit:
  ;; https://github.com/racket/rackunit/issues/149#issuecomment-919208710
  ;; special-identifier? : Any -> Bool
  (def (special-identifier? stx)
    (and (identifier? stx)
         (or (core-bound-identifier? stx)
             (and (syntax-local-value stx false) #t))))

  ;; split-sub-exprs : Stx -> [Stx [[Id Stx] ...]]
  (def (split-sub-exprs stx)
    (syntax-case stx ()
      ((f a ...)
       (and (not (special-identifier? #'f)) (not (stx-ormap stx-keyword? #'(a ...))))
       (with-syntax (((x ...) (gentemps #'(a ...))))
         [(syntax/loc stx (f x ...)) #'((x a) ...)]))
      (_ [stx []])))

  ;; srcloc-string : Stx -> String
  (def (srcloc-string stx)
    (def loc (stx-source stx))
    (cond (loc (call-with-output-string "" (cut ##display-locat loc #t <>)))
          (else "?"))))

(defsyntax assert!
  (lambda (stx)
    (syntax-case stx ()
      ((_ condition)
       (with-syntax (((c ((x e) ...)) (split-sub-exprs #'condition))
                     (message (srcloc-string #'condition)))
         #'(let ((x e) ...)
             (assert!/where-helper c 'message 'condition [(cons 'e x) ...]))))
      ((_ condition message)
       (with-syntax (((c ((x e) ...)) (split-sub-exprs #'condition)))
         #'(let ((x e) ...)
             (assert!/where-helper c message 'condition [(cons 'e x) ...]))))
      ((_ condition message expr ...)
       #'(assert!/where-helper condition message 'condition [(cons 'expr expr) ...])))))

(defrule (assert!/where-helper condition message condition-expr extras)
  (unless condition
    (assert!/fail message condition-expr extras)))

(def (assert!/fail message condition-expr extras)
  (def hd (format "Assertion failed ~a: ~s" message condition-expr))
  (def str (apply string-append hd (map (match <> ((cons k v) (format "\n  ~s => ~r" k v))) extras)))
  (raise-assertion-failed str))
