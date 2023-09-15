;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; package build script template

(import :std/make
        :gerbil/gambit/misc)
(export defbuild-script)

(def (build-main args build-spec keys that-file)
  (def (parse-options opts)
    (let lp ((rest opts) (options []))
      (match rest
        ([] options)
        (["--release" . rest]
         (lp rest (cons* build-release: #t options)))
        (["--optimized" . rest]
         (lp rest (cons* build-optimized: #t options)))
        (else
         (error "Unexpected " rest)))))
  (def srcdir
    (path-normalize (path-directory that-file)))
  (def (build options)
    (apply make build-spec srcdir: srcdir (append options keys)))
  (def (clean)
    (apply make-clean build-spec srcdir: srcdir keys))

  (match args
    (["meta"] (write '("spec" "compile" "clean")) (newline))
    (["spec"] (pretty-print build-spec))
    (["compile" . options] (build (parse-options options)))
    (["clean"] (clean))
    ([] (build []))))

(defsyntax (defbuild-script stx)
  (syntax-case stx ()
    ((macro build-spec keys ...)
     (with-syntax* ((@this-script (stx-identifier #'macro 'this-source-file))
                    (+this-source-file+ (syntax/loc stx (@this-script)))
                    (@main        (stx-identifier #'macro 'main)))
       #'(def (@main . args)
           (build-main args build-spec [keys ...] +this-source-file+))))))
