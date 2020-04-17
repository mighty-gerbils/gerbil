;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; package build script template

(import :std/make :std/misc/list
        :gerbil/gambit/misc)
(export defbuild-script)

(defsyntax (defbuild-script stx)
  (syntax-case stx ()
    ((macro build-spec)
     (with-syntax* ((@build-spec  (stx-identifier #'macro '@build-spec))
                    (@srcdir      (stx-identifier #'macro '@srcdir))
                    (@prefix      (stx-identifier #'macro '@prefix))
                    (@this-script (stx-identifier #'macro 'this-source-file))
                    (main         (stx-identifier #'macro 'main))
                    (+this-source-file+
                     (syntax/loc stx
                       (@this-script)))
                    (defsrcdir
                      (syntax/loc stx
                        (def @srcdir
                          (path-normalize (path-directory +this-source-file+)))))
                    (defprefix
                      (syntax/loc stx
                        (def @prefix
                          (let (plist (call-with-input-file "gerbil.pkg" read))
                            (cond
                             ((eof-object? plist)
                              #f)
                             ((pgetq package: plist)
                              => symbol->string)
                             (else
                              #f))))))
                    (defbuild-spec
                      (syntax/loc stx
                        (def @build-spec build-spec)))
                    (defmain
                      (syntax/loc stx
                        (def (main . args)
                          (def settings (build-settings srcdir: @srcdir prefix: @prefix ;; verbose: 9
                                                        optimize: #t static: #t debug: 'src))
                          (match args
                            (["meta"]
                             (write '("spec" "deps" "compile"))
                             (newline))
                            (["spec"]
                             (pretty-print build-spec))
                            (["deps"]
                             (let (build-deps (make-depgraph/spec @build-spec))
                               (call-with-output-file "build-deps" (cut write build-deps <>))))
                            (["compile"]
                             (with-cons-load-path
                              (lambda ()
                                (let (depgraph (call-with-input-file "build-deps" read))
                                  (apply make @build-spec (psetq depgraph: settings depgraph))))
                              @srcdir))
                            ([]
                             (unless (and (file-exists? "build-deps")
                                          (file-newer? "build-deps" +this-source-file+)
                                          (andmap (lambda (f) (file-newer? "build-deps" f))
                                                  (buildspec-depfiles @build-spec settings)))
                               (displayln "... make deps")
                               (main "deps"))
                             (displayln "... compile")
                             (main "compile")))))))
       #'(begin
           defsrcdir
           defprefix
           defbuild-spec
           defmain)))))
