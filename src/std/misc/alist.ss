;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; List utilities

(export
  alist?
  plist->alist
  acons
  asetq asetv aset asetq! asetv! aset! assq-set! assv-set! assoc-set!
  aremq aremv arem aremq! aremv! arem!)

(import
  :std/sugar)

;; This function checks if the list is a proper association-list.
;; ie it has the form [[key1 . val1] [key2 . val2]]
(def (alist? alist)
  (match alist
    ([] #t)
    ([[sym . val] . rest]
     (alist? rest))
    (v #f)))

;; This function transform a property list (k1 v1 k2 v2 ...) into
;; an association list ((k1 . v1) (k2 . v2) ...).
(def (plist->alist plist)
  (let loop ((p plist))
    (match p
      ([k v . rest] (cons (cons k v) (loop rest)))
      ([] [])
      (else (error "improper plist" plist)))))

;; The alist definitions below are patterned after pgetq and friends from gerbil/runtime/gx-gambc0.scm
(defrule (define-aset aset cmp)
  (def (aset lst key val)
     (let lp ((rest lst) (rhd []))
       (match rest
         ([[k . v] . rest]
          (if (cmp k key)
            (foldl cons [[key . val] . rest] rhd)
            (lp rest [[k . v] . rhd])))
         (else
          [[key . val] . lst])))))

(def (acons k v acc) [[k . v] . acc])

(define-aset asetq eq?)
(define-aset asetv eqv?)
(define-aset aset equal?)

;; Note how the current implementation ensures that the cons cell whose car
;; holds the value for a given key will never change, though there is
;; currently no agetq-cell function to get to it.
;; Also, we privilege recently added keys by pushing them to the front of the
;; alist rather than to its end.
(defrule (define-aset! aset! cmp)
  (def (aset! lst key val)
    (unless (pair? lst) (error "Cannot destructively modify an empty alist" aset! key lst val))
    (let lp ((l lst))
      (match l
        ([kv . r] (if (cmp key (car kv)) (set-cdr! kv val) (lp r)))
        ([] (match lst ([k1v1 . r] (set-car! lst [key . val]) (set-cdr! lst [k1v1 . r]))))
        (_ (error "Invalid alist" aset! key lst val))))))

(define-aset! asetq! eq?) (define (assq-set! k l v) (asetq! l k v))
(define-aset! asetv! eqv?) (define (assv-set! k l v) (asetv! l k v))
(define-aset! aset! equal?) (define (assoc-set! k l v) (aset! l k v))

(defrule (define-arem arem cmp)
  (def (arem key lst)
    (let lp ((tl lst) (rhd []))
      (match tl
        ([kv . r] (if (cmp key (car kv)) (foldl cons r rhd) (lp r [kv . rhd])))
        ([] lst)
        (_ (error "Invalid alist" 'arem key lst))))))

(define-arem aremq eq?)
(define-arem aremv eqv?)
(define-arem arem equal?)

(defrule (define-arem! arem! cmp)
  (def (arem! key lst)
    (def (invalid) (error "Invalid alist" arem! key lst))
    (let lp ((p lst) (prev #f))
      (match p
        ([k1v1 . r]
         (if (cmp key (car k1v1))
           (if prev
             (set-cdr! prev r)
             (match r
               ([k2v2 . rr] (set-car! p k2v2) (set-cdr! p rr))
               ([] (error "Cannot remove last key from alist" arem! key lst))
               (_ (invalid))))
           (lp r p)))
        ([] (void)) ; key not found: NOP
        (_ (invalid))))))

(define-arem! aremq! eq?)
(define-arem! aremv! eqv?)
(define-arem! arem! equal?)
