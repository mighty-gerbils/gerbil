;;; -*- Gerbil -*-
;;; © vyzo
;;; interface unit-test
(import :std/test
        :std/interface)
(export interface-test)

(defstruct X (x))
(defclass (Y X) (y)
  constructor: :init!)

(defmethod {:init! Y}
  (lambda (self x y: y)
    (set! (X-x self) x)
    (set! (@ self y) y)))

(interface A
  (a x))
(interface B
  (b x))
(interface (C A B)
  (c x))

(defmethod {a X}
  (lambda (self arg) (+ (X-x self) arg)))
(defmethod {b X}
  (lambda (self arg) (- (X-x self) arg)))
(defmethod {c X}
  (lambda (self arg) (* (X-x self) arg)))

(defmethod {a Y}
  (lambda (self arg)
    (* (+ (X-x self) arg) (Y-y self))))
(defmethod {b Y}
  (lambda (self arg)
    (* (- (X-x self) arg) (Y-y self))))
(defmethod {c Y}
  (lambda (self arg)
    (* (X-x self) (Y-y self) arg)))

(def interface-test
  (test-suite "test :std/interface"
    (test-case "test dispatch"
      (def x (make-X 1))
      (def y (make-Y 1 y: 2))

      (check (is-A? x) => #t)
      (check (is-B? x) => #t)
      (check (is-C? x) => #t)

      (check (A-a (A x) 1) => 2)
      (check (B-b (B x) 1) => 0)
      (check (C-a (C x) 1) => 2)
      (check (C-b (C x) 1) => 0)
      (check (C-c (C x) 1) => 1)

      (check (is-A? y) => #t)
      (check (is-B? y) => #t)
      (check (is-C? y) => #t)

      (check (A-a (A y) 1) => 4)
      (check (B-b (B y) 1) => 0)
      (check (C-a (C y) 1) => 4)
      (check (C-b (C y) 1) => 0)
      (check (C-c (C y) 1) => 2))

    (test-case "test conversions"
      (def x (make-X 1))
      (def y (make-Y 1 y: 2))

      (def xa (A x))
      (def xb (B x))
      (def xc (C x))

      (def ya (A y))
      (def yb (B y))
      (def yc (C y))

      (check (A? xa) => #t)
      (check (B? xa) => #f)
      (check (C? xa) => #f)

      (check (A? xb) => #f)
      (check (B? xb) => #t)
      (check (C? xb) => #f)

      (check (A? xc) => #f)
      (check (B? xc) => #f)
      (check (C? xc) => #t)

      (check (A? ya) => #t)
      (check (B? ya) => #f)
      (check (C? ya) => #f)

      (check (A? yb) => #f)
      (check (B? yb) => #t)
      (check (C? yb) => #f)

      (check (A? yc) => #f)
      (check (B? yc) => #f)
      (check (C? yc) => #t)

      (check (B-b (B xa) 1) => 0)
      (check (C-a (C xb) 1) => 2)
      (check (C-b (C xb) 1) => 0)
      (check (C-c (C xb) 1) => 1)
      (check (A-a (A xc) 1) => 2)

      (check (B-b (B ya) 1) => 0)
      (check (C-a (C yb) 1) => 4)
      (check (C-b (C yb) 1) => 0)
      (check (C-c (C yb) 1) => 2)
      (check (A-a (A yc) 1) => 4))))
