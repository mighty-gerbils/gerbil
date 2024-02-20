;;; -*- Gerbil -*-
;;; © vyzo
;;; simple benchmark for evaluating interface specialization performance effects
(import :gerbil/gambit
        :std/iter
        :std/interface)
(export main)

(defclass A (x y))
(defclass (B A) (z))

(defmethod {linear A}
  (lambda (self w)
    (fx+ (fx* (A-x self) w) (A-y self))))

(defmethod {bilinear-combination B}
  (lambda (self w z)
    {self.bilinear {self.linear w} z}))

(defmethod {bilinear B}
  (lambda (self lc z)
    (fx+ lc (fx* (B-z self) z))))

(interface Combinator
  (bilinear-combination w z))

(def (run iters)
  (let (instance (Combinator (B x: 1 y: 2 z: 3)))
    (for (i (in-range iters))
      (let (result (&Combinator-bilinear-combination instance 4 5))
        (unless (= result 21)
          (error "bad result" result: result expected: 21))))))

(def (main iters)
  (let (iters (string->number iters))
    (time (run iters))))
