;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; List utilities

(export
  plist?
  alist->plist
  psetq psetv pset psetq! psetv! pset! pgetq-set! pgetv-set! pget-set!
  premq premv prem premq! premv! prem!)

(import
  :std/sugar)

;; This function checks if the list is a proper property-list.
;; ie it has the form [key1 val1 key2 val2]
(def (plist? plist)
  (match plist
    ([] #t)
    ([key val . rest]
     (plist? rest))
    (v #f)))

;; This function transform an association list ((k1 . v1) (k2 . v2) ...) into
;; an association list (k1 v1 k2 v2 ...)
(def (alist->plist alist)
  (let loop ((p alist))
    (match p
      ([[k . v] . rest] (append [k v] (loop rest)))
      ([] [])
      (else (error "improper alist" alist)))))

;; The plist definitions below are patterned after pgetq and friends from gerbil/runtime/gx-gambc0.scm
(defrule (define-pset pset cmp)
  (def (pset lst key val)
     (let lp ((rest lst) (rhd []))
       (match rest
         ([k v . rest]
          (if (cmp k key)
            (foldl cons (cons* key val rest) rhd)
            (lp rest (cons* v k rhd))))
         (else
          (cons* key val lst))))))

(define-pset psetq eq?)
(define-pset psetv eqv?)
(define-pset pset equal?)

;; Note how the current implementation ensures that the cons cell whose car
;; holds the value for a given key will never change, though there is
;; currently no pgetq-cell function to get to it.
;; Also, we privilege recently added keys by pushing them to the front of the
;; plist rather than to its end.
(defrule (define-pset! pset! cmp)
  (def (pset! lst key val)
    (unless (pair? lst) (error "Cannot destructively modify an empty plist" pset! lst key val))
    (let lp ((l lst))
      (match l
        ([k v . r] (if (cmp k key) (set-car! (cdr l) val) (lp r)))
        ([] (match lst ([k1 . v1r] (set-car! lst key) (set-cdr! lst (cons* val k1 v1r)))))
        (_ (error "Invalid plist" pset! lst key val))))))

(define-pset! psetq! eq?)
(def pgetq-set! (case-lambda ((k l v) (psetq! l k v)) ((k l d v) (psetq! l k v))))
(define-pset! psetv! eqv?)
(def pgetv-set! (case-lambda ((k l v) (psetv! l k v)) ((k l d v) (psetv! l k v))))
(define-pset! pset! equal?)
(def pget-set! (case-lambda ((k l v) (pset! l k v)) ((k l d v) (pset! l k v))))

(defrule (define-prem prem cmp)
  (def (prem key lst)
    (let lp ((tl lst) (rhd []))
      (match tl
        ([k v . r] (if (cmp key k) (foldl cons r rhd) (lp r (cons* v k rhd))))
        ([] lst)
        (_ (error "Invalid plist" 'prem key lst))))))

(define-prem premq eq?)
(define-prem premv eqv?)
(define-prem prem equal?)

(defrule (define-prem! prem! cmp)
  (def (prem! key lst)
    (def (invalid) (error "Invalid plist" prem! key lst))
    (let lp ((p lst) (prev #f))
      (match p
        ([k1 _ . r]
         (if (cmp key k1)
           (if prev
             (set-cdr! prev r)
             (match r
               ([k2 . v2r] (set-car! p k2) (set-cdr! p v2r))
               ([] (error "Cannot remove last key from plist" prem! key lst))
               (_ (invalid))))
           (lp r (cdr p))))
        ([] (void)) ; key not found: NOP
        (_ (invalid))))))

(define-prem! premq! eq?)
(define-prem! premv! eqv?)
(define-prem! prem! equal?)
