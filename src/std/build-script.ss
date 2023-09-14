;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; package build script template

(import :std/make
        :gerbil/gambit/misc)
(export defbuild-script)

(def (build-main args build-spec keys that-file)
  (def srcdir (path-normalize (path-directory that-file)))
  (def (build) (apply make build-spec srcdir: srcdir keys))
  (def (clean) (apply make-clean build-spec srcdir: srcdir keys))
  (match args
    (["meta"] (write '("spec" "compile" "clean")) (newline))
    (["spec"] (pretty-print build-spec))
    (["compile"] (build))
    (["clean"] (clean))
    ([] (build))))

(defsyntax (defbuild-script stx)
  (syntax-case stx ()
    ((macro build-spec keys ...)
     (with-syntax* ((@this-script (stx-identifier #'macro 'this-source-file))
                    (+this-source-file+ (syntax/loc stx (@this-script)))
                    (@main        (stx-identifier #'macro 'main)))
       #'(def (@main . args)
           (build-main args build-spec [keys ...] +this-source-file+))))))
