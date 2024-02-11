;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; Testing the c3 linearization algorithm
prelude: "../prelude/core"

(export c3-test)

(import
  ;;  :gerbil/runtime/c3
  (only-in :gerbil/runtime/mop type-descriptor-all-slots)
  (only-in :std/misc/hash hash-ensure-ref)
  (only-in :std/sugar defrule)
  (only-in :std/test test-suite test-case check check-exception)
  (only-in :std/values first-value))

(define gerbil/runtime 'gerbil/runtime)
(define :gerbil/core ':gerbil/core)
;;(include "../../gerbil/runtime/util.ss")
(include "../../gerbil/runtime/c3.ss")

(module <tsi>
  (export #t)
  (import (only-in :std/text/char-set char-ascii-lowercase?))
  (def (test-struct? sym)
    (char-ascii-lowercase? (string-ref (symbol->string sym) 0))))

(import <tsi> (phi: +1 <tsi>))

;;; Test vectors
(defsyntax (defhierarchy stx)
  (syntax-case stx ()
    ((ctx (my-objects my-supers my-descriptors) (object supers ...) ...)
     (with-syntax ((((struct? descr) ...)
                    (stx-map (lambda (o) [(test-struct? (syntax-e o))
                                     (stx-identifier #'ctx o "::t")])
                             #'(object ...))))
       #'(begin
           (def my-objects '(object ...))
           (def my-supers '((object supers ...) ...))
           (defclass (object supers ...) (object)
             struct: struct?
             transparent: #t) ...
           (def my-descriptors [descr ...]))))))

(defhierarchy (my-objects my-supers my-descriptors)
  (O) (A O) (B O) (C O) (D O) (E O)
  ;; Example from 2021 https://en.wikipedia.org/wiki/C3_linearization
  (K1 A B C) (K2 D B E) (K3 D A) (Z K1 K2 K3)
  ;; Example from 2023 https://en.wikipedia.org/wiki/C3_linearization with K->J, Z->Y
  (J1 C A B) (J2 B D E) (J3 A D) (Y J1 J3 J2)
  ;; Example from the C3 paper https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.19.3910
  ;; keeping only the initials of the classes
  ;; object boat day-boat wheel-boat engine-less small-multihull pedal-wheel-boat small-catamaron pedalo
  (DB B) (WB B) (EL DB) (SM DB) (PWB EL WB) (SC SM) (P PWB SC)
  ;; Other example from the paper, that leads to order inconsistency
  ;; also keeping only the initials of the classes
  ;; object grid-layout horizontal-grid vertical-grid hv-grid vh-grid ;; omitting confused-grid for now
  (GL O) (HG GL) (VG GL) (HVG HG VG) (VHG VG HG) #; (CG HVG VHG)
  ;; https://stackoverflow.com/questions/40478154/does-pythons-mro-c3-linearization-work-depth-first-empirically-it-does-not
  (HH) (GG HH) (II GG) (FF HH) (EE HH) (DD FF) (CC EE FF GG) (BB) (AA BB CC DD)
  (o O) (a o) (b a) (c b o) (d D c) (M A B b a) (N C c) (L M N) (k D L) (j E k A) (I N M))

(def my-precedence-lists
  '((O) (A O) (B O) (C O) (D O) (E O)
    (K1 A B C O) (K2 D B E O) (K3 D A O) (Z K1 K2 K3 D A B C E O)
    (J1 C A B O) (J2 B D E O) (J3 A D O) (Y J1 C J3 A J2 B D E O)
    (DB B O) (WB B O) (EL DB B O) (SM DB B O) (PWB EL DB WB B O) (SC SM DB B O)
    (P PWB EL SC SM DB WB B O)
    (GL O) (HG GL O) (VG GL O) (HVG HG VG GL O) (VHG VG HG GL O) #;(CG --- error!)
    (HH) (GG HH) (II GG HH) (FF HH) (EE HH) (DD FF HH)
    (CC EE FF GG HH) (BB) (AA BB CC EE DD FF GG HH)
    (o O) (a o O) (b a o O) (c b a o O) (d D c b a o O) (M A B b a o O)
    (N C c b a o O) (L M A B N C c b a o O) (k D L M A B N C c b a o O)
    (j E k D L M A B N C c b a o O) (I N C M A B c b a o O)))

(defrule (def-alist-getter getter alist table)
  (begin (def table (list->hash-table alist)) (def getter (cut hash-get table <>))))
(def-alist-getter my-get-supers my-supers my-supers-table)
(def-alist-getter my-get-precedence-list my-precedence-lists my-precedence-list-table)

;;; Test-specialized C4 linearization
(def my-compute-precedence-list-cache (make-hash-table))
(def (my-compute-precedence-list x)
  (hash-ensure-ref
   my-compute-precedence-list-cache x
   (cut first-value
        (c4-linearize [x] (my-get-supers x)
                      get-precedence-list: my-compute-precedence-list
                      struct: test-struct?
                      eq: eq?
                      get-name: identity))))

;;; Previous implementation:
(def (old-linearize-supers x (get-supers my-get-supers))
  (cons x (class-linearize-mixins (get-supers x) get-supers)))

(def (class-linearize-mixins klass-lst (get-supers my-get-supers))
  (def (class->list klass)
    (old-linearize-supers klass get-supers))
  (match klass-lst
    ([] [])
    ([klass]
     (class->list klass))
    (else
     (__linearize-mixins
      (map class->list klass-lst)))))

(def (__linearize-mixins lst)
  (def (K rest r)
    (match rest
      ([hd . rest]
       (linearize1 hd rest r))
      (else
       (reverse r))))
  (def (linearize1 hd rest r)
    (match hd
      ([hd-first . hd-rest]
       (if (findq hd-first rest)
         (linearize2 rest (list hd) r)
         (K (cons hd-rest rest)
            (putq hd-first r))))
      (else
       (K rest r))))
  (def (linearize2 rest pre r)
    (let lp ((rest rest) (pre pre))
      (match rest
        ([hd . rest]
         (match hd
           ([hd-first . hd-rest]
            (if (findq hd-first rest)
              (lp rest (cons hd pre))
              (K (foldl cons (cons hd-rest rest) pre)
                 (putq hd-first r))))
           (else
            (lp rest pre)))))))
  (def (putq hd lst)
    (if (memq hd lst) lst
        (cons hd lst)))
  (def (findq hd rest)
    (find (lambda (lst) (memq hd lst)) rest))
  (K lst '()))

(def c3-test
  (test-suite "test :gerbil/runtime/c3"
    (test-case "utils"
      (check (values->list (append-reverse-until odd? [2 4 6 9 12 14 15] '(a b c d e)))
             => '((9 12 14 15) (6 4 2 a b c d e))))
    (test-case "c3 linearization"
      (check (map my-compute-precedence-list my-objects) => my-precedence-lists)
      ;; check discrepancy with old MRO resolution algorithm
      (check (my-compute-precedence-list 'Z) =>  '(Z K1 K2 K3 D A B C E O))
      (check (old-linearize-supers 'Z) =>        '(Z K1 K2 K3 D B E A C O)) ; different: B A C bad!
      (check (my-compute-precedence-list 'Y) =>  '(Y J1 C J3 A J2 B D E O))
      (check (old-linearize-supers 'Y) =>        '(Y J1 C J3 A J2 B D E O)) ; same
      (check (my-compute-precedence-list 'P) =>  '(P PWB EL SC SM DB WB B O))
      (check (old-linearize-supers 'P) =>        '(P PWB EL SC SM DB WB B O)) ; same
      (check (my-compute-precedence-list 'AA) => '(AA BB CC EE DD FF GG HH))
      (check (old-linearize-supers 'AA) =>       '(AA BB CC EE DD FF GG HH)) ; same
      (check (my-compute-precedence-list 'a) =>  '(a o O))

      ;; Try and fail to compute a precedence-list for the confused-grid example in the C3 paper
      (hash-put! my-supers-table 'CG '(HVG VHG))
      (check-exception (my-compute-precedence-list 'CG) true)

      ;; Slot computation order now follows the MRO!
      ;; Previously returned (O A B C K1 D E K2 K3 Z), which is so wrong:
      (check (type-descriptor-all-slots Z::t) => #(#f O E C B A D K3 K2 K1 Z))
      ;; Previously returned (O C A B J1 D J3 E J2 Y)), which is so wrong:
      (check (type-descriptor-all-slots Y::t) => #(#f O E D B J2 A J3 C J1 Y)))
    (test-case "class inheritance"
      (check (map (lambda (t) (map ##type-name (class-precedence-list t))) my-descriptors)
             => my-precedence-lists)
      ;; Legacy implementation: BAD. We want everything to match the precedence-list (or its reverse)
      (check (map ##type-name (class-precedence-list Z::t)) => '(Z K1 K2 K3 D A B C E O)) ;; FIXED!
      (check (map ##type-name (class-precedence-list Y::t)) => '(Y J1 C J3 A J2 B D E O))))) ;; same!
