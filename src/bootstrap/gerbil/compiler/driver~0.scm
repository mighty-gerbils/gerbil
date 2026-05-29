(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1779967250)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp263283 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp263283))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp263284 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp263284))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path263140%_ _%fun263141%_)
        (with-output-to-file
         (cons 'path: (cons _%path263140%_ gxc#scheme-file-settings))
         _%fun263141%_)))
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
      (lambda (_%gerbil-libdir263135%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir263135%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path263133%_)
        (let ((__tmp263285 (object->string _%path263133%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp263285 '")"))))
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
      (lambda (_%dir263131%_) (delete-file-or-directory _%dir263131%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath263074%_ _%opts263075%_)
        (if (string? _%srcpath263074%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath263074%_)))
        (let* ((_%outdir263077%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts263075%_)))
               (_%invoke-gsc?263079%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts263075%_)))
               (_%target263084%_
                (let ((_%$e263081%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts263075%_))))
                  (if _%$e263081%_ _%$e263081%_ 'C)))
               (_%gsc-options263089%_
                (append (cons '"-target"
                              (cons (symbol->string _%target263084%_) '()))
                        (let ((_%$e263086%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts263075%_))))
                          (if _%$e263086%_ _%$e263086%_ '()))))
               (_%keep-scm?263091%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts263075%_)))
               (_%verbosity263093%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts263075%_)))
               (_%optimize263095%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts263075%_)))
               (_%debug263097%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts263075%_)))
               (_%gen-ssxi263099%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts263075%_)))
               (_%parallel?263101%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts263075%_))))
          (if _%outdir263077%_
              (let ((__tmp263286
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir263077%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263286))
              '#!void)
          (if _%optimize263095%_
              (let ((__tmp263287
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263287))
              '#!void)
          (let ((__tmp263288
                 (lambda ()
                   (let ((__tmp263289
                          (lambda ()
                            (let ((__tmp263290
                                   (lambda ()
                                     (let ((__tmp263291
                                            (lambda ()
                                              (let ((__tmp263292
                                                     (lambda ()
                                                       (let ((__tmp263293
                                                              (lambda ()
                                                                (let ((__tmp263294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp263295
                                        (lambda ()
                                          (let ((__tmp263297
                                                 (lambda ()
                                                   (let ((__tmp263299
                                                          (lambda ()
                                                            (let ((__tmp263301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp263302
                                    (lambda ()
                                      (let ((__tmp263303
                                             (lambda ()
                                               (let ((__tmp263304
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath263074%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp263305
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath263074%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp263305))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp263304
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp263303
                                         gx#current-compilation-target
                                         _%target263084%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp263302
                                gxc#current-compile-parallel
                                _%parallel?263101%_))))
                          (__tmp263300
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263301
                       gxc#current-compile-identifiers
                       __tmp263300))))
                 (__tmp263298
                  (cons (cons 'compile-module (cons _%srcpath263074%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp263299
                                                      gxc#current-compile-context
                                                      __tmp263298))))
                                                (__tmp263296
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp263297
                                             gxc#current-compile-timestamp
                                             __tmp263296)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp263295
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi263099%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp263294
                           gxc#current-compile-debug
                           _%debug263097%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp263293
                  gxc#current-compile-optimize
                  _%optimize263095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263292
                                                 gxc#current-compile-verbose
                                                 _%verbosity263093%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263291
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?263091%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263290
                               gxc#current-compile-gsc-options
                               _%gsc-options263089%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263289
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?263079%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp263288
             gxc#current-compile-output-dir
             _%outdir263077%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath263124%_)
        (let ((_%opts263126%_ '()))
          (gxc#compile-module__% _%srcpath263124%_ _%opts263126%_))))
    (define gxc#compile-module
      (lambda _g263306_
        (let ((_g263307_ (let () (declare (not safe)) (##length _g263306_))))
          (cond ((let () (declare (not safe)) (##fx= _g263307_ 1))
                 (apply gxc#compile-module__0 _g263306_))
                ((let () (declare (not safe)) (##fx= _g263307_ 2))
                 (apply gxc#compile-module__% _g263306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g263306_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath263023%_ _%opts263024%_)
        (if (string? _%srcpath263023%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath263023%_)))
        (let* ((_%outdir263026%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts263024%_)))
               (_%invoke-gsc?263028%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts263024%_)))
               (_%target263033%_
                (let ((_%$e263030%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts263024%_))))
                  (if _%$e263030%_ _%$e263030%_ 'C)))
               (_%gsc-options263038%_
                (append (cons '"-target"
                              (cons (symbol->string _%target263033%_) '()))
                        (let ((_%$e263035%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts263024%_))))
                          (if _%$e263035%_ _%$e263035%_ '()))))
               (_%keep-scm?263040%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts263024%_)))
               (_%verbosity263042%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts263024%_)))
               (_%debug263044%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts263024%_)))
               (_%parallel?263046%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts263024%_))))
          (if _%outdir263026%_
              (let ((__tmp263308
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir263026%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp263308))
              '#!void)
          (let ((__tmp263309
                 (lambda ()
                   (let ((__tmp263310
                          (lambda ()
                            (let ((__tmp263311
                                   (lambda ()
                                     (let ((__tmp263312
                                            (lambda ()
                                              (let ((__tmp263313
                                                     (lambda ()
                                                       (let ((__tmp263314
                                                              (lambda ()
                                                                (let ((__tmp263315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp263317
                                        (lambda ()
                                          (let ((__tmp263319
                                                 (lambda ()
                                                   (let ((__tmp263321
                                                          (lambda ()
                                                            (let ((__tmp263322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp263323
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath263023%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp263324
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath263023%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp263324))
                                       _%opts263024%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp263323
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263322
                       gxc#current-compile-parallel
                       _%parallel?263046%_))))
                 (__tmp263320
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp263321
                                                      gxc#current-compile-identifiers
                                                      __tmp263320))))
                                                (__tmp263318
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath263023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp263319
                                             gxc#current-compile-context
                                             __tmp263318))))
                                       (__tmp263316 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp263317
                                    gxc#current-compile-timestamp
                                    __tmp263316)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp263315
                           gxc#current-compile-debug
                           _%debug263044%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp263314
                  gxc#current-compile-verbose
                  _%verbosity263042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263313
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?263040%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263312
                                        gxc#current-compile-gsc-options
                                        _%gsc-options263038%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263311
                               gx#current-compilation-target
                               _%target263033%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263310
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?263028%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp263309
             gxc#current-compile-output-dir
             _%outdir263026%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath263066%_)
        (let ((_%opts263068%_ '()))
          (gxc#compile-exe__% _%srcpath263066%_ _%opts263068%_))))
    (define gxc#compile-exe
      (lambda _g263325_
        (let ((_g263326_ (let () (declare (not safe)) (##length _g263325_))))
          (cond ((let () (declare (not safe)) (##fx= _g263326_ 1))
                 (apply gxc#compile-exe__0 _g263325_))
                ((let () (declare (not safe)) (##fx= _g263326_ 2))
                 (apply gxc#compile-exe__% _g263325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g263325_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx263019%_ _%opts263020%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts263020%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx263019%_
             _%opts263020%_)
            (gxc#compile-executable-module/separate
             _%ctx263019%_
             _%opts263020%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx262745%_ _%opts262746%_)
        (letrec ((_%generate-stub262748%_
                  (lambda (_%builtin-modules263015%_)
                    (let ((_%mod-main263017%_
                           (gxc#find-runtime-symbol _%ctx262745%_ 'main)))
                      (let ((__tmp263327
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules263015%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp263327))
                      (let ((__tmp263328
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main263017%_
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
                        (##write __tmp263328))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts262749%_
                  (lambda (_%gerbil-libdir263013%_)
                    (let ((__tmp263329
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir263013%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp263329 read))))
                 (_%replace-extension262750%_
                  (lambda (_%path263010%_ _%ext263011%_)
                    (string-append
                     (path-strip-extension _%path263010%_)
                     _%ext263011%_)))
                 (_%replace-extension-with-c262751%_
                  (lambda (_%path263008%_)
                    (_%replace-extension262750%_ _%path263008%_ '".c")))
                 (_%replace-extension-with-object262752%_
                  (lambda (_%path263006%_)
                    (_%replace-extension262750%_
                     _%path263006%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?262753%_
                  (lambda (_%ctx263004%_)
                    (if (_%exclude-module?262755%_ _%ctx263004%_)
                        '#f
                        (not (_%libgerbil-module?262754%_ _%ctx263004%_)))))
                 (_%libgerbil-module?262754%_
                  (lambda (_%ctx262997%_)
                    (let ((_%id-str262999%_
                           (symbol->string
                            (##structure-ref
                             _%ctx262997%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?262755%_ _%id-str262999%_)
                          '#f
                          (let ((_%$e263001%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str262999%_))))
                            (if _%$e263001%_
                                _%$e263001%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str262999%_))))))))
                 (_%exclude-module?262755%_
                  (lambda (_%ctx-or-str262993%_)
                    (let ((_%str262995%_
                           (if (string? _%ctx-or-str262993%_)
                               _%ctx-or-str262993%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str262993%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str262995%_))))
                 (_%not-file-empty?262756%_
                  (lambda (_%path262991%_)
                    (not (gxc#file-empty? _%path262991%_))))
                 (_%fold-libgerbil-runtime-scm262757%_
                  (lambda (_%gerbil-staticdir262984%_ _%libgerbil-scm262985%_)
                    (let ((_%gerbil-runtime-scm262989%_
                           (let ((__tmp263330
                                  (lambda (_%rtm262987%_)
                                    (path-expand
                                     (let ((__tmp263331
                                            (let ((__tmp263332
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm262987%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp263332
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp263331 '".scm"))
                                     _%gerbil-staticdir262984%_))))
                             (declare (not safe))
                             (##map __tmp263330 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates262758%_
                       (append _%gerbil-runtime-scm262989%_
                               _%libgerbil-scm262985%_)))))
                 (_%remove-duplicates262758%_
                  (lambda (_%strlst262944%_)
                    (let _%loop262946%_ ((_%rest262948%_ _%strlst262944%_)
                                         (_%result262949%_ '()))
                      (let* ((_%rest262950262958%_ _%rest262948%_)
                             (_%else262952262966%_
                              (lambda () (reverse! _%result262949%_)))
                             (_%K262954262972%_
                              (lambda (_%rest262969%_ _%path262970%_)
                                (if (member _%path262970%_ _%result262949%_)
                                    (_%loop262946%_
                                     _%rest262969%_
                                     _%result262949%_)
                                    (_%loop262946%_
                                     _%rest262969%_
                                     (cons _%path262970%_
                                           _%result262949%_))))))
                        (if (pair? _%rest262950262958%_)
                            (let ((_%hd262955262975%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest262950262958%_)))
                                  (_%tl262956262977%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest262950262958%_))))
                              (let* ((_%path262980%_ _%hd262955262975%_)
                                     (_%rest262982%_ _%tl262956262977%_))
                                (_%K262954262972%_
                                 _%rest262982%_
                                 _%path262980%_)))
                            (_%else262952262966%_))))))
                 (_%compile-stub262759%_
                  (lambda (_%output-scm262766%_ _%output-bin262767%_)
                    (let* ((_%gerbil-home262769%_
                            (let ((__tmp263333
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp263333)))
                           (_%gerbil-libdir262771%_
                            (path-expand '"lib" _%gerbil-home262769%_))
                           (_%gerbil-staticdir262773%_
                            (path-expand '"static" _%gerbil-libdir262771%_))
                           (_%deps262775%_
                            (gxc#find-runtime-module-deps _%ctx262745%_))
                           (_%libgerbil-deps262777%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?262754%_
                               _%deps262775%_)))
                           (_%libgerbil-scm262779%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps262777%_)))
                           (_%libgerbil-scm262781%_
                            (_%fold-libgerbil-runtime-scm262757%_
                             _%gerbil-staticdir262773%_
                             _%libgerbil-scm262779%_))
                           (_%libgerbil-c262783%_
                            (map _%replace-extension-with-c262751%_
                                 _%libgerbil-scm262781%_))
                           (_%libgerbil-o262785%_
                            (map _%replace-extension-with-object262752%_
                                 _%libgerbil-scm262781%_))
                           (_%src-deps262787%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?262753%_
                               _%deps262775%_)))
                           (_%src-deps-scm262789%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps262787%_)))
                           (_%src-deps-scm262791%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?262756%_
                               _%src-deps-scm262789%_)))
                           (_%src-deps-scm262793%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm262791%_)))
                           (_%src-deps-c262795%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c262751%_
                                     _%src-deps-scm262793%_)))
                           (_%src-deps-o262797%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object262752%_
                                     _%src-deps-scm262793%_)))
                           (_%src-bin-scm262799%_
                            (gxc#find-static-module-file _%ctx262745%_))
                           (_%src-bin-scm262801%_
                            (path-expand _%src-bin-scm262799%_))
                           (_%src-bin-c262803%_
                            (_%replace-extension-with-c262751%_
                             _%src-bin-scm262801%_))
                           (_%src-bin-o262805%_
                            (_%replace-extension-with-object262752%_
                             _%src-bin-scm262801%_))
                           (_%output-bin262807%_
                            (path-expand _%output-bin262767%_))
                           (_%output-scm262809%_
                            (path-expand _%output-scm262766%_))
                           (_%output-c262811%_
                            (_%replace-extension-with-c262751%_
                             _%output-scm262809%_))
                           (_%output-o262813%_
                            (_%replace-extension-with-object262752%_
                             _%output-scm262809%_))
                           (_%output_-c262815%_
                            (_%replace-extension262750%_
                             _%output-scm262809%_
                             '"_.c"))
                           (_%output_-o262817%_
                            (_%replace-extension262750%_
                             _%output-scm262809%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts262819%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262821%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262823%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir262773%_))
                           (_%output-ld-opts262825%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts262827%_
                            (_%get-libgerbil-ld-opts262749%_
                             _%gerbil-libdir262771%_))
                           (_%rpath262829%_
                            (gxc#gerbil-rpath _%gerbil-libdir262771%_))
                           (_%builtin-modules262833%_
                            (_%remove-duplicates262758%_
                             (let ((__tmp263334
                                    (let ((__tmp263336
                                           (lambda (_%mod262831%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod262831%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp263335
                                           (cons _%ctx262745%_
                                                 _%deps262775%_)))
                                      (declare (not safe))
                                      (##map __tmp263336 __tmp263335))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp263334)))))
                      (letrec ((_%compile-obj262836%_
                                (lambda (_%scm-path262843%_ _%c-path262844%_)
                                  (let* ((_%o-path262846%_
                                          (_%replace-extension262750%_
                                           _%c-path262844%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock262848%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path262846%_
                                             '".lock")))
                                         (_%locked262850%_ '#f)
                                         (_%unlock262853%_
                                          (lambda ()
                                            (close-port _%locked262850%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock262848%_)))))
                                    (let _%retry262856%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock262848%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry262856%_))
                                          (begin
                                            (set! _%locked262850%_
                                                  (let* ((_%handler262859%_
                                                          false)
                                                         (_%thunk262863%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock262848%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler262868%_ _%handler262859%_)
                 (_%thunk262924%_ _%thunk262863%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler262868%_
                                                     _%thunk262924%_)))
                                            (if _%locked262850%_
                                                '#!void
                                                (_%retry262856%_)))))
                                    (let ((__tmp263338
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path262846%_)))
                                                     (not _%scm-path262843%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path262843%_
                                                        _%o-path262846%_)))
                                                 (let ((_%gsc-cc-opts262941%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp263339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp263340 (cons _%c-path262844%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp263340
                            _%gsc-static-opts262823%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263339 _%gsc-cc-opts262941%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp263337
                                           (lambda () (_%unlock262853%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp263338
                                       __tmp263337))))))
                        (let ((__tmp263341
                               (lambda ()
                                 (let ((__tmp263342
                                        (path-directory _%output-bin262807%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp263342)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp263341))
                        (gxc#with-output-to-scheme-file
                         _%output-scm262809%_
                         (lambda ()
                           (_%generate-stub262748%_
                            _%builtin-modules262833%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it262841%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp263343
                                                   (let ((__tmp263344
                                                          (let ((__tmp263345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm262801%_
                               (cons _%output-scm262809%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263345 _%src-deps-scm262793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp263344
                                                      _%libgerbil-c262783%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp263343
                                               _%gsc-link-opts262819%_))))
                                     (for-each
                                      _%compile-obj262836%_
                                      (let ((__tmp263346
                                             (cons _%src-bin-scm262801%_
                                                   (cons _%output-scm262809%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp263346
                                         _%src-deps-scm262793%_))
                                      (let ((__tmp263347
                                             (cons _%src-bin-c262803%_
                                                   (cons _%output-c262811%_
                                                         (cons _%output_-c262815%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp263347
                                         _%src-deps-c262795%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin262807%_
                                                        (let ((__tmp263348
                                                               (cons _%src-bin-o262805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o262813%_
                                   (cons _%output_-o262817%_
                                         (let ((__tmp263349
                                                (let ((__tmp263350
                                                       (let ((__tmp263352
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir262771%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts262827%_))))
                     (__tmp263351
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath262829%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp263352 __tmp263351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp263350
                                                   _%output-ld-opts262825%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp263349
                                            _%libgerbil-o262785%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp263348 _%src-deps-o262797%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp263353
                                            (cons _%output-c262811%_
                                                  (cons _%output_-c262815%_
                                                        (cons _%output-o262813%_
                                                              (cons _%output_-o262817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp263353)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it262841%_))
                                  (_%compile-it262841%_)))
                            '#!void))))))
          (let* ((_%output-bin262761%_
                  (gxc#compile-exe-output-file _%ctx262745%_ _%opts262746%_))
                 (_%output-scm262763%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262761%_ '"__exe.scm"))))
            (_%compile-stub262759%_
             _%output-scm262763%_
             _%output-bin262761%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx262567%_ _%opts262568%_)
        (letrec ((_%reset-declare262570%_
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
                 (_%generate-stub262571%_
                  (lambda (_%deps262736%_)
                    (let ((_%mod-main262738%_
                           (gxc#find-runtime-symbol _%ctx262567%_ 'main))
                          (_%reset-decl262739%_ (_%reset-declare262570%_))
                          (_%user-decl262740%_ (_%user-declare262572%_)))
                      (for-each
                       (lambda (_%dep262742%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl262739%_))
                         (newline)
                         (if _%user-decl262740%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl262740%_))
                               (newline))
                             '#!void)
                         (let ((__tmp263354
                                (cons 'include (cons _%dep262742%_ '()))))
                           (declare (not safe))
                           (##write __tmp263354))
                         (newline))
                       _%deps262736%_)
                      (let ((__tmp263355
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main262738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp263355))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare262572%_
                  (lambda ()
                    (let* ((_%gsc-opts262641%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts262568%_)))
                           (_%gsc-prelude262643%_
                            (if _%gsc-opts262641%_
                                (member '"-prelude" _%gsc-opts262641%_)
                                '#f))
                           (_%gsc-prelude262645%_
                            (if _%gsc-prelude262643%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude262643%_)))
                                '#f)))
                      (let _%lp262648%_ ((_%rest262650%_
                                          (cons _%gsc-prelude262645%_ '()))
                                         (_%user-decls262651%_ '()))
                        (let* ((_%rest262652262660%_ _%rest262650%_)
                               (_%else262654262668%_
                                (lambda ()
                                  (if (null? _%user-decls262651%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls262651%_)))))
                               (_%K262656262724%_
                                (lambda (_%rest262671%_ _%expr262672%_)
                                  (let* ((_%expr262673262685%_ _%expr262672%_)
                                         (_%else262676262693%_
                                          (lambda ()
                                            (_%lp262648%_
                                             _%rest262671%_
                                             _%user-decls262651%_))))
                                    (let ((_%K262681262714%_
                                           (lambda (_%decls262712%_)
                                             (_%lp262648%_
                                              _%rest262671%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls262651%_
                                                 _%decls262712%_)))))
                                          (_%K262678262699%_
                                           (lambda (_%exprs262697%_)
                                             (_%lp262648%_
                                              (append _%exprs262697%_
                                                      _%rest262671%_)
                                              _%user-decls262651%_))))
                                      (if (pair? _%expr262673262685%_)
                                          (let ((_%tl262683262719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr262673262685%_)))
                                                (_%hd262682262717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr262673262685%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd262682262717%_
                                                         'declare))
                                                (let ((_%decls262722%_
                                                       _%tl262683262719%_))
                                                  (_%K262681262714%_
                                                   _%decls262722%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd262682262717%_
                                                             'begin))
                                                    (let ((_%exprs262707%_
                                                           _%tl262683262719%_))
                                                      (_%K262678262699%_
                                                       _%exprs262707%_))
                                                    (_%else262676262693%_))))
                                          (_%else262676262693%_)))))))
                          (if (pair? _%rest262652262660%_)
                              (let ((_%hd262657262727%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest262652262660%_)))
                                    (_%tl262658262729%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest262652262660%_))))
                                (let* ((_%expr262732%_ _%hd262657262727%_)
                                       (_%rest262734%_ _%tl262658262729%_))
                                  (_%K262656262724%_
                                   _%rest262734%_
                                   _%expr262732%_)))
                              (_%else262654262668%_)))))))
                 (_%compile-stub262573%_
                  (lambda (_%output-scm262580%_ _%output-bin262581%_)
                    (let* ((_%gerbil-home262583%_
                            (let ((__tmp263356
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp263356)))
                           (_%gerbil-libdir262585%_
                            (path-expand '"lib" _%gerbil-home262583%_))
                           (_%runtime262587%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp262589%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home262583%_))
                           (_%include-gambit-sharp262591%_
                            (gxc#include-source _%gambit-sharp262589%_))
                           (_%bin-scm262593%_
                            (gxc#find-static-module-file _%ctx262567%_))
                           (_%deps262595%_
                            (gxc#find-runtime-module-deps _%ctx262567%_))
                           (_%deps262597%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps262595%_)))
                           (_%deps262602%_
                            (let ((__tmp263357
                                   (lambda (_%$obj262599%_)
                                     (not (gxc#file-empty? _%$obj262599%_)))))
                              (declare (not safe))
                              (##filter __tmp263357 _%deps262597%_)))
                           (_%deps262606%_
                            (let ((__tmp263358
                                   (lambda (_%f262604%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f262604%_
                                             _%runtime262587%_))))))
                              (declare (not safe))
                              (##filter __tmp263358 _%deps262602%_)))
                           (_%output-base262608%_
                            (let ((__tmp263359
                                   (path-strip-extension
                                    _%output-scm262580%_)))
                              (declare (not safe))
                              (##string-append __tmp263359)))
                           (_%output-c262610%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262608%_ '".c")))
                           (_%output-o262612%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base262608%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_262614%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262608%_ '"_.c")))
                           (_%output-o_262616%_
                            (let ((__tmp263360
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base262608%_
                               __tmp263360)))
                           (_%gsc-link-opts262618%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262620%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262622%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir262585%_)))
                           (_%output-ld-opts262624%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros262626%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp262591%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp262591%_
                                            '()))))
                           (_%gsc-link-opts262628%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts262618%_
                               _%gsc-gx-macros262626%_)))
                           (_%rpath262630%_
                            (gxc#gerbil-rpath _%gerbil-libdir262585%_))
                           (_%default-ld-options262632%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp263361
                             (lambda ()
                               (let ((__tmp263362
                                      (path-directory _%output-bin262581%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp263362)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp263361))
                      (gxc#with-output-to-scheme-file
                       _%output-scm262580%_
                       (lambda ()
                         (_%generate-stub262571%_
                          (let ((__tmp263363
                                 (let ((__tmp263364
                                        (cons _%bin-scm262593%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp263364
                                    _%deps262606%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp263363 _%runtime262587%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it262638%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_262614%_
                                                      (let ((__tmp263365
                                                             (cons _%output-scm262580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp263365 _%gsc-link-opts262628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp263366
                                                 (let ((__tmp263367
                                                        (cons _%output-c262610%_
                                                              (cons _%output-c_262614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp263367
                                                    _%gsc-static-opts262622%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp263366
                                             _%gsc-cc-opts262620%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin262581%_
                                                      (cons _%output-o262612%_
                                                            (cons _%output-o_262616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263368
                                 (let ((__tmp263370
                                        (cons '"-L"
                                              (cons _%gerbil-libdir262585%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options262632%_))))
                                       (__tmp263369
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath262630%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp263370 __tmp263369))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp263368
                             _%output-ld-opts262624%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it262638%_))
                                (_%compile-it262638%_)))
                          '#!void)))))
          (let* ((_%output-bin262575%_
                  (gxc#compile-exe-output-file _%ctx262567%_ _%opts262568%_))
                 (_%output-scm262577%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262575%_ '"__exe.scm"))))
            (_%compile-stub262573%_
             _%output-scm262577%_
             _%output-bin262575%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx262516%_ _%id262517%_)
        (let ((_%$e262563%_
               (let ((__tmp263372
                      (lambda (_%e262518262520%_)
                        (let* ((_%e262518262522262532%_ _%e262518262520%_)
                               (_%else262524262540%_ (lambda () '#f))
                               (_%K262526262544%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e262518262522262532%_
                                 'gx#module-export::t))
                              (let* ((_%e262527262547%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e262518262522262532%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e262528262550%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e262518262522262532%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e262529262553%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e262518262522262532%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e262529262553%_ '0))
                                    (let ((_%e262530262556%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e262518262522262532%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%e262530262556%_ _%id262517%_)
                                          (_%K262526262544%_)
                                          (_%else262524262540%_)))
                                    (_%else262524262540%_)))
                              (_%else262524262540%_)))))
                     (__tmp263371
                      (##structure-ref
                       _%ctx262516%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp263372 __tmp263371))))
          (if _%$e262563%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e262563%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx262507%_ _%id262508%_)
        (let ((_%$e262510%_
               (gxc#find-export-binding _%ctx262507%_ _%id262508%_)))
          (if _%$e262510%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e262510%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id262508%_)))
                (##structure-ref _%$e262510%_ '1 gx#binding::t '#f))
              (let ((__tmp263373
                     (##structure-ref
                      _%ctx262507%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp263373
                 _%id262508%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx262373%_)
        (letrec* ((_%ht262375%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template262376%_
                   (lambda (_%in262452%_ _%phi262453%_)
                     (let ((_%iphi262455%_
                            (fx+ _%phi262453%_
                                 (##direct-structure-ref
                                  _%in262452%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports262456%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in262452%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp262458%_ ((_%rest262460%_ _%imports262456%_)
                                          (_%r262461%_ '()))
                         (let* ((_%rest262462262470%_ _%rest262460%_)
                                (_%else262464262478%_ (lambda () _%r262461%_))
                                (_%K262466262495%_
                                 (lambda (_%rest262481%_ _%in262482%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in262482%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi262455%_))
                                           (_%lp262458%_
                                            _%rest262481%_
                                            (cons _%in262482%_ _%r262461%_))
                                           (_%lp262458%_
                                            _%rest262481%_
                                            _%r262461%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in262482%_
                                              'gx#module-import::t))
                                           (let ((_%iphi262486%_
                                                  (fx+ _%phi262453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in262482%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi262486%_))
                                                 (_%lp262458%_
                                                  _%rest262481%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in262482%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r262461%_))
                                                 (_%lp262458%_
                                                  _%rest262481%_
                                                  _%r262461%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in262482%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi262489%_
                                                      (fx+ _%iphi262455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in262482%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi262489%_))
                                                     (_%lp262458%_
                                                      _%rest262481%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in262482%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r262461%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi262489%_))
                                                         (_%lp262458%_
                                                          _%rest262481%_
                                                          (let ((__tmp263374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template262376%_
                          _%in262482%_
                          _%iphi262455%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r262461%_ __tmp263374)))
                 (_%lp262458%_ _%rest262481%_ _%r262461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp262458%_
                                                _%rest262481%_
                                                _%r262461%_)))))))
                           (if (pair? _%rest262462262470%_)
                               (let ((_%hd262467262498%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest262462262470%_)))
                                     (_%tl262468262500%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest262462262470%_))))
                                 (let* ((_%in262503%_ _%hd262467262498%_)
                                        (_%rest262505%_ _%tl262468262500%_))
                                   (_%K262466262495%_
                                    _%rest262505%_
                                    _%in262503%_)))
                               (_%else262464262478%_)))))))
                  (_%find-deps262377%_
                   (lambda (_%rest262385%_ _%deps262386%_)
                     (let* ((_%rest262387262395%_ _%rest262385%_)
                            (_%else262389262403%_ (lambda () _%deps262386%_))
                            (_%K262391262440%_
                             (lambda (_%rest262406%_ _%hd262407%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd262407%_
                                      'gx#module-context::t))
                                   (let ((_%id262410%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd262407%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports262411%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd262407%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht262375%_
                                            _%id262410%_))
                                         (_%find-deps262377%_
                                          _%rest262406%_
                                          _%deps262386%_)
                                         (let ((_%$e262414%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd262407%_))))
                                           (if _%$e262414%_
                                               (let ((_%xdeps262419%_
                                                      (_%find-deps262377%_
                                                       (cons _%$e262414%_
                                                             _%imports262411%_)
                                                       _%deps262386%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht262375%_
                                                    _%id262410%_
                                                    _%hd262407%_))
                                                 (_%find-deps262377%_
                                                  _%rest262406%_
                                                  (cons _%hd262407%_
                                                        _%xdeps262419%_)))
                                               (let ((_%xdeps262422%_
                                                      (_%find-deps262377%_
                                                       _%imports262411%_
                                                       _%deps262386%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht262375%_
                                                    _%id262410%_
                                                    _%hd262407%_))
                                                 (_%find-deps262377%_
                                                  _%rest262406%_
                                                  (cons _%hd262407%_
                                                        _%xdeps262422%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd262407%_
                                          'gx#prelude-context::t))
                                       (let ((_%id262425%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd262407%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht262375%_
                                                _%id262425%_))
                                             (_%find-deps262377%_
                                              _%rest262406%_
                                              _%deps262386%_)
                                             (let ((_%xdeps262429%_
                                                    (_%find-deps262377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd262407%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps262386%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht262375%_
                                                      _%id262425%_))
                                                   (_%find-deps262377%_
                                                    _%rest262406%_
                                                    _%xdeps262429%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht262375%_
                                                        _%id262425%_
                                                        _%hd262407%_))
                                                     (_%find-deps262377%_
                                                      _%rest262406%_
                                                      (cons _%hd262407%_
                                                            _%xdeps262429%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd262407%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd262407%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps262377%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd262407%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest262406%_)
                                                _%deps262386%_)
                                               (_%find-deps262377%_
                                                _%rest262406%_
                                                _%deps262386%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd262407%_
                                                  'gx#module-export::t))
                                               (_%find-deps262377%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd262407%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest262406%_)
                                                _%deps262386%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd262407%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd262407%_ '2 '#f '#f)))
               (_%find-deps262377%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd262407%_ '1 '#f '#f))
                      _%rest262406%_)
                _%deps262386%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd262407%_ '2 '#f '#f)))
                   (let ((_%xdeps262436%_
                          (_%import-set-template262376%_ _%hd262407%_ '0)))
                     (_%find-deps262377%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest262406%_ _%xdeps262436%_))
                      _%deps262386%_))
                   (_%find-deps262377%_ _%rest262406%_ _%deps262386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd262407%_))))))))))
                       (if (pair? _%rest262387262395%_)
                           (let ((_%hd262392262443%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest262387262395%_)))
                                 (_%tl262393262445%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest262387262395%_))))
                             (let* ((_%hd262448%_ _%hd262392262443%_)
                                    (_%rest262450%_ _%tl262393262445%_))
                               (_%K262391262440%_
                                _%rest262450%_
                                _%hd262448%_)))
                           (_%else262389262403%_))))))
          (let ((__tmp263375
                 (filter gx#expander-context-id
                         (_%find-deps262377%_
                          (let ((_%$e262379%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx262373%_))))
                            (if _%$e262379%_
                                (cons _%$e262379%_
                                      (##structure-ref
                                       _%ctx262373%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx262373%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp263375)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx262303%_)
        (let* ((_%context-id262305%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx262303%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx262303%_ '1 '#f '#f))
                    (string->symbol _%ctx262303%_)))
               (_%scm262307%_
                (let ((__tmp263376
                       (gxc#static-module-name _%context-id262305%_)))
                  (declare (not safe))
                  (##string-append __tmp263376 '".scm")))
               (_%dirs262309%_ (let () (declare (not safe)) (load-path)))
               (_%dirs262315%_
                (let ((_%user-libpath262311%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath262311%_
                      (let ((_%user-libpath262313%_
                             (path-expand '"lib" _%user-libpath262311%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath262313%_ _%dirs262309%_))
                            _%dirs262309%_
                            (cons _%user-libpath262313%_ _%dirs262309%_)))
                      _%dirs262309%_)))
               (_%dirs262325%_
                (let ((_%$e262317%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e262317%_
                      (cons _%$e262317%_ _%dirs262315%_)
                      _%dirs262315%_)))
               (_%dirs262331%_
                (let ((__tmp263377
                       (lambda (_%g262326262328%_)
                         (path-expand '"static" _%g262326262328%_))))
                  (declare (not safe))
                  (##map __tmp263377 _%dirs262325%_))))
          (let _%lp262334%_ ((_%rest262336%_ _%dirs262331%_))
            (let* ((_%rest262337262345%_ _%rest262336%_)
                   (_%else262339262353%_
                    (lambda ()
                      (let ((__tmp263378
                             (##structure-ref
                              _%ctx262303%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp263378
                         _%scm262307%_))))
                   (_%K262341262361%_
                    (lambda (_%rest262356%_ _%dir262357%_)
                      (let ((_%path262359%_
                             (path-expand _%scm262307%_ _%dir262357%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path262359%_))
                            _%path262359%_
                            (_%lp262334%_ _%rest262356%_))))))
              (if (pair? _%rest262337262345%_)
                  (let ((_%hd262342262364%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest262337262345%_)))
                        (_%tl262343262366%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest262337262345%_))))
                    (let* ((_%dir262369%_ _%hd262342262364%_)
                           (_%rest262371%_ _%tl262343262366%_))
                      (_%K262341262361%_ _%rest262371%_ _%dir262369%_)))
                  (_%else262339262353%_)))))))
    (define gxc#file-empty?
      (lambda (_%path262301%_)
        (zero? (let ((__tmp263379 (file-info _%path262301%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp263379)))))
    (define gxc#compile-top-module
      (lambda (_%ctx262292%_)
        (let ((__tmp263380
               (lambda ()
                 (let ((__tmp263381
                        (lambda ()
                          (let ((__tmp263382
                                 (lambda ()
                                   (let ((__tmp263384
                                          (lambda ()
                                            (let ((__tmp263386
                                                   (lambda ()
                                                     (let ((__tmp263388
                                                            (lambda ()
                                                              (let ((__tmp263389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx262292%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp263389))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp263390
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx262292%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp263390))
                          '#!void)
                      (gxc#collect-bindings _%ctx262292%_)
                      (gxc#compile-runtime-code _%ctx262292%_)
                      (gxc#compile-meta-code _%ctx262292%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx262292%_)
                          '#!void)))
                   (__tmp263387
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
                __tmp263388
                gxc#current-compile-runtime-names
                __tmp263387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp263385
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp263386
                                               gxc#current-compile-runtime-sections
                                               __tmp263385))))
                                         (__tmp263383
                                          (let ((__obj263281
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj263281))
                                            __obj263281)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp263384
                                      gxc#current-compile-symbol-table
                                      __tmp263383)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp263382
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp263381
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263380
           gx#current-expander-context
           _%ctx262292%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx262290%_)
        (let ((__tmp263391
               (##structure-ref _%ctx262290%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp263391))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx262235%_)
        (letrec ((_%compile1262237%_
                  (lambda (_%ctx262279%_)
                    (let* ((_%code262281%_
                            (##structure-ref
                             _%ctx262279%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm262285%_
                            (let ((_%idstr262283%_
                                   (let ((__tmp263392
                                          (##structure-ref
                                           _%ctx262279%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp263392))))
                              (declare (not safe))
                              (##string-append _%idstr262283%_ '"~0")))
                           (_%rtc?262287%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code262281%_))))
                      (if _%rtc?262287%_
                          (let ((__tmp263393
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp263393
                             _%ctx262279%_
                             _%rtm262285%_))
                          '#!void)
                      (_%generate-runtime-code262239%_
                       _%ctx262279%_
                       _%code262281%_
                       (if _%rtc?262287%_ _%rtm262285%_ '#f)))))
                 (_%context-timestamp262238%_
                  (lambda (_%ctx262277%_)
                    (let ((__tmp263394
                           (let ((__tmp263395
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx262277%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp263395 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp263394))))
                 (_%generate-runtime-code262239%_
                  (lambda (_%ctx262246%_ _%code262247%_ _%rtm262248%_)
                    (let* ((_%runtime-code?262250%_ (if _%rtm262248%_ '#t '#f))
                           (_%lifts262252%_ (box '()))
                           (_%runtime-code262258%_
                            (if _%runtime-code?262250%_
                                (let ((__tmp263396
                                       (lambda ()
                                         (let ((__tmp263397
                                                (lambda ()
                                                  (let ((__tmp263398
                                                         (lambda ()
                                                           (let ((__tmp263400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code262247%_))))
                         (__tmp263399
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp263400
                      gxc#current-compile-marks
                      __tmp263399)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp263398
                                                     gxc#current-compile-lift
                                                     _%lifts262252%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp263397
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp263396
                                   gx#current-expander-context
                                   _%ctx262246%_))
                                '#f))
                           (_%runtime-code262260%_
                            (if _%runtime-code?262250%_
                                (if (null? (unbox _%lifts262252%_))
                                    _%runtime-code262258%_
                                    (cons 'begin
                                          (let ((__tmp263402
                                                 (cons _%runtime-code262258%_
                                                       '()))
                                                (__tmp263401
                                                 (reverse (unbox _%lifts262252%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp263402
                                             __tmp263401))))
                                '#f))
                           (_%runtime-code262262%_
                            (if _%runtime-code?262250%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp262238%_
                                                         _%ctx262246%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code262260%_ '())))
                                '#f))
                           (_%loader-code262265%_
                            (let ((__tmp263403
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code262247%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp263403
                               gx#current-expander-context
                               _%ctx262246%_)))
                           (_%loader-code262267%_
                            (cons 'begin
                                  (cons _%loader-code262265%_
                                        (cons (if _%runtime-code?262250%_
                                                  (cons 'load-module
                                                        (cons _%rtm262248%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0262269%_
                            (gxc#compile-output-file _%ctx262246%_ '0 '".scm"))
                           (_%scmrt262271%_
                            (gxc#compile-output-file
                             _%ctx262246%_
                             '#f
                             '".scm"))
                           (_%scms262273%_
                            (gxc#compile-static-output-file _%ctx262246%_)))
                      (if _%runtime-code?262250%_
                          (gxc#compile-scm-file__0
                           _%scm0262269%_
                           _%runtime-code262262%_)
                          '#!void)
                      (let ((__tmp263404
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt262271%_
                                _%loader-code262267%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp263404
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms262273%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms262273%_))
                          '#!void)
                      (if _%runtime-code?262250%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0262269%_ _%scms262273%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms262273%_ void)))))))
          (let* ((_%all-modules262241%_
                  (cons _%ctx262235%_ (gxc#lift-nested-modules _%ctx262235%_)))
                 (__tmp263405
                  (lambda (_%ctx262243%_)
                    (let ((__tmp263406
                           (lambda () (_%compile1262237%_ _%ctx262243%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp263406
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp263405 _%all-modules262241%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx262134%_)
        (letrec ((_%compile-ssi262136%_
                  (lambda (_%code262203%_)
                    (let* ((_%path262205%_
                            (gxc#compile-output-file
                             _%ctx262134%_
                             '#f
                             '".ssi"))
                           (_%prelude262217%_
                            (let* ((_%super262207%_
                                    (##structure-ref
                                     _%ctx262134%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e262209%_
                                    (##structure-ref
                                     _%super262207%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e262209%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e262209%_))
                                  ':<root>)))
                           (_%ns262219%_
                            (##structure-ref
                             _%ctx262134%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr262221%_
                            (symbol->string
                             (##structure-ref
                              _%ctx262134%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg262229%_
                            (let ((_%$e262223%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr262221%_ '#\/))))
                              (if _%$e262223%_
                                  (let ((__tmp263407
                                         (substring
                                          _%idstr262221%_
                                          '0
                                          _%$e262223%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp263407))
                                  '#f)))
                           (_%rt262231%_
                            (let ((__tmp263408
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp263408 _%ctx262134%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path262205%_))
                      (gxc#with-output-to-scheme-file
                       _%path262205%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude262217%_))
                         (if _%pkg262229%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg262229%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns262219%_))
                         (newline)
                         (pretty-print _%code262203%_)
                         (if _%rt262231%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt262231%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi262137%_
                  (lambda (_%part262142%_)
                    (let* ((_%part262143262156%_ _%part262142%_)
                           (_%E262145262160%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part262143262156%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K262146262172%_
                            (lambda (_%code262163%_
                                     _%n262164%_
                                     _%phi262165%_
                                     _%phi-ctx262166%_)
                              (let ((_%code262170%_
                                     (let ((__tmp263409
                                            (lambda ()
                                              (let ((__tmp263410
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code262163%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp263410
                                                 gx#current-expander-phi
                                                 _%phi262165%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp263409
                                        gx#current-expander-context
                                        _%phi-ctx262166%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx262134%_
                                  _%n262164%_
                                  '".scm")
                                 _%code262170%_
                                 '#t)))))
                      (if (pair? _%part262143262156%_)
                          (let ((_%hd262147262175%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part262143262156%_)))
                                (_%tl262148262177%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part262143262156%_))))
                            (let ((_%phi-ctx262180%_ _%hd262147262175%_))
                              (if (pair? _%tl262148262177%_)
                                  (let ((_%hd262149262182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl262148262177%_)))
                                        (_%tl262150262184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl262148262177%_))))
                                    (let ((_%phi262187%_ _%hd262149262182%_))
                                      (if (pair? _%tl262150262184%_)
                                          (let ((_%hd262151262189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl262150262184%_)))
                                                (_%tl262152262191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl262150262184%_))))
                                            (let ((_%n262194%_
                                                   _%hd262151262189%_))
                                              (if (pair? _%tl262152262191%_)
                                                  (let ((_%hd262153262196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl262152262191%_)))
                                                        (_%tl262154262198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl262152262191%_))))
                                                    (let ((_%code262201%_
                                                           _%hd262153262196%_))
                                                      (if (null? _%tl262154262198%_)
                                                          (_%K262146262172%_
                                                           _%code262201%_
                                                           _%n262194%_
                                                           _%phi262187%_
                                                           _%phi-ctx262180%_)
                                                          (_%E262145262160%_))))
                                                  (_%E262145262160%_))))
                                          (_%E262145262160%_))))
                                  (_%E262145262160%_))))
                          (_%E262145262160%_))))))
          (let ((_g263411_ (gxc#generate-meta-code _%ctx262134%_)))
            (begin
              (let ((_g263412_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g263411_)
                           (##values-length _g263411_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g263412_ 2)))
                    (error "Context expects 2 values" _g263412_)))
              (let ((_%ssi-code262139%_
                     (let () (declare (not safe)) (##values-ref _g263411_ 0)))
                    (_%phi-code262140%_
                     (let () (declare (not safe)) (##values-ref _g263411_ 1))))
                (begin
                  (_%compile-ssi262136%_ _%ssi-code262139%_)
                  (for-each _%compile-phi262137%_ _%phi-code262140%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx262116%_)
        (let* ((_%path262118%_
                (gxc#compile-output-file _%ctx262116%_ '#f '".ssxi.ss"))
               (_%code262120%_
                (let ((__tmp263413
                       (##structure-ref
                        _%ctx262116%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp263413)))
               (_%idstr262122%_
                (symbol->string
                 (##structure-ref
                  _%ctx262116%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg262130%_
                (let ((_%$e262124%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr262122%_ '#\/))))
                  (if _%$e262124%_
                      (let ((__tmp263414
                             (substring _%idstr262122%_ '0 _%$e262124%_)))
                        (declare (not safe))
                        (##string->symbol __tmp263414))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path262118%_))
          (gxc#with-output-to-scheme-file
           _%path262118%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg262130%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg262130%_))
                 '#!void)
             (newline)
             (pretty-print _%code262120%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx262109%_)
        (let* ((_%state262111%_
                (let ((__obj263282
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj263282 _%ctx262109%_))
                  __obj263282))
               (_%ssi-code262113%_
                (let ((__tmp263415
                       (##structure-ref
                        _%ctx262109%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state262111%_
                   __tmp263415))))
          (values _%ssi-code262113%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state262111%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx262101%_)
        (let* ((_%lifts262103%_ (box '()))
               (__tmp263416
                (lambda ()
                  (let ((__tmp263418
                         (lambda ()
                           (let ((_%code262107%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx262101%_))))
                             (if (null? (unbox _%lifts262103%_))
                                 _%code262107%_
                                 (cons 'begin
                                       (let ((__tmp263420
                                              (cons _%code262107%_ '()))
                                             (__tmp263419
                                              (reverse (unbox _%lifts262103%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp263420
                                          __tmp263419)))))))
                        (__tmp263417
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp263418
                     gxc#current-compile-marks
                     __tmp263417)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp263416
           gxc#current-compile-lift
           _%lifts262103%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx262097%_)
        (let ((_%modules262099%_ (box '())))
          (let ((__tmp263421
                 (##structure-ref _%ctx262097%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules262099%_ __tmp263421))
          (reverse (unbox _%modules262099%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path262077%_ _%code262078%_ _%phi?262079%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path262077%_))
        (gxc#with-output-to-scheme-file
         _%path262077%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp263422
                                           (if _%phi?262079%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp263422)))))))
           (pretty-print _%code262078%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it262083%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path262077%_ _%phi?262079%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp263423
                         (cons 'compile-file (cons _%path262077%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it262083%_ __tmp263423))
                  (_%compile-it262083%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path262088%_ _%code262089%_)
        (let ((_%phi?262091%_ '#f))
          (gxc#compile-scm-file__%
           _%path262088%_
           _%code262089%_
           _%phi?262091%_))))
    (define gxc#compile-scm-file
      (lambda _g263424_
        (let ((_g263425_ (let () (declare (not safe)) (##length _g263424_))))
          (cond ((let () (declare (not safe)) (##fx= _g263425_ 2))
                 (apply gxc#compile-scm-file__0 _g263424_))
                ((let () (declare (not safe)) (##fx= _g263425_ 3))
                 (apply gxc#compile-scm-file__% _g263424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g263424_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?261978%_)
        (let _%lp261980%_ ((_%rest261982%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261983%_ '()))
          (let* ((_%rest261984262004%_ _%rest261982%_)
                 (_%else261988262012%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts261983%_)))
                        (reverse _%opts261983%_)))))
            (let ((_%K261998262055%_
                   (lambda (_%rest262053%_)
                     (_%lp261980%_ _%rest262053%_ _%opts261983%_)))
                  (_%K261993262037%_
                   (lambda (_%rest262035%_)
                     (_%lp261980%_ _%rest262035%_ _%opts261983%_)))
                  (_%K261990262019%_
                   (lambda (_%rest262016%_ _%opt262017%_)
                     (_%lp261980%_
                      _%rest262016%_
                      (cons _%opt262017%_ _%opts261983%_)))))
              (if (pair? _%rest261984262004%_)
                  (let ((_%tl262000262060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261984262004%_)))
                        (_%hd261999262058%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261984262004%_))))
                    (if (equal? _%hd261999262058%_ '"-cc-options")
                        (if (pair? _%tl262000262060%_)
                            (let* ((_%tl262002262063%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl262000262060%_)))
                                   (_%rest262066%_ _%tl262002262063%_))
                              (_%K261998262055%_ _%rest262066%_))
                            (let ((_%opt262027%_ _%hd261999262058%_)
                                  (_%rest262029%_ _%tl262000262060%_))
                              (_%K261990262019%_
                               _%rest262029%_
                               _%opt262027%_)))
                        (if (equal? _%hd261999262058%_ '"-ld-options")
                            (if (pair? _%tl262000262060%_)
                                (let* ((_%tl261997262045%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl262000262060%_)))
                                       (_%rest262048%_ _%tl261997262045%_))
                                  (_%K261993262037%_ _%rest262048%_))
                                (let ((_%opt262027%_ _%hd261999262058%_)
                                      (_%rest262029%_ _%tl262000262060%_))
                                  (_%K261990262019%_
                                   _%rest262029%_
                                   _%opt262027%_)))
                            (let ((_%opt262027%_ _%hd261999262058%_)
                                  (_%rest262029%_ _%tl262000262060%_))
                              (_%K261990262019%_
                               _%rest262029%_
                               _%opt262027%_)))))
                  (_%else261988262012%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?262072%_ '#f)) (gxc#gsc-link-options__% _%phi?262072%_))))
    (define gxc#gsc-link-options
      (lambda _g263426_
        (let ((_g263427_ (let () (declare (not safe)) (##length _g263426_))))
          (cond ((let () (declare (not safe)) (##fx= _g263427_ 0))
                 (apply gxc#gsc-link-options__0 _g263426_))
                ((let () (declare (not safe)) (##fx= _g263427_ 1))
                 (apply gxc#gsc-link-options__% _g263426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g263426_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords261828%_ _%static?261824261829%_ _%phi?261830%_)
        (let ((_%static?261832%_
               (if (eq? _%static?261824261829%_ absent-value)
                   '#f
                   _%static?261824261829%_)))
          (if _%phi?261830%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp261834%_ ((_%rest261836%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261837%_ '()))
                (let* ((_%rest261838261864%_ _%rest261836%_)
                       (_%else261843261872%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts261837%_)))
                              (reverse! _%opts261837%_)))))
                  (let ((_%K261858261935%_
                         (lambda (_%rest261932%_ _%opt261933%_)
                           (if _%static?261832%_
                               (_%lp261834%_
                                _%rest261932%_
                                (cons _%opt261933%_
                                      (cons '"-cc-options" _%opts261837%_)))
                               (_%lp261834%_ _%rest261932%_ _%opts261837%_))))
                        (_%K261853261912%_
                         (lambda (_%rest261909%_ _%opt261910%_)
                           (_%lp261834%_
                            _%rest261909%_
                            (cons _%opt261910%_
                                  (cons '"-cc-options" _%opts261837%_)))))
                        (_%K261848261892%_
                         (lambda (_%rest261890%_)
                           (_%lp261834%_ _%rest261890%_ _%opts261837%_)))
                        (_%K261845261878%_
                         (lambda (_%rest261876%_)
                           (_%lp261834%_ _%rest261876%_ _%opts261837%_))))
                    (if (pair? _%rest261838261864%_)
                        (let ((_%tl261860261940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261838261864%_)))
                              (_%hd261859261938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261838261864%_))))
                          (if (equal? _%hd261859261938%_ '"-cc-options")
                              (if (pair? _%tl261860261940%_)
                                  (let ((_%tl261862261945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261860261940%_)))
                                        (_%hd261861261943%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261860261940%_))))
                                    (if (equal? _%hd261861261943%_ '"-Bstatic")
                                        (let ((_%opt261948%_
                                               _%hd261861261943%_)
                                              (_%rest261950%_
                                               _%tl261862261945%_))
                                          (_%K261858261935%_
                                           _%rest261950%_
                                           _%opt261948%_))
                                        (let ((_%opt261925%_
                                               _%hd261861261943%_)
                                              (_%rest261927%_
                                               _%tl261862261945%_))
                                          (_%K261853261912%_
                                           _%rest261927%_
                                           _%opt261925%_))))
                                  (let ((_%rest261884%_ _%tl261860261940%_))
                                    (_%K261845261878%_ _%rest261884%_)))
                              (if (equal? _%hd261859261938%_ '"-ld-options")
                                  (if (pair? _%tl261860261940%_)
                                      (let* ((_%tl261852261900%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261860261940%_)))
                                             (_%rest261903%_
                                              _%tl261852261900%_))
                                        (_%K261848261892%_ _%rest261903%_))
                                      (let ((_%rest261884%_
                                             _%tl261860261940%_))
                                        (_%K261845261878%_ _%rest261884%_)))
                                  (let ((_%rest261884%_ _%tl261860261940%_))
                                    (_%K261845261878%_ _%rest261884%_)))))
                        (_%else261843261872%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords261955%_ _%static?261824261956%_)
        (let ((_%phi?261958%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords261955%_
           _%static?261824261956%_
           _%phi?261958%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g263428_
        (let ((_g263429_ (let () (declare (not safe)) (##length _g263428_))))
          (cond ((let () (declare (not safe)) (##fx= _g263429_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g263428_))
                ((let () (declare (not safe)) (##fx= _g263429_ 3))
                 (apply gxc#gsc-cc-options__%__% _g263428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g263428_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords261967%_ . _%args261968%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords261967%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261967%_
                  'static:
                  absent-value))
               _%args261968%_)))
    (define gxc#gsc-cc-options
      (lambda _%args261825261974%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args261825261974%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords261674%_ _%static?261670261675%_ _%phi?261676%_)
        (let ((_%static?261678%_
               (if (eq? _%static?261670261675%_ absent-value)
                   '#f
                   _%static?261670261675%_)))
          (if _%phi?261676%_
              '()
              (let _%lp261680%_ ((_%rest261682%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261683%_ '()))
                (let* ((_%rest261684261710%_ _%rest261682%_)
                       (_%else261689261718%_
                        (lambda () (reverse! _%opts261683%_))))
                  (let ((_%K261704261781%_
                         (lambda (_%rest261778%_ _%opt261779%_)
                           (if _%static?261678%_
                               (_%lp261680%_
                                _%rest261778%_
                                (cons _%opt261779%_
                                      (cons '"-ld-options" _%opts261683%_)))
                               (_%lp261680%_ _%rest261778%_ _%opts261683%_))))
                        (_%K261699261758%_
                         (lambda (_%rest261755%_ _%opt261756%_)
                           (_%lp261680%_
                            _%rest261755%_
                            (cons _%opt261756%_
                                  (cons '"-ld-options" _%opts261683%_)))))
                        (_%K261694261738%_
                         (lambda (_%rest261736%_)
                           (_%lp261680%_ _%rest261736%_ _%opts261683%_)))
                        (_%K261691261724%_
                         (lambda (_%rest261722%_)
                           (_%lp261680%_ _%rest261722%_ _%opts261683%_))))
                    (if (pair? _%rest261684261710%_)
                        (let ((_%tl261706261786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261684261710%_)))
                              (_%hd261705261784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261684261710%_))))
                          (if (equal? _%hd261705261784%_ '"-ld-options")
                              (if (pair? _%tl261706261786%_)
                                  (let ((_%tl261708261791%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261706261786%_)))
                                        (_%hd261707261789%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261706261786%_))))
                                    (if (equal? _%hd261707261789%_ '"-static")
                                        (let ((_%opt261794%_
                                               _%hd261707261789%_)
                                              (_%rest261796%_
                                               _%tl261708261791%_))
                                          (_%K261704261781%_
                                           _%rest261796%_
                                           _%opt261794%_))
                                        (let ((_%opt261771%_
                                               _%hd261707261789%_)
                                              (_%rest261773%_
                                               _%tl261708261791%_))
                                          (_%K261699261758%_
                                           _%rest261773%_
                                           _%opt261771%_))))
                                  (let ((_%rest261730%_ _%tl261706261786%_))
                                    (_%K261691261724%_ _%rest261730%_)))
                              (if (equal? _%hd261705261784%_ '"-cc-options")
                                  (if (pair? _%tl261706261786%_)
                                      (let* ((_%tl261698261746%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261706261786%_)))
                                             (_%rest261749%_
                                              _%tl261698261746%_))
                                        (_%K261694261738%_ _%rest261749%_))
                                      (let ((_%rest261730%_
                                             _%tl261706261786%_))
                                        (_%K261691261724%_ _%rest261730%_)))
                                  (let ((_%rest261730%_ _%tl261706261786%_))
                                    (_%K261691261724%_ _%rest261730%_)))))
                        (_%else261689261718%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords261801%_ _%static?261670261802%_)
        (let ((_%phi?261804%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords261801%_
           _%static?261670261802%_
           _%phi?261804%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g263430_
        (let ((_g263431_ (let () (declare (not safe)) (##length _g263430_))))
          (cond ((let () (declare (not safe)) (##fx= _g263431_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g263430_))
                ((let () (declare (not safe)) (##fx= _g263431_ 3))
                 (apply gxc#gsc-ld-options__%__% _g263430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g263430_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords261813%_ . _%args261814%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords261813%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261813%_
                  'static:
                  absent-value))
               _%args261814%_)))
    (define gxc#gsc-ld-options
      (lambda _%args261671261820%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args261671261820%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir261665%_)
        (let ((_%user-staticdir261667%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir261665%_
                       '" -I "
                       _%user-staticdir261667%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp261577%_ ((_%rest261579%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261580%_ '()))
          (let* ((_%rest261581261601%_ _%rest261579%_)
                 (_%else261585261609%_ (lambda () _%opts261580%_)))
            (let ((_%K261595261652%_
                   (lambda (_%rest261650%_)
                     (_%lp261577%_ _%rest261650%_ _%opts261580%_)))
                  (_%K261590261630%_
                   (lambda (_%rest261627%_ _%opt261628%_)
                     (_%lp261577%_
                      _%rest261627%_
                      (let ((__tmp263432
                             (let ((__tmp263433
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt261628%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp263433))))
                        (declare (not safe))
                        (##append _%opts261580%_ __tmp263432)))))
                  (_%K261587261615%_
                   (lambda (_%rest261613%_)
                     (_%lp261577%_ _%rest261613%_ _%opts261580%_))))
              (if (pair? _%rest261581261601%_)
                  (let ((_%tl261597261657%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261581261601%_)))
                        (_%hd261596261655%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261581261601%_))))
                    (if (equal? _%hd261596261655%_ '"-cc-options")
                        (if (pair? _%tl261597261657%_)
                            (let* ((_%tl261599261660%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl261597261657%_)))
                                   (_%rest261663%_ _%tl261599261660%_))
                              (_%K261595261652%_ _%rest261663%_))
                            (let ((_%rest261621%_ _%tl261597261657%_))
                              (_%K261587261615%_ _%rest261621%_)))
                        (if (equal? _%hd261596261655%_ '"-ld-options")
                            (if (pair? _%tl261597261657%_)
                                (let ((_%tl261594261640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl261597261657%_)))
                                      (_%hd261593261638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl261597261657%_))))
                                  (let ((_%opt261643%_ _%hd261593261638%_)
                                        (_%rest261645%_ _%tl261594261640%_))
                                    (_%K261590261630%_
                                     _%rest261645%_
                                     _%opt261643%_)))
                                (let ((_%rest261621%_ _%tl261597261657%_))
                                  (_%K261587261615%_ _%rest261621%_)))
                            (let ((_%rest261621%_ _%tl261597261657%_))
                              (_%K261587261615%_ _%rest261621%_)))))
                  (_%else261585261609%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str261574%_)
        (not (let () (declare (not safe)) (string-empty? _%str261574%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path261567%_ _%phi?261568%_)
        (let ((_%gsc-link-opts261570%_
               (gxc#gsc-link-options__% _%phi?261568%_))
              (_%gsc-cc-opts261571%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?261568%_))
              (_%gsc-ld-opts261572%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?261568%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp263434
                  (let ((__tmp263435
                         (let ((__tmp263436 (cons _%path261567%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp263436
                            _%gsc-link-opts261570%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp263435 _%gsc-ld-opts261572%_))))
             (declare (not safe))
             (foldr__0 cons __tmp263434 _%gsc-cc-opts261571%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx261533%_ _%n261534%_ _%ext261535%_)
        (letrec ((_%module-relative-path261537%_
                  (lambda (_%ctx261565%_)
                    (path-strip-directory
                     (let ((__tmp263437
                            (##structure-ref
                             _%ctx261565%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp263437)))))
                 (_%module-source-directory261538%_
                  (lambda (_%ctx261561%_)
                    (path-directory
                     (let ((_%mpath261563%_
                            (##structure-ref
                             _%ctx261561%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath261563%_)
                           _%mpath261563%_
                           (last _%mpath261563%_))))))
                 (_%section-string261539%_
                  (lambda (_%n261555%_)
                    (if (number? _%n261555%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n261555%_))
                        (if (symbol? _%n261555%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n261555%_))
                            (if (string? _%n261555%_)
                                _%n261555%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n261555%_)))))))
                 (_%file-name261540%_
                  (lambda (_%path261553%_)
                    (if _%n261534%_
                        (string-append
                         _%path261553%_
                         '"~"
                         (_%section-string261539%_ _%n261534%_)
                         _%ext261535%_)
                        (string-append _%path261553%_ _%ext261535%_))))
                 (_%file-path261541%_
                  (lambda ()
                    (let ((_%$e261547%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e261547%_
                          (path-expand
                           (_%file-name261540%_
                            (let ((__tmp263438
                                   (##structure-ref
                                    _%ctx261533%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp263438)))
                           _%$e261547%_)
                          (path-expand
                           (_%file-name261540%_
                            (_%module-relative-path261537%_ _%ctx261533%_))
                           (_%module-source-directory261538%_
                            _%ctx261533%_)))))))
          (let ((_%path261543%_ (_%file-path261541%_)))
            (let ((__tmp263439
                   (lambda ()
                     (let ((__tmp263440 (path-directory _%path261543%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp263440)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp263439))
            _%path261543%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx261514%_)
        (letrec ((_%file-name261516%_
                  (lambda (_%id261531%_)
                    (let ((__tmp263441 (gxc#static-module-name _%id261531%_)))
                      (declare (not safe))
                      (##string-append __tmp263441 '".scm"))))
                 (_%file-path261517%_
                  (lambda ()
                    (let* ((_%file261523%_
                            (_%file-name261516%_
                             (##structure-ref
                              _%ctx261514%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e261525%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e261525%_
                          (path-expand
                           _%file261523%_
                           (path-expand '"static" _%$e261525%_))
                          (path-expand _%file261523%_ '"static"))))))
          (let ((_%path261519%_ (_%file-path261517%_)))
            (let ((__tmp263442
                   (lambda ()
                     (let ((__tmp263443 (path-directory _%path261519%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp263443)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp263442))
            _%path261519%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx261507%_ _%opts261508%_)
        (let ((_%$e261510%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts261508%_))))
          (if _%$e261510%_
              _%$e261510%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx261507%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr261497%_)
        (if (string? _%idstr261497%_)
            (let* ((_%str261500%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr261497%_)))
                   (_%strs261502%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str261500%_ '#\/))))
              (declare (not safe))
              (string-join _%strs261502%_ '"__"))
            (if (symbol? _%idstr261497%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr261497%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr261497%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp263444
               (let ((__tmp263445 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp263445 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp263444))))
    (define gxc#invoke__%
      (lambda (_%@@keywords261463%_
               _%stdout-redirection261459261464%_
               _%stderr-redirection261460261465%_
               _%program261466%_
               _%args261467%_)
        (let* ((_%stdout-redirection261469%_
                (if (eq? _%stdout-redirection261459261464%_ absent-value)
                    '#f
                    _%stdout-redirection261459261464%_))
               (_%stderr-redirection261471%_
                (if (eq? _%stderr-redirection261460261465%_ absent-value)
                    '#f
                    _%stderr-redirection261460261465%_)))
          (let ((__tmp263446 (cons _%program261466%_ _%args261467%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp263446))
          (let* ((_%proc261473%_
                  (open-process
                   (cons 'path:
                         (cons _%program261466%_
                               (cons 'arguments:
                                     (cons _%args261467%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection261469%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection261471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output261478%_
                  (if (or _%stdout-redirection261469%_
                          _%stderr-redirection261471%_)
                      (read-line _%proc261473%_ '#f)
                      '#f))
                 (_%status261481%_ (process-status _%proc261473%_)))
            (let () (declare (not safe)) (##close-port _%proc261473%_))
            (if (zero? _%status261481%_)
                '#!void
                (begin
                  (display _%output261478%_)
                  (let ((__tmp263447 (cons _%program261466%_ _%args261467%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp263447
                     _%status261481%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords261486%_ . _%args261487%_)
        (apply gxc#invoke__%
               _%@@keywords261486%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261486%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261486%_
                  'stderr-redirection:
                  absent-value))
               _%args261487%_)))
    (define gxc#invoke
      (lambda _%args261461261493%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args261461261493%_)))))
