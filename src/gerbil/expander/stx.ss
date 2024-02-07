;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander syntax objects
prelude: :<core>
package: gerbil/expander
namespace: gx

(import "common")
(export #t)

(declare (not safe))

;; ASTs -- syntactic context
(defstruct (identifier-wrap AST) (marks)
  id:    gx#identifier-wrap::t
  name:  syntax
  final: #t)
(defstruct (syntax-wrap AST) (mark)
  id:    gx#syntax-wrap::t
  name:  syntax
  final: #t)
(defstruct (syntax-quote AST) (context marks)
  id:    gx#syntax-quote::t
  name:  syntax
  final: #t)

;; primitive operations
(def (identifier? stx)
  (symbol? (stx-e stx)))

(def (identifier-quote? stx)
  (and (syntax-quote? stx)
       (symbol? (&AST-e stx))))

(def (sealed-syntax? stx)
  (cond
   ((syntax-quote? stx) #t)
   ((syntax-wrap? stx)
    (sealed-syntax? (&AST-e stx)))
   (else #f)))

(def (sealed-syntax-unwrap stx)
  (cond
   ((syntax-quote? stx) stx)
   ((syntax-wrap? stx)
    (sealed-syntax-unwrap (&AST-e stx)))
   (else #f)))

(def (syntax-e stx)
  (cond
   ((syntax-wrap? stx)
    (let lp ((e (&AST-e stx)) (marks [(&syntax-wrap-mark stx)]))
      (cond
       ((##structure? e)
        (case (##type-id (##structure-type e))
          ((gx#syntax-wrap::t)
           (lp (&AST-e e) (apply-mark (&syntax-wrap-mark e) marks)))
          ((gx#syntax-quote::t gx#identifier-wrap::t)
           (&AST-e e))
          ((gerbil#AST::t)
           (lp (&AST-e e) marks))
          (else e)))
       ((null? marks) e)
       ((pair? e)
        (cons (stx-wrap (car e) marks)
              (stx-wrap (cdr e) marks)))
       ((vector? e)
        (vector-map (cut stx-wrap <> marks) e))
       ((box? e)
        (box (stx-wrap (unbox e) marks)))
       (else e))))
   ((AST? stx)
    (&AST-e stx))
   (else stx)))

(def (syntax->datum stx)
  (cond
   ((AST? stx)
    (syntax->datum (&AST-e stx)))
   ((pair? stx)
    (cons
     (syntax->datum (car stx))
     (syntax->datum (cdr stx))))
   ((vector? stx)
    (vector-map syntax->datum stx))
   ((box? stx)
    (box (syntax->datum (unbox stx))))
   (else stx)))

(def (datum->syntax stx datum (src #f) (quote? #t))
  (def (wrap-datum e marks)
    (wrap-inner e (cut make-identifier-wrap <> src marks)))

  (def (wrap-quote e ctx marks)
    (wrap-inner e (cut make-syntax-quote <> src ctx marks)))

  (def (wrap-inner e wrap-e)
    (let recur ((e e))
      (cond
       ((symbol? e)
        (wrap-e e))
       ((pair? e)
        (cons (recur (car e))
              (recur (cdr e))))
       ((vector? e)
        (vector-map recur e))
       ((box? e)
        (box (recur (unbox e))))
       (else e))))

  (def (wrap-outer e)
    (if (AST? e) e
        (make-AST e src)))

  (cond
   ((AST? datum) datum)
   ((not stx)
    (make-AST datum src))
   ((identifier? stx)
    (let (stx (stx-unwrap stx))
      (wrap-outer
       (if (syntax-quote? stx)
         (if quote?
           (wrap-quote datum (&syntax-quote-context stx) (&syntax-quote-marks stx))
           (wrap-datum datum (&syntax-quote-marks stx)))
         (wrap-datum datum (&identifier-wrap-marks stx))))))
   (else
    (error "Bad template syntax; expected identifier" stx))))

;; marks
(def (stx-unwrap stx (marks []))
  (let lp ((e stx) (marks marks) (src (stx-source stx)))
    (cond
     ((syntax-wrap? e)
      (lp (&AST-e e)
          (apply-mark (&syntax-wrap-mark e) marks)
          (&AST-source e)))
     ((identifier-wrap? e)
      (if (null? marks) e
          (make-identifier-wrap
           (&AST-e e)
           (&AST-source e)
           (foldl apply-mark (&identifier-wrap-marks e) marks))))
     ((syntax-quote? e) e)
     ((AST? e)
      (lp (&AST-e e) marks (&AST-source e)))
     ((symbol? e)
      (make-identifier-wrap e src (reverse marks)))
     ((null? marks) e)
     ((pair? e)
      (cons (stx-wrap (car e) marks)
            (stx-wrap (cdr e) marks)))
     ((vector? e)
      (vector-map (cut stx-wrap <> marks) e))
     ((box? e)
      (box (stx-wrap (unbox e) marks)))
     (else e))))

(def (stx-wrap stx marks)
  (foldl (lambda (mark stx) (stx-apply-mark stx mark))
         stx marks))

(def (stx-rewrap stx marks)
  (foldr (lambda (mark stx) (stx-apply-mark stx mark))
         stx marks))

(def (stx-apply-mark stx mark)
  (cond
   ((syntax-quote? stx) stx)
   ((and (syntax-wrap? stx)
         (eq? mark (&syntax-wrap-mark stx)))
    (&AST-e stx))
   (else
    (make-syntax-wrap stx (stx-source stx) mark))))

(def (apply-mark mark marks)
  (match marks
    ([hd . rest]
     (if (eq? mark hd) rest
         (cons mark marks)))
    (else
     (cons mark marks))))

;; utilities
(def (stx-e stx)
  (cond
   ((syntax-wrap? stx)
    (stx-e (&AST-e stx)))
   ((AST? stx)
    (&AST-e stx))
   (else stx)))

(def (stx-source stx)
  (and (AST? stx)
       (&AST-source stx)))

(def (stx-wrap-source stx src)
  (if (or (AST? stx) (not src)) stx
      (make-AST stx src)))

(def (stx-datum? stx)
  (self-quoting? (stx-e stx)))

(def (self-quoting? x)
  (or (immediate? x)
      (number? x)
      (keyword? x)
      (string? x)
      (vector? x)
      (u8vector? x)))

(def (stx-boolean? e)
  (boolean? (stx-e e)))

(def (stx-keyword? e)
  (keyword? (stx-e e)))

(def (stx-char? e)
  (char? (stx-e e)))

(def (stx-number? e)
  (number? (stx-e e)))

(def (stx-fixnum? e)
  (fixnum? (stx-e e)))

(def (stx-string? e)
  (string? (stx-e e)))

(def (stx-null? e)
  (null? (stx-e e)))

(def (stx-pair? e)
  (pair? (stx-e e)))

(def (stx-list? e)
  (match (stx-e e)
    ([_ . rest] (stx-list? rest))
    (tail (null? tail))))

(def (stx-pair/null? e)
  (let (e (stx-e e))
    (or (pair? e)
        (null? e))))

(def (stx-vector? e)
  (vector? (stx-e e)))

(def (stx-box? e)
  (box? (stx-e e)))

(def (stx-eq? x y)
  (eq? (stx-e x) (stx-e y)))

(def (stx-eqv? x y)
  (eqv? (stx-e x) (stx-e y)))

(def (stx-equal? x y)
  (equal? (stx-e x) (stx-e y)))

(def (stx-false? x)
  (not (stx-e x)))

;; identifier utils
(def (stx-identifier template . args)
  (datum->syntax template (apply make-symbol (syntax->datum args))
                 (stx-source template)))

(def (stx-identifier-marks stx)
  (stx-identifier-marks* (stx-unwrap stx)))

(def (stx-identifier-marks* stx)
  (cond
   ((identifier-wrap? stx)
    (&identifier-wrap-marks stx))
   ((syntax-quote? stx)
    (&syntax-quote-marks stx))
   (else
    (error "Bad wrap; expected unwrapped identifier" stx))))

(def (stx-identifier-context stx)
  (let (stx (stx-unwrap stx))
    (and (identifier-quote? stx)
         (&syntax-quote-context stx))))

(def (identifier-list? stx)
  (match (stx-e stx)
    ([hd . rest]
     (and (identifier? hd)
          (identifier-list? rest)))
    ([] #t)
    (else #f)))

(def (genident (e 'g) (src #f))
  (stx-wrap-source
   (gensym (let (e (stx-e e)) (if (interned-symbol? e) e 'g)))
   (or (stx-source e) src)))

(def (gentemps stx-lst)
  (stx-map genident stx-lst))

;; foldings
(def (syntax->list stx)
  (stx-map values stx))

(def (stx-car stx)
  (declare (safe))
  (car (syntax-e stx)))

(def (stx-cdr stx)
  (declare (safe))
  (cdr (syntax-e stx)))

(def (stx-length stx)
  (let lp ((rest stx) (n 0))
    (match (stx-e rest)
      ([_ . rest]
       (lp rest (fx1+ n)))
      (else n))))

(def* stx-for-each
  ((f stx)
   (stx-for-each1 f stx))
  ((f xstx ystx)
   (stx-for-each2 f xstx ystx)))

(def (stx-for-each1 f stx)
  (check-procedure f)
  (let lp ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (f hd)
       (lp rest))
      ([] #!void)
      (else (f rest)))))

(def (stx-for-each2 f xstx ystx)
  (check-procedure f)
  (let lp ((xrest xstx) (yrest ystx))
    (match (syntax-e xrest)
      ([xhd . xrest]
       (match (syntax-e yrest)
         ([yhd . yrest]
          (f xhd yhd)
          (lp xrest yrest))))
      ((? (not null?))
       (match yrest
         ((? (not stx-null?))
          (f xrest yrest))))
      (else #!void))))

(def* stx-map
  ((f stx)
   (stx-map1 f stx))
  ((f xstx ystx)
   (stx-map2 f xstx ystx)))

(def (stx-map1 f stx)
  (check-procedure f)
  (let recur ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (cons (f hd)
             (recur rest)))
      ([] [])
      (else (f rest)))))

(def (stx-map2 f xstx ystx)
  (check-procedure f)
  (let recur ((xrest xstx) (yrest ystx))
    (match (syntax-e xrest)
      ([xhd . xrest]
       (match (syntax-e yrest)
         ([yhd . yrest]
          (cons (f xhd yhd)
                (recur xrest yrest)))))
      ((? (not null?))
       (match yrest
         ((? (not stx-null?))
          (f xrest yrest))))
      (else []))))

(def (stx-andmap f stx)
  (check-procedure f)
  (let lp ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (and (f hd)
            (lp rest)))
      ([] #t)
      (else (f rest)))))

(def (stx-ormap f stx)
  (check-procedure f)
  (let lp ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (or (f hd)
           (lp rest)))
      ([] #f)
      (else (f rest)))))

(def (stx-foldl f iv stx)
  (check-procedure f)
  (let lp ((r iv) (rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (lp (f hd r) rest))
      ([] r)
      (else (f rest r)))))

(def (stx-foldr f iv stx)
  (check-procedure f)
  (let recur ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (f hd (recur rest)))
      ([] iv)
      (else (f rest iv)))))

(def (stx-reverse stx)
  (stx-foldl cons [] stx))

(def (stx-last stx)
  (let lp ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (if (stx-null? rest) hd
           (lp rest)))
      (else rest))))

(def (stx-last-pair stx)
  (let lp ((hd stx))
    (match (syntax-e hd)
      ([_ . rest]
       (if (stx-pair? rest)
         (lp rest)
         hd)))))

(def (stx-list-tail stx k)
  (let lp ((rest stx) (k k))
    (if (fxpositive? k)
      (match (syntax-e rest)
        ([_ . rest]
         (lp rest (fx1- k))))
      rest)))

(def (stx-list-ref stx k)
  (stx-car (stx-list-tail stx k)))

;; plists
(def (stx-plist? stx (key? stx-keyword?))
  (check-procedure key?)
  (let lp ((rest stx))
    (match (stx-e rest)
      ([hd . rest]
       (and (key? hd)
            (match (stx-e rest)
              ([_ . rest] (lp rest))
              (else #f))))
      ([] #t)
      (else #f))))

(def (stx-getq key stx (key=? stx-eq?))
  (check-procedure key=?)
  (let lp ((rest stx))
    (match (syntax-e rest)
      ([hd . rest]
       (match (syntax-e rest)
         ([val . rest]
          (if (key=? hd key) val
              (lp rest)))))
      (else #f))))
