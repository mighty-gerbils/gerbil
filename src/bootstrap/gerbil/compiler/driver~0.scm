(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712155168)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194981 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194981))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194982 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194982))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194887%_ _%fun194888%_)
        (with-output-to-file
         (cons 'path: (cons _%path194887%_ gxc#scheme-file-settings))
         _%fun194888%_)))
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
      (lambda (_%gerbil-libdir194882%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194882%_)))
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
      (lambda (_%dir194880%_) (delete-file-or-directory _%dir194880%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194854%_ _%opts194855%_)
        (if (let () (declare (not safe)) (string? _%srcpath194854%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194854%_)))
        (let ((_%outdir194857%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194855%_)))
              (_%invoke-gsc?194858%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194855%_)))
              (_%gsc-options194859%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194855%_)))
              (_%keep-scm?194860%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194855%_)))
              (_%verbosity194861%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194855%_)))
              (_%optimize194862%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194855%_)))
              (_%debug194863%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194855%_)))
              (_%gen-ssxi194864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194855%_))))
          (if _%outdir194857%_
              (let ((__tmp194983
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194857%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194983))
              '#!void)
          (if _%optimize194862%_
              (let ((__tmp194984
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194984))
              '#!void)
          (let ((__tmp194987
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194854%_))
                   (let ((__tmp194988
                          (let ((__tmp194989
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194854%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194989))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194988))))
                (__tmp194986
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194985
                 (cons 'compile-module (cons _%srcpath194854%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194987
             gxc#current-compile-output-dir
             _%outdir194857%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194858%_
             gxc#current-compile-gsc-options
             _%gsc-options194859%_
             gxc#current-compile-keep-scm
             _%keep-scm?194860%_
             gxc#current-compile-verbose
             _%verbosity194861%_
             gxc#current-compile-optimize
             _%optimize194862%_
             gxc#current-compile-debug
             _%debug194863%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194864%_
             gxc#current-compile-timestamp
             __tmp194986
             gxc#current-compile-context
             __tmp194985
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194873%_)
        (let ((_%opts194875%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194873%_ _%opts194875%_))))
    (define gxc#compile-module
      (lambda _g194991_
        (let ((_g194990_ (let () (declare (not safe)) (##length _g194991_))))
          (cond ((let () (declare (not safe)) (##fx= _g194990_ 1))
                 (apply (lambda (_%srcpath194873%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194873%_)))
                        _g194991_))
                ((let () (declare (not safe)) (##fx= _g194990_ 2))
                 (apply (lambda (_%srcpath194877%_ _%opts194878%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194877%_
                             _%opts194878%_)))
                        _g194991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194991_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194830%_ _%opts194831%_)
        (if (let () (declare (not safe)) (string? _%srcpath194830%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194830%_)))
        (let ((_%outdir194833%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194831%_)))
              (_%invoke-gsc?194834%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194831%_)))
              (_%gsc-options194835%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194831%_)))
              (_%keep-scm?194836%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194831%_)))
              (_%verbosity194837%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194831%_)))
              (_%debug194838%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194831%_))))
          (if _%outdir194833%_
              (let ((__tmp194992
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194833%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194992))
              '#!void)
          (let ((__tmp194995
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194830%_))
                   (let ((__tmp194996
                          (let ((__tmp194997
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194830%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194997))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194996
                      _%opts194831%_))))
                (__tmp194994
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194993 (cons 'compile-exe (cons _%srcpath194830%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194995
             gxc#current-compile-output-dir
             _%outdir194833%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194834%_
             gxc#current-compile-gsc-options
             _%gsc-options194835%_
             gxc#current-compile-keep-scm
             _%keep-scm?194836%_
             gxc#current-compile-verbose
             _%verbosity194837%_
             gxc#current-compile-debug
             _%debug194838%_
             gxc#current-compile-timestamp
             __tmp194994
             gxc#current-compile-context
             __tmp194993
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194846%_)
        (let ((_%opts194848%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194846%_ _%opts194848%_))))
    (define gxc#compile-exe
      (lambda _g194999_
        (let ((_g194998_ (let () (declare (not safe)) (##length _g194999_))))
          (cond ((let () (declare (not safe)) (##fx= _g194998_ 1))
                 (apply (lambda (_%srcpath194846%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194846%_)))
                        _g194999_))
                ((let () (declare (not safe)) (##fx= _g194998_ 2))
                 (apply (lambda (_%srcpath194850%_ _%opts194851%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194850%_
                             _%opts194851%_)))
                        _g194999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194999_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194826%_ _%opts194827%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194827%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194826%_
               _%opts194827%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194826%_
               _%opts194827%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194703%_ _%opts194704%_)
        (letrec ((_%generate-stub194706%_
                  (lambda (_%builtin-modules194822%_)
                    (let ((_%mod-main194824%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194703%_ 'main))))
                      (let ((__tmp195000
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194822%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195000))
                      (let ((__tmp195001
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194824%_
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
                        (##write __tmp195001))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194707%_
                  (lambda (_%libgerbil194820%_)
                    (let ((__tmp195002
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194820%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp195002 read))))
                 (_%replace-extension194708%_
                  (lambda (_%path194817%_ _%ext194818%_)
                    (string-append
                     (path-strip-extension _%path194817%_)
                     _%ext194818%_)))
                 (_%not-exclude-module?194709%_
                  (lambda (_%ctx194813%_)
                    (let ((_%id-str194815%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194813%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp195003
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194815%_))))
                            (declare (not safe))
                            (not __tmp195003))
                          (let ((__tmp195004
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194815%_))))
                            (declare (not safe))
                            (not __tmp195004))
                          '#f))))
                 (_%not-file-empty?194710%_
                  (lambda (_%path194811%_)
                    (let ((__tmp195005
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194811%_))))
                      (declare (not safe))
                      (not __tmp195005))))
                 (_%compile-stub194711%_
                  (lambda (_%output-scm194718%_ _%output-bin194719%_)
                    (let* ((_%gerbil-home194721%_
                            (let ((__tmp195006
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195006)))
                           (_%gerbil-libdir194723%_
                            (path-expand '"lib" _%gerbil-home194721%_))
                           (_%gerbil-staticdir194725%_
                            (path-expand '"static" _%gerbil-libdir194723%_))
                           (_%gxlink194727%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194723%_))
                           (_%tmp194729%_
                            (path-expand
                             (let ((__tmp195007
                                    (let ((__tmp195008
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp195008))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp195007))
                             '"/tmp"))
                           (_%tmp-path194733%_
                            (lambda (_%f194731%_)
                              (path-expand
                               (path-strip-directory _%f194731%_)
                               _%tmp194729%_)))
                           (_%deps194735%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194703%_)))
                           (_%deps194737%_
                            (filter _%not-exclude-module?194709%_
                                    _%deps194735%_))
                           (_%src-deps-scm194739%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194737%_)))
                           (_%src-deps-scm194741%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194710%_
                               _%src-deps-scm194739%_)))
                           (_%src-deps-scm194743%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194741%_)))
                           (_%deps-scm194745%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194733%_
                                     _%src-deps-scm194743%_)))
                           (_%deps-c194751%_
                            (let ((__tmp195009
                                   (lambda (_%g194746194748%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194708%_
                                        _%g194746194748%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp195009 _%deps-scm194745%_)))
                           (_%deps-o194757%_
                            (let ((__tmp195010
                                   (lambda (_%g194752194754%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194708%_
                                        _%g194752194754%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp195010 _%deps-scm194745%_)))
                           (_%src-bin-scm194759%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194703%_)))
                           (_%src-bin-scm194761%_
                            (path-expand _%src-bin-scm194759%_))
                           (_%bin-scm194763%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194733%_ _%src-bin-scm194761%_)))
                           (_%bin-c194765%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%bin-scm194763%_
                               '".c")))
                           (_%bin-o194767%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%bin-scm194763%_
                               '".o")))
                           (_%output-bin194769%_
                            (path-expand _%output-bin194719%_))
                           (_%output-scm194771%_
                            (path-expand _%output-scm194718%_))
                           (_%output-c194773%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%output-scm194771%_
                               '".c")))
                           (_%output-o194775%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%output-scm194771%_
                               '".o")))
                           (_%output_-c194777%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%output-scm194771%_
                               '"_.c")))
                           (_%output_-o194779%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194708%_
                               _%output-scm194771%_
                               '"_.o")))
                           (_%gsc-link-opts194781%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194783%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194785%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194725%_)))
                           (_%output-ld-opts194787%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194789%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194723%_))
                           (_%libgerbil.so194791%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194723%_))
                           (_%libgerbil.dylib194793%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194723%_))
                           (_%libgerbil-ld-opts194799%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194791%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts194707%_
                                   _%libgerbil.so194791%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194793%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts194707%_
                                       _%libgerbil.dylib194793%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194789%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts194707%_
                                           _%libgerbil.a194789%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a194789%_
                                           _%libgerbil.so194791%_
                                           _%libgerbil.dylib194793%_))))))
                           (_%rpath194801%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194723%_)))
                           (_%builtin-modules194805%_
                            (let ((__tmp195012
                                   (lambda (_%mod194803%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194803%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp195011
                                   (cons _%ctx194703%_ _%deps194737%_)))
                              (declare (not safe))
                              (##map __tmp195012 __tmp195011))))
                      (let ((__tmp195013
                             (lambda ()
                               (let ((__tmp195014
                                      (path-directory _%output-bin194769%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195014)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195013))
                      (let ((__tmp195015
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194706%_
                                  _%builtin-modules194805%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194771%_
                         __tmp195015))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp195016
                                   (lambda ()
                                     (create-directory _%tmp194729%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp195016))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194743%_
                               _%deps-scm194745%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194761%_
                               _%bin-scm194763%_))
                            (let ((__tmp195020
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195017
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194727%_
                                                     (let ((__tmp195018
                                                            (let ((__tmp195019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194763%_
                                 (cons _%output-scm194771%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp195019 _%deps-scm194745%_))))
               (declare (not safe))
               (__foldr1 cons __tmp195018 _%gsc-link-opts194781%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195020
                               __tmp195017))
                            (let ((__tmp195025
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195021
                                   (cons '"-obj"
                                         (let ((__tmp195022
                                                (let ((__tmp195023
                                                       (let ((__tmp195024
                                                              (cons _%bin-c194765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194773%_
                                  (cons _%output_-c194777%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp195024 _%deps-c194751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195023
                                                   _%gsc-static-opts194785%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195022
                                            _%gsc-cc-opts194783%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195025
                               __tmp195021))
                            (let ((__tmp195029
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp195026
                                   (cons '"-o"
                                         (cons _%output-bin194769%_
                                               (let ((__tmp195027
                                                      (cons _%bin-o194767%_
                                                            (cons _%output-o194775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194779%_
                                (let ((__tmp195028
                                       (cons _%rpath194801%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194723%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194799%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp195028
                                   _%output-ld-opts194787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp195027
                                                  _%deps-o194757%_))))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195029
                               __tmp195026))
                            (let ((__tmp195030
                                   (cons _%output-c194773%_
                                         (cons _%output_-c194777%_
                                               (cons _%output-o194775%_
                                                     (cons _%output_-o194779%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp195030))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194729%_)))
                          '#!void)))))
          (let* ((_%output-bin194713%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194703%_
                     _%opts194704%_)))
                 (_%output-scm194715%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194713%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194711%_
               _%output-scm194715%_
               _%output-bin194713%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194715%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194528%_ _%opts194529%_)
        (letrec ((_%reset-declare194531%_
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
                 (_%generate-stub194532%_
                  (lambda (_%deps194694%_)
                    (let ((_%mod-main194696%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194528%_ 'main)))
                          (_%reset-decl194697%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194531%_)))
                          (_%user-decl194698%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194533%_))))
                      (for-each
                       (lambda (_%dep194700%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194697%_))
                         (newline)
                         (if _%user-decl194698%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194698%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195031
                                (cons 'include (cons _%dep194700%_ '()))))
                           (declare (not safe))
                           (##write __tmp195031))
                         (newline))
                       _%deps194694%_)
                      (let ((__tmp195032
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195032))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194533%_
                  (lambda ()
                    (let* ((_%gsc-opts194599%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194529%_)))
                           (_%gsc-prelude194601%_
                            (if _%gsc-opts194599%_
                                (member '"-prelude" _%gsc-opts194599%_)
                                '#f))
                           (_%gsc-prelude194603%_
                            (if _%gsc-prelude194601%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194601%_)))
                                '#f)))
                      (let _%lp194606%_ ((_%rest194608%_
                                          (cons _%gsc-prelude194603%_ '()))
                                         (_%user-decls194609%_ '()))
                        (let* ((_%rest194610194618%_ _%rest194608%_)
                               (_%else194612194626%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194609%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194609%_)))))
                               (_%K194614194682%_
                                (lambda (_%rest194629%_ _%expr194630%_)
                                  (let* ((_%expr194631194643%_ _%expr194630%_)
                                         (_%else194634194651%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194606%_
                                               _%rest194629%_
                                               _%user-decls194609%_)))))
                                    (let ((_%K194639194672%_
                                           (lambda (_%decls194670%_)
                                             (let ((__tmp195033
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194609%_
                                                       _%decls194670%_))))
                                               (declare (not safe))
                                               (_%lp194606%_
                                                _%rest194629%_
                                                __tmp195033))))
                                          (_%K194636194657%_
                                           (lambda (_%exprs194655%_)
                                             (let ((__tmp195034
                                                    (append _%exprs194655%_
                                                            _%rest194629%_)))
                                               (declare (not safe))
                                               (_%lp194606%_
                                                __tmp195034
                                                _%user-decls194609%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194631194643%_))
                                          (let ((_%tl194641194677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194631194643%_)))
                                                (_%hd194640194675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194631194643%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194640194675%_
                                                         'declare))
                                                (let ((_%decls194680%_
                                                       _%tl194641194677%_))
                                                  (declare (not safe))
                                                  (_%K194639194672%_
                                                   _%decls194680%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194640194675%_
                                                             'begin))
                                                    (let ((_%exprs194665%_
                                                           _%tl194641194677%_))
                                                      (declare (not safe))
                                                      (_%K194636194657%_
                                                       _%exprs194665%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194634194651%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194634194651%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194610194618%_))
                              (let ((_%hd194615194685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194610194618%_)))
                                    (_%tl194616194687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194610194618%_))))
                                (let* ((_%expr194690%_ _%hd194615194685%_)
                                       (_%rest194692%_ _%tl194616194687%_))
                                  (declare (not safe))
                                  (_%K194614194682%_
                                   _%rest194692%_
                                   _%expr194690%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194612194626%_))))))))
                 (_%compile-stub194534%_
                  (lambda (_%output-scm194541%_ _%output-bin194542%_)
                    (let* ((_%gerbil-home194544%_
                            (let ((__tmp195035
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195035)))
                           (_%gerbil-libdir194546%_
                            (path-expand '"lib" _%gerbil-home194544%_))
                           (_%runtime194548%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194550%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194544%_))
                           (_%include-gambit-sharp194552%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194550%_
                               '"\")")))
                           (_%bin-scm194554%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194528%_)))
                           (_%deps194556%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194528%_)))
                           (_%deps194558%_
                            (map gxc#find-static-module-file _%deps194556%_))
                           (_%deps194563%_
                            (let ((__tmp195036
                                   (lambda (_%$obj194560%_)
                                     (let ((__tmp195037
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194560%_))))
                                       (declare (not safe))
                                       (not __tmp195037)))))
                              (declare (not safe))
                              (##filter __tmp195036 _%deps194558%_)))
                           (_%deps194567%_
                            (let ((__tmp195038
                                   (lambda (_%f194565%_)
                                     (let ((__tmp195039
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194565%_
                                               _%runtime194548%_))))
                                       (declare (not safe))
                                       (not __tmp195039)))))
                              (declare (not safe))
                              (##filter __tmp195038 _%deps194563%_)))
                           (_%output-base194569%_
                            (let ((__tmp195040
                                   (path-strip-extension
                                    _%output-scm194541%_)))
                              (declare (not safe))
                              (##string-append __tmp195040)))
                           (_%output-c194571%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194569%_ '".c")))
                           (_%output-o194573%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194569%_ '".o")))
                           (_%output-c_194575%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194569%_ '"_.c")))
                           (_%output-o_194577%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194569%_ '"_.o")))
                           (_%gsc-link-opts194579%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194581%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194583%_
                            (let ((__tmp195041
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194546%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp195041)))
                           (_%output-ld-opts194585%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194587%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194552%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194552%_
                                            '()))))
                           (_%gsc-link-opts194589%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194579%_
                               _%gsc-gx-macros194587%_)))
                           (_%rpath194591%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194546%_)))
                           (_%default-ld-options194593%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195042
                             (lambda ()
                               (let ((__tmp195043
                                      (path-directory _%output-bin194542%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195043)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195042))
                      (let ((__tmp195044
                             (lambda ()
                               (let ((__tmp195045
                                      (let ((__tmp195046
                                             (let ((__tmp195047
                                                    (cons _%bin-scm194554%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp195047
                                                _%deps194567%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195046
                                         _%runtime194548%_))))
                                 (declare (not safe))
                                 (_%generate-stub194532%_ __tmp195045)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194541%_
                         __tmp195044))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp195050
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195048
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194575%_
                                                     (let ((__tmp195049
                                                            (cons _%output-scm194541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp195049 _%gsc-link-opts194589%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195050
                               __tmp195048))
                            (let ((__tmp195054
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195051
                                   (cons '"-obj"
                                         (let ((__tmp195052
                                                (let ((__tmp195053
                                                       (cons _%output-c194571%_
                                                             (cons _%output-c_194575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195053
                                                   _%gsc-static-opts194583%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195052
                                            _%gsc-cc-opts194581%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195054
                               __tmp195051))
                            (let ((__tmp195057
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp195055
                                   (cons '"-o"
                                         (cons _%output-bin194542%_
                                               (cons _%output-o194573%_
                                                     (cons _%output-o_194577%_
                                                           (let ((__tmp195056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194591%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194546%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194593%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp195056
                      _%output-ld-opts194585%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195057
                               __tmp195055)))
                          '#!void)))))
          (let* ((_%output-bin194536%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194528%_
                     _%opts194529%_)))
                 (_%output-scm194538%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194536%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194534%_
               _%output-scm194538%_
               _%output-bin194536%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194538%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194477%_ _%id194478%_)
        (let ((_%$e194524%_
               (let ((__tmp195059
                      (lambda (_%e194479194481%_)
                        (let* ((_%g194483194493%_ _%e194479194481%_)
                               (_%else194485194501%_ (lambda () '#f))
                               (_%K194487194505%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194483194493%_
                                 'gx#module-export::t))
                              (let* ((_%e194488194508%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194483194493%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194489194511%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194483194493%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194490194514%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194483194493%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194490194514%_ '0))
                                    (let ((_%e194491194517%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194483194493%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194519194521%_)
                                             (eq? _%g194519194521%_
                                                  _%id194478%_))
                                           _%e194491194517%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194487194505%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194485194501%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194485194501%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194485194501%_))))))
                     (__tmp195058
                      (##structure-ref
                       _%ctx194477%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195059 __tmp195058))))
          (if _%$e194524%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194524%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194468%_ _%id194469%_)
        (let ((_%$e194471%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx194468%_ _%id194469%_))))
          (if _%$e194471%_
              ((lambda (_%bind194474%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194474%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194469%_)))
                 (##structure-ref _%bind194474%_ '1 gx#binding::t '#f))
               _%$e194471%_)
              (let ((__tmp195060
                     (##structure-ref
                      _%ctx194468%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195060
                 _%id194469%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194334%_)
        (letrec* ((_%ht194336%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194337%_
                   (lambda (_%in194413%_ _%phi194414%_)
                     (let ((_%iphi194416%_
                            (fx+ _%phi194414%_
                                 (##direct-structure-ref
                                  _%in194413%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194417%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194413%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194419%_ ((_%rest194421%_ _%imports194417%_)
                                          (_%r194422%_ '()))
                         (let* ((_%rest194423194431%_ _%rest194421%_)
                                (_%else194425194439%_ (lambda () _%r194422%_))
                                (_%K194427194456%_
                                 (lambda (_%rest194442%_ _%in194443%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194443%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi194416%_))
                                             (let ((__tmp195061
                                                    (cons _%in194443%_
                                                          _%r194422%_)))
                                               (declare (not safe))
                                               (_%lp194419%_
                                                _%rest194442%_
                                                __tmp195061))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp194419%_
                                                _%rest194442%_
                                                _%r194422%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194443%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194447%_
                                                  (fx+ _%phi194414%_
                                                       (##direct-structure-ref
                                                        _%in194443%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194447%_))
                                                 (let ((__tmp195062
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in194443%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r194422%_)))
                                                   (declare (not safe))
                                                   (_%lp194419%_
                                                    _%rest194442%_
                                                    __tmp195062))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp194419%_
                                                    _%rest194442%_
                                                    _%r194422%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194443%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194450%_
                                                      (fx+ _%iphi194416%_
                                                           (##direct-structure-ref
                                                            _%in194443%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194450%_))
                                                     (let ((__tmp195063
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in194443%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r194422%_)))
               (declare (not safe))
               (_%lp194419%_ _%rest194442%_ __tmp195063))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194450%_))
                                                         (let ((__tmp195064
                                                                (let ((__tmp195065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template194337%_
                                  _%in194443%_
                                  _%iphi194416%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r194422%_ __tmp195065))))
                   (declare (not safe))
                   (_%lp194419%_ _%rest194442%_ __tmp195064))
                 (let ()
                   (declare (not safe))
                   (_%lp194419%_ _%rest194442%_ _%r194422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp194419%_
                                                  _%rest194442%_
                                                  _%r194422%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194423194431%_))
                               (let ((_%hd194428194459%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194423194431%_)))
                                     (_%tl194429194461%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194423194431%_))))
                                 (let* ((_%in194464%_ _%hd194428194459%_)
                                        (_%rest194466%_ _%tl194429194461%_))
                                   (declare (not safe))
                                   (_%K194427194456%_
                                    _%rest194466%_
                                    _%in194464%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else194425194439%_))))))))
                  (_%find-deps194338%_
                   (lambda (_%rest194346%_ _%deps194347%_)
                     (let* ((_%rest194348194356%_ _%rest194346%_)
                            (_%else194350194364%_ (lambda () _%deps194347%_))
                            (_%K194352194401%_
                             (lambda (_%rest194367%_ _%hd194368%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194368%_
                                      'gx#module-context::t))
                                   (let ((_%id194371%_
                                          (##structure-ref
                                           _%hd194368%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194372%_
                                          (##structure-ref
                                           _%hd194368%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194336%_
                                            _%id194371%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps194338%_
                                            _%rest194367%_
                                            _%deps194347%_))
                                         (let ((_%$e194375%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194368%_))))
                                           (if _%$e194375%_
                                               ((lambda (_%pre194378%_)
                                                  (let ((_%xdeps194380%_
                                                         (let ((__tmp195066
                                                                (cons _%pre194378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports194372%_)))
                   (declare (not safe))
                   (_%find-deps194338%_ __tmp195066 _%deps194347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194336%_
                                                       _%id194371%_
                                                       _%hd194368%_))
                                                    (let ((__tmp195067
                                                           (cons _%hd194368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps194380%_)))
              (declare (not safe))
              (_%find-deps194338%_ _%rest194367%_ __tmp195067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e194375%_)
                                               (let ((_%xdeps194383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps194338%_
                                                         _%imports194372%_
                                                         _%deps194347%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194336%_
                                                    _%id194371%_
                                                    _%hd194368%_))
                                                 (let ((__tmp195068
                                                        (cons _%hd194368%_
                                                              _%xdeps194383%_)))
                                                   (declare (not safe))
                                                   (_%find-deps194338%_
                                                    _%rest194367%_
                                                    __tmp195068)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194368%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194386%_
                                              (##structure-ref
                                               _%hd194368%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194336%_
                                                _%id194386%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps194338%_
                                                _%rest194367%_
                                                _%deps194347%_))
                                             (let ((_%xdeps194390%_
                                                    (let ((__tmp195069
                                                           (##structure-ref
                                                            _%hd194368%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps194338%_
                                                       __tmp195069
                                                       _%deps194347%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194336%_
                                                      _%id194386%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps194338%_
                                                      _%rest194367%_
                                                      _%xdeps194390%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194336%_
                                                        _%id194386%_
                                                        _%hd194368%_))
                                                     (let ((__tmp195070
                                                            (cons _%hd194368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps194390%_)))
               (declare (not safe))
               (_%find-deps194338%_ _%rest194367%_ __tmp195070)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194368%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd194368%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp195071
                                                        (cons (##direct-structure-ref
                                                               _%hd194368%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest194367%_)))
                                                   (declare (not safe))
                                                   (_%find-deps194338%_
                                                    __tmp195071
                                                    _%deps194347%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps194338%_
                                                    _%rest194367%_
                                                    _%deps194347%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194368%_
                                                  'gx#module-export::t))
                                               (let ((__tmp195072
                                                      (cons (##direct-structure-ref
                                                             _%hd194368%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest194367%_)))
                                                 (declare (not safe))
                                                 (_%find-deps194338%_
                                                  __tmp195072
                                                  _%deps194347%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194368%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd194368%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp195073
                        (cons (##direct-structure-ref
                               _%hd194368%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest194367%_)))
                   (declare (not safe))
                   (_%find-deps194338%_ __tmp195073 _%deps194347%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd194368%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps194397%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template194337%_
                                  _%hd194368%_
                                  '0)))
                              (__tmp195074
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest194367%_
                                  _%xdeps194397%_))))
                         (declare (not safe))
                         (_%find-deps194338%_ __tmp195074 _%deps194347%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps194338%_ _%rest194367%_ _%deps194347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194368%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194348194356%_))
                           (let ((_%hd194353194404%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194348194356%_)))
                                 (_%tl194354194406%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194348194356%_))))
                             (let* ((_%hd194409%_ _%hd194353194404%_)
                                    (_%rest194411%_ _%tl194354194406%_))
                               (declare (not safe))
                               (_%K194352194401%_
                                _%rest194411%_
                                _%hd194409%_)))
                           (let ()
                             (declare (not safe))
                             (_%else194350194364%_)))))))
          (let ((__tmp195075
                 (filter gx#expander-context-id
                         (let ((__tmp195076
                                (let ((_%$e194340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx194334%_))))
                                  (if _%$e194340%_
                                      ((lambda (_%pre194343%_)
                                         (cons _%pre194343%_
                                               (##structure-ref
                                                _%ctx194334%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e194340%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx194334%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps194338%_ __tmp195076 '())))))
            (declare (not safe))
            (##reverse __tmp195075)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194264%_)
        (let* ((_%context-id194266%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194264%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194264%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194264%_)))
               (_%scm194268%_
                (let ((__tmp195077
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id194266%_))))
                  (declare (not safe))
                  (##string-append __tmp195077 '".scm")))
               (_%dirs194270%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194276%_
                (let ((_%user-libpath194272%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194272%_
                      (let ((_%user-libpath194274%_
                             (path-expand '"lib" _%user-libpath194272%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194274%_ _%dirs194270%_))
                            _%dirs194270%_
                            (cons _%user-libpath194274%_ _%dirs194270%_)))
                      _%dirs194270%_)))
               (_%dirs194286%_
                (let ((_%$e194278%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194278%_
                      ((lambda (_%g194280194282%_)
                         (cons _%g194280194282%_ _%dirs194276%_))
                       _%$e194278%_)
                      (let () _%dirs194276%_))))
               (_%dirs194292%_
                (map (lambda (_%g194287194289%_)
                       (path-expand '"static" _%g194287194289%_))
                     _%dirs194286%_)))
          (let _%lp194295%_ ((_%rest194297%_ _%dirs194292%_))
            (let* ((_%rest194298194306%_ _%rest194297%_)
                   (_%else194300194314%_
                    (lambda ()
                      (let ((__tmp195078
                             (##structure-ref
                              _%ctx194264%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195078
                         _%scm194268%_))))
                   (_%K194302194322%_
                    (lambda (_%rest194317%_ _%dir194318%_)
                      (let ((_%path194320%_
                             (path-expand _%scm194268%_ _%dir194318%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194320%_))
                            _%path194320%_
                            (let ()
                              (declare (not safe))
                              (_%lp194295%_ _%rest194317%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest194298194306%_))
                  (let ((_%hd194303194325%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194298194306%_)))
                        (_%tl194304194327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194298194306%_))))
                    (let* ((_%dir194330%_ _%hd194303194325%_)
                           (_%rest194332%_ _%tl194304194327%_))
                      (declare (not safe))
                      (_%K194302194322%_ _%rest194332%_ _%dir194330%_)))
                  (let () (declare (not safe)) (_%else194300194314%_))))))))
    (define gxc#file-empty?
      (lambda (_%path194262%_)
        (zero? (let ((__tmp195079 (file-info _%path194262%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195079)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194251%_)
        (let ((__tmp195083
               (lambda ()
                 (let ((__tmp195084
                        (##structure-ref
                         _%ctx194251%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195084))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195085
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194251%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195085))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx194251%_))
                 (if (let ((__tmp195086
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx194251%_))))
                       (declare (not safe))
                       (null? __tmp195086))
                     (let* ((_%thr1194256%_
                             (let ((__tmp195087
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx194251%_)))))
                               (declare (not safe))
                               (__spawn __tmp195087)))
                            (_%thr2194259%_
                             (let ((__tmp195088
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx194251%_)))))
                               (declare (not safe))
                               (__spawn __tmp195088))))
                       (let () (declare (not safe)) (gxc#join! _%thr1194256%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2194259%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx194251%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx194251%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx194251%_))
                     '#!void)))
              (__tmp195082
               (let ((__obj194979
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194979)
                 __obj194979))
              (__tmp195081 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195080
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
           __tmp195083
           gx#current-expander-context
           _%ctx194251%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195082
           gxc#current-compile-runtime-sections
           __tmp195081
           gxc#current-compile-runtime-names
           __tmp195080))))
    (define gxc#collect-bindings
      (lambda (_%ctx194249%_)
        (let ((__tmp195089
               (##structure-ref _%ctx194249%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195089))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194193%_)
        (letrec ((_%compile1194195%_
                  (lambda (_%ctx194236%_)
                    (let* ((_%code194238%_
                            (##structure-ref
                             _%ctx194236%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt194242%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code194238%_))
                                (let ((_%idstr194240%_
                                       (let ((__tmp195090
                                              (##structure-ref
                                               _%ctx194236%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp195090))))
                                  (declare (not safe))
                                  (##string-append _%idstr194240%_ '"~0"))
                                '#f)))
                      (if _%rt194242%_
                          (let ()
                            (let ((__tmp195091
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp195091
                               _%ctx194236%_
                               _%rt194242%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code194197%_
                               _%ctx194236%_
                               _%code194238%_)))
                          (let ((_%path194247%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx194236%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path194247%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code194198%_
                         _%ctx194236%_
                         _%code194238%_
                         _%rt194242%_)))))
                 (_%context-timestamp194196%_
                  (lambda (_%ctx194234%_)
                    (let ((__tmp195092
                           (let ((__tmp195093
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194234%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195093 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195092))))
                 (_%generate-runtime-code194197%_
                  (lambda (_%ctx194216%_ _%code194217%_)
                    (let* ((_%lifts194219%_ (box '()))
                           (_%runtime-code194222%_
                            (let ((__tmp195096
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code194217%_))))
                                  (__tmp195095
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp195094
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195096
                               gx#current-expander-context
                               _%ctx194216%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts194219%_
                               gxc#current-compile-marks
                               __tmp195095
                               gxc#current-compile-identifiers
                               __tmp195094)))
                           (_%runtime-code194224%_
                            (if (let ((__tmp195097 (unbox _%lifts194219%_)))
                                  (declare (not safe))
                                  (null? __tmp195097))
                                _%runtime-code194222%_
                                (cons 'begin
                                      (let ((__tmp195099
                                             (cons _%runtime-code194222%_ '()))
                                            (__tmp195098
                                             (reverse (unbox _%lifts194219%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195099
                                         __tmp195098)))))
                           (_%runtime-code194226%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp194196%_
                                                       _%ctx194216%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code194224%_ '()))))
                           (_%scm0194228%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx194216%_
                               '0
                               '".scm")))
                           (_%scms194231%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx194216%_))))
                      (let ((__tmp195100
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0194228%_
                                  _%runtime-code194226%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195100
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms194231%_)
                          (delete-file _%scms194231%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0194228%_
                         '" => "
                         _%scms194231%_))
                      (copy-file _%scm0194228%_ _%scms194231%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0194228%_)))))
                 (_%generate-loader-code194198%_
                  (lambda (_%ctx194205%_ _%code194206%_ _%rt194207%_)
                    (let* ((_%loader-code194210%_
                            (let ((__tmp195101
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194206%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195101
                               gx#current-expander-context
                               _%ctx194205%_)))
                           (_%loader-code194212%_
                            (if _%rt194207%_
                                (cons 'begin
                                      (cons _%loader-code194210%_
                                            (cons (cons 'load-module
                                                        (cons _%rt194207%_
                                                              '()))
                                                  '())))
                                _%loader-code194210%_))
                           (__tmp195102
                            (lambda ()
                              (let ((__tmp195103
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx194205%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp195103
                                 _%loader-code194212%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195102
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules194200%_
                  (cons _%ctx194193%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx194193%_))))
                 (__tmp195104
                  (lambda (_%ctx194202%_)
                    (let ((__tmp195105
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1194195%_ _%ctx194202%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195105
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195104 _%all-modules194200%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194088%_)
        (letrec ((_%compile-ssi194090%_
                  (lambda (_%code194161%_)
                    (let* ((_%path194163%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx194088%_
                               '#f
                               '".ssi")))
                           (_%prelude194175%_
                            (let* ((_%super194165%_
                                    (##structure-ref
                                     _%ctx194088%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194167%_
                                    (##structure-ref
                                     _%super194165%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194167%_
                                  ((lambda (_%g194169194171%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194169194171%_)))
                                   _%$e194167%_)
                                  (let () ':<root>))))
                           (_%ns194177%_
                            (##structure-ref
                             _%ctx194088%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194179%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194088%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194187%_
                            (let ((_%$e194181%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194179%_ '#\/))))
                              (if _%$e194181%_
                                  ((lambda (_%x194184%_)
                                     (let ((__tmp195106
                                            (substring
                                             _%idstr194179%_
                                             '0
                                             _%x194184%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195106)))
                                   _%$e194181%_)
                                  (let () '#f))))
                           (_%rt194189%_
                            (let ((__tmp195107
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195107 _%ctx194088%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194163%_))
                      (let ((__tmp195108
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude194175%_))
                               (if _%pkg194187%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg194187%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns194177%_))
                               (newline)
                               (pretty-print _%code194161%_)
                               (if _%rt194189%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt194189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path194163%_
                         __tmp195108)))))
                 (_%compile-phi194091%_
                  (lambda (_%part194101%_)
                    (let* ((_%part194102194115%_ _%part194101%_)
                           (_%E194104194119%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194102194115%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194105194130%_
                            (lambda (_%code194122%_
                                     _%n194123%_
                                     _%phi194124%_
                                     _%phi-ctx194125%_)
                              (let* ((_%code194128%_
                                      (let ((__tmp195109
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code194122%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp195109
                                         gx#current-expander-context
                                         _%phi-ctx194125%_
                                         gx#current-expander-phi
                                         _%phi194124%_)))
                                     (__tmp195110
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx194088%_
                                         _%n194123%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp195110
                                 _%code194128%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194102194115%_))
                          (let ((_%hd194106194133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194102194115%_)))
                                (_%tl194107194135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194102194115%_))))
                            (let ((_%phi-ctx194138%_ _%hd194106194133%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194107194135%_))
                                  (let ((_%hd194108194140%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194107194135%_)))
                                        (_%tl194109194142%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194107194135%_))))
                                    (let ((_%phi194145%_ _%hd194108194140%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194109194142%_))
                                          (let ((_%hd194110194147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194109194142%_)))
                                                (_%tl194111194149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194109194142%_))))
                                            (let ((_%n194152%_
                                                   _%hd194110194147%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194111194149%_))
                                                  (let ((_%hd194112194154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194111194149%_)))
                                                        (_%tl194113194156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194111194149%_))))
                                                    (let ((_%code194159%_
                                                           _%hd194112194154%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194113194156%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K194105194130%_
                                                             _%code194159%_
                                                             _%n194152%_
                                                             _%phi194145%_
                                                             _%phi-ctx194138%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E194104194119%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E194104194119%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E194104194119%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E194104194119%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E194104194119%_)))))))
          (let ((_g195111_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx194088%_))))
            (begin
              (let ((_g195112_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195111_)
                           (##vector-length _g195111_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195112_ 2)))
                    (error "Context expects 2 values" _g195112_)))
              (let ((_%ssi-code194093%_
                     (let () (declare (not safe)) (##vector-ref _g195111_ 0)))
                    (_%phi-code194094%_
                     (let () (declare (not safe)) (##vector-ref _g195111_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi194090%_ _%ssi-code194093%_))
                  (let ((_%threads194099%_
                         (map (lambda (_%code194096%_)
                                (let ((__tmp195113
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi194091%_
                                            _%code194096%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp195113)))
                              _%phi-code194094%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads194099%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194070%_)
        (let* ((_%path194072%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx194070%_ '#f '".ssxi.ss")))
               (_%code194074%_
                (let ((__tmp195114
                       (##structure-ref
                        _%ctx194070%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195114)))
               (_%idstr194076%_
                (symbol->string
                 (##structure-ref
                  _%ctx194070%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194084%_
                (let ((_%$e194078%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194076%_ '#\/))))
                  (if _%$e194078%_
                      ((lambda (_%x194081%_)
                         (let ((__tmp195115
                                (substring _%idstr194076%_ '0 _%x194081%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195115)))
                       _%$e194078%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194072%_))
          (let ((__tmp195116
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg194084%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg194084%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code194074%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path194072%_ __tmp195116)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194063%_)
        (let* ((_%state194065%_
                (let ((__obj194980
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194980 _%ctx194063%_)
                  __obj194980))
               (_%ssi-code194067%_
                (let ((__tmp195117
                       (##structure-ref
                        _%ctx194063%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194065%_
                   __tmp195117))))
          (values _%ssi-code194067%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194065%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194056%_)
        (let ((_%lifts194058%_ (box '())))
          (let ((__tmp195120
                 (lambda ()
                   (let ((_%code194061%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194056%_))))
                     (if (let ((__tmp195121 (unbox _%lifts194058%_)))
                           (declare (not safe))
                           (null? __tmp195121))
                         _%code194061%_
                         (cons 'begin
                               (let ((__tmp195123 (cons _%code194061%_ '()))
                                     (__tmp195122
                                      (reverse (unbox _%lifts194058%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195123 __tmp195122)))))))
                (__tmp195119
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195118
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195120
             gxc#current-compile-lift
             _%lifts194058%_
             gxc#current-compile-marks
             __tmp195119
             gxc#current-compile-identifiers
             __tmp195118)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194052%_)
        (let ((_%modules194054%_ (box '())))
          (let ((__tmp195124
                 (##structure-ref _%ctx194052%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194054%_ __tmp195124))
          (reverse (unbox _%modules194054%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194035%_ _%code194036%_ _%phi?194037%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194035%_))
        (let ((__tmp195125
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp195126
                                                 (if _%phi?194037%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp195126)))))))
                 (pretty-print _%code194036%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path194035%_ __tmp195125))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path194035%_ _%phi?194037%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path194035%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path194043%_ _%code194044%_)
        (let ((_%phi?194046%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path194043%_
           _%code194044%_
           _%phi?194046%_))))
    (define gxc#compile-scm-file
      (lambda _g195128_
        (let ((_g195127_ (let () (declare (not safe)) (##length _g195128_))))
          (cond ((let () (declare (not safe)) (##fx= _g195127_ 2))
                 (apply (lambda (_%path194043%_ _%code194044%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path194043%_
                             _%code194044%_)))
                        _g195128_))
                ((let () (declare (not safe)) (##fx= _g195127_ 3))
                 (apply (lambda (_%path194048%_ _%code194049%_ _%phi?194050%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path194048%_
                             _%code194049%_
                             _%phi?194050%_)))
                        _g195128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195128_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193936%_)
        (let _%lp193938%_ ((_%rest193940%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193941%_ '()))
          (let* ((_%rest193942193962%_ _%rest193940%_)
                 (_%else193946193970%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193936%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193941%_)))
                        (reverse _%opts193941%_)))))
            (let ((_%K193956194013%_
                   (lambda (_%rest194011%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193938%_ _%rest194011%_ _%opts193941%_))))
                  (_%K193951193995%_
                   (lambda (_%rest193993%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193938%_ _%rest193993%_ _%opts193941%_))))
                  (_%K193948193977%_
                   (lambda (_%rest193974%_ _%opt193975%_)
                     (let ((__tmp195129 (cons _%opt193975%_ _%opts193941%_)))
                       (declare (not safe))
                       (_%lp193938%_ _%rest193974%_ __tmp195129)))))
              (if (let () (declare (not safe)) (##pair? _%rest193942193962%_))
                  (let ((_%tl193958194018%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193942193962%_)))
                        (_%hd193957194016%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193942193962%_))))
                    (if (equal? _%hd193957194016%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193958194018%_))
                            (let* ((_%tl193960194021%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193958194018%_)))
                                   (_%rest194024%_ _%tl193960194021%_))
                              (declare (not safe))
                              (_%K193956194013%_ _%rest194024%_))
                            (let ((_%opt193985%_ _%hd193957194016%_)
                                  (_%rest193987%_ _%tl193958194018%_))
                              (let ()
                                (declare (not safe))
                                (_%K193948193977%_
                                 _%rest193987%_
                                 _%opt193985%_))))
                        (if (equal? _%hd193957194016%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193958194018%_))
                                (let* ((_%tl193955194003%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193958194018%_)))
                                       (_%rest194006%_ _%tl193955194003%_))
                                  (declare (not safe))
                                  (_%K193951193995%_ _%rest194006%_))
                                (let ((_%opt193985%_ _%hd193957194016%_)
                                      (_%rest193987%_ _%tl193958194018%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193948193977%_
                                     _%rest193987%_
                                     _%opt193985%_))))
                            (let ((_%opt193985%_ _%hd193957194016%_)
                                  (_%rest193987%_ _%tl193958194018%_))
                              (let ()
                                (declare (not safe))
                                (_%K193948193977%_
                                 _%rest193987%_
                                 _%opt193985%_))))))
                  (let () (declare (not safe)) (_%else193946193970%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194030%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?194030%_))))
    (define gxc#gsc-link-options
      (lambda _g195131_
        (let ((_g195130_ (let () (declare (not safe)) (##length _g195131_))))
          (cond ((let () (declare (not safe)) (##fx= _g195130_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g195131_))
                ((let () (declare (not safe)) (##fx= _g195130_ 1))
                 (apply (lambda (_%phi?194032%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?194032%_)))
                        _g195131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195131_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193837%_)
        (let _%lp193839%_ ((_%rest193841%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193842%_ '()))
          (let* ((_%rest193843193863%_ _%rest193841%_)
                 (_%else193847193871%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193837%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193842%_)))
                        (reverse _%opts193842%_)))))
            (let ((_%K193857193910%_
                   (lambda (_%rest193907%_ _%opt193908%_)
                     (let ((__tmp195132
                            (let ((__tmp195133
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193842%_))))
                              (declare (not safe))
                              (cons _%opt193908%_ __tmp195133))))
                       (declare (not safe))
                       (_%lp193839%_ _%rest193907%_ __tmp195132))))
                  (_%K193852193891%_
                   (lambda (_%rest193889%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193839%_ _%rest193889%_ _%opts193842%_))))
                  (_%K193849193877%_
                   (lambda (_%rest193875%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193839%_ _%rest193875%_ _%opts193842%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193843193863%_))
                  (let ((_%tl193859193915%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193843193863%_)))
                        (_%hd193858193913%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193843193863%_))))
                    (if (equal? _%hd193858193913%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193859193915%_))
                            (let ((_%tl193861193920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193859193915%_)))
                                  (_%hd193860193918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193859193915%_))))
                              (let ((_%opt193923%_ _%hd193860193918%_)
                                    (_%rest193925%_ _%tl193861193920%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193857193910%_
                                   _%rest193925%_
                                   _%opt193923%_))))
                            (let ((_%rest193883%_ _%tl193859193915%_))
                              (declare (not safe))
                              (_%K193849193877%_ _%rest193883%_)))
                        (if (equal? _%hd193858193913%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193859193915%_))
                                (let* ((_%tl193856193899%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193859193915%_)))
                                       (_%rest193902%_ _%tl193856193899%_))
                                  (declare (not safe))
                                  (_%K193852193891%_ _%rest193902%_))
                                (let ((_%rest193883%_ _%tl193859193915%_))
                                  (declare (not safe))
                                  (_%K193849193877%_ _%rest193883%_)))
                            (let ((_%rest193883%_ _%tl193859193915%_))
                              (declare (not safe))
                              (_%K193849193877%_ _%rest193883%_)))))
                  (let () (declare (not safe)) (_%else193847193871%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193931%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193931%_))))
    (define gxc#gsc-cc-options
      (lambda _g195135_
        (let ((_g195134_ (let () (declare (not safe)) (##length _g195135_))))
          (cond ((let () (declare (not safe)) (##fx= _g195134_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g195135_))
                ((let () (declare (not safe)) (##fx= _g195134_ 1))
                 (apply (lambda (_%phi?193933%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193933%_)))
                        _g195135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g195135_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193832%_)
        (let ((_%user-staticdir193834%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193832%_
                       '" -I "
                       _%user-staticdir193834%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193744%_ ((_%rest193746%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193747%_ '()))
          (let* ((_%rest193748193768%_ _%rest193746%_)
                 (_%else193752193776%_ (lambda () _%opts193747%_)))
            (let ((_%K193762193819%_
                   (lambda (_%rest193817%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193744%_ _%rest193817%_ _%opts193747%_))))
                  (_%K193757193797%_
                   (lambda (_%rest193794%_ _%opt193795%_)
                     (let ((__tmp195136
                            (let ((__tmp195137
                                   (let ((__tmp195138
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193795%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp195138))))
                              (declare (not safe))
                              (##append _%opts193747%_ __tmp195137))))
                       (declare (not safe))
                       (_%lp193744%_ _%rest193794%_ __tmp195136))))
                  (_%K193754193782%_
                   (lambda (_%rest193780%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193744%_ _%rest193780%_ _%opts193747%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193748193768%_))
                  (let ((_%tl193764193824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193748193768%_)))
                        (_%hd193763193822%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193748193768%_))))
                    (if (equal? _%hd193763193822%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193764193824%_))
                            (let* ((_%tl193766193827%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193764193824%_)))
                                   (_%rest193830%_ _%tl193766193827%_))
                              (declare (not safe))
                              (_%K193762193819%_ _%rest193830%_))
                            (let ((_%rest193788%_ _%tl193764193824%_))
                              (declare (not safe))
                              (_%K193754193782%_ _%rest193788%_)))
                        (if (equal? _%hd193763193822%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193764193824%_))
                                (let ((_%tl193761193807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193764193824%_)))
                                      (_%hd193760193805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193764193824%_))))
                                  (let ((_%opt193810%_ _%hd193760193805%_)
                                        (_%rest193812%_ _%tl193761193807%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193757193797%_
                                       _%rest193812%_
                                       _%opt193810%_))))
                                (let ((_%rest193788%_ _%tl193764193824%_))
                                  (declare (not safe))
                                  (_%K193754193782%_ _%rest193788%_)))
                            (let ((_%rest193788%_ _%tl193764193824%_))
                              (declare (not safe))
                              (_%K193754193782%_ _%rest193788%_)))))
                  (let () (declare (not safe)) (_%else193752193776%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193741%_)
        (let ((__tmp195139
               (let () (declare (not safe)) (string-empty? _%str193741%_))))
          (declare (not safe))
          (not __tmp195139))))
    (define gxc#gsc-compile-file
      (lambda (_%path193709%_ _%phi?193710%_)
        (letrec ((_%gsc-link-path193712%_
                  (lambda (_%base-path193733%_)
                    (let _%lp193735%_ ((_%n193737%_ '1))
                      (let ((_%path193739%_
                             (let ((__tmp195140 (number->string _%n193737%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193733%_
                                '".o"
                                __tmp195140))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193739%_))
                            (let ((__tmp195141
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193737%_ '1))))
                              (declare (not safe))
                              (_%lp193735%_ __tmp195141))
                            _%path193739%_))))))
          (let* ((_%base-path193714%_ (path-strip-extension _%path193709%_))
                 (_%path-c193716%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193714%_ '".c")))
                 (_%path-o193718%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193714%_ '".o")))
                 (_%link-path193720%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193712%_ _%base-path193714%_)))
                 (_%link-path-c193722%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193720%_ '".c")))
                 (_%link-path-o193724%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193720%_ '".o")))
                 (_%gsc-link-opts193726%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193710%_)))
                 (_%gsc-cc-opts193728%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193710%_)))
                 (_%gcc-ld-opts193730%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp195144 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp195142
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193722%_
                                           (let ((__tmp195143
                                                  (cons _%path193709%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp195143
                                              _%gsc-link-opts193726%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp195144 __tmp195142))
            (let ((__tmp195147 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp195145
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp195146
                                            (cons _%path-c193716%_
                                                  (cons _%link-path-c193722%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp195146
                                        _%gsc-cc-opts193728%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp195147 __tmp195145))
            (let ((__tmp195149 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp195148
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193720%_
                                     (cons _%path-o193718%_
                                           (cons _%link-path-o193724%_
                                                 _%gcc-ld-opts193730%_)))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp195149
               __tmp195148))
            (let ((__tmp195150
                   (cons _%path-c193716%_
                         (cons _%path-o193718%_
                               (cons _%link-path-c193722%_
                                     (cons _%link-path-o193724%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp195150))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193675%_ _%n193676%_ _%ext193677%_)
        (letrec ((_%module-relative-path193679%_
                  (lambda (_%ctx193707%_)
                    (path-strip-directory
                     (let ((__tmp195151
                            (##structure-ref
                             _%ctx193707%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195151)))))
                 (_%module-source-directory193680%_
                  (lambda (_%ctx193703%_)
                    (path-directory
                     (let ((_%mpath193705%_
                            (##structure-ref
                             _%ctx193703%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193705%_))
                           _%mpath193705%_
                           (last _%mpath193705%_))))))
                 (_%section-string193681%_
                  (lambda (_%n193697%_)
                    (if (let () (declare (not safe)) (number? _%n193697%_))
                        (let () (number->string _%n193697%_))
                        (if (let () (declare (not safe)) (symbol? _%n193697%_))
                            (let () (symbol->string _%n193697%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193697%_))
                                (let () _%n193697%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193697%_)))))))
                 (_%file-name193682%_
                  (lambda (_%path193695%_)
                    (if _%n193676%_
                        (string-append
                         _%path193695%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193681%_ _%n193676%_))
                         _%ext193677%_)
                        (string-append _%path193695%_ _%ext193677%_))))
                 (_%file-path193683%_
                  (lambda ()
                    (let ((_%$e193689%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193689%_
                          ((lambda (_%outdir193692%_)
                             (path-expand
                              (let ((__tmp195152
                                     (let ((__tmp195153
                                            (##structure-ref
                                             _%ctx193675%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp195153))))
                                (declare (not safe))
                                (_%file-name193682%_ __tmp195152))
                              _%outdir193692%_))
                           _%$e193689%_)
                          (let ()
                            (path-expand
                             (let ((__tmp195154
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193679%_
                                       _%ctx193675%_))))
                               (declare (not safe))
                               (_%file-name193682%_ __tmp195154))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193680%_
                                _%ctx193675%_)))))))))
          (let ((_%path193685%_
                 (let () (declare (not safe)) (_%file-path193683%_))))
            (let ((__tmp195155
                   (lambda ()
                     (let ((__tmp195156 (path-directory _%path193685%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195156)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195155))
            _%path193685%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193656%_)
        (letrec ((_%file-name193658%_
                  (lambda (_%id193673%_)
                    (let ((__tmp195157
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193673%_))))
                      (declare (not safe))
                      (##string-append __tmp195157 '".scm"))))
                 (_%file-path193659%_
                  (lambda ()
                    (let* ((_%file193665%_
                            (let ((__tmp195158
                                   (##structure-ref
                                    _%ctx193656%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193658%_ __tmp195158)))
                           (_%$e193667%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193667%_
                          ((lambda (_%outdir193670%_)
                             (path-expand
                              _%file193665%_
                              (path-expand '"static" _%outdir193670%_)))
                           _%$e193667%_)
                          (let () (path-expand _%file193665%_ '"static")))))))
          (let ((_%path193661%_
                 (let () (declare (not safe)) (_%file-path193659%_))))
            (let ((__tmp195159
                   (lambda ()
                     (let ((__tmp195160 (path-directory _%path193661%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195160)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195159))
            _%path193661%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193649%_ _%opts193650%_)
        (let ((_%$e193652%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193650%_))))
          (if _%$e193652%_
              (values _%$e193652%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193649%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193639%_)
        (if (let () (declare (not safe)) (string? _%idstr193639%_))
            (let ()
              (let* ((_%str193642%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193639%_)))
                     (_%strs193644%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193642%_ '#\/))))
                (declare (not safe))
                (string-join _%strs193644%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr193639%_))
                (let ((__tmp195161 (symbol->string _%idstr193639%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp195161))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193639%_))))))
    (define gxc#invoke__%
      (lambda (_%_193603%_
               _%stdout-redirection193599193605%_
               _%stderr-redirection193600193607%_
               _%program193609%_
               _%args193610%_)
        (let* ((_%stdout-redirection193612%_
                (if (eq? _%stdout-redirection193599193605%_ absent-value)
                    '#f
                    _%stdout-redirection193599193605%_))
               (_%stderr-redirection193614%_
                (if (eq? _%stderr-redirection193600193607%_ absent-value)
                    '#f
                    _%stderr-redirection193600193607%_)))
          (let ((__tmp195162 (cons _%program193609%_ _%args193610%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195162))
          (let* ((_%proc193616%_
                  (open-process
                   (cons 'path:
                         (cons _%program193609%_
                               (cons 'arguments:
                                     (cons _%args193610%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193612%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193621%_
                  (if (or _%stdout-redirection193612%_
                          _%stderr-redirection193614%_)
                      (read-line _%proc193616%_ '#f)
                      '#f))
                 (_%status193624%_ (process-status _%proc193616%_)))
            (let () (declare (not safe)) (##close-port _%proc193616%_))
            (if (zero? _%status193624%_)
                '#!void
                (begin
                  (display _%output193621%_)
                  (let ((__tmp195163 (cons _%program193609%_ _%args193610%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195163
                     _%status193624%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193629%_ . _%args193630%_)
        (apply gxc#invoke__%
               _%@@keywords193629%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193629%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193629%_
                  'stderr-redirection:
                  absent-value))
               _%args193630%_)))
    (define gxc#invoke
      (lambda _%args193601193636%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193601193636%_)))
    (define gxc#join!
      (lambda (_%thread193593%_)
        (let ((__tmp195165
               (lambda (_%exn193595%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193595%_))
                     (let ((__tmp195166
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193595%_))))
                       (declare (not safe))
                       (raise __tmp195166))
                     (let () (declare (not safe)) (raise _%exn193595%_)))))
              (__tmp195164 (lambda () (thread-join! _%thread193593%_))))
          (declare (not safe))
          (__with-catch __tmp195165 __tmp195164))))))
