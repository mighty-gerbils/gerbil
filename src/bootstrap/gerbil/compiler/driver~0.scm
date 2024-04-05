(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712299491)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196012 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196012))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196013 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196013))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195918%_ _%fun195919%_)
        (with-output-to-file
         (cons 'path: (cons _%path195918%_ gxc#scheme-file-settings))
         _%fun195919%_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_%gerbil-libdir195913%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195913%_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_%dir195911%_) (delete-file-or-directory _%dir195911%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195885%_ _%opts195886%_)
        (if (let () (declare (not safe)) (string? _%srcpath195885%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195885%_)))
        (let ((_%outdir195888%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195886%_)))
              (_%invoke-gsc?195889%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195886%_)))
              (_%gsc-options195890%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195886%_)))
              (_%keep-scm?195891%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195886%_)))
              (_%verbosity195892%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195886%_)))
              (_%optimize195893%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195886%_)))
              (_%debug195894%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195886%_)))
              (_%gen-ssxi195895%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195886%_))))
          (if _%outdir195888%_
              (let ((__tmp196014
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195888%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196014))
              '#!void)
          (if _%optimize195893%_
              (let ((__tmp196015
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196015))
              '#!void)
          (let ((__tmp196018
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195885%_))
                   (let ((__tmp196019
                          (let ((__tmp196020
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195885%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196020))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196019))))
                (__tmp196017
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196016
                 (cons 'compile-module (cons _%srcpath195885%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196018
             gxc#current-compile-output-dir
             _%outdir195888%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195889%_
             gxc#current-compile-gsc-options
             _%gsc-options195890%_
             gxc#current-compile-keep-scm
             _%keep-scm?195891%_
             gxc#current-compile-verbose
             _%verbosity195892%_
             gxc#current-compile-optimize
             _%optimize195893%_
             gxc#current-compile-debug
             _%debug195894%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195895%_
             gxc#current-compile-timestamp
             __tmp196017
             gxc#current-compile-context
             __tmp196016
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195904%_)
        (let ((_%opts195906%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195904%_ _%opts195906%_))))
    (define gxc#compile-module
      (lambda _g196022_
        (let ((_g196021_ (let () (declare (not safe)) (##length _g196022_))))
          (cond ((let () (declare (not safe)) (##fx= _g196021_ 1))
                 (apply (lambda (_%srcpath195904%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195904%_)))
                        _g196022_))
                ((let () (declare (not safe)) (##fx= _g196021_ 2))
                 (apply (lambda (_%srcpath195908%_ _%opts195909%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195908%_
                             _%opts195909%_)))
                        _g196022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196022_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195861%_ _%opts195862%_)
        (if (let () (declare (not safe)) (string? _%srcpath195861%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195861%_)))
        (let ((_%outdir195864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195862%_)))
              (_%invoke-gsc?195865%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195862%_)))
              (_%gsc-options195866%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195862%_)))
              (_%keep-scm?195867%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195862%_)))
              (_%verbosity195868%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195862%_)))
              (_%debug195869%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195862%_))))
          (if _%outdir195864%_
              (let ((__tmp196023
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195864%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196023))
              '#!void)
          (let ((__tmp196026
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195861%_))
                   (let ((__tmp196027
                          (let ((__tmp196028
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195861%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196028))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196027
                      _%opts195862%_))))
                (__tmp196025
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196024 (cons 'compile-exe (cons _%srcpath195861%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196026
             gxc#current-compile-output-dir
             _%outdir195864%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195865%_
             gxc#current-compile-gsc-options
             _%gsc-options195866%_
             gxc#current-compile-keep-scm
             _%keep-scm?195867%_
             gxc#current-compile-verbose
             _%verbosity195868%_
             gxc#current-compile-debug
             _%debug195869%_
             gxc#current-compile-timestamp
             __tmp196025
             gxc#current-compile-context
             __tmp196024
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195877%_)
        (let ((_%opts195879%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195877%_ _%opts195879%_))))
    (define gxc#compile-exe
      (lambda _g196030_
        (let ((_g196029_ (let () (declare (not safe)) (##length _g196030_))))
          (cond ((let () (declare (not safe)) (##fx= _g196029_ 1))
                 (apply (lambda (_%srcpath195877%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195877%_)))
                        _g196030_))
                ((let () (declare (not safe)) (##fx= _g196029_ 2))
                 (apply (lambda (_%srcpath195881%_ _%opts195882%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195881%_
                             _%opts195882%_)))
                        _g196030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196030_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195857%_ _%opts195858%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195858%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195857%_
               _%opts195858%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195857%_
               _%opts195858%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195734%_ _%opts195735%_)
        (letrec ((_%generate-stub195737%_
                  (lambda (_%builtin-modules195853%_)
                    (let ((_%mod-main195855%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195734%_ 'main))))
                      (let ((__tmp196031
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195853%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196031))
                      (let ((__tmp196032
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195855%_
                                                       (cons (cons 'cdr
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'command-line '()) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons 'lambda
                               (cons '()
                                     (cons (cons 'with-catch
                                                 (cons 'void
                                                       (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons 'force-output
                                             (cons (cons 'current-output-port
                                                         '())
                                                   '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons 'with-catch
                                                       (cons 'void
                                                             (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '()
                                       (cons (cons 'force-output
                                                   (cons (cons 'current-error-port
                                                               '())
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196032))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195738%_
                  (lambda (_%libgerbil195851%_)
                    (let ((__tmp196033
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195851%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp196033 read))))
                 (_%replace-extension195739%_
                  (lambda (_%path195848%_ _%ext195849%_)
                    (string-append
                     (path-strip-extension _%path195848%_)
                     _%ext195849%_)))
                 (_%not-exclude-module?195740%_
                  (lambda (_%ctx195844%_)
                    (let ((_%id-str195846%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195844%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196034
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195846%_))))
                            (declare (not safe))
                            (not __tmp196034))
                          (let ((__tmp196035
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195846%_))))
                            (declare (not safe))
                            (not __tmp196035))
                          '#f))))
                 (_%not-file-empty?195741%_
                  (lambda (_%path195842%_)
                    (let ((__tmp196036
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195842%_))))
                      (declare (not safe))
                      (not __tmp196036))))
                 (_%compile-stub195742%_
                  (lambda (_%output-scm195749%_ _%output-bin195750%_)
                    (let* ((_%gerbil-home195752%_
                            (let ((__tmp196037
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196037)))
                           (_%gerbil-libdir195754%_
                            (path-expand '"lib" _%gerbil-home195752%_))
                           (_%gerbil-staticdir195756%_
                            (path-expand '"static" _%gerbil-libdir195754%_))
                           (_%gxlink195758%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195754%_))
                           (_%tmp195760%_
                            (path-expand
                             (let ((__tmp196038
                                    (let ((__tmp196039
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196039))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196038))
                             '"/tmp"))
                           (_%tmp-path195764%_
                            (lambda (_%f195762%_)
                              (path-expand
                               (path-strip-directory _%f195762%_)
                               _%tmp195760%_)))
                           (_%deps195766%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195734%_)))
                           (_%deps195768%_
                            (filter _%not-exclude-module?195740%_
                                    _%deps195766%_))
                           (_%src-deps-scm195770%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195768%_)))
                           (_%src-deps-scm195772%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195741%_
                               _%src-deps-scm195770%_)))
                           (_%src-deps-scm195774%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195772%_)))
                           (_%deps-scm195776%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195764%_
                                     _%src-deps-scm195774%_)))
                           (_%deps-c195782%_
                            (let ((__tmp196040
                                   (lambda (_%g195777195779%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195739%_
                                        _%g195777195779%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196040 _%deps-scm195776%_)))
                           (_%deps-o195788%_
                            (let ((__tmp196041
                                   (lambda (_%g195783195785%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195739%_
                                        _%g195783195785%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196041 _%deps-scm195776%_)))
                           (_%src-bin-scm195790%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195734%_)))
                           (_%src-bin-scm195792%_
                            (path-expand _%src-bin-scm195790%_))
                           (_%bin-scm195794%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195764%_ _%src-bin-scm195792%_)))
                           (_%bin-c195796%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%bin-scm195794%_
                               '".c")))
                           (_%bin-o195798%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%bin-scm195794%_
                               '".o")))
                           (_%output-bin195800%_
                            (path-expand _%output-bin195750%_))
                           (_%output-scm195802%_
                            (path-expand _%output-scm195749%_))
                           (_%output-c195804%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%output-scm195802%_
                               '".c")))
                           (_%output-o195806%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%output-scm195802%_
                               '".o")))
                           (_%output_-c195808%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%output-scm195802%_
                               '"_.c")))
                           (_%output_-o195810%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195739%_
                               _%output-scm195802%_
                               '"_.o")))
                           (_%gsc-link-opts195812%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195814%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195816%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195756%_)))
                           (_%output-ld-opts195818%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195820%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195754%_))
                           (_%libgerbil.so195822%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195754%_))
                           (_%libgerbil.dylib195824%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195754%_))
                           (_%libgerbil-ld-opts195830%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195822%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts195738%_
                                   _%libgerbil.so195822%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195824%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts195738%_
                                       _%libgerbil.dylib195824%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195820%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts195738%_
                                           _%libgerbil.a195820%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195820%_
                                           _%libgerbil.so195822%_
                                           _%libgerbil.dylib195824%_))))))
                           (_%rpath195832%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195754%_)))
                           (_%builtin-modules195836%_
                            (let ((__tmp196043
                                   (lambda (_%mod195834%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195834%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp196042
                                   (cons _%ctx195734%_ _%deps195768%_)))
                              (declare (not safe))
                              (##map __tmp196043 __tmp196042))))
                      (let ((__tmp196044
                             (lambda ()
                               (let ((__tmp196045
                                      (path-directory _%output-bin195800%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196045)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196044))
                      (let ((__tmp196046
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub195737%_
                                  _%builtin-modules195836%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195802%_
                         __tmp196046))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196047
                                   (lambda ()
                                     (create-directory _%tmp195760%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp196047))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195774%_
                               _%deps-scm195776%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195792%_
                               _%bin-scm195794%_))
                            (let ((__tmp196051
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196048
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195758%_
                                                     (let ((__tmp196049
                                                            (let ((__tmp196050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195794%_
                                 (cons _%output-scm195802%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp196050 _%deps-scm195776%_))))
               (declare (not safe))
               (__foldr1 cons __tmp196049 _%gsc-link-opts195812%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196051
                               __tmp196048))
                            (let ((__tmp196056
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196052
                                   (cons '"-obj"
                                         (let ((__tmp196053
                                                (let ((__tmp196054
                                                       (let ((__tmp196055
                                                              (cons _%bin-c195796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195804%_
                                  (cons _%output_-c195808%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196055 _%deps-c195782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196054
                                                   _%gsc-static-opts195816%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196053
                                            _%gsc-cc-opts195814%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196056
                               __tmp196052))
                            (let ((__tmp196060
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196057
                                   (cons '"-w"
                                         (cons '"-o"
                                               (cons _%output-bin195800%_
                                                     (let ((__tmp196058
                                                            (cons _%bin-o195798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output-o195806%_
                                (cons _%output_-o195810%_
                                      (let ((__tmp196059
                                             (cons _%rpath195832%_
                                                   (cons '"-L"
                                                         (cons _%gerbil-libdir195754%_
                                                               (cons '"-lgerbil"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"-lgambit"
                                   _%libgerbil-ld-opts195830%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196059
                                         _%output-ld-opts195818%_)))))))
               (declare (not safe))
               (__foldr1 cons __tmp196058 _%deps-o195788%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196060
                               __tmp196057))
                            (let ((__tmp196061
                                   (cons _%output-c195804%_
                                         (cons _%output_-c195808%_
                                               (cons _%output-o195806%_
                                                     (cons _%output_-o195810%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp196061))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195760%_)))
                          '#!void)))))
          (let* ((_%output-bin195744%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195734%_
                     _%opts195735%_)))
                 (_%output-scm195746%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195744%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195742%_
               _%output-scm195746%_
               _%output-bin195744%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195746%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195559%_ _%opts195560%_)
        (letrec ((_%reset-declare195562%_
                  (lambda ()
                    '(declare
                       (gambit-scheme)
                       (block)
                       (core)
                       (inline)
                       (inline-primitives)
                       (inlining-limit 350)
                       (constant-fold)
                       (lambda-lift)
                       (standard-bindings)
                       (extended-bindings)
                       (run-time-bindings)
                       (safe)
                       (interrupts-enabled)
                       (proper-tail-calls)
                       (not generative-lambda)
                       (optimize-dead-local-variables)
                       (optimize-dead-definitions)
                       (generic)
                       (mostly-fixnum-flonum))))
                 (_%generate-stub195563%_
                  (lambda (_%deps195725%_)
                    (let ((_%mod-main195727%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195559%_ 'main)))
                          (_%reset-decl195728%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195562%_)))
                          (_%user-decl195729%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195564%_))))
                      (for-each
                       (lambda (_%dep195731%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195728%_))
                         (newline)
                         (if _%user-decl195729%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195729%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196062
                                (cons 'include (cons _%dep195731%_ '()))))
                           (declare (not safe))
                           (##write __tmp196062))
                         (newline))
                       _%deps195725%_)
                      (let ((__tmp196063
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196063))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195564%_
                  (lambda ()
                    (let* ((_%gsc-opts195630%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195560%_)))
                           (_%gsc-prelude195632%_
                            (if _%gsc-opts195630%_
                                (member '"-prelude" _%gsc-opts195630%_)
                                '#f))
                           (_%gsc-prelude195634%_
                            (if _%gsc-prelude195632%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195632%_)))
                                '#f)))
                      (let _%lp195637%_ ((_%rest195639%_
                                          (cons _%gsc-prelude195634%_ '()))
                                         (_%user-decls195640%_ '()))
                        (let* ((_%rest195641195649%_ _%rest195639%_)
                               (_%else195643195657%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195640%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195640%_)))))
                               (_%K195645195713%_
                                (lambda (_%rest195660%_ _%expr195661%_)
                                  (let* ((_%expr195662195674%_ _%expr195661%_)
                                         (_%else195665195682%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195637%_
                                               _%rest195660%_
                                               _%user-decls195640%_)))))
                                    (let ((_%K195670195703%_
                                           (lambda (_%decls195701%_)
                                             (let ((__tmp196064
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195640%_
                                                       _%decls195701%_))))
                                               (declare (not safe))
                                               (_%lp195637%_
                                                _%rest195660%_
                                                __tmp196064))))
                                          (_%K195667195688%_
                                           (lambda (_%exprs195686%_)
                                             (let ((__tmp196065
                                                    (append _%exprs195686%_
                                                            _%rest195660%_)))
                                               (declare (not safe))
                                               (_%lp195637%_
                                                __tmp196065
                                                _%user-decls195640%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195662195674%_))
                                          (let ((_%tl195672195708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195662195674%_)))
                                                (_%hd195671195706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195662195674%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195671195706%_
                                                         'declare))
                                                (let ((_%decls195711%_
                                                       _%tl195672195708%_))
                                                  (declare (not safe))
                                                  (_%K195670195703%_
                                                   _%decls195711%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195671195706%_
                                                             'begin))
                                                    (let ((_%exprs195696%_
                                                           _%tl195672195708%_))
                                                      (declare (not safe))
                                                      (_%K195667195688%_
                                                       _%exprs195696%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195665195682%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195665195682%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195641195649%_))
                              (let ((_%hd195646195716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195641195649%_)))
                                    (_%tl195647195718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195641195649%_))))
                                (let* ((_%expr195721%_ _%hd195646195716%_)
                                       (_%rest195723%_ _%tl195647195718%_))
                                  (declare (not safe))
                                  (_%K195645195713%_
                                   _%rest195723%_
                                   _%expr195721%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195643195657%_))))))))
                 (_%compile-stub195565%_
                  (lambda (_%output-scm195572%_ _%output-bin195573%_)
                    (let* ((_%gerbil-home195575%_
                            (let ((__tmp196066
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196066)))
                           (_%gerbil-libdir195577%_
                            (path-expand '"lib" _%gerbil-home195575%_))
                           (_%runtime195579%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195581%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195575%_))
                           (_%include-gambit-sharp195583%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195581%_
                               '"\")")))
                           (_%bin-scm195585%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195559%_)))
                           (_%deps195587%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195559%_)))
                           (_%deps195589%_
                            (map gxc#find-static-module-file _%deps195587%_))
                           (_%deps195594%_
                            (let ((__tmp196067
                                   (lambda (_%$obj195591%_)
                                     (let ((__tmp196068
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195591%_))))
                                       (declare (not safe))
                                       (not __tmp196068)))))
                              (declare (not safe))
                              (##filter __tmp196067 _%deps195589%_)))
                           (_%deps195598%_
                            (let ((__tmp196069
                                   (lambda (_%f195596%_)
                                     (let ((__tmp196070
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195596%_
                                               _%runtime195579%_))))
                                       (declare (not safe))
                                       (not __tmp196070)))))
                              (declare (not safe))
                              (##filter __tmp196069 _%deps195594%_)))
                           (_%output-base195600%_
                            (let ((__tmp196071
                                   (path-strip-extension
                                    _%output-scm195572%_)))
                              (declare (not safe))
                              (##string-append __tmp196071)))
                           (_%output-c195602%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195600%_ '".c")))
                           (_%output-o195604%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195600%_ '".o")))
                           (_%output-c_195606%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195600%_ '"_.c")))
                           (_%output-o_195608%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195600%_ '"_.o")))
                           (_%gsc-link-opts195610%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195612%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195614%_
                            (let ((__tmp196072
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195577%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196072)))
                           (_%output-ld-opts195616%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195618%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195583%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195583%_
                                            '()))))
                           (_%gsc-link-opts195620%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195610%_
                               _%gsc-gx-macros195618%_)))
                           (_%rpath195622%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195577%_)))
                           (_%default-ld-options195624%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196073
                             (lambda ()
                               (let ((__tmp196074
                                      (path-directory _%output-bin195573%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196074)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196073))
                      (let ((__tmp196075
                             (lambda ()
                               (let ((__tmp196076
                                      (let ((__tmp196077
                                             (let ((__tmp196078
                                                    (cons _%bin-scm195585%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196078
                                                _%deps195598%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196077
                                         _%runtime195579%_))))
                                 (declare (not safe))
                                 (_%generate-stub195563%_ __tmp196076)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195572%_
                         __tmp196075))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196081
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196079
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195606%_
                                                     (let ((__tmp196080
                                                            (cons _%output-scm195572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196080 _%gsc-link-opts195620%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196081
                               __tmp196079))
                            (let ((__tmp196085
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196082
                                   (cons '"-obj"
                                         (let ((__tmp196083
                                                (let ((__tmp196084
                                                       (cons _%output-c195602%_
                                                             (cons _%output-c_195606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196084
                                                   _%gsc-static-opts195614%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196083
                                            _%gsc-cc-opts195612%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196085
                               __tmp196082))
                            (let ((__tmp196088
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196086
                                   (cons '"-w"
                                         (cons '"-o"
                                               (cons _%output-bin195573%_
                                                     (cons _%output-o195604%_
                                                           (cons _%output-o_195608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196087
                                (cons _%rpath195622%_
                                      (cons '"-L"
                                            (cons _%gerbil-libdir195577%_
                                                  (cons '"-lgambit"
                                                        _%default-ld-options195624%_))))))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196087
                            _%output-ld-opts195616%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196088
                               __tmp196086)))
                          '#!void)))))
          (let* ((_%output-bin195567%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195559%_
                     _%opts195560%_)))
                 (_%output-scm195569%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195567%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195565%_
               _%output-scm195569%_
               _%output-bin195567%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195569%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195508%_ _%id195509%_)
        (let ((_%$e195555%_
               (let ((__tmp196090
                      (lambda (_%e195510195512%_)
                        (let* ((_%g195514195524%_ _%e195510195512%_)
                               (_%else195516195532%_ (lambda () '#f))
                               (_%K195518195536%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195514195524%_
                                 'gx#module-export::t))
                              (let* ((_%e195519195539%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195514195524%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195520195542%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195514195524%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195521195545%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195514195524%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195521195545%_ '0))
                                    (let ((_%e195522195548%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195514195524%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195550195552%_)
                                             (eq? _%g195550195552%_
                                                  _%id195509%_))
                                           _%e195522195548%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195518195536%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195516195532%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195516195532%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195516195532%_))))))
                     (__tmp196089
                      (##structure-ref
                       _%ctx195508%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196090 __tmp196089))))
          (if _%$e195555%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195555%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195499%_ _%id195500%_)
        (let ((_%$e195502%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195499%_ _%id195500%_))))
          (if _%$e195502%_
              ((lambda (_%bind195505%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195505%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195500%_)))
                 (##structure-ref _%bind195505%_ '1 gx#binding::t '#f))
               _%$e195502%_)
              (let ((__tmp196091
                     (##structure-ref
                      _%ctx195499%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196091
                 _%id195500%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195365%_)
        (letrec* ((_%ht195367%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195368%_
                   (lambda (_%in195444%_ _%phi195445%_)
                     (let ((_%iphi195447%_
                            (fx+ _%phi195445%_
                                 (##direct-structure-ref
                                  _%in195444%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195448%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195444%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195450%_ ((_%rest195452%_ _%imports195448%_)
                                          (_%r195453%_ '()))
                         (let* ((_%rest195454195462%_ _%rest195452%_)
                                (_%else195456195470%_ (lambda () _%r195453%_))
                                (_%K195458195487%_
                                 (lambda (_%rest195473%_ _%in195474%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195474%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195447%_))
                                             (let ((__tmp196092
                                                    (cons _%in195474%_
                                                          _%r195453%_)))
                                               (declare (not safe))
                                               (_%lp195450%_
                                                _%rest195473%_
                                                __tmp196092))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195450%_
                                                _%rest195473%_
                                                _%r195453%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195474%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195478%_
                                                  (fx+ _%phi195445%_
                                                       (##direct-structure-ref
                                                        _%in195474%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195478%_))
                                                 (let ((__tmp196093
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195474%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195453%_)))
                                                   (declare (not safe))
                                                   (_%lp195450%_
                                                    _%rest195473%_
                                                    __tmp196093))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195450%_
                                                    _%rest195473%_
                                                    _%r195453%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195474%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195481%_
                                                      (fx+ _%iphi195447%_
                                                           (##direct-structure-ref
                                                            _%in195474%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195481%_))
                                                     (let ((__tmp196094
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195474%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195453%_)))
               (declare (not safe))
               (_%lp195450%_ _%rest195473%_ __tmp196094))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195481%_))
                                                         (let ((__tmp196095
                                                                (let ((__tmp196096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195368%_
                                  _%in195474%_
                                  _%iphi195447%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195453%_ __tmp196096))))
                   (declare (not safe))
                   (_%lp195450%_ _%rest195473%_ __tmp196095))
                 (let ()
                   (declare (not safe))
                   (_%lp195450%_ _%rest195473%_ _%r195453%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195450%_
                                                  _%rest195473%_
                                                  _%r195453%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195454195462%_))
                               (let ((_%hd195459195490%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195454195462%_)))
                                     (_%tl195460195492%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195454195462%_))))
                                 (let* ((_%in195495%_ _%hd195459195490%_)
                                        (_%rest195497%_ _%tl195460195492%_))
                                   (declare (not safe))
                                   (_%K195458195487%_
                                    _%rest195497%_
                                    _%in195495%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195456195470%_))))))))
                  (_%find-deps195369%_
                   (lambda (_%rest195377%_ _%deps195378%_)
                     (let* ((_%rest195379195387%_ _%rest195377%_)
                            (_%else195381195395%_ (lambda () _%deps195378%_))
                            (_%K195383195432%_
                             (lambda (_%rest195398%_ _%hd195399%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195399%_
                                      'gx#module-context::t))
                                   (let ((_%id195402%_
                                          (##structure-ref
                                           _%hd195399%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195403%_
                                          (##structure-ref
                                           _%hd195399%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195367%_
                                            _%id195402%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195369%_
                                            _%rest195398%_
                                            _%deps195378%_))
                                         (let ((_%$e195406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195399%_))))
                                           (if _%$e195406%_
                                               ((lambda (_%pre195409%_)
                                                  (let ((_%xdeps195411%_
                                                         (let ((__tmp196097
                                                                (cons _%pre195409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195403%_)))
                   (declare (not safe))
                   (_%find-deps195369%_ __tmp196097 _%deps195378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195367%_
                                                       _%id195402%_
                                                       _%hd195399%_))
                                                    (let ((__tmp196098
                                                           (cons _%hd195399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195411%_)))
              (declare (not safe))
              (_%find-deps195369%_ _%rest195398%_ __tmp196098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195406%_)
                                               (let ((_%xdeps195414%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195369%_
                                                         _%imports195403%_
                                                         _%deps195378%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195367%_
                                                    _%id195402%_
                                                    _%hd195399%_))
                                                 (let ((__tmp196099
                                                        (cons _%hd195399%_
                                                              _%xdeps195414%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195369%_
                                                    _%rest195398%_
                                                    __tmp196099)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195399%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195417%_
                                              (##structure-ref
                                               _%hd195399%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195367%_
                                                _%id195417%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195369%_
                                                _%rest195398%_
                                                _%deps195378%_))
                                             (let ((_%xdeps195421%_
                                                    (let ((__tmp196100
                                                           (##structure-ref
                                                            _%hd195399%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195369%_
                                                       __tmp196100
                                                       _%deps195378%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195367%_
                                                      _%id195417%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195369%_
                                                      _%rest195398%_
                                                      _%xdeps195421%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195367%_
                                                        _%id195417%_
                                                        _%hd195399%_))
                                                     (let ((__tmp196101
                                                            (cons _%hd195399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195421%_)))
               (declare (not safe))
               (_%find-deps195369%_ _%rest195398%_ __tmp196101)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195399%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195399%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196102
                                                        (cons (##direct-structure-ref
                                                               _%hd195399%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195398%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195369%_
                                                    __tmp196102
                                                    _%deps195378%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195369%_
                                                    _%rest195398%_
                                                    _%deps195378%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195399%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196103
                                                      (cons (##direct-structure-ref
                                                             _%hd195399%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195398%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195369%_
                                                  __tmp196103
                                                  _%deps195378%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195399%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195399%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196104
                        (cons (##direct-structure-ref
                               _%hd195399%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195398%_)))
                   (declare (not safe))
                   (_%find-deps195369%_ __tmp196104 _%deps195378%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195399%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195428%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195368%_
                                  _%hd195399%_
                                  '0)))
                              (__tmp196105
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195398%_
                                  _%xdeps195428%_))))
                         (declare (not safe))
                         (_%find-deps195369%_ __tmp196105 _%deps195378%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195369%_ _%rest195398%_ _%deps195378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195399%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195379195387%_))
                           (let ((_%hd195384195435%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195379195387%_)))
                                 (_%tl195385195437%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195379195387%_))))
                             (let* ((_%hd195440%_ _%hd195384195435%_)
                                    (_%rest195442%_ _%tl195385195437%_))
                               (declare (not safe))
                               (_%K195383195432%_
                                _%rest195442%_
                                _%hd195440%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195381195395%_)))))))
          (let ((__tmp196106
                 (filter gx#expander-context-id
                         (let ((__tmp196107
                                (let ((_%$e195371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195365%_))))
                                  (if _%$e195371%_
                                      ((lambda (_%pre195374%_)
                                         (cons _%pre195374%_
                                               (##structure-ref
                                                _%ctx195365%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195371%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195365%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195369%_ __tmp196107 '())))))
            (declare (not safe))
            (##reverse __tmp196106)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195295%_)
        (let* ((_%context-id195297%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195295%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195295%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195295%_)))
               (_%scm195299%_
                (let ((__tmp196108
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195297%_))))
                  (declare (not safe))
                  (##string-append __tmp196108 '".scm")))
               (_%dirs195301%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195307%_
                (let ((_%user-libpath195303%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195303%_
                      (let ((_%user-libpath195305%_
                             (path-expand '"lib" _%user-libpath195303%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195305%_ _%dirs195301%_))
                            _%dirs195301%_
                            (cons _%user-libpath195305%_ _%dirs195301%_)))
                      _%dirs195301%_)))
               (_%dirs195317%_
                (let ((_%$e195309%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195309%_
                      ((lambda (_%g195311195313%_)
                         (cons _%g195311195313%_ _%dirs195307%_))
                       _%$e195309%_)
                      (let () _%dirs195307%_))))
               (_%dirs195323%_
                (map (lambda (_%g195318195320%_)
                       (path-expand '"static" _%g195318195320%_))
                     _%dirs195317%_)))
          (let _%lp195326%_ ((_%rest195328%_ _%dirs195323%_))
            (let* ((_%rest195329195337%_ _%rest195328%_)
                   (_%else195331195345%_
                    (lambda ()
                      (let ((__tmp196109
                             (##structure-ref
                              _%ctx195295%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196109
                         _%scm195299%_))))
                   (_%K195333195353%_
                    (lambda (_%rest195348%_ _%dir195349%_)
                      (let ((_%path195351%_
                             (path-expand _%scm195299%_ _%dir195349%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195351%_))
                            _%path195351%_
                            (let ()
                              (declare (not safe))
                              (_%lp195326%_ _%rest195348%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195329195337%_))
                  (let ((_%hd195334195356%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195329195337%_)))
                        (_%tl195335195358%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195329195337%_))))
                    (let* ((_%dir195361%_ _%hd195334195356%_)
                           (_%rest195363%_ _%tl195335195358%_))
                      (declare (not safe))
                      (_%K195333195353%_ _%rest195363%_ _%dir195361%_)))
                  (let () (declare (not safe)) (_%else195331195345%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195293%_)
        (zero? (let ((__tmp196110 (file-info _%path195293%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196110)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195282%_)
        (let ((__tmp196114
               (lambda ()
                 (let ((__tmp196115
                        (##structure-ref
                         _%ctx195282%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196115))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196116
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195282%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196116))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195282%_))
                 (if (let ((__tmp196117
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195282%_))))
                       (declare (not safe))
                       (null? __tmp196117))
                     (let* ((_%thr1195287%_
                             (let ((__tmp196118
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195282%_)))))
                               (declare (not safe))
                               (__spawn __tmp196118)))
                            (_%thr2195290%_
                             (let ((__tmp196119
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195282%_)))))
                               (declare (not safe))
                               (__spawn __tmp196119))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195287%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195290%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195282%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195282%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195282%_))
                     '#!void)))
              (__tmp196113
               (let ((__obj196010
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196010)
                 __obj196010))
              (__tmp196112 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196111
               (let ()
                 (declare (not safe))
                 (make-hash-table__%
                  '#f
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value))))
          (declare (not safe))
          (__call-with-parameters
           __tmp196114
           gx#current-expander-context
           _%ctx195282%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196113
           gxc#current-compile-runtime-sections
           __tmp196112
           gxc#current-compile-runtime-names
           __tmp196111))))
    (define gxc#collect-bindings
      (lambda (_%ctx195280%_)
        (let ((__tmp196120
               (##structure-ref _%ctx195280%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196120))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195224%_)
        (letrec ((_%compile1195226%_
                  (lambda (_%ctx195267%_)
                    (let* ((_%code195269%_
                            (##structure-ref
                             _%ctx195267%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195273%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195269%_))
                                (let ((_%idstr195271%_
                                       (let ((__tmp196121
                                              (##structure-ref
                                               _%ctx195267%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196121))))
                                  (declare (not safe))
                                  (##string-append _%idstr195271%_ '"~0"))
                                '#f)))
                      (if _%rt195273%_
                          (let ()
                            (let ((__tmp196122
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196122
                               _%ctx195267%_
                               _%rt195273%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195228%_
                               _%ctx195267%_
                               _%code195269%_)))
                          (let ((_%path195278%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195267%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195278%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195229%_
                         _%ctx195267%_
                         _%code195269%_
                         _%rt195273%_)))))
                 (_%context-timestamp195227%_
                  (lambda (_%ctx195265%_)
                    (let ((__tmp196123
                           (let ((__tmp196124
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195265%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196124 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196123))))
                 (_%generate-runtime-code195228%_
                  (lambda (_%ctx195247%_ _%code195248%_)
                    (let* ((_%lifts195250%_ (box '()))
                           (_%runtime-code195253%_
                            (let ((__tmp196127
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195248%_))))
                                  (__tmp196126
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196125
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196127
                               gx#current-expander-context
                               _%ctx195247%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195250%_
                               gxc#current-compile-marks
                               __tmp196126
                               gxc#current-compile-identifiers
                               __tmp196125)))
                           (_%runtime-code195255%_
                            (if (let ((__tmp196128 (unbox _%lifts195250%_)))
                                  (declare (not safe))
                                  (null? __tmp196128))
                                _%runtime-code195253%_
                                (cons 'begin
                                      (let ((__tmp196130
                                             (cons _%runtime-code195253%_ '()))
                                            (__tmp196129
                                             (reverse (unbox _%lifts195250%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196130
                                         __tmp196129)))))
                           (_%runtime-code195257%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195227%_
                                                       _%ctx195247%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195255%_ '()))))
                           (_%scm0195259%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195247%_
                               '0
                               '".scm")))
                           (_%scms195262%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195247%_))))
                      (let ((__tmp196131
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195259%_
                                  _%runtime-code195257%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196131
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195262%_)
                          (delete-file _%scms195262%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195259%_
                         '" => "
                         _%scms195262%_))
                      (copy-file _%scm0195259%_ _%scms195262%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195259%_)))))
                 (_%generate-loader-code195229%_
                  (lambda (_%ctx195236%_ _%code195237%_ _%rt195238%_)
                    (let* ((_%loader-code195241%_
                            (let ((__tmp196132
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195237%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196132
                               gx#current-expander-context
                               _%ctx195236%_)))
                           (_%loader-code195243%_
                            (if _%rt195238%_
                                (cons 'begin
                                      (cons _%loader-code195241%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195238%_
                                                              '()))
                                                  '())))
                                _%loader-code195241%_))
                           (__tmp196133
                            (lambda ()
                              (let ((__tmp196134
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195236%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196134
                                 _%loader-code195243%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196133
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195231%_
                  (cons _%ctx195224%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195224%_))))
                 (__tmp196135
                  (lambda (_%ctx195233%_)
                    (let ((__tmp196136
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195226%_ _%ctx195233%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196136
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196135 _%all-modules195231%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195119%_)
        (letrec ((_%compile-ssi195121%_
                  (lambda (_%code195192%_)
                    (let* ((_%path195194%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195119%_
                               '#f
                               '".ssi")))
                           (_%prelude195206%_
                            (let* ((_%super195196%_
                                    (##structure-ref
                                     _%ctx195119%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195198%_
                                    (##structure-ref
                                     _%super195196%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195198%_
                                  ((lambda (_%g195200195202%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195200195202%_)))
                                   _%$e195198%_)
                                  (let () ':<root>))))
                           (_%ns195208%_
                            (##structure-ref
                             _%ctx195119%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195210%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195119%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195218%_
                            (let ((_%$e195212%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195210%_ '#\/))))
                              (if _%$e195212%_
                                  ((lambda (_%x195215%_)
                                     (let ((__tmp196137
                                            (substring
                                             _%idstr195210%_
                                             '0
                                             _%x195215%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196137)))
                                   _%$e195212%_)
                                  (let () '#f))))
                           (_%rt195220%_
                            (let ((__tmp196138
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196138 _%ctx195119%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195194%_))
                      (let ((__tmp196139
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195206%_))
                               (if _%pkg195218%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195218%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195208%_))
                               (newline)
                               (pretty-print _%code195192%_)
                               (if _%rt195220%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195194%_
                         __tmp196139)))))
                 (_%compile-phi195122%_
                  (lambda (_%part195132%_)
                    (let* ((_%part195133195146%_ _%part195132%_)
                           (_%E195135195150%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195133195146%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195136195161%_
                            (lambda (_%code195153%_
                                     _%n195154%_
                                     _%phi195155%_
                                     _%phi-ctx195156%_)
                              (let* ((_%code195159%_
                                      (let ((__tmp196140
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195153%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196140
                                         gx#current-expander-context
                                         _%phi-ctx195156%_
                                         gx#current-expander-phi
                                         _%phi195155%_)))
                                     (__tmp196141
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195119%_
                                         _%n195154%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196141
                                 _%code195159%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195133195146%_))
                          (let ((_%hd195137195164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195133195146%_)))
                                (_%tl195138195166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195133195146%_))))
                            (let ((_%phi-ctx195169%_ _%hd195137195164%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195138195166%_))
                                  (let ((_%hd195139195171%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195138195166%_)))
                                        (_%tl195140195173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195138195166%_))))
                                    (let ((_%phi195176%_ _%hd195139195171%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195140195173%_))
                                          (let ((_%hd195141195178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195140195173%_)))
                                                (_%tl195142195180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195140195173%_))))
                                            (let ((_%n195183%_
                                                   _%hd195141195178%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195142195180%_))
                                                  (let ((_%hd195143195185%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195142195180%_)))
                                                        (_%tl195144195187%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195142195180%_))))
                                                    (let ((_%code195190%_
                                                           _%hd195143195185%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195144195187%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195136195161%_
                                                             _%code195190%_
                                                             _%n195183%_
                                                             _%phi195176%_
                                                             _%phi-ctx195169%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195135195150%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195135195150%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195135195150%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195135195150%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195135195150%_)))))))
          (let ((_g196142_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195119%_))))
            (begin
              (let ((_g196143_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196142_)
                           (##vector-length _g196142_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196143_ 2)))
                    (error "Context expects 2 values" _g196143_)))
              (let ((_%ssi-code195124%_
                     (let () (declare (not safe)) (##vector-ref _g196142_ 0)))
                    (_%phi-code195125%_
                     (let () (declare (not safe)) (##vector-ref _g196142_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195121%_ _%ssi-code195124%_))
                  (let ((_%threads195130%_
                         (map (lambda (_%code195127%_)
                                (let ((__tmp196144
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195122%_
                                            _%code195127%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196144)))
                              _%phi-code195125%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195130%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195101%_)
        (let* ((_%path195103%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195101%_ '#f '".ssxi.ss")))
               (_%code195105%_
                (let ((__tmp196145
                       (##structure-ref
                        _%ctx195101%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196145)))
               (_%idstr195107%_
                (symbol->string
                 (##structure-ref
                  _%ctx195101%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195115%_
                (let ((_%$e195109%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195107%_ '#\/))))
                  (if _%$e195109%_
                      ((lambda (_%x195112%_)
                         (let ((__tmp196146
                                (substring _%idstr195107%_ '0 _%x195112%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196146)))
                       _%$e195109%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195103%_))
          (let ((__tmp196147
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195115%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195115%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195105%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195103%_ __tmp196147)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195094%_)
        (let* ((_%state195096%_
                (let ((__obj196011
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196011 _%ctx195094%_)
                  __obj196011))
               (_%ssi-code195098%_
                (let ((__tmp196148
                       (##structure-ref
                        _%ctx195094%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195096%_
                   __tmp196148))))
          (values _%ssi-code195098%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195096%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195087%_)
        (let ((_%lifts195089%_ (box '())))
          (let ((__tmp196151
                 (lambda ()
                   (let ((_%code195092%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195087%_))))
                     (if (let ((__tmp196152 (unbox _%lifts195089%_)))
                           (declare (not safe))
                           (null? __tmp196152))
                         _%code195092%_
                         (cons 'begin
                               (let ((__tmp196154 (cons _%code195092%_ '()))
                                     (__tmp196153
                                      (reverse (unbox _%lifts195089%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196154 __tmp196153)))))))
                (__tmp196150
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196149
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196151
             gxc#current-compile-lift
             _%lifts195089%_
             gxc#current-compile-marks
             __tmp196150
             gxc#current-compile-identifiers
             __tmp196149)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195083%_)
        (let ((_%modules195085%_ (box '())))
          (let ((__tmp196155
                 (##structure-ref _%ctx195083%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195085%_ __tmp196155))
          (reverse (unbox _%modules195085%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195066%_ _%code195067%_ _%phi?195068%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195066%_))
        (let ((__tmp196156
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196157
                                                 (if _%phi?195068%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196157)))))))
                 (pretty-print _%code195067%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195066%_ __tmp196156))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195066%_ _%phi?195068%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195066%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195074%_ _%code195075%_)
        (let ((_%phi?195077%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195074%_
           _%code195075%_
           _%phi?195077%_))))
    (define gxc#compile-scm-file
      (lambda _g196159_
        (let ((_g196158_ (let () (declare (not safe)) (##length _g196159_))))
          (cond ((let () (declare (not safe)) (##fx= _g196158_ 2))
                 (apply (lambda (_%path195074%_ _%code195075%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195074%_
                             _%code195075%_)))
                        _g196159_))
                ((let () (declare (not safe)) (##fx= _g196158_ 3))
                 (apply (lambda (_%path195079%_ _%code195080%_ _%phi?195081%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195079%_
                             _%code195080%_
                             _%phi?195081%_)))
                        _g196159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196159_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194967%_)
        (let _%lp194969%_ ((_%rest194971%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194972%_ '()))
          (let* ((_%rest194973194993%_ _%rest194971%_)
                 (_%else194977195001%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194967%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194972%_)))
                        (reverse _%opts194972%_)))))
            (let ((_%K194987195044%_
                   (lambda (_%rest195042%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194969%_ _%rest195042%_ _%opts194972%_))))
                  (_%K194982195026%_
                   (lambda (_%rest195024%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194969%_ _%rest195024%_ _%opts194972%_))))
                  (_%K194979195008%_
                   (lambda (_%rest195005%_ _%opt195006%_)
                     (let ((__tmp196160 (cons _%opt195006%_ _%opts194972%_)))
                       (declare (not safe))
                       (_%lp194969%_ _%rest195005%_ __tmp196160)))))
              (if (let () (declare (not safe)) (##pair? _%rest194973194993%_))
                  (let ((_%tl194989195049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194973194993%_)))
                        (_%hd194988195047%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194973194993%_))))
                    (if (equal? _%hd194988195047%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194989195049%_))
                            (let* ((_%tl194991195052%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194989195049%_)))
                                   (_%rest195055%_ _%tl194991195052%_))
                              (declare (not safe))
                              (_%K194987195044%_ _%rest195055%_))
                            (let ((_%opt195016%_ _%hd194988195047%_)
                                  (_%rest195018%_ _%tl194989195049%_))
                              (let ()
                                (declare (not safe))
                                (_%K194979195008%_
                                 _%rest195018%_
                                 _%opt195016%_))))
                        (if (equal? _%hd194988195047%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194989195049%_))
                                (let* ((_%tl194986195034%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194989195049%_)))
                                       (_%rest195037%_ _%tl194986195034%_))
                                  (declare (not safe))
                                  (_%K194982195026%_ _%rest195037%_))
                                (let ((_%opt195016%_ _%hd194988195047%_)
                                      (_%rest195018%_ _%tl194989195049%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K194979195008%_
                                     _%rest195018%_
                                     _%opt195016%_))))
                            (let ((_%opt195016%_ _%hd194988195047%_)
                                  (_%rest195018%_ _%tl194989195049%_))
                              (let ()
                                (declare (not safe))
                                (_%K194979195008%_
                                 _%rest195018%_
                                 _%opt195016%_))))))
                  (let () (declare (not safe)) (_%else194977195001%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195061%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195061%_))))
    (define gxc#gsc-link-options
      (lambda _g196162_
        (let ((_g196161_ (let () (declare (not safe)) (##length _g196162_))))
          (cond ((let () (declare (not safe)) (##fx= _g196161_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196162_))
                ((let () (declare (not safe)) (##fx= _g196161_ 1))
                 (apply (lambda (_%phi?195063%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195063%_)))
                        _g196162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196162_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194868%_)
        (let _%lp194870%_ ((_%rest194872%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194873%_ '()))
          (let* ((_%rest194874194894%_ _%rest194872%_)
                 (_%else194878194902%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194868%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194873%_)))
                        (reverse _%opts194873%_)))))
            (let ((_%K194888194941%_
                   (lambda (_%rest194938%_ _%opt194939%_)
                     (let ((__tmp196163
                            (let ((__tmp196164
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194873%_))))
                              (declare (not safe))
                              (cons _%opt194939%_ __tmp196164))))
                       (declare (not safe))
                       (_%lp194870%_ _%rest194938%_ __tmp196163))))
                  (_%K194883194922%_
                   (lambda (_%rest194920%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194870%_ _%rest194920%_ _%opts194873%_))))
                  (_%K194880194908%_
                   (lambda (_%rest194906%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194870%_ _%rest194906%_ _%opts194873%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194874194894%_))
                  (let ((_%tl194890194946%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194874194894%_)))
                        (_%hd194889194944%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194874194894%_))))
                    (if (equal? _%hd194889194944%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194890194946%_))
                            (let ((_%tl194892194951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194890194946%_)))
                                  (_%hd194891194949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194890194946%_))))
                              (let ((_%opt194954%_ _%hd194891194949%_)
                                    (_%rest194956%_ _%tl194892194951%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194888194941%_
                                   _%rest194956%_
                                   _%opt194954%_))))
                            (let ((_%rest194914%_ _%tl194890194946%_))
                              (declare (not safe))
                              (_%K194880194908%_ _%rest194914%_)))
                        (if (equal? _%hd194889194944%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194890194946%_))
                                (let* ((_%tl194887194930%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194890194946%_)))
                                       (_%rest194933%_ _%tl194887194930%_))
                                  (declare (not safe))
                                  (_%K194883194922%_ _%rest194933%_))
                                (let ((_%rest194914%_ _%tl194890194946%_))
                                  (declare (not safe))
                                  (_%K194880194908%_ _%rest194914%_)))
                            (let ((_%rest194914%_ _%tl194890194946%_))
                              (declare (not safe))
                              (_%K194880194908%_ _%rest194914%_)))))
                  (let () (declare (not safe)) (_%else194878194902%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?194962%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?194962%_))))
    (define gxc#gsc-cc-options
      (lambda _g196166_
        (let ((_g196165_ (let () (declare (not safe)) (##length _g196166_))))
          (cond ((let () (declare (not safe)) (##fx= _g196165_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196166_))
                ((let () (declare (not safe)) (##fx= _g196165_ 1))
                 (apply (lambda (_%phi?194964%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?194964%_)))
                        _g196166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196166_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194863%_)
        (let ((_%user-staticdir194865%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194863%_
                       '" -I "
                       _%user-staticdir194865%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194775%_ ((_%rest194777%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194778%_ '()))
          (let* ((_%rest194779194799%_ _%rest194777%_)
                 (_%else194783194807%_ (lambda () _%opts194778%_)))
            (let ((_%K194793194850%_
                   (lambda (_%rest194848%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194775%_ _%rest194848%_ _%opts194778%_))))
                  (_%K194788194828%_
                   (lambda (_%rest194825%_ _%opt194826%_)
                     (let ((__tmp196167
                            (let ((__tmp196168
                                   (let ((__tmp196169
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194826%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196169))))
                              (declare (not safe))
                              (##append _%opts194778%_ __tmp196168))))
                       (declare (not safe))
                       (_%lp194775%_ _%rest194825%_ __tmp196167))))
                  (_%K194785194813%_
                   (lambda (_%rest194811%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194775%_ _%rest194811%_ _%opts194778%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194779194799%_))
                  (let ((_%tl194795194855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194779194799%_)))
                        (_%hd194794194853%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194779194799%_))))
                    (if (equal? _%hd194794194853%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194795194855%_))
                            (let* ((_%tl194797194858%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194795194855%_)))
                                   (_%rest194861%_ _%tl194797194858%_))
                              (declare (not safe))
                              (_%K194793194850%_ _%rest194861%_))
                            (let ((_%rest194819%_ _%tl194795194855%_))
                              (declare (not safe))
                              (_%K194785194813%_ _%rest194819%_)))
                        (if (equal? _%hd194794194853%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194795194855%_))
                                (let ((_%tl194792194838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194795194855%_)))
                                      (_%hd194791194836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194795194855%_))))
                                  (let ((_%opt194841%_ _%hd194791194836%_)
                                        (_%rest194843%_ _%tl194792194838%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194788194828%_
                                       _%rest194843%_
                                       _%opt194841%_))))
                                (let ((_%rest194819%_ _%tl194795194855%_))
                                  (declare (not safe))
                                  (_%K194785194813%_ _%rest194819%_)))
                            (let ((_%rest194819%_ _%tl194795194855%_))
                              (declare (not safe))
                              (_%K194785194813%_ _%rest194819%_)))))
                  (let () (declare (not safe)) (_%else194783194807%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194772%_)
        (let ((__tmp196170
               (let () (declare (not safe)) (string-empty? _%str194772%_))))
          (declare (not safe))
          (not __tmp196170))))
    (define gxc#gsc-compile-file
      (lambda (_%path194740%_ _%phi?194741%_)
        (letrec ((_%gsc-link-path194743%_
                  (lambda (_%base-path194764%_)
                    (let _%lp194766%_ ((_%n194768%_ '1))
                      (let ((_%path194770%_
                             (let ((__tmp196171 (number->string _%n194768%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194764%_
                                '".o"
                                __tmp196171))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194770%_))
                            (let ((__tmp196172
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194768%_ '1))))
                              (declare (not safe))
                              (_%lp194766%_ __tmp196172))
                            _%path194770%_))))))
          (let* ((_%base-path194745%_ (path-strip-extension _%path194740%_))
                 (_%path-c194747%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194745%_ '".c")))
                 (_%path-o194749%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194745%_ '".o")))
                 (_%link-path194751%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194743%_ _%base-path194745%_)))
                 (_%link-path-c194753%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194751%_ '".c")))
                 (_%link-path-o194755%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194751%_ '".o")))
                 (_%gsc-link-opts194757%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194741%_)))
                 (_%gsc-cc-opts194759%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194741%_)))
                 (_%gcc-ld-opts194761%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196175 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196173
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194753%_
                                           (let ((__tmp196174
                                                  (cons _%path194740%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196174
                                              _%gsc-link-opts194757%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196175 __tmp196173))
            (let ((__tmp196178 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196176
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196177
                                            (cons _%path-c194747%_
                                                  (cons _%link-path-c194753%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196177
                                        _%gsc-cc-opts194759%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196178 __tmp196176))
            (let ((__tmp196180 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196179
                   (cons '"-w"
                         (cons '"-shared"
                               (cons '"-o"
                                     (cons _%link-path194751%_
                                           (cons _%path-o194749%_
                                                 (cons _%link-path-o194755%_
                                                       _%gcc-ld-opts194761%_))))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196180
               __tmp196179))
            (let ((__tmp196181
                   (cons _%path-c194747%_
                         (cons _%path-o194749%_
                               (cons _%link-path-c194753%_
                                     (cons _%link-path-o194755%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196181))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194706%_ _%n194707%_ _%ext194708%_)
        (letrec ((_%module-relative-path194710%_
                  (lambda (_%ctx194738%_)
                    (path-strip-directory
                     (let ((__tmp196182
                            (##structure-ref
                             _%ctx194738%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196182)))))
                 (_%module-source-directory194711%_
                  (lambda (_%ctx194734%_)
                    (path-directory
                     (let ((_%mpath194736%_
                            (##structure-ref
                             _%ctx194734%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194736%_))
                           _%mpath194736%_
                           (last _%mpath194736%_))))))
                 (_%section-string194712%_
                  (lambda (_%n194728%_)
                    (if (let () (declare (not safe)) (number? _%n194728%_))
                        (let () (number->string _%n194728%_))
                        (if (let () (declare (not safe)) (symbol? _%n194728%_))
                            (let () (symbol->string _%n194728%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194728%_))
                                (let () _%n194728%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194728%_)))))))
                 (_%file-name194713%_
                  (lambda (_%path194726%_)
                    (if _%n194707%_
                        (string-append
                         _%path194726%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194712%_ _%n194707%_))
                         _%ext194708%_)
                        (string-append _%path194726%_ _%ext194708%_))))
                 (_%file-path194714%_
                  (lambda ()
                    (let ((_%$e194720%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194720%_
                          ((lambda (_%outdir194723%_)
                             (path-expand
                              (let ((__tmp196183
                                     (let ((__tmp196184
                                            (##structure-ref
                                             _%ctx194706%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196184))))
                                (declare (not safe))
                                (_%file-name194713%_ __tmp196183))
                              _%outdir194723%_))
                           _%$e194720%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196185
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194710%_
                                       _%ctx194706%_))))
                               (declare (not safe))
                               (_%file-name194713%_ __tmp196185))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194711%_
                                _%ctx194706%_)))))))))
          (let ((_%path194716%_
                 (let () (declare (not safe)) (_%file-path194714%_))))
            (let ((__tmp196186
                   (lambda ()
                     (let ((__tmp196187 (path-directory _%path194716%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196187)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196186))
            _%path194716%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194687%_)
        (letrec ((_%file-name194689%_
                  (lambda (_%id194704%_)
                    (let ((__tmp196188
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194704%_))))
                      (declare (not safe))
                      (##string-append __tmp196188 '".scm"))))
                 (_%file-path194690%_
                  (lambda ()
                    (let* ((_%file194696%_
                            (let ((__tmp196189
                                   (##structure-ref
                                    _%ctx194687%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194689%_ __tmp196189)))
                           (_%$e194698%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194698%_
                          ((lambda (_%outdir194701%_)
                             (path-expand
                              _%file194696%_
                              (path-expand '"static" _%outdir194701%_)))
                           _%$e194698%_)
                          (let () (path-expand _%file194696%_ '"static")))))))
          (let ((_%path194692%_
                 (let () (declare (not safe)) (_%file-path194690%_))))
            (let ((__tmp196190
                   (lambda ()
                     (let ((__tmp196191 (path-directory _%path194692%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196191)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196190))
            _%path194692%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194680%_ _%opts194681%_)
        (let ((_%$e194683%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194681%_))))
          (if _%$e194683%_
              (values _%$e194683%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194680%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194670%_)
        (if (let () (declare (not safe)) (string? _%idstr194670%_))
            (let ()
              (let* ((_%str194673%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194670%_)))
                     (_%strs194675%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194673%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194675%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194670%_))
                (let ((__tmp196192 (symbol->string _%idstr194670%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196192))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194670%_))))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194635%_
               _%stdout-redirection194631194636%_
               _%stderr-redirection194632194638%_
               _%program194640%_
               _%args194641%_)
        (let* ((_%stdout-redirection194643%_
                (if (eq? _%stdout-redirection194631194636%_ absent-value)
                    '#f
                    _%stdout-redirection194631194636%_))
               (_%stderr-redirection194645%_
                (if (eq? _%stderr-redirection194632194638%_ absent-value)
                    '#f
                    _%stderr-redirection194632194638%_)))
          (let ((__tmp196193 (cons _%program194640%_ _%args194641%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196193))
          (let* ((_%proc194647%_
                  (open-process
                   (cons 'path:
                         (cons _%program194640%_
                               (cons 'arguments:
                                     (cons _%args194641%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194643%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194652%_
                  (if (or _%stdout-redirection194643%_
                          _%stderr-redirection194645%_)
                      (read-line _%proc194647%_ '#f)
                      '#f))
                 (_%status194655%_ (process-status _%proc194647%_)))
            (let () (declare (not safe)) (##close-port _%proc194647%_))
            (if (zero? _%status194655%_)
                '#!void
                (begin
                  (display _%output194652%_)
                  (let ((__tmp196194 (cons _%program194640%_ _%args194641%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196194
                     _%status194655%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194660%_ . _%args194661%_)
        (apply gxc#invoke__%
               _%@@keywords194660%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194660%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194660%_
                  'stderr-redirection:
                  absent-value))
               _%args194661%_)))
    (define gxc#invoke
      (lambda _%args194633194667%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194633194667%_)))
    (define gxc#join!
      (lambda (_%thread194625%_)
        (let ((__tmp196196
               (lambda (_%exn194627%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194627%_))
                     (let ((__tmp196197
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194627%_))))
                       (declare (not safe))
                       (raise __tmp196197))
                     (let () (declare (not safe)) (raise _%exn194627%_)))))
              (__tmp196195 (lambda () (thread-join! _%thread194625%_))))
          (declare (not safe))
          (__with-catch __tmp196196 __tmp196195))))))
