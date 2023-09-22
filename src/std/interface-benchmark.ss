;;; -*- Gerbil -*-
;;; © vyzo
;;; simple benchmark for evaluating cast and satisfies? performance
(import :gerbil/gambit
        ./iter
        ./interface)
(export main)

(interface A
  (a)
  (b)
  (c)
  (d))

(defstruct A-impl ())
(defmethod {a A-impl} void)
(defmethod {b A-impl} void)
(defmethod {c A-impl} void)
(defmethod {d A-impl} void)

(def (do-cast obj niters)
  (for (i (in-range niters))
    (A obj)))

(def (do-try-cast obj niters)
  (for (i (in-range niters))
    (is-A? obj)))

(def (do-check-cast obj niters)
  (let (obj (A obj))
    (for (i (in-range niters))
      (A obj))))

(def (cast-benchmark niters nthreads caster)
  (let ((obj (A-impl))
        (threads  []))
    (for (i (in-range nthreads))
      (set! threads (cons (spawn caster obj niters) threads)))
    (for (thread threads)
      (thread-join! thread))))

(def (main . args)
  (match args
    (["cast" threads iters]
     (let ((threads (string->number threads))
           (iters (string->number iters)))
       (time (cast-benchmark iters threads do-cast))))
    (["try-cast" threads iters]
     (let ((threads (string->number threads))
           (iters (string->number iters)))
       (time (cast-benchmark iters threads do-try-cast))))
    (["check-cast" threads iters]
     (let ((threads (string->number threads))
           (iters (string->number iters)))
       (time (cast-benchmark iters threads do-check-cast))))))
