;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; package build script template

(import :std/make
        :gerbil/gambit/misc)
(export defbuild-script)

(def (read-package-prefix srcdir)
  (let (plist (call-with-input-file (path-expand "gerbil.pkg" srcdir) read))
    (cond
     ((eof-object? plist) #f)
     ((pgetq package: plist) => symbol->string)
     (else #f))))

(def (build-main args build-spec keys that-file)
  (def srcdir (path-normalize (path-directory that-file)))
  (def prefix (read-package-prefix srcdir))
  (def (build) (apply make build-spec srcdir: srcdir prefix: prefix keys))
  (match args
    (["meta"] (write '("spec" "compile")) (newline))
    (["spec"] (pretty-print build-spec))
    (["deps"] (void)) ;; obsolete, for backward compatibility only.
    (["compile"] (build))
    ([] (build))))

(defsyntax (defbuild-script stx)
  (syntax-case stx ()
    ((macro build-spec keys ...)
     (with-syntax* ((@this-script (stx-identifier #'macro 'this-source-file))
                    (+this-source-file+ (syntax/loc stx (@this-script)))
                    (@main        (stx-identifier #'macro 'main)))
       #'(def (@main . args)
           (build-main args build-spec [keys ...] +this-source-file+))))))
