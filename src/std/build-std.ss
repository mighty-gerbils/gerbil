;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import ./build-config ./make)

(include "build-spec.ss")

(def (gerbil-build-nproc)
  (cond
   ((getenv "GERBIL_BUILD_NPROC" #f)
    => (lambda (x) (with-catch false (lambda () (def n (string->number x)) (if (< 0 n) n #f)))))
   (else #t)))

(def (build srcdir libdir)
  (make build-spec srcdir: srcdir libdir: libdir debug: 'src
        parallelize: (gerbil-build-nproc)))
