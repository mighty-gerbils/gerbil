(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1755903083)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp207186 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp207186))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp207187 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp207187))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path207043%_ _%fun207044%_)
        (with-output-to-file
         (cons 'path: (cons _%path207043%_ gxc#scheme-file-settings))
         _%fun207044%_)))
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
      (lambda (_%gerbil-libdir207038%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir207038%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path207036%_)
        (let ((__tmp207188 (object->string _%path207036%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp207188 '")"))))
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
      (lambda (_%dir207034%_) (delete-file-or-directory _%dir207034%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath206978%_ _%opts206979%_)
        (if (string? _%srcpath206978%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath206978%_)))
        (let* ((_%outdir206981%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts206979%_)))
               (_%invoke-gsc?206983%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts206979%_)))
               (_%target206988%_
                (let ((_%$e206985%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts206979%_))))
                  (if _%$e206985%_ _%$e206985%_ 'C)))
               (_%gsc-options206993%_
                (append (cons '"-target"
                              (cons (symbol->string _%target206988%_) '()))
                        (let ((_%$e206990%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts206979%_))))
                          (if _%$e206990%_ _%$e206990%_ '()))))
               (_%keep-scm?206995%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts206979%_)))
               (_%verbosity206997%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts206979%_)))
               (_%optimize206999%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts206979%_)))
               (_%debug207001%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts206979%_)))
               (_%gen-ssxi207003%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts206979%_)))
               (_%parallel?207005%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts206979%_))))
          (if _%outdir206981%_
              (let ((__tmp207189
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir206981%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp207189))
              '#!void)
          (if _%optimize206999%_
              (let ((__tmp207190
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp207190))
              '#!void)
          (let ((__tmp207191
                 (lambda ()
                   (let ((__tmp207192
                          (lambda ()
                            (let ((__tmp207193
                                   (lambda ()
                                     (let ((__tmp207194
                                            (lambda ()
                                              (let ((__tmp207195
                                                     (lambda ()
                                                       (let ((__tmp207196
                                                              (lambda ()
                                                                (let ((__tmp207197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp207198
                                        (lambda ()
                                          (let ((__tmp207199
                                                 (lambda ()
                                                   (let ((__tmp207201
                                                          (lambda ()
                                                            (let ((__tmp207203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp207204
                                    (lambda ()
                                      (let ((__tmp207205
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath206978%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp207206
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath206978%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp207206))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp207205
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp207204
                                gxc#current-compile-parallel
                                _%parallel?207005%_))))
                          (__tmp207202
                           (cons 'compile-module
                                 (cons _%srcpath206978%_ '()))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp207203
                       gxc#current-compile-context
                       __tmp207202))))
                 (__tmp207200 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp207201
                                                      gxc#current-compile-timestamp
                                                      __tmp207200)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp207199
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi207003%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp207198
                                    gxc#current-compile-debug
                                    _%debug207001%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp207197
                           gxc#current-compile-optimize
                           _%optimize206999%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp207196
                  gxc#current-compile-verbose
                  _%verbosity206997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp207195
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?206995%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp207194
                                        gxc#current-compile-gsc-options
                                        _%gsc-options206993%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp207193
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?206983%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp207192
                      gx#current-compilation-target
                      _%target206988%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207191
             gxc#current-compile-output-dir
             _%outdir206981%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath207027%_)
        (let ((_%opts207029%_ '()))
          (gxc#compile-module__% _%srcpath207027%_ _%opts207029%_))))
    (define gxc#compile-module
      (lambda _g207207_
        (let ((_g207208_ (let () (declare (not safe)) (##length _g207207_))))
          (cond ((let () (declare (not safe)) (##fx= _g207208_ 1))
                 (apply gxc#compile-module__0 _g207207_))
                ((let () (declare (not safe)) (##fx= _g207208_ 2))
                 (apply gxc#compile-module__% _g207207_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g207207_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath206928%_ _%opts206929%_)
        (if (string? _%srcpath206928%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath206928%_)))
        (let* ((_%outdir206931%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts206929%_)))
               (_%invoke-gsc?206933%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts206929%_)))
               (_%target206938%_
                (let ((_%$e206935%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts206929%_))))
                  (if _%$e206935%_ _%$e206935%_ 'C)))
               (_%gsc-options206943%_
                (append (cons '"-target"
                              (cons (symbol->string _%target206938%_) '()))
                        (let ((_%$e206940%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts206929%_))))
                          (if _%$e206940%_ _%$e206940%_ '()))))
               (_%keep-scm?206945%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts206929%_)))
               (_%verbosity206947%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts206929%_)))
               (_%debug206949%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts206929%_)))
               (_%parallel?206951%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts206929%_))))
          (if _%outdir206931%_
              (let ((__tmp207209
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir206931%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp207209))
              '#!void)
          (let ((__tmp207210
                 (lambda ()
                   (let ((__tmp207211
                          (lambda ()
                            (let ((__tmp207212
                                   (lambda ()
                                     (let ((__tmp207213
                                            (lambda ()
                                              (let ((__tmp207214
                                                     (lambda ()
                                                       (let ((__tmp207215
                                                              (lambda ()
                                                                (let ((__tmp207216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp207218
                                        (lambda ()
                                          (let ((__tmp207220
                                                 (lambda ()
                                                   (let ((__tmp207221
                                                          (lambda ()
                                                            (let ((__tmp207222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath206928%_))
                             (gxc#compile-executable-module
                              (let ((__tmp207223
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath206928%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp207223))
                              _%opts206929%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp207222
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp207221
                                                      gxc#current-compile-parallel
                                                      _%parallel?206951%_))))
                                                (__tmp207219
                                                 (cons 'compile-exe
                                                       (cons _%srcpath206928%_
                                                             '()))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp207220
                                             gxc#current-compile-context
                                             __tmp207219))))
                                       (__tmp207217 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp207218
                                    gxc#current-compile-timestamp
                                    __tmp207217)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp207216
                           gxc#current-compile-debug
                           _%debug206949%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp207215
                  gxc#current-compile-verbose
                  _%verbosity206947%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp207214
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?206945%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp207213
                                        gxc#current-compile-gsc-options
                                        _%gsc-options206943%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp207212
                               gx#current-compilation-target
                               _%target206938%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp207211
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?206933%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp207210
             gxc#current-compile-output-dir
             _%outdir206931%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath206970%_)
        (let ((_%opts206972%_ '()))
          (gxc#compile-exe__% _%srcpath206970%_ _%opts206972%_))))
    (define gxc#compile-exe
      (lambda _g207224_
        (let ((_g207225_ (let () (declare (not safe)) (##length _g207224_))))
          (cond ((let () (declare (not safe)) (##fx= _g207225_ 1))
                 (apply gxc#compile-exe__0 _g207224_))
                ((let () (declare (not safe)) (##fx= _g207225_ 2))
                 (apply gxc#compile-exe__% _g207224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g207224_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx206924%_ _%opts206925%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts206925%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx206924%_
             _%opts206925%_)
            (gxc#compile-executable-module/separate
             _%ctx206924%_
             _%opts206925%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx206724%_ _%opts206725%_)
        (letrec ((_%generate-stub206727%_
                  (lambda (_%builtin-modules206920%_)
                    (let ((_%mod-main206922%_
                           (gxc#find-runtime-symbol _%ctx206724%_ 'main)))
                      (let ((__tmp207226
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules206920%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp207226))
                      (let ((__tmp207227
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main206922%_
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
                        (##write __tmp207227))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts206728%_
                  (lambda (_%gerbil-libdir206918%_)
                    (let ((__tmp207228
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir206918%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp207228 read))))
                 (_%replace-extension206729%_
                  (lambda (_%path206915%_ _%ext206916%_)
                    (string-append
                     (path-strip-extension _%path206915%_)
                     _%ext206916%_)))
                 (_%replace-extension-with-c206730%_
                  (lambda (_%path206913%_)
                    (_%replace-extension206729%_ _%path206913%_ '".c")))
                 (_%replace-extension-with-object206731%_
                  (lambda (_%path206911%_)
                    (_%replace-extension206729%_
                     _%path206911%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?206732%_
                  (lambda (_%ctx206909%_)
                    (if (_%exclude-module?206734%_ _%ctx206909%_)
                        '#f
                        (not (_%libgerbil-module?206733%_ _%ctx206909%_)))))
                 (_%libgerbil-module?206733%_
                  (lambda (_%ctx206902%_)
                    (let ((_%id-str206904%_
                           (symbol->string
                            (##structure-ref
                             _%ctx206902%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?206734%_ _%id-str206904%_)
                          '#f
                          (let ((_%$e206906%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str206904%_))))
                            (if _%$e206906%_
                                _%$e206906%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str206904%_))))))))
                 (_%exclude-module?206734%_
                  (lambda (_%ctx-or-str206898%_)
                    (let ((_%str206900%_
                           (if (string? _%ctx-or-str206898%_)
                               _%ctx-or-str206898%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str206898%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str206900%_))))
                 (_%not-file-empty?206735%_
                  (lambda (_%path206896%_)
                    (not (gxc#file-empty? _%path206896%_))))
                 (_%fold-libgerbil-runtime-scm206736%_
                  (lambda (_%gerbil-staticdir206889%_ _%libgerbil-scm206890%_)
                    (let ((_%gerbil-runtime-scm206894%_
                           (let ((__tmp207229
                                  (lambda (_%rtm206892%_)
                                    (path-expand
                                     (let ((__tmp207230
                                            (let ((__tmp207231
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm206892%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp207231
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp207230 '".scm"))
                                     _%gerbil-staticdir206889%_))))
                             (declare (not safe))
                             (##map __tmp207229 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates206737%_
                       (append _%gerbil-runtime-scm206894%_
                               _%libgerbil-scm206890%_)))))
                 (_%remove-duplicates206737%_
                  (lambda (_%strlst206849%_)
                    (let _%loop206851%_ ((_%rest206853%_ _%strlst206849%_)
                                         (_%result206854%_ '()))
                      (let* ((_%rest206855206863%_ _%rest206853%_)
                             (_%else206857206871%_
                              (lambda () (reverse! _%result206854%_)))
                             (_%K206859206877%_
                              (lambda (_%rest206874%_ _%path206875%_)
                                (if (member _%path206875%_ _%result206854%_)
                                    (_%loop206851%_
                                     _%rest206874%_
                                     _%result206854%_)
                                    (_%loop206851%_
                                     _%rest206874%_
                                     (cons _%path206875%_
                                           _%result206854%_))))))
                        (if (pair? _%rest206855206863%_)
                            (let ((_%hd206860206880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest206855206863%_)))
                                  (_%tl206861206882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest206855206863%_))))
                              (let* ((_%path206885%_ _%hd206860206880%_)
                                     (_%rest206887%_ _%tl206861206882%_))
                                (_%K206859206877%_
                                 _%rest206887%_
                                 _%path206885%_)))
                            (_%else206857206871%_))))))
                 (_%compile-stub206738%_
                  (lambda (_%output-scm206745%_ _%output-bin206746%_)
                    (let* ((_%gerbil-home206748%_
                            (let ((__tmp207232
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp207232)))
                           (_%gerbil-libdir206750%_
                            (path-expand '"lib" _%gerbil-home206748%_))
                           (_%gerbil-staticdir206752%_
                            (path-expand '"static" _%gerbil-libdir206750%_))
                           (_%deps206754%_
                            (gxc#find-runtime-module-deps _%ctx206724%_))
                           (_%libgerbil-deps206756%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?206733%_
                               _%deps206754%_)))
                           (_%libgerbil-scm206758%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps206756%_)))
                           (_%libgerbil-scm206760%_
                            (_%fold-libgerbil-runtime-scm206736%_
                             _%gerbil-staticdir206752%_
                             _%libgerbil-scm206758%_))
                           (_%libgerbil-c206762%_
                            (map _%replace-extension-with-c206730%_
                                 _%libgerbil-scm206760%_))
                           (_%libgerbil-o206764%_
                            (map _%replace-extension-with-object206731%_
                                 _%libgerbil-scm206760%_))
                           (_%src-deps206766%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?206732%_
                               _%deps206754%_)))
                           (_%src-deps-scm206768%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps206766%_)))
                           (_%src-deps-scm206770%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?206735%_
                               _%src-deps-scm206768%_)))
                           (_%src-deps-scm206772%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm206770%_)))
                           (_%src-deps-c206774%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c206730%_
                                     _%src-deps-scm206772%_)))
                           (_%src-deps-o206776%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object206731%_
                                     _%src-deps-scm206772%_)))
                           (_%src-bin-scm206778%_
                            (gxc#find-static-module-file _%ctx206724%_))
                           (_%src-bin-scm206780%_
                            (path-expand _%src-bin-scm206778%_))
                           (_%src-bin-c206782%_
                            (_%replace-extension-with-c206730%_
                             _%src-bin-scm206780%_))
                           (_%src-bin-o206784%_
                            (_%replace-extension-with-object206731%_
                             _%src-bin-scm206780%_))
                           (_%output-bin206786%_
                            (path-expand _%output-bin206746%_))
                           (_%output-scm206788%_
                            (path-expand _%output-scm206745%_))
                           (_%output-c206790%_
                            (_%replace-extension-with-c206730%_
                             _%output-scm206788%_))
                           (_%output-o206792%_
                            (_%replace-extension-with-object206731%_
                             _%output-scm206788%_))
                           (_%output_-c206794%_
                            (_%replace-extension206729%_
                             _%output-scm206788%_
                             '"_.c"))
                           (_%output_-o206796%_
                            (_%replace-extension206729%_
                             _%output-scm206788%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts206798%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts206800%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts206802%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir206752%_))
                           (_%output-ld-opts206804%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts206806%_
                            (_%get-libgerbil-ld-opts206728%_
                             _%gerbil-libdir206750%_))
                           (_%rpath206808%_
                            (gxc#gerbil-rpath _%gerbil-libdir206750%_))
                           (_%builtin-modules206812%_
                            (_%remove-duplicates206737%_
                             (let ((__tmp207233
                                    (let ((__tmp207235
                                           (lambda (_%mod206810%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod206810%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp207234
                                           (cons _%ctx206724%_
                                                 _%deps206754%_)))
                                      (declare (not safe))
                                      (##map __tmp207235 __tmp207234))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp207233)))))
                      (letrec ((_%compile-obj206815%_
                                (lambda (_%scm-path206822%_ _%c-path206823%_)
                                  (let* ((_%o-path206825%_
                                          (_%replace-extension206729%_
                                           _%c-path206823%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock206827%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path206825%_
                                             '".lock")))
                                         (_%locked206829%_ '#f)
                                         (_%unlock206832%_
                                          (lambda ()
                                            (close-port _%locked206829%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock206827%_)))))
                                    (let _%retry206835%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock206827%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry206835%_))
                                          (begin
                                            (set! _%locked206829%_
                                                  (let ((__tmp207236
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock206827%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp207236)))
                                            (if _%locked206829%_
                                                '#!void
                                                (_%retry206835%_)))))
                                    (let ((__tmp207238
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path206825%_)))
                                                     (not _%scm-path206822%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path206822%_
                                                        _%o-path206825%_)))
                                                 (let ((_%gsc-cc-opts206846%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp207239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp207240 (cons _%c-path206823%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp207240
                            _%gsc-static-opts206802%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp207239 _%gsc-cc-opts206846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp207237
                                           (lambda () (_%unlock206832%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp207238
                                       __tmp207237))))))
                        (let ((__tmp207241
                               (lambda ()
                                 (let ((__tmp207242
                                        (path-directory _%output-bin206786%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp207242)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp207241))
                        (gxc#with-output-to-scheme-file
                         _%output-scm206788%_
                         (lambda ()
                           (_%generate-stub206727%_
                            _%builtin-modules206812%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it206820%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp207243
                                                   (let ((__tmp207244
                                                          (let ((__tmp207245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm206780%_
                               (cons _%output-scm206788%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp207245 _%src-deps-scm206772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp207244
                                                      _%libgerbil-c206762%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp207243
                                               _%gsc-link-opts206798%_))))
                                     (for-each
                                      _%compile-obj206815%_
                                      (let ((__tmp207246
                                             (cons _%src-bin-scm206780%_
                                                   (cons _%output-scm206788%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp207246
                                         _%src-deps-scm206772%_))
                                      (let ((__tmp207247
                                             (cons _%src-bin-c206782%_
                                                   (cons _%output-c206790%_
                                                         (cons _%output_-c206794%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp207247
                                         _%src-deps-c206774%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin206786%_
                                                        (let ((__tmp207248
                                                               (cons _%src-bin-o206784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o206792%_
                                   (cons _%output_-o206796%_
                                         (let ((__tmp207249
                                                (let ((__tmp207250
                                                       (let ((__tmp207252
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir206750%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts206806%_))))
                     (__tmp207251
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath206808%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp207252 __tmp207251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp207250
                                                   _%output-ld-opts206804%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp207249
                                            _%libgerbil-o206764%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp207248 _%src-deps-o206776%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp207253
                                            (cons _%output-c206790%_
                                                  (cons _%output_-c206794%_
                                                        (cons _%output-o206792%_
                                                              (cons _%output_-o206796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp207253)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it206820%_))
                                  (_%compile-it206820%_)))
                            '#!void))))))
          (let* ((_%output-bin206740%_
                  (gxc#compile-exe-output-file _%ctx206724%_ _%opts206725%_))
                 (_%output-scm206742%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin206740%_ '"__exe.scm"))))
            (_%compile-stub206738%_
             _%output-scm206742%_
             _%output-bin206740%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx206546%_ _%opts206547%_)
        (letrec ((_%reset-declare206549%_
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
                 (_%generate-stub206550%_
                  (lambda (_%deps206715%_)
                    (let ((_%mod-main206717%_
                           (gxc#find-runtime-symbol _%ctx206546%_ 'main))
                          (_%reset-decl206718%_ (_%reset-declare206549%_))
                          (_%user-decl206719%_ (_%user-declare206551%_)))
                      (for-each
                       (lambda (_%dep206721%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl206718%_))
                         (newline)
                         (if _%user-decl206719%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl206719%_))
                               (newline))
                             '#!void)
                         (let ((__tmp207254
                                (cons 'include (cons _%dep206721%_ '()))))
                           (declare (not safe))
                           (##write __tmp207254))
                         (newline))
                       _%deps206715%_)
                      (let ((__tmp207255
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main206717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp207255))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare206551%_
                  (lambda ()
                    (let* ((_%gsc-opts206620%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts206547%_)))
                           (_%gsc-prelude206622%_
                            (if _%gsc-opts206620%_
                                (member '"-prelude" _%gsc-opts206620%_)
                                '#f))
                           (_%gsc-prelude206624%_
                            (if _%gsc-prelude206622%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude206622%_)))
                                '#f)))
                      (let _%lp206627%_ ((_%rest206629%_
                                          (cons _%gsc-prelude206624%_ '()))
                                         (_%user-decls206630%_ '()))
                        (let* ((_%rest206631206639%_ _%rest206629%_)
                               (_%else206633206647%_
                                (lambda ()
                                  (if (null? _%user-decls206630%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls206630%_)))))
                               (_%K206635206703%_
                                (lambda (_%rest206650%_ _%expr206651%_)
                                  (let* ((_%expr206652206664%_ _%expr206651%_)
                                         (_%else206655206672%_
                                          (lambda ()
                                            (_%lp206627%_
                                             _%rest206650%_
                                             _%user-decls206630%_))))
                                    (let ((_%K206660206693%_
                                           (lambda (_%decls206691%_)
                                             (_%lp206627%_
                                              _%rest206650%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls206630%_
                                                 _%decls206691%_)))))
                                          (_%K206657206678%_
                                           (lambda (_%exprs206676%_)
                                             (_%lp206627%_
                                              (append _%exprs206676%_
                                                      _%rest206650%_)
                                              _%user-decls206630%_))))
                                      (if (pair? _%expr206652206664%_)
                                          (let ((_%tl206662206698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr206652206664%_)))
                                                (_%hd206661206696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr206652206664%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd206661206696%_
                                                         'declare))
                                                (let ((_%decls206701%_
                                                       _%tl206662206698%_))
                                                  (_%K206660206693%_
                                                   _%decls206701%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd206661206696%_
                                                             'begin))
                                                    (let ((_%exprs206686%_
                                                           _%tl206662206698%_))
                                                      (_%K206657206678%_
                                                       _%exprs206686%_))
                                                    (_%else206655206672%_))))
                                          (_%else206655206672%_)))))))
                          (if (pair? _%rest206631206639%_)
                              (let ((_%hd206636206706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest206631206639%_)))
                                    (_%tl206637206708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest206631206639%_))))
                                (let* ((_%expr206711%_ _%hd206636206706%_)
                                       (_%rest206713%_ _%tl206637206708%_))
                                  (_%K206635206703%_
                                   _%rest206713%_
                                   _%expr206711%_)))
                              (_%else206633206647%_)))))))
                 (_%compile-stub206552%_
                  (lambda (_%output-scm206559%_ _%output-bin206560%_)
                    (let* ((_%gerbil-home206562%_
                            (let ((__tmp207256
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp207256)))
                           (_%gerbil-libdir206564%_
                            (path-expand '"lib" _%gerbil-home206562%_))
                           (_%runtime206566%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp206568%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home206562%_))
                           (_%include-gambit-sharp206570%_
                            (gxc#include-source _%gambit-sharp206568%_))
                           (_%bin-scm206572%_
                            (gxc#find-static-module-file _%ctx206546%_))
                           (_%deps206574%_
                            (gxc#find-runtime-module-deps _%ctx206546%_))
                           (_%deps206576%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps206574%_)))
                           (_%deps206581%_
                            (let ((__tmp207257
                                   (lambda (_%$obj206578%_)
                                     (not (gxc#file-empty? _%$obj206578%_)))))
                              (declare (not safe))
                              (##filter __tmp207257 _%deps206576%_)))
                           (_%deps206585%_
                            (let ((__tmp207258
                                   (lambda (_%f206583%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f206583%_
                                             _%runtime206566%_))))))
                              (declare (not safe))
                              (##filter __tmp207258 _%deps206581%_)))
                           (_%output-base206587%_
                            (let ((__tmp207259
                                   (path-strip-extension
                                    _%output-scm206559%_)))
                              (declare (not safe))
                              (##string-append __tmp207259)))
                           (_%output-c206589%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base206587%_ '".c")))
                           (_%output-o206591%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base206587%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_206593%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base206587%_ '"_.c")))
                           (_%output-o_206595%_
                            (let ((__tmp207260
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base206587%_
                               __tmp207260)))
                           (_%gsc-link-opts206597%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts206599%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts206601%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir206564%_)))
                           (_%output-ld-opts206603%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros206605%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp206570%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp206570%_
                                            '()))))
                           (_%gsc-link-opts206607%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts206597%_
                               _%gsc-gx-macros206605%_)))
                           (_%rpath206609%_
                            (gxc#gerbil-rpath _%gerbil-libdir206564%_))
                           (_%default-ld-options206611%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp207261
                             (lambda ()
                               (let ((__tmp207262
                                      (path-directory _%output-bin206560%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp207262)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp207261))
                      (gxc#with-output-to-scheme-file
                       _%output-scm206559%_
                       (lambda ()
                         (_%generate-stub206550%_
                          (let ((__tmp207263
                                 (let ((__tmp207264
                                        (cons _%bin-scm206572%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp207264
                                    _%deps206585%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp207263 _%runtime206566%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it206617%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_206593%_
                                                      (let ((__tmp207265
                                                             (cons _%output-scm206559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp207265 _%gsc-link-opts206607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp207266
                                                 (let ((__tmp207267
                                                        (cons _%output-c206589%_
                                                              (cons _%output-c_206593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp207267
                                                    _%gsc-static-opts206601%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp207266
                                             _%gsc-cc-opts206599%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin206560%_
                                                      (cons _%output-o206591%_
                                                            (cons _%output-o_206595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp207268
                                 (let ((__tmp207270
                                        (cons '"-L"
                                              (cons _%gerbil-libdir206564%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options206611%_))))
                                       (__tmp207269
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath206609%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp207270 __tmp207269))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp207268
                             _%output-ld-opts206603%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it206617%_))
                                (_%compile-it206617%_)))
                          '#!void)))))
          (let* ((_%output-bin206554%_
                  (gxc#compile-exe-output-file _%ctx206546%_ _%opts206547%_))
                 (_%output-scm206556%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin206554%_ '"__exe.scm"))))
            (_%compile-stub206552%_
             _%output-scm206556%_
             _%output-bin206554%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx206495%_ _%id206496%_)
        (let ((_%$e206542%_
               (let ((__tmp207272
                      (lambda (_%e206497206499%_)
                        (let* ((_%g206501206511%_ _%e206497206499%_)
                               (_%else206503206519%_ (lambda () '#f))
                               (_%K206505206523%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g206501206511%_
                                 'gx#module-export::t))
                              (let* ((_%e206506206526%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g206501206511%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e206507206529%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g206501206511%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e206508206532%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g206501206511%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e206508206532%_ '0))
                                    (let ((_%e206509206535%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g206501206511%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g206537206539%_)
                                             (eq? _%g206537206539%_
                                                  _%id206496%_))
                                           _%e206509206535%_)
                                          (_%K206505206523%_)
                                          (_%else206503206519%_)))
                                    (_%else206503206519%_)))
                              (_%else206503206519%_)))))
                     (__tmp207271
                      (##structure-ref
                       _%ctx206495%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp207272 __tmp207271))))
          (if _%$e206542%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e206542%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx206486%_ _%id206487%_)
        (let ((_%$e206489%_
               (gxc#find-export-binding _%ctx206486%_ _%id206487%_)))
          (if _%$e206489%_
              ((lambda (_%bind206492%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind206492%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id206487%_)))
                 (##structure-ref _%bind206492%_ '1 gx#binding::t '#f))
               _%$e206489%_)
              (let ((__tmp207273
                     (##structure-ref
                      _%ctx206486%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp207273
                 _%id206487%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx206352%_)
        (letrec* ((_%ht206354%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template206355%_
                   (lambda (_%in206431%_ _%phi206432%_)
                     (let ((_%iphi206434%_
                            (fx+ _%phi206432%_
                                 (##direct-structure-ref
                                  _%in206431%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports206435%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in206431%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp206437%_ ((_%rest206439%_ _%imports206435%_)
                                          (_%r206440%_ '()))
                         (let* ((_%rest206441206449%_ _%rest206439%_)
                                (_%else206443206457%_ (lambda () _%r206440%_))
                                (_%K206445206474%_
                                 (lambda (_%rest206460%_ _%in206461%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in206461%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi206434%_))
                                           (_%lp206437%_
                                            _%rest206460%_
                                            (cons _%in206461%_ _%r206440%_))
                                           (_%lp206437%_
                                            _%rest206460%_
                                            _%r206440%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in206461%_
                                              'gx#module-import::t))
                                           (let ((_%iphi206465%_
                                                  (fx+ _%phi206432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in206461%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi206465%_))
                                                 (_%lp206437%_
                                                  _%rest206460%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in206461%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r206440%_))
                                                 (_%lp206437%_
                                                  _%rest206460%_
                                                  _%r206440%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in206461%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi206468%_
                                                      (fx+ _%iphi206434%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in206461%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi206468%_))
                                                     (_%lp206437%_
                                                      _%rest206460%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in206461%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r206440%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi206468%_))
                                                         (_%lp206437%_
                                                          _%rest206460%_
                                                          (let ((__tmp207274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template206355%_
                          _%in206461%_
                          _%iphi206434%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r206440%_ __tmp207274)))
                 (_%lp206437%_ _%rest206460%_ _%r206440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp206437%_
                                                _%rest206460%_
                                                _%r206440%_)))))))
                           (if (pair? _%rest206441206449%_)
                               (let ((_%hd206446206477%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest206441206449%_)))
                                     (_%tl206447206479%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest206441206449%_))))
                                 (let* ((_%in206482%_ _%hd206446206477%_)
                                        (_%rest206484%_ _%tl206447206479%_))
                                   (_%K206445206474%_
                                    _%rest206484%_
                                    _%in206482%_)))
                               (_%else206443206457%_)))))))
                  (_%find-deps206356%_
                   (lambda (_%rest206364%_ _%deps206365%_)
                     (let* ((_%rest206366206374%_ _%rest206364%_)
                            (_%else206368206382%_ (lambda () _%deps206365%_))
                            (_%K206370206419%_
                             (lambda (_%rest206385%_ _%hd206386%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd206386%_
                                      'gx#module-context::t))
                                   (let ((_%id206389%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd206386%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports206390%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd206386%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht206354%_
                                            _%id206389%_))
                                         (_%find-deps206356%_
                                          _%rest206385%_
                                          _%deps206365%_)
                                         (let ((_%$e206393%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd206386%_))))
                                           (if _%$e206393%_
                                               ((lambda (_%pre206396%_)
                                                  (let ((_%xdeps206398%_
                                                         (_%find-deps206356%_
                                                          (cons _%pre206396%_
                                                                _%imports206390%_)
                                                          _%deps206365%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht206354%_
                                                       _%id206389%_
                                                       _%hd206386%_))
                                                    (_%find-deps206356%_
                                                     _%rest206385%_
                                                     (cons _%hd206386%_
                                                           _%xdeps206398%_))))
                                                _%$e206393%_)
                                               (let ((_%xdeps206401%_
                                                      (_%find-deps206356%_
                                                       _%imports206390%_
                                                       _%deps206365%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht206354%_
                                                    _%id206389%_
                                                    _%hd206386%_))
                                                 (_%find-deps206356%_
                                                  _%rest206385%_
                                                  (cons _%hd206386%_
                                                        _%xdeps206401%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd206386%_
                                          'gx#prelude-context::t))
                                       (let ((_%id206404%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd206386%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht206354%_
                                                _%id206404%_))
                                             (_%find-deps206356%_
                                              _%rest206385%_
                                              _%deps206365%_)
                                             (let ((_%xdeps206408%_
                                                    (_%find-deps206356%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd206386%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps206365%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht206354%_
                                                      _%id206404%_))
                                                   (_%find-deps206356%_
                                                    _%rest206385%_
                                                    _%xdeps206408%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht206354%_
                                                        _%id206404%_
                                                        _%hd206386%_))
                                                     (_%find-deps206356%_
                                                      _%rest206385%_
                                                      (cons _%hd206386%_
                                                            _%xdeps206408%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd206386%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd206386%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps206356%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd206386%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest206385%_)
                                                _%deps206365%_)
                                               (_%find-deps206356%_
                                                _%rest206385%_
                                                _%deps206365%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd206386%_
                                                  'gx#module-export::t))
                                               (_%find-deps206356%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd206386%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest206385%_)
                                                _%deps206365%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd206386%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd206386%_ '2 '#f '#f)))
               (_%find-deps206356%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd206386%_ '1 '#f '#f))
                      _%rest206385%_)
                _%deps206365%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd206386%_ '2 '#f '#f)))
                   (let ((_%xdeps206415%_
                          (_%import-set-template206355%_ _%hd206386%_ '0)))
                     (_%find-deps206356%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest206385%_ _%xdeps206415%_))
                      _%deps206365%_))
                   (_%find-deps206356%_ _%rest206385%_ _%deps206365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd206386%_))))))))))
                       (if (pair? _%rest206366206374%_)
                           (let ((_%hd206371206422%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest206366206374%_)))
                                 (_%tl206372206424%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest206366206374%_))))
                             (let* ((_%hd206427%_ _%hd206371206422%_)
                                    (_%rest206429%_ _%tl206372206424%_))
                               (_%K206370206419%_
                                _%rest206429%_
                                _%hd206427%_)))
                           (_%else206368206382%_))))))
          (let ((__tmp207275
                 (filter gx#expander-context-id
                         (_%find-deps206356%_
                          (let ((_%$e206358%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx206352%_))))
                            (if _%$e206358%_
                                ((lambda (_%pre206361%_)
                                   (cons _%pre206361%_
                                         (##structure-ref
                                          _%ctx206352%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e206358%_)
                                (##structure-ref
                                 _%ctx206352%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp207275)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx206282%_)
        (let* ((_%context-id206284%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx206282%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx206282%_ '1 '#f '#f))
                    (string->symbol _%ctx206282%_)))
               (_%scm206286%_
                (let ((__tmp207276
                       (gxc#static-module-name _%context-id206284%_)))
                  (declare (not safe))
                  (##string-append __tmp207276 '".scm")))
               (_%dirs206288%_ (let () (declare (not safe)) (load-path)))
               (_%dirs206294%_
                (let ((_%user-libpath206290%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath206290%_
                      (let ((_%user-libpath206292%_
                             (path-expand '"lib" _%user-libpath206290%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath206292%_ _%dirs206288%_))
                            _%dirs206288%_
                            (cons _%user-libpath206292%_ _%dirs206288%_)))
                      _%dirs206288%_)))
               (_%dirs206304%_
                (let ((_%$e206296%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e206296%_
                      ((lambda (_%g206298206300%_)
                         (cons _%g206298206300%_ _%dirs206294%_))
                       _%$e206296%_)
                      _%dirs206294%_)))
               (_%dirs206310%_
                (let ((__tmp207277
                       (lambda (_%g206305206307%_)
                         (path-expand '"static" _%g206305206307%_))))
                  (declare (not safe))
                  (##map __tmp207277 _%dirs206304%_))))
          (let _%lp206313%_ ((_%rest206315%_ _%dirs206310%_))
            (let* ((_%rest206316206324%_ _%rest206315%_)
                   (_%else206318206332%_
                    (lambda ()
                      (let ((__tmp207278
                             (##structure-ref
                              _%ctx206282%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp207278
                         _%scm206286%_))))
                   (_%K206320206340%_
                    (lambda (_%rest206335%_ _%dir206336%_)
                      (let ((_%path206338%_
                             (path-expand _%scm206286%_ _%dir206336%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path206338%_))
                            _%path206338%_
                            (_%lp206313%_ _%rest206335%_))))))
              (if (pair? _%rest206316206324%_)
                  (let ((_%hd206321206343%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest206316206324%_)))
                        (_%tl206322206345%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest206316206324%_))))
                    (let* ((_%dir206348%_ _%hd206321206343%_)
                           (_%rest206350%_ _%tl206322206345%_))
                      (_%K206320206340%_ _%rest206350%_ _%dir206348%_)))
                  (_%else206318206332%_)))))))
    (define gxc#file-empty?
      (lambda (_%path206280%_)
        (zero? (let ((__tmp207279 (file-info _%path206280%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp207279)))))
    (define gxc#compile-top-module
      (lambda (_%ctx206271%_)
        (let ((__tmp207280
               (lambda ()
                 (let ((__tmp207281
                        (lambda ()
                          (let ((__tmp207282
                                 (lambda ()
                                   (let ((__tmp207284
                                          (lambda ()
                                            (let ((__tmp207286
                                                   (lambda ()
                                                     (let ((__tmp207288
                                                            (lambda ()
                                                              (let ((__tmp207289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx206271%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp207289))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp207290
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx206271%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp207290))
                          '#!void)
                      (gxc#collect-bindings _%ctx206271%_)
                      (gxc#compile-runtime-code _%ctx206271%_)
                      (gxc#compile-meta-code _%ctx206271%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx206271%_)
                          '#!void)))
                   (__tmp207287
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
               (call-with-parameters__1
                __tmp207288
                gxc#current-compile-runtime-names
                __tmp207287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp207285
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp207286
                                               gxc#current-compile-runtime-sections
                                               __tmp207285))))
                                         (__tmp207283
                                          (let ((__obj207184
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj207184))
                                            __obj207184)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp207284
                                      gxc#current-compile-symbol-table
                                      __tmp207283)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp207282
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp207281
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207280
           gx#current-expander-context
           _%ctx206271%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx206269%_)
        (let ((__tmp207291
               (##structure-ref _%ctx206269%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp207291))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx206213%_)
        (letrec ((_%compile1206215%_
                  (lambda (_%ctx206258%_)
                    (let* ((_%code206260%_
                            (##structure-ref
                             _%ctx206258%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm206264%_
                            (let ((_%idstr206262%_
                                   (let ((__tmp207292
                                          (##structure-ref
                                           _%ctx206258%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp207292))))
                              (declare (not safe))
                              (##string-append _%idstr206262%_ '"~0")))
                           (_%rtc?206266%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code206260%_))))
                      (if _%rtc?206266%_
                          (let ((__tmp207293
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp207293
                             _%ctx206258%_
                             _%rtm206264%_))
                          '#!void)
                      (_%generate-runtime-code206217%_
                       _%ctx206258%_
                       _%code206260%_
                       (if _%rtc?206266%_ _%rtm206264%_ '#f)))))
                 (_%context-timestamp206216%_
                  (lambda (_%ctx206256%_)
                    (let ((__tmp207294
                           (let ((__tmp207295
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx206256%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp207295 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp207294))))
                 (_%generate-runtime-code206217%_
                  (lambda (_%ctx206224%_ _%code206225%_ _%rtm206226%_)
                    (let* ((_%runtime-code?206228%_ (if _%rtm206226%_ '#t '#f))
                           (_%lifts206230%_ (box '()))
                           (_%runtime-code206237%_
                            (if _%runtime-code?206228%_
                                (let ((__tmp207296
                                       (lambda ()
                                         (let ((__tmp207297
                                                (lambda ()
                                                  (let ((__tmp207298
                                                         (lambda ()
                                                           (let ((__tmp207300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp207302
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code206225%_))))
                                  (__tmp207301
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp207302
                               gxc#current-compile-identifiers
                               __tmp207301))))
                         (__tmp207299
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp207300
                      gxc#current-compile-marks
                      __tmp207299)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp207298
                                                     gxc#current-compile-lift
                                                     _%lifts206230%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp207297
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp207296
                                   gx#current-expander-context
                                   _%ctx206224%_))
                                '#f))
                           (_%runtime-code206239%_
                            (if _%runtime-code?206228%_
                                (if (null? (unbox _%lifts206230%_))
                                    _%runtime-code206237%_
                                    (cons 'begin
                                          (let ((__tmp207304
                                                 (cons _%runtime-code206237%_
                                                       '()))
                                                (__tmp207303
                                                 (reverse (unbox _%lifts206230%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp207304
                                             __tmp207303))))
                                '#f))
                           (_%runtime-code206241%_
                            (if _%runtime-code?206228%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp206216%_
                                                         _%ctx206224%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code206239%_ '())))
                                '#f))
                           (_%loader-code206244%_
                            (let ((__tmp207305
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code206225%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp207305
                               gx#current-expander-context
                               _%ctx206224%_)))
                           (_%loader-code206246%_
                            (cons 'begin
                                  (cons _%loader-code206244%_
                                        (cons (if _%runtime-code?206228%_
                                                  (cons 'load-module
                                                        (cons _%rtm206226%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0206248%_
                            (gxc#compile-output-file _%ctx206224%_ '0 '".scm"))
                           (_%scmrt206250%_
                            (gxc#compile-output-file
                             _%ctx206224%_
                             '#f
                             '".scm"))
                           (_%scms206252%_
                            (gxc#compile-static-output-file _%ctx206224%_)))
                      (if _%runtime-code?206228%_
                          (gxc#compile-scm-file__0
                           _%scm0206248%_
                           _%runtime-code206241%_)
                          '#!void)
                      (let ((__tmp207306
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt206250%_
                                _%loader-code206246%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp207306
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms206252%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms206252%_))
                          '#!void)
                      (if _%runtime-code?206228%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0206248%_ _%scms206252%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms206252%_ void)))))))
          (let* ((_%all-modules206219%_
                  (cons _%ctx206213%_ (gxc#lift-nested-modules _%ctx206213%_)))
                 (__tmp207307
                  (lambda (_%ctx206221%_)
                    (let ((__tmp207308
                           (lambda () (_%compile1206215%_ _%ctx206221%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp207308
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp207307 _%all-modules206219%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx206112%_)
        (letrec ((_%compile-ssi206114%_
                  (lambda (_%code206181%_)
                    (let* ((_%path206183%_
                            (gxc#compile-output-file
                             _%ctx206112%_
                             '#f
                             '".ssi"))
                           (_%prelude206195%_
                            (let* ((_%super206185%_
                                    (##structure-ref
                                     _%ctx206112%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e206187%_
                                    (##structure-ref
                                     _%super206185%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e206187%_
                                  ((lambda (_%g206189206191%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g206189206191%_)))
                                   _%$e206187%_)
                                  ':<root>)))
                           (_%ns206197%_
                            (##structure-ref
                             _%ctx206112%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr206199%_
                            (symbol->string
                             (##structure-ref
                              _%ctx206112%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg206207%_
                            (let ((_%$e206201%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr206199%_ '#\/))))
                              (if _%$e206201%_
                                  ((lambda (_%x206204%_)
                                     (let ((__tmp207309
                                            (substring
                                             _%idstr206199%_
                                             '0
                                             _%x206204%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp207309)))
                                   _%$e206201%_)
                                  '#f)))
                           (_%rt206209%_
                            (let ((__tmp207310
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp207310 _%ctx206112%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path206183%_))
                      (gxc#with-output-to-scheme-file
                       _%path206183%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude206195%_))
                         (if _%pkg206207%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg206207%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns206197%_))
                         (newline)
                         (pretty-print _%code206181%_)
                         (if _%rt206209%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt206209%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi206115%_
                  (lambda (_%part206120%_)
                    (let* ((_%part206121206134%_ _%part206120%_)
                           (_%E206123206138%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part206121206134%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K206124206150%_
                            (lambda (_%code206141%_
                                     _%n206142%_
                                     _%phi206143%_
                                     _%phi-ctx206144%_)
                              (let ((_%code206148%_
                                     (let ((__tmp207311
                                            (lambda ()
                                              (let ((__tmp207312
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code206141%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp207312
                                                 gx#current-expander-phi
                                                 _%phi206143%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp207311
                                        gx#current-expander-context
                                        _%phi-ctx206144%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx206112%_
                                  _%n206142%_
                                  '".scm")
                                 _%code206148%_
                                 '#t)))))
                      (if (pair? _%part206121206134%_)
                          (let ((_%hd206125206153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part206121206134%_)))
                                (_%tl206126206155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part206121206134%_))))
                            (let ((_%phi-ctx206158%_ _%hd206125206153%_))
                              (if (pair? _%tl206126206155%_)
                                  (let ((_%hd206127206160%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl206126206155%_)))
                                        (_%tl206128206162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl206126206155%_))))
                                    (let ((_%phi206165%_ _%hd206127206160%_))
                                      (if (pair? _%tl206128206162%_)
                                          (let ((_%hd206129206167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl206128206162%_)))
                                                (_%tl206130206169%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl206128206162%_))))
                                            (let ((_%n206172%_
                                                   _%hd206129206167%_))
                                              (if (pair? _%tl206130206169%_)
                                                  (let ((_%hd206131206174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl206130206169%_)))
                                                        (_%tl206132206176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl206130206169%_))))
                                                    (let ((_%code206179%_
                                                           _%hd206131206174%_))
                                                      (if (null? _%tl206132206176%_)
                                                          (_%K206124206150%_
                                                           _%code206179%_
                                                           _%n206172%_
                                                           _%phi206165%_
                                                           _%phi-ctx206158%_)
                                                          (_%E206123206138%_))))
                                                  (_%E206123206138%_))))
                                          (_%E206123206138%_))))
                                  (_%E206123206138%_))))
                          (_%E206123206138%_))))))
          (let ((_g207313_ (gxc#generate-meta-code _%ctx206112%_)))
            (begin
              (let ((_g207314_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g207313_)
                           (##values-length _g207313_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g207314_ 2)))
                    (error "Context expects 2 values" _g207314_)))
              (let ((_%ssi-code206117%_
                     (let () (declare (not safe)) (##values-ref _g207313_ 0)))
                    (_%phi-code206118%_
                     (let () (declare (not safe)) (##values-ref _g207313_ 1))))
                (begin
                  (_%compile-ssi206114%_ _%ssi-code206117%_)
                  (for-each _%compile-phi206115%_ _%phi-code206118%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx206094%_)
        (let* ((_%path206096%_
                (gxc#compile-output-file _%ctx206094%_ '#f '".ssxi.ss"))
               (_%code206098%_
                (let ((__tmp207315
                       (##structure-ref
                        _%ctx206094%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp207315)))
               (_%idstr206100%_
                (symbol->string
                 (##structure-ref
                  _%ctx206094%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg206108%_
                (let ((_%$e206102%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr206100%_ '#\/))))
                  (if _%$e206102%_
                      ((lambda (_%x206105%_)
                         (let ((__tmp207316
                                (substring _%idstr206100%_ '0 _%x206105%_)))
                           (declare (not safe))
                           (##string->symbol __tmp207316)))
                       _%$e206102%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path206096%_))
          (gxc#with-output-to-scheme-file
           _%path206096%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg206108%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg206108%_))
                 '#!void)
             (newline)
             (pretty-print _%code206098%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx206087%_)
        (let* ((_%state206089%_
                (let ((__obj207185
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj207185 _%ctx206087%_))
                  __obj207185))
               (_%ssi-code206091%_
                (let ((__tmp207317
                       (##structure-ref
                        _%ctx206087%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state206089%_
                   __tmp207317))))
          (values _%ssi-code206091%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state206089%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx206078%_)
        (let* ((_%lifts206080%_ (box '()))
               (__tmp207318
                (lambda ()
                  (let ((__tmp207320
                         (lambda ()
                           (let ((__tmp207322
                                  (lambda ()
                                    (let ((_%code206085%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx206078%_))))
                                      (if (null? (unbox _%lifts206080%_))
                                          _%code206085%_
                                          (cons 'begin
                                                (let ((__tmp207324
                                                       (cons _%code206085%_
                                                             '()))
                                                      (__tmp207323
                                                       (reverse (unbox _%lifts206080%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp207324
                                                   __tmp207323)))))))
                                 (__tmp207321
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp207322
                              gxc#current-compile-identifiers
                              __tmp207321))))
                        (__tmp207319
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp207320
                     gxc#current-compile-marks
                     __tmp207319)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp207318
           gxc#current-compile-lift
           _%lifts206080%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx206074%_)
        (let ((_%modules206076%_ (box '())))
          (let ((__tmp207325
                 (##structure-ref _%ctx206074%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules206076%_ __tmp207325))
          (reverse (unbox _%modules206076%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path206054%_ _%code206055%_ _%phi?206056%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path206054%_))
        (gxc#with-output-to-scheme-file
         _%path206054%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp207326
                                           (if _%phi?206056%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp207326)))))))
           (pretty-print _%code206055%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it206060%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path206054%_ _%phi?206056%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp207327
                         (cons 'compile-file (cons _%path206054%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it206060%_ __tmp207327))
                  (_%compile-it206060%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path206065%_ _%code206066%_)
        (let ((_%phi?206068%_ '#f))
          (gxc#compile-scm-file__%
           _%path206065%_
           _%code206066%_
           _%phi?206068%_))))
    (define gxc#compile-scm-file
      (lambda _g207328_
        (let ((_g207329_ (let () (declare (not safe)) (##length _g207328_))))
          (cond ((let () (declare (not safe)) (##fx= _g207329_ 2))
                 (apply gxc#compile-scm-file__0 _g207328_))
                ((let () (declare (not safe)) (##fx= _g207329_ 3))
                 (apply gxc#compile-scm-file__% _g207328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g207328_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?205955%_)
        (let _%lp205957%_ ((_%rest205959%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts205960%_ '()))
          (let* ((_%rest205961205981%_ _%rest205959%_)
                 (_%else205965205989%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts205960%_)))
                        (reverse _%opts205960%_)))))
            (let ((_%K205975206032%_
                   (lambda (_%rest206030%_)
                     (_%lp205957%_ _%rest206030%_ _%opts205960%_)))
                  (_%K205970206014%_
                   (lambda (_%rest206012%_)
                     (_%lp205957%_ _%rest206012%_ _%opts205960%_)))
                  (_%K205967205996%_
                   (lambda (_%rest205993%_ _%opt205994%_)
                     (_%lp205957%_
                      _%rest205993%_
                      (cons _%opt205994%_ _%opts205960%_)))))
              (if (pair? _%rest205961205981%_)
                  (let ((_%tl205977206037%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest205961205981%_)))
                        (_%hd205976206035%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest205961205981%_))))
                    (if (equal? _%hd205976206035%_ '"-cc-options")
                        (if (pair? _%tl205977206037%_)
                            (let* ((_%tl205979206040%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl205977206037%_)))
                                   (_%rest206043%_ _%tl205979206040%_))
                              (_%K205975206032%_ _%rest206043%_))
                            (let ((_%opt206004%_ _%hd205976206035%_)
                                  (_%rest206006%_ _%tl205977206037%_))
                              (_%K205967205996%_
                               _%rest206006%_
                               _%opt206004%_)))
                        (if (equal? _%hd205976206035%_ '"-ld-options")
                            (if (pair? _%tl205977206037%_)
                                (let* ((_%tl205974206022%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl205977206037%_)))
                                       (_%rest206025%_ _%tl205974206022%_))
                                  (_%K205970206014%_ _%rest206025%_))
                                (let ((_%opt206004%_ _%hd205976206035%_)
                                      (_%rest206006%_ _%tl205977206037%_))
                                  (_%K205967205996%_
                                   _%rest206006%_
                                   _%opt206004%_)))
                            (let ((_%opt206004%_ _%hd205976206035%_)
                                  (_%rest206006%_ _%tl205977206037%_))
                              (_%K205967205996%_
                               _%rest206006%_
                               _%opt206004%_)))))
                  (_%else205965205989%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?206049%_ '#f)) (gxc#gsc-link-options__% _%phi?206049%_))))
    (define gxc#gsc-link-options
      (lambda _g207330_
        (let ((_g207331_ (let () (declare (not safe)) (##length _g207330_))))
          (cond ((let () (declare (not safe)) (##fx= _g207331_ 0))
                 (apply gxc#gsc-link-options__0 _g207330_))
                ((let () (declare (not safe)) (##fx= _g207331_ 1))
                 (apply gxc#gsc-link-options__% _g207330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g207330_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords205804%_ _%static?205800205805%_ _%phi?205807%_)
        (let ((_%static?205809%_
               (if (eq? _%static?205800205805%_ absent-value)
                   '#f
                   _%static?205800205805%_)))
          (if _%phi?205807%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp205811%_ ((_%rest205813%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts205814%_ '()))
                (let* ((_%rest205815205841%_ _%rest205813%_)
                       (_%else205820205849%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts205814%_)))
                              (reverse! _%opts205814%_)))))
                  (let ((_%K205835205912%_
                         (lambda (_%rest205909%_ _%opt205910%_)
                           (if _%static?205809%_
                               (_%lp205811%_
                                _%rest205909%_
                                (cons _%opt205910%_
                                      (cons '"-cc-options" _%opts205814%_)))
                               (_%lp205811%_ _%rest205909%_ _%opts205814%_))))
                        (_%K205830205889%_
                         (lambda (_%rest205886%_ _%opt205887%_)
                           (_%lp205811%_
                            _%rest205886%_
                            (cons _%opt205887%_
                                  (cons '"-cc-options" _%opts205814%_)))))
                        (_%K205825205869%_
                         (lambda (_%rest205867%_)
                           (_%lp205811%_ _%rest205867%_ _%opts205814%_)))
                        (_%K205822205855%_
                         (lambda (_%rest205853%_)
                           (_%lp205811%_ _%rest205853%_ _%opts205814%_))))
                    (if (pair? _%rest205815205841%_)
                        (let ((_%tl205837205917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205815205841%_)))
                              (_%hd205836205915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205815205841%_))))
                          (if (equal? _%hd205836205915%_ '"-cc-options")
                              (if (pair? _%tl205837205917%_)
                                  (let ((_%tl205839205922%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl205837205917%_)))
                                        (_%hd205838205920%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl205837205917%_))))
                                    (if (equal? _%hd205838205920%_ '"-Bstatic")
                                        (let ((_%opt205925%_
                                               _%hd205838205920%_)
                                              (_%rest205927%_
                                               _%tl205839205922%_))
                                          (_%K205835205912%_
                                           _%rest205927%_
                                           _%opt205925%_))
                                        (let ((_%opt205902%_
                                               _%hd205838205920%_)
                                              (_%rest205904%_
                                               _%tl205839205922%_))
                                          (_%K205830205889%_
                                           _%rest205904%_
                                           _%opt205902%_))))
                                  (let ((_%rest205861%_ _%tl205837205917%_))
                                    (_%K205822205855%_ _%rest205861%_)))
                              (if (equal? _%hd205836205915%_ '"-ld-options")
                                  (if (pair? _%tl205837205917%_)
                                      (let* ((_%tl205829205877%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl205837205917%_)))
                                             (_%rest205880%_
                                              _%tl205829205877%_))
                                        (_%K205825205869%_ _%rest205880%_))
                                      (let ((_%rest205861%_
                                             _%tl205837205917%_))
                                        (_%K205822205855%_ _%rest205861%_)))
                                  (let ((_%rest205861%_ _%tl205837205917%_))
                                    (_%K205822205855%_ _%rest205861%_)))))
                        (_%else205820205849%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords205932%_ _%static?205800205933%_)
        (let ((_%phi?205935%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords205932%_
           _%static?205800205933%_
           _%phi?205935%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g207332_
        (let ((_g207333_ (let () (declare (not safe)) (##length _g207332_))))
          (cond ((let () (declare (not safe)) (##fx= _g207333_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g207332_))
                ((let () (declare (not safe)) (##fx= _g207333_ 3))
                 (apply gxc#gsc-cc-options__%__% _g207332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g207332_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords205944%_ . _%args205945%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords205944%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205944%_
                  'static:
                  absent-value))
               _%args205945%_)))
    (define gxc#gsc-cc-options
      (lambda _%args205801205951%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args205801205951%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords205649%_ _%static?205645205650%_ _%phi?205652%_)
        (let ((_%static?205654%_
               (if (eq? _%static?205645205650%_ absent-value)
                   '#f
                   _%static?205645205650%_)))
          (if _%phi?205652%_
              '()
              (let _%lp205656%_ ((_%rest205658%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts205659%_ '()))
                (let* ((_%rest205660205686%_ _%rest205658%_)
                       (_%else205665205694%_
                        (lambda () (reverse! _%opts205659%_))))
                  (let ((_%K205680205757%_
                         (lambda (_%rest205754%_ _%opt205755%_)
                           (if _%static?205654%_
                               (_%lp205656%_
                                _%rest205754%_
                                (cons _%opt205755%_
                                      (cons '"-ld-options" _%opts205659%_)))
                               (_%lp205656%_ _%rest205754%_ _%opts205659%_))))
                        (_%K205675205734%_
                         (lambda (_%rest205731%_ _%opt205732%_)
                           (_%lp205656%_
                            _%rest205731%_
                            (cons _%opt205732%_
                                  (cons '"-ld-options" _%opts205659%_)))))
                        (_%K205670205714%_
                         (lambda (_%rest205712%_)
                           (_%lp205656%_ _%rest205712%_ _%opts205659%_)))
                        (_%K205667205700%_
                         (lambda (_%rest205698%_)
                           (_%lp205656%_ _%rest205698%_ _%opts205659%_))))
                    (if (pair? _%rest205660205686%_)
                        (let ((_%tl205682205762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205660205686%_)))
                              (_%hd205681205760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205660205686%_))))
                          (if (equal? _%hd205681205760%_ '"-ld-options")
                              (if (pair? _%tl205682205762%_)
                                  (let ((_%tl205684205767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl205682205762%_)))
                                        (_%hd205683205765%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl205682205762%_))))
                                    (if (equal? _%hd205683205765%_ '"-static")
                                        (let ((_%opt205770%_
                                               _%hd205683205765%_)
                                              (_%rest205772%_
                                               _%tl205684205767%_))
                                          (_%K205680205757%_
                                           _%rest205772%_
                                           _%opt205770%_))
                                        (let ((_%opt205747%_
                                               _%hd205683205765%_)
                                              (_%rest205749%_
                                               _%tl205684205767%_))
                                          (_%K205675205734%_
                                           _%rest205749%_
                                           _%opt205747%_))))
                                  (let ((_%rest205706%_ _%tl205682205762%_))
                                    (_%K205667205700%_ _%rest205706%_)))
                              (if (equal? _%hd205681205760%_ '"-cc-options")
                                  (if (pair? _%tl205682205762%_)
                                      (let* ((_%tl205674205722%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl205682205762%_)))
                                             (_%rest205725%_
                                              _%tl205674205722%_))
                                        (_%K205670205714%_ _%rest205725%_))
                                      (let ((_%rest205706%_
                                             _%tl205682205762%_))
                                        (_%K205667205700%_ _%rest205706%_)))
                                  (let ((_%rest205706%_ _%tl205682205762%_))
                                    (_%K205667205700%_ _%rest205706%_)))))
                        (_%else205665205694%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords205777%_ _%static?205645205778%_)
        (let ((_%phi?205780%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords205777%_
           _%static?205645205778%_
           _%phi?205780%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g207334_
        (let ((_g207335_ (let () (declare (not safe)) (##length _g207334_))))
          (cond ((let () (declare (not safe)) (##fx= _g207335_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g207334_))
                ((let () (declare (not safe)) (##fx= _g207335_ 3))
                 (apply gxc#gsc-ld-options__%__% _g207334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g207334_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords205789%_ . _%args205790%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords205789%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205789%_
                  'static:
                  absent-value))
               _%args205790%_)))
    (define gxc#gsc-ld-options
      (lambda _%args205646205796%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args205646205796%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir205640%_)
        (let ((_%user-staticdir205642%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir205640%_
                       '" -I "
                       _%user-staticdir205642%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp205552%_ ((_%rest205554%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts205555%_ '()))
          (let* ((_%rest205556205576%_ _%rest205554%_)
                 (_%else205560205584%_ (lambda () _%opts205555%_)))
            (let ((_%K205570205627%_
                   (lambda (_%rest205625%_)
                     (_%lp205552%_ _%rest205625%_ _%opts205555%_)))
                  (_%K205565205605%_
                   (lambda (_%rest205602%_ _%opt205603%_)
                     (_%lp205552%_
                      _%rest205602%_
                      (let ((__tmp207336
                             (let ((__tmp207337
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt205603%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp207337))))
                        (declare (not safe))
                        (##append _%opts205555%_ __tmp207336)))))
                  (_%K205562205590%_
                   (lambda (_%rest205588%_)
                     (_%lp205552%_ _%rest205588%_ _%opts205555%_))))
              (if (pair? _%rest205556205576%_)
                  (let ((_%tl205572205632%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest205556205576%_)))
                        (_%hd205571205630%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest205556205576%_))))
                    (if (equal? _%hd205571205630%_ '"-cc-options")
                        (if (pair? _%tl205572205632%_)
                            (let* ((_%tl205574205635%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl205572205632%_)))
                                   (_%rest205638%_ _%tl205574205635%_))
                              (_%K205570205627%_ _%rest205638%_))
                            (let ((_%rest205596%_ _%tl205572205632%_))
                              (_%K205562205590%_ _%rest205596%_)))
                        (if (equal? _%hd205571205630%_ '"-ld-options")
                            (if (pair? _%tl205572205632%_)
                                (let ((_%tl205569205615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl205572205632%_)))
                                      (_%hd205568205613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl205572205632%_))))
                                  (let ((_%opt205618%_ _%hd205568205613%_)
                                        (_%rest205620%_ _%tl205569205615%_))
                                    (_%K205565205605%_
                                     _%rest205620%_
                                     _%opt205618%_)))
                                (let ((_%rest205596%_ _%tl205572205632%_))
                                  (_%K205562205590%_ _%rest205596%_)))
                            (let ((_%rest205596%_ _%tl205572205632%_))
                              (_%K205562205590%_ _%rest205596%_)))))
                  (_%else205560205584%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str205549%_)
        (not (let () (declare (not safe)) (string-empty? _%str205549%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path205542%_ _%phi?205543%_)
        (let ((_%gsc-link-opts205545%_
               (gxc#gsc-link-options__% _%phi?205543%_))
              (_%gsc-cc-opts205546%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?205543%_))
              (_%gsc-ld-opts205547%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?205543%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp207338
                  (let ((__tmp207339
                         (let ((__tmp207340 (cons _%path205542%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp207340
                            _%gsc-link-opts205545%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp207339 _%gsc-ld-opts205547%_))))
             (declare (not safe))
             (__foldr1 cons __tmp207338 _%gsc-cc-opts205546%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx205508%_ _%n205509%_ _%ext205510%_)
        (letrec ((_%module-relative-path205512%_
                  (lambda (_%ctx205540%_)
                    (path-strip-directory
                     (let ((__tmp207341
                            (##structure-ref
                             _%ctx205540%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp207341)))))
                 (_%module-source-directory205513%_
                  (lambda (_%ctx205536%_)
                    (path-directory
                     (let ((_%mpath205538%_
                            (##structure-ref
                             _%ctx205536%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath205538%_)
                           _%mpath205538%_
                           (last _%mpath205538%_))))))
                 (_%section-string205514%_
                  (lambda (_%n205530%_)
                    (if (number? _%n205530%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n205530%_))
                        (if (symbol? _%n205530%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n205530%_))
                            (if (string? _%n205530%_)
                                _%n205530%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n205530%_)))))))
                 (_%file-name205515%_
                  (lambda (_%path205528%_)
                    (if _%n205509%_
                        (string-append
                         _%path205528%_
                         '"~"
                         (_%section-string205514%_ _%n205509%_)
                         _%ext205510%_)
                        (string-append _%path205528%_ _%ext205510%_))))
                 (_%file-path205516%_
                  (lambda ()
                    (let ((_%$e205522%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e205522%_
                          ((lambda (_%outdir205525%_)
                             (path-expand
                              (_%file-name205515%_
                               (let ((__tmp207342
                                      (##structure-ref
                                       _%ctx205508%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp207342)))
                              _%outdir205525%_))
                           _%$e205522%_)
                          (path-expand
                           (_%file-name205515%_
                            (_%module-relative-path205512%_ _%ctx205508%_))
                           (_%module-source-directory205513%_
                            _%ctx205508%_)))))))
          (let ((_%path205518%_ (_%file-path205516%_)))
            (let ((__tmp207343
                   (lambda ()
                     (let ((__tmp207344 (path-directory _%path205518%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp207344)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp207343))
            _%path205518%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx205489%_)
        (letrec ((_%file-name205491%_
                  (lambda (_%id205506%_)
                    (let ((__tmp207345 (gxc#static-module-name _%id205506%_)))
                      (declare (not safe))
                      (##string-append __tmp207345 '".scm"))))
                 (_%file-path205492%_
                  (lambda ()
                    (let* ((_%file205498%_
                            (_%file-name205491%_
                             (##structure-ref
                              _%ctx205489%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e205500%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e205500%_
                          ((lambda (_%outdir205503%_)
                             (path-expand
                              _%file205498%_
                              (path-expand '"static" _%outdir205503%_)))
                           _%$e205500%_)
                          (path-expand _%file205498%_ '"static"))))))
          (let ((_%path205494%_ (_%file-path205492%_)))
            (let ((__tmp207346
                   (lambda ()
                     (let ((__tmp207347 (path-directory _%path205494%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp207347)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp207346))
            _%path205494%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx205482%_ _%opts205483%_)
        (let ((_%$e205485%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts205483%_))))
          (if _%$e205485%_
              _%$e205485%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx205482%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr205472%_)
        (if (string? _%idstr205472%_)
            (let* ((_%str205475%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr205472%_)))
                   (_%strs205477%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str205475%_ '#\/))))
              (declare (not safe))
              (string-join _%strs205477%_ '"__"))
            (if (symbol? _%idstr205472%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr205472%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr205472%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp207348
               (let ((__tmp207349 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp207349 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp207348))))
    (define gxc#invoke__%
      (lambda (_%@@keywords205436%_
               _%stdout-redirection205432205437%_
               _%stderr-redirection205433205439%_
               _%program205441%_
               _%args205442%_)
        (let* ((_%stdout-redirection205444%_
                (if (eq? _%stdout-redirection205432205437%_ absent-value)
                    '#f
                    _%stdout-redirection205432205437%_))
               (_%stderr-redirection205446%_
                (if (eq? _%stderr-redirection205433205439%_ absent-value)
                    '#f
                    _%stderr-redirection205433205439%_)))
          (let ((__tmp207350 (cons _%program205441%_ _%args205442%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp207350))
          (let* ((_%proc205448%_
                  (open-process
                   (cons 'path:
                         (cons _%program205441%_
                               (cons 'arguments:
                                     (cons _%args205442%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection205444%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection205446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output205453%_
                  (if (or _%stdout-redirection205444%_
                          _%stderr-redirection205446%_)
                      (read-line _%proc205448%_ '#f)
                      '#f))
                 (_%status205456%_ (process-status _%proc205448%_)))
            (let () (declare (not safe)) (##close-port _%proc205448%_))
            (if (zero? _%status205456%_)
                '#!void
                (begin
                  (display _%output205453%_)
                  (let ((__tmp207351 (cons _%program205441%_ _%args205442%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp207351
                     _%status205456%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords205461%_ . _%args205462%_)
        (apply gxc#invoke__%
               _%@@keywords205461%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205461%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205461%_
                  'stderr-redirection:
                  absent-value))
               _%args205462%_)))
    (define gxc#invoke
      (lambda _%args205434205468%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args205434205468%_)))))
