(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771104524)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp260310 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp260310))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp260311 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp260311))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path260167%_ _%fun260168%_)
        (with-output-to-file
         (cons 'path: (cons _%path260167%_ gxc#scheme-file-settings))
         _%fun260168%_)))
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
      (lambda (_%gerbil-libdir260162%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir260162%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path260160%_)
        (let ((__tmp260312 (object->string _%path260160%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp260312 '")"))))
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
      (lambda (_%dir260158%_) (delete-file-or-directory _%dir260158%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath260101%_ _%opts260102%_)
        (if (string? _%srcpath260101%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260101%_)))
        (let* ((_%outdir260104%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260102%_)))
               (_%invoke-gsc?260106%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260102%_)))
               (_%target260111%_
                (let ((_%$e260108%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260102%_))))
                  (if _%$e260108%_ _%$e260108%_ 'C)))
               (_%gsc-options260116%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260111%_) '()))
                        (let ((_%$e260113%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260102%_))))
                          (if _%$e260113%_ _%$e260113%_ '()))))
               (_%keep-scm?260118%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260102%_)))
               (_%verbosity260120%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260102%_)))
               (_%optimize260122%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts260102%_)))
               (_%debug260124%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260102%_)))
               (_%gen-ssxi260126%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts260102%_)))
               (_%parallel?260128%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260102%_))))
          (if _%outdir260104%_
              (let ((__tmp260313
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260104%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260313))
              '#!void)
          (if _%optimize260122%_
              (let ((__tmp260314
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260314))
              '#!void)
          (let ((__tmp260315
                 (lambda ()
                   (let ((__tmp260316
                          (lambda ()
                            (let ((__tmp260317
                                   (lambda ()
                                     (let ((__tmp260318
                                            (lambda ()
                                              (let ((__tmp260319
                                                     (lambda ()
                                                       (let ((__tmp260320
                                                              (lambda ()
                                                                (let ((__tmp260321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260322
                                        (lambda ()
                                          (let ((__tmp260323
                                                 (lambda ()
                                                   (let ((__tmp260325
                                                          (lambda ()
                                                            (let ((__tmp260327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260329
                                    (lambda ()
                                      (let ((__tmp260330
                                             (lambda ()
                                               (let ((__tmp260331
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath260101%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp260332
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath260101%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp260332))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260331
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp260330
                                         gxc#current-compile-parallel
                                         _%parallel?260128%_))))
                                   (__tmp260328
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260329
                                gxc#current-compile-identifiers
                                __tmp260328))))
                          (__tmp260326
                           (cons (cons 'compile-module
                                       (cons _%srcpath260101%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260327
                       gxc#current-compile-context
                       __tmp260326))))
                 (__tmp260324 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260325
                                                      gxc#current-compile-timestamp
                                                      __tmp260324)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260323
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi260126%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260322
                                    gxc#current-compile-debug
                                    _%debug260124%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260321
                           gxc#current-compile-optimize
                           _%optimize260122%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260320
                  gxc#current-compile-verbose
                  _%verbosity260120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260319
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260118%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260318
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260116%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260317
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?260106%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260316
                      gx#current-compilation-target
                      _%target260111%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260315
             gxc#current-compile-output-dir
             _%outdir260104%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath260151%_)
        (let ((_%opts260153%_ '()))
          (gxc#compile-module__% _%srcpath260151%_ _%opts260153%_))))
    (define gxc#compile-module
      (lambda _g260333_
        (let ((_g260334_ (let () (declare (not safe)) (##length _g260333_))))
          (cond ((let () (declare (not safe)) (##fx= _g260334_ 1))
                 (apply gxc#compile-module__0 _g260333_))
                ((let () (declare (not safe)) (##fx= _g260334_ 2))
                 (apply gxc#compile-module__% _g260333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g260333_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath260050%_ _%opts260051%_)
        (if (string? _%srcpath260050%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260050%_)))
        (let* ((_%outdir260053%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260051%_)))
               (_%invoke-gsc?260055%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260051%_)))
               (_%target260060%_
                (let ((_%$e260057%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260051%_))))
                  (if _%$e260057%_ _%$e260057%_ 'C)))
               (_%gsc-options260065%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260060%_) '()))
                        (let ((_%$e260062%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260051%_))))
                          (if _%$e260062%_ _%$e260062%_ '()))))
               (_%keep-scm?260067%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260051%_)))
               (_%verbosity260069%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260051%_)))
               (_%debug260071%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260051%_)))
               (_%parallel?260073%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260051%_))))
          (if _%outdir260053%_
              (let ((__tmp260335
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260053%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260335))
              '#!void)
          (let ((__tmp260336
                 (lambda ()
                   (let ((__tmp260337
                          (lambda ()
                            (let ((__tmp260338
                                   (lambda ()
                                     (let ((__tmp260339
                                            (lambda ()
                                              (let ((__tmp260340
                                                     (lambda ()
                                                       (let ((__tmp260341
                                                              (lambda ()
                                                                (let ((__tmp260342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260344
                                        (lambda ()
                                          (let ((__tmp260346
                                                 (lambda ()
                                                   (let ((__tmp260348
                                                          (lambda ()
                                                            (let ((__tmp260349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260350
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath260050%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp260351
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath260050%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp260351))
                                       _%opts260051%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260350
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260349
                       gxc#current-compile-parallel
                       _%parallel?260073%_))))
                 (__tmp260347
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260348
                                                      gxc#current-compile-identifiers
                                                      __tmp260347))))
                                                (__tmp260345
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath260050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260346
                                             gxc#current-compile-context
                                             __tmp260345))))
                                       (__tmp260343 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260344
                                    gxc#current-compile-timestamp
                                    __tmp260343)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260342
                           gxc#current-compile-debug
                           _%debug260071%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260341
                  gxc#current-compile-verbose
                  _%verbosity260069%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260340
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260067%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260339
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260065%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260338
                               gx#current-compilation-target
                               _%target260060%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260337
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260055%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260336
             gxc#current-compile-output-dir
             _%outdir260053%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath260093%_)
        (let ((_%opts260095%_ '()))
          (gxc#compile-exe__% _%srcpath260093%_ _%opts260095%_))))
    (define gxc#compile-exe
      (lambda _g260352_
        (let ((_g260353_ (let () (declare (not safe)) (##length _g260352_))))
          (cond ((let () (declare (not safe)) (##fx= _g260353_ 1))
                 (apply gxc#compile-exe__0 _g260352_))
                ((let () (declare (not safe)) (##fx= _g260353_ 2))
                 (apply gxc#compile-exe__% _g260352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g260352_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx260046%_ _%opts260047%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts260047%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx260046%_
             _%opts260047%_)
            (gxc#compile-executable-module/separate
             _%ctx260046%_
             _%opts260047%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx259772%_ _%opts259773%_)
        (letrec ((_%generate-stub259775%_
                  (lambda (_%builtin-modules260042%_)
                    (let ((_%mod-main260044%_
                           (gxc#find-runtime-symbol _%ctx259772%_ 'main)))
                      (let ((__tmp260354
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules260042%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp260354))
                      (let ((__tmp260355
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main260044%_
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
                        (##write __tmp260355))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts259776%_
                  (lambda (_%gerbil-libdir260040%_)
                    (let ((__tmp260356
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir260040%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp260356 read))))
                 (_%replace-extension259777%_
                  (lambda (_%path260037%_ _%ext260038%_)
                    (string-append
                     (path-strip-extension _%path260037%_)
                     _%ext260038%_)))
                 (_%replace-extension-with-c259778%_
                  (lambda (_%path260035%_)
                    (_%replace-extension259777%_ _%path260035%_ '".c")))
                 (_%replace-extension-with-object259779%_
                  (lambda (_%path260033%_)
                    (_%replace-extension259777%_
                     _%path260033%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?259780%_
                  (lambda (_%ctx260031%_)
                    (if (_%exclude-module?259782%_ _%ctx260031%_)
                        '#f
                        (not (_%libgerbil-module?259781%_ _%ctx260031%_)))))
                 (_%libgerbil-module?259781%_
                  (lambda (_%ctx260024%_)
                    (let ((_%id-str260026%_
                           (symbol->string
                            (##structure-ref
                             _%ctx260024%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?259782%_ _%id-str260026%_)
                          '#f
                          (let ((_%$e260028%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str260026%_))))
                            (if _%$e260028%_
                                _%$e260028%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str260026%_))))))))
                 (_%exclude-module?259782%_
                  (lambda (_%ctx-or-str260020%_)
                    (let ((_%str260022%_
                           (if (string? _%ctx-or-str260020%_)
                               _%ctx-or-str260020%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str260020%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str260022%_))))
                 (_%not-file-empty?259783%_
                  (lambda (_%path260018%_)
                    (not (gxc#file-empty? _%path260018%_))))
                 (_%fold-libgerbil-runtime-scm259784%_
                  (lambda (_%gerbil-staticdir260011%_ _%libgerbil-scm260012%_)
                    (let ((_%gerbil-runtime-scm260016%_
                           (let ((__tmp260357
                                  (lambda (_%rtm260014%_)
                                    (path-expand
                                     (let ((__tmp260358
                                            (let ((__tmp260359
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm260014%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp260359
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp260358 '".scm"))
                                     _%gerbil-staticdir260011%_))))
                             (declare (not safe))
                             (##map __tmp260357 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates259785%_
                       (append _%gerbil-runtime-scm260016%_
                               _%libgerbil-scm260012%_)))))
                 (_%remove-duplicates259785%_
                  (lambda (_%strlst259971%_)
                    (let _%loop259973%_ ((_%rest259975%_ _%strlst259971%_)
                                         (_%result259976%_ '()))
                      (let* ((_%rest259977259985%_ _%rest259975%_)
                             (_%else259979259993%_
                              (lambda () (reverse! _%result259976%_)))
                             (_%K259981259999%_
                              (lambda (_%rest259996%_ _%path259997%_)
                                (if (member _%path259997%_ _%result259976%_)
                                    (_%loop259973%_
                                     _%rest259996%_
                                     _%result259976%_)
                                    (_%loop259973%_
                                     _%rest259996%_
                                     (cons _%path259997%_
                                           _%result259976%_))))))
                        (if (pair? _%rest259977259985%_)
                            (let ((_%hd259982260002%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest259977259985%_)))
                                  (_%tl259983260004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest259977259985%_))))
                              (let* ((_%path260007%_ _%hd259982260002%_)
                                     (_%rest260009%_ _%tl259983260004%_))
                                (_%K259981259999%_
                                 _%rest260009%_
                                 _%path260007%_)))
                            (_%else259979259993%_))))))
                 (_%compile-stub259786%_
                  (lambda (_%output-scm259793%_ _%output-bin259794%_)
                    (let* ((_%gerbil-home259796%_
                            (let ((__tmp260360
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260360)))
                           (_%gerbil-libdir259798%_
                            (path-expand '"lib" _%gerbil-home259796%_))
                           (_%gerbil-staticdir259800%_
                            (path-expand '"static" _%gerbil-libdir259798%_))
                           (_%deps259802%_
                            (gxc#find-runtime-module-deps _%ctx259772%_))
                           (_%libgerbil-deps259804%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?259781%_
                               _%deps259802%_)))
                           (_%libgerbil-scm259806%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps259804%_)))
                           (_%libgerbil-scm259808%_
                            (_%fold-libgerbil-runtime-scm259784%_
                             _%gerbil-staticdir259800%_
                             _%libgerbil-scm259806%_))
                           (_%libgerbil-c259810%_
                            (map _%replace-extension-with-c259778%_
                                 _%libgerbil-scm259808%_))
                           (_%libgerbil-o259812%_
                            (map _%replace-extension-with-object259779%_
                                 _%libgerbil-scm259808%_))
                           (_%src-deps259814%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?259780%_
                               _%deps259802%_)))
                           (_%src-deps-scm259816%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps259814%_)))
                           (_%src-deps-scm259818%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?259783%_
                               _%src-deps-scm259816%_)))
                           (_%src-deps-scm259820%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm259818%_)))
                           (_%src-deps-c259822%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c259778%_
                                     _%src-deps-scm259820%_)))
                           (_%src-deps-o259824%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object259779%_
                                     _%src-deps-scm259820%_)))
                           (_%src-bin-scm259826%_
                            (gxc#find-static-module-file _%ctx259772%_))
                           (_%src-bin-scm259828%_
                            (path-expand _%src-bin-scm259826%_))
                           (_%src-bin-c259830%_
                            (_%replace-extension-with-c259778%_
                             _%src-bin-scm259828%_))
                           (_%src-bin-o259832%_
                            (_%replace-extension-with-object259779%_
                             _%src-bin-scm259828%_))
                           (_%output-bin259834%_
                            (path-expand _%output-bin259794%_))
                           (_%output-scm259836%_
                            (path-expand _%output-scm259793%_))
                           (_%output-c259838%_
                            (_%replace-extension-with-c259778%_
                             _%output-scm259836%_))
                           (_%output-o259840%_
                            (_%replace-extension-with-object259779%_
                             _%output-scm259836%_))
                           (_%output_-c259842%_
                            (_%replace-extension259777%_
                             _%output-scm259836%_
                             '"_.c"))
                           (_%output_-o259844%_
                            (_%replace-extension259777%_
                             _%output-scm259836%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts259846%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259848%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259850%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir259800%_))
                           (_%output-ld-opts259852%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts259854%_
                            (_%get-libgerbil-ld-opts259776%_
                             _%gerbil-libdir259798%_))
                           (_%rpath259856%_
                            (gxc#gerbil-rpath _%gerbil-libdir259798%_))
                           (_%builtin-modules259860%_
                            (_%remove-duplicates259785%_
                             (let ((__tmp260361
                                    (let ((__tmp260363
                                           (lambda (_%mod259858%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod259858%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp260362
                                           (cons _%ctx259772%_
                                                 _%deps259802%_)))
                                      (declare (not safe))
                                      (##map __tmp260363 __tmp260362))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp260361)))))
                      (letrec ((_%compile-obj259863%_
                                (lambda (_%scm-path259870%_ _%c-path259871%_)
                                  (let* ((_%o-path259873%_
                                          (_%replace-extension259777%_
                                           _%c-path259871%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock259875%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path259873%_
                                             '".lock")))
                                         (_%locked259877%_ '#f)
                                         (_%unlock259880%_
                                          (lambda ()
                                            (close-port _%locked259877%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock259875%_)))))
                                    (let _%retry259883%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock259875%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry259883%_))
                                          (begin
                                            (set! _%locked259877%_
                                                  (let* ((_%handler259886%_
                                                          false)
                                                         (_%thunk259890%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock259875%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler259895%_ _%handler259886%_)
                 (_%thunk259951%_ _%thunk259890%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler259895%_
                                                     _%thunk259951%_)))
                                            (if _%locked259877%_
                                                '#!void
                                                (_%retry259883%_)))))
                                    (let ((__tmp260365
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path259873%_)))
                                                     (not _%scm-path259870%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path259870%_
                                                        _%o-path259873%_)))
                                                 (let ((_%gsc-cc-opts259968%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp260366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp260367 (cons _%c-path259871%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260367
                            _%gsc-static-opts259850%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260366 _%gsc-cc-opts259968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp260364
                                           (lambda () (_%unlock259880%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp260365
                                       __tmp260364))))))
                        (let ((__tmp260368
                               (lambda ()
                                 (let ((__tmp260369
                                        (path-directory _%output-bin259834%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp260369)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp260368))
                        (gxc#with-output-to-scheme-file
                         _%output-scm259836%_
                         (lambda ()
                           (_%generate-stub259775%_
                            _%builtin-modules259860%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it259868%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp260370
                                                   (let ((__tmp260371
                                                          (let ((__tmp260372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm259828%_
                               (cons _%output-scm259836%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260372 _%src-deps-scm259820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp260371
                                                      _%libgerbil-c259810%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp260370
                                               _%gsc-link-opts259846%_))))
                                     (for-each
                                      _%compile-obj259863%_
                                      (let ((__tmp260373
                                             (cons _%src-bin-scm259828%_
                                                   (cons _%output-scm259836%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260373
                                         _%src-deps-scm259820%_))
                                      (let ((__tmp260374
                                             (cons _%src-bin-c259830%_
                                                   (cons _%output-c259838%_
                                                         (cons _%output_-c259842%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260374
                                         _%src-deps-c259822%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin259834%_
                                                        (let ((__tmp260375
                                                               (cons _%src-bin-o259832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o259840%_
                                   (cons _%output_-o259844%_
                                         (let ((__tmp260376
                                                (let ((__tmp260377
                                                       (let ((__tmp260379
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir259798%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts259854%_))))
                     (__tmp260378
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath259856%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp260379 __tmp260378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp260377
                                                   _%output-ld-opts259852%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp260376
                                            _%libgerbil-o259812%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp260375 _%src-deps-o259824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp260380
                                            (cons _%output-c259838%_
                                                  (cons _%output_-c259842%_
                                                        (cons _%output-o259840%_
                                                              (cons _%output_-o259844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp260380)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it259868%_))
                                  (_%compile-it259868%_)))
                            '#!void))))))
          (let* ((_%output-bin259788%_
                  (gxc#compile-exe-output-file _%ctx259772%_ _%opts259773%_))
                 (_%output-scm259790%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259788%_ '"__exe.scm"))))
            (_%compile-stub259786%_
             _%output-scm259790%_
             _%output-bin259788%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx259594%_ _%opts259595%_)
        (letrec ((_%reset-declare259597%_
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
                 (_%generate-stub259598%_
                  (lambda (_%deps259763%_)
                    (let ((_%mod-main259765%_
                           (gxc#find-runtime-symbol _%ctx259594%_ 'main))
                          (_%reset-decl259766%_ (_%reset-declare259597%_))
                          (_%user-decl259767%_ (_%user-declare259599%_)))
                      (for-each
                       (lambda (_%dep259769%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl259766%_))
                         (newline)
                         (if _%user-decl259767%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl259767%_))
                               (newline))
                             '#!void)
                         (let ((__tmp260381
                                (cons 'include (cons _%dep259769%_ '()))))
                           (declare (not safe))
                           (##write __tmp260381))
                         (newline))
                       _%deps259763%_)
                      (let ((__tmp260382
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main259765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp260382))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare259599%_
                  (lambda ()
                    (let* ((_%gsc-opts259668%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts259595%_)))
                           (_%gsc-prelude259670%_
                            (if _%gsc-opts259668%_
                                (member '"-prelude" _%gsc-opts259668%_)
                                '#f))
                           (_%gsc-prelude259672%_
                            (if _%gsc-prelude259670%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude259670%_)))
                                '#f)))
                      (let _%lp259675%_ ((_%rest259677%_
                                          (cons _%gsc-prelude259672%_ '()))
                                         (_%user-decls259678%_ '()))
                        (let* ((_%rest259679259687%_ _%rest259677%_)
                               (_%else259681259695%_
                                (lambda ()
                                  (if (null? _%user-decls259678%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls259678%_)))))
                               (_%K259683259751%_
                                (lambda (_%rest259698%_ _%expr259699%_)
                                  (let* ((_%expr259700259712%_ _%expr259699%_)
                                         (_%else259703259720%_
                                          (lambda ()
                                            (_%lp259675%_
                                             _%rest259698%_
                                             _%user-decls259678%_))))
                                    (let ((_%K259708259741%_
                                           (lambda (_%decls259739%_)
                                             (_%lp259675%_
                                              _%rest259698%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls259678%_
                                                 _%decls259739%_)))))
                                          (_%K259705259726%_
                                           (lambda (_%exprs259724%_)
                                             (_%lp259675%_
                                              (append _%exprs259724%_
                                                      _%rest259698%_)
                                              _%user-decls259678%_))))
                                      (if (pair? _%expr259700259712%_)
                                          (let ((_%tl259710259746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr259700259712%_)))
                                                (_%hd259709259744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr259700259712%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd259709259744%_
                                                         'declare))
                                                (let ((_%decls259749%_
                                                       _%tl259710259746%_))
                                                  (_%K259708259741%_
                                                   _%decls259749%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd259709259744%_
                                                             'begin))
                                                    (let ((_%exprs259734%_
                                                           _%tl259710259746%_))
                                                      (_%K259705259726%_
                                                       _%exprs259734%_))
                                                    (_%else259703259720%_))))
                                          (_%else259703259720%_)))))))
                          (if (pair? _%rest259679259687%_)
                              (let ((_%hd259684259754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest259679259687%_)))
                                    (_%tl259685259756%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest259679259687%_))))
                                (let* ((_%expr259759%_ _%hd259684259754%_)
                                       (_%rest259761%_ _%tl259685259756%_))
                                  (_%K259683259751%_
                                   _%rest259761%_
                                   _%expr259759%_)))
                              (_%else259681259695%_)))))))
                 (_%compile-stub259600%_
                  (lambda (_%output-scm259607%_ _%output-bin259608%_)
                    (let* ((_%gerbil-home259610%_
                            (let ((__tmp260383
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260383)))
                           (_%gerbil-libdir259612%_
                            (path-expand '"lib" _%gerbil-home259610%_))
                           (_%runtime259614%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp259616%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home259610%_))
                           (_%include-gambit-sharp259618%_
                            (gxc#include-source _%gambit-sharp259616%_))
                           (_%bin-scm259620%_
                            (gxc#find-static-module-file _%ctx259594%_))
                           (_%deps259622%_
                            (gxc#find-runtime-module-deps _%ctx259594%_))
                           (_%deps259624%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps259622%_)))
                           (_%deps259629%_
                            (let ((__tmp260384
                                   (lambda (_%$obj259626%_)
                                     (not (gxc#file-empty? _%$obj259626%_)))))
                              (declare (not safe))
                              (##filter __tmp260384 _%deps259624%_)))
                           (_%deps259633%_
                            (let ((__tmp260385
                                   (lambda (_%f259631%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f259631%_
                                             _%runtime259614%_))))))
                              (declare (not safe))
                              (##filter __tmp260385 _%deps259629%_)))
                           (_%output-base259635%_
                            (let ((__tmp260386
                                   (path-strip-extension
                                    _%output-scm259607%_)))
                              (declare (not safe))
                              (##string-append __tmp260386)))
                           (_%output-c259637%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259635%_ '".c")))
                           (_%output-o259639%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base259635%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_259641%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259635%_ '"_.c")))
                           (_%output-o_259643%_
                            (let ((__tmp260387
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base259635%_
                               __tmp260387)))
                           (_%gsc-link-opts259645%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259647%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259649%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir259612%_)))
                           (_%output-ld-opts259651%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros259653%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp259618%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp259618%_
                                            '()))))
                           (_%gsc-link-opts259655%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts259645%_
                               _%gsc-gx-macros259653%_)))
                           (_%rpath259657%_
                            (gxc#gerbil-rpath _%gerbil-libdir259612%_))
                           (_%default-ld-options259659%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp260388
                             (lambda ()
                               (let ((__tmp260389
                                      (path-directory _%output-bin259608%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp260389)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp260388))
                      (gxc#with-output-to-scheme-file
                       _%output-scm259607%_
                       (lambda ()
                         (_%generate-stub259598%_
                          (let ((__tmp260390
                                 (let ((__tmp260391
                                        (cons _%bin-scm259620%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp260391
                                    _%deps259633%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp260390 _%runtime259614%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it259665%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_259641%_
                                                      (let ((__tmp260392
                                                             (cons _%output-scm259607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260392 _%gsc-link-opts259655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp260393
                                                 (let ((__tmp260394
                                                        (cons _%output-c259637%_
                                                              (cons _%output-c_259641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp260394
                                                    _%gsc-static-opts259649%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260393
                                             _%gsc-cc-opts259647%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin259608%_
                                                      (cons _%output-o259639%_
                                                            (cons _%output-o_259643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260395
                                 (let ((__tmp260397
                                        (cons '"-L"
                                              (cons _%gerbil-libdir259612%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options259659%_))))
                                       (__tmp260396
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath259657%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp260397 __tmp260396))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp260395
                             _%output-ld-opts259651%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it259665%_))
                                (_%compile-it259665%_)))
                          '#!void)))))
          (let* ((_%output-bin259602%_
                  (gxc#compile-exe-output-file _%ctx259594%_ _%opts259595%_))
                 (_%output-scm259604%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259602%_ '"__exe.scm"))))
            (_%compile-stub259600%_
             _%output-scm259604%_
             _%output-bin259602%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx259543%_ _%id259544%_)
        (let ((_%$e259590%_
               (let ((__tmp260399
                      (lambda (_%e259545259547%_)
                        (let* ((_%e259545259549259559%_ _%e259545259547%_)
                               (_%else259551259567%_ (lambda () '#f))
                               (_%K259553259571%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e259545259549259559%_
                                 'gx#module-export::t))
                              (let* ((_%e259554259574%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259545259549259559%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e259555259577%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259545259549259559%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e259556259580%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259545259549259559%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e259556259580%_ '0))
                                    (let ((_%e259557259583%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e259545259549259559%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g259585259587%_)
                                             (eq? _%g259585259587%_
                                                  _%id259544%_))
                                           _%e259557259583%_)
                                          (_%K259553259571%_)
                                          (_%else259551259567%_)))
                                    (_%else259551259567%_)))
                              (_%else259551259567%_)))))
                     (__tmp260398
                      (##structure-ref
                       _%ctx259543%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp260399 __tmp260398))))
          (if _%$e259590%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e259590%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx259534%_ _%id259535%_)
        (let ((_%$e259537%_
               (gxc#find-export-binding _%ctx259534%_ _%id259535%_)))
          (if _%$e259537%_
              ((lambda (_%bind259540%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind259540%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id259535%_)))
                 (##structure-ref _%bind259540%_ '1 gx#binding::t '#f))
               _%$e259537%_)
              (let ((__tmp260400
                     (##structure-ref
                      _%ctx259534%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp260400
                 _%id259535%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx259400%_)
        (letrec* ((_%ht259402%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template259403%_
                   (lambda (_%in259479%_ _%phi259480%_)
                     (let ((_%iphi259482%_
                            (fx+ _%phi259480%_
                                 (##direct-structure-ref
                                  _%in259479%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports259483%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in259479%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp259485%_ ((_%rest259487%_ _%imports259483%_)
                                          (_%r259488%_ '()))
                         (let* ((_%rest259489259497%_ _%rest259487%_)
                                (_%else259491259505%_ (lambda () _%r259488%_))
                                (_%K259493259522%_
                                 (lambda (_%rest259508%_ _%in259509%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in259509%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi259482%_))
                                           (_%lp259485%_
                                            _%rest259508%_
                                            (cons _%in259509%_ _%r259488%_))
                                           (_%lp259485%_
                                            _%rest259508%_
                                            _%r259488%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in259509%_
                                              'gx#module-import::t))
                                           (let ((_%iphi259513%_
                                                  (fx+ _%phi259480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in259509%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi259513%_))
                                                 (_%lp259485%_
                                                  _%rest259508%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in259509%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r259488%_))
                                                 (_%lp259485%_
                                                  _%rest259508%_
                                                  _%r259488%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in259509%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi259516%_
                                                      (fx+ _%iphi259482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in259509%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi259516%_))
                                                     (_%lp259485%_
                                                      _%rest259508%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in259509%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r259488%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi259516%_))
                                                         (_%lp259485%_
                                                          _%rest259508%_
                                                          (let ((__tmp260401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template259403%_
                          _%in259509%_
                          _%iphi259482%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r259488%_ __tmp260401)))
                 (_%lp259485%_ _%rest259508%_ _%r259488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp259485%_
                                                _%rest259508%_
                                                _%r259488%_)))))))
                           (if (pair? _%rest259489259497%_)
                               (let ((_%hd259494259525%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest259489259497%_)))
                                     (_%tl259495259527%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest259489259497%_))))
                                 (let* ((_%in259530%_ _%hd259494259525%_)
                                        (_%rest259532%_ _%tl259495259527%_))
                                   (_%K259493259522%_
                                    _%rest259532%_
                                    _%in259530%_)))
                               (_%else259491259505%_)))))))
                  (_%find-deps259404%_
                   (lambda (_%rest259412%_ _%deps259413%_)
                     (let* ((_%rest259414259422%_ _%rest259412%_)
                            (_%else259416259430%_ (lambda () _%deps259413%_))
                            (_%K259418259467%_
                             (lambda (_%rest259433%_ _%hd259434%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd259434%_
                                      'gx#module-context::t))
                                   (let ((_%id259437%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259434%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports259438%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259434%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht259402%_
                                            _%id259437%_))
                                         (_%find-deps259404%_
                                          _%rest259433%_
                                          _%deps259413%_)
                                         (let ((_%$e259441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd259434%_))))
                                           (if _%$e259441%_
                                               ((lambda (_%pre259444%_)
                                                  (let ((_%xdeps259446%_
                                                         (_%find-deps259404%_
                                                          (cons _%pre259444%_
                                                                _%imports259438%_)
                                                          _%deps259413%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht259402%_
                                                       _%id259437%_
                                                       _%hd259434%_))
                                                    (_%find-deps259404%_
                                                     _%rest259433%_
                                                     (cons _%hd259434%_
                                                           _%xdeps259446%_))))
                                                _%$e259441%_)
                                               (let ((_%xdeps259449%_
                                                      (_%find-deps259404%_
                                                       _%imports259438%_
                                                       _%deps259413%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht259402%_
                                                    _%id259437%_
                                                    _%hd259434%_))
                                                 (_%find-deps259404%_
                                                  _%rest259433%_
                                                  (cons _%hd259434%_
                                                        _%xdeps259449%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd259434%_
                                          'gx#prelude-context::t))
                                       (let ((_%id259452%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd259434%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht259402%_
                                                _%id259452%_))
                                             (_%find-deps259404%_
                                              _%rest259433%_
                                              _%deps259413%_)
                                             (let ((_%xdeps259456%_
                                                    (_%find-deps259404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd259434%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps259413%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht259402%_
                                                      _%id259452%_))
                                                   (_%find-deps259404%_
                                                    _%rest259433%_
                                                    _%xdeps259456%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht259402%_
                                                        _%id259452%_
                                                        _%hd259434%_))
                                                     (_%find-deps259404%_
                                                      _%rest259433%_
                                                      (cons _%hd259434%_
                                                            _%xdeps259456%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd259434%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd259434%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps259404%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259434%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259433%_)
                                                _%deps259413%_)
                                               (_%find-deps259404%_
                                                _%rest259433%_
                                                _%deps259413%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd259434%_
                                                  'gx#module-export::t))
                                               (_%find-deps259404%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259434%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259433%_)
                                                _%deps259413%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd259434%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd259434%_ '2 '#f '#f)))
               (_%find-deps259404%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd259434%_ '1 '#f '#f))
                      _%rest259433%_)
                _%deps259413%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd259434%_ '2 '#f '#f)))
                   (let ((_%xdeps259463%_
                          (_%import-set-template259403%_ _%hd259434%_ '0)))
                     (_%find-deps259404%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest259433%_ _%xdeps259463%_))
                      _%deps259413%_))
                   (_%find-deps259404%_ _%rest259433%_ _%deps259413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd259434%_))))))))))
                       (if (pair? _%rest259414259422%_)
                           (let ((_%hd259419259470%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest259414259422%_)))
                                 (_%tl259420259472%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest259414259422%_))))
                             (let* ((_%hd259475%_ _%hd259419259470%_)
                                    (_%rest259477%_ _%tl259420259472%_))
                               (_%K259418259467%_
                                _%rest259477%_
                                _%hd259475%_)))
                           (_%else259416259430%_))))))
          (let ((__tmp260402
                 (filter gx#expander-context-id
                         (_%find-deps259404%_
                          (let ((_%$e259406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx259400%_))))
                            (if _%$e259406%_
                                ((lambda (_%pre259409%_)
                                   (cons _%pre259409%_
                                         (##structure-ref
                                          _%ctx259400%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e259406%_)
                                (##structure-ref
                                 _%ctx259400%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp260402)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx259330%_)
        (let* ((_%context-id259332%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx259330%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx259330%_ '1 '#f '#f))
                    (string->symbol _%ctx259330%_)))
               (_%scm259334%_
                (let ((__tmp260403
                       (gxc#static-module-name _%context-id259332%_)))
                  (declare (not safe))
                  (##string-append __tmp260403 '".scm")))
               (_%dirs259336%_ (let () (declare (not safe)) (load-path)))
               (_%dirs259342%_
                (let ((_%user-libpath259338%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath259338%_
                      (let ((_%user-libpath259340%_
                             (path-expand '"lib" _%user-libpath259338%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath259340%_ _%dirs259336%_))
                            _%dirs259336%_
                            (cons _%user-libpath259340%_ _%dirs259336%_)))
                      _%dirs259336%_)))
               (_%dirs259352%_
                (let ((_%$e259344%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e259344%_
                      ((lambda (_%g259346259348%_)
                         (cons _%g259346259348%_ _%dirs259342%_))
                       _%$e259344%_)
                      _%dirs259342%_)))
               (_%dirs259358%_
                (let ((__tmp260404
                       (lambda (_%g259353259355%_)
                         (path-expand '"static" _%g259353259355%_))))
                  (declare (not safe))
                  (##map __tmp260404 _%dirs259352%_))))
          (let _%lp259361%_ ((_%rest259363%_ _%dirs259358%_))
            (let* ((_%rest259364259372%_ _%rest259363%_)
                   (_%else259366259380%_
                    (lambda ()
                      (let ((__tmp260405
                             (##structure-ref
                              _%ctx259330%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp260405
                         _%scm259334%_))))
                   (_%K259368259388%_
                    (lambda (_%rest259383%_ _%dir259384%_)
                      (let ((_%path259386%_
                             (path-expand _%scm259334%_ _%dir259384%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path259386%_))
                            _%path259386%_
                            (_%lp259361%_ _%rest259383%_))))))
              (if (pair? _%rest259364259372%_)
                  (let ((_%hd259369259391%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259364259372%_)))
                        (_%tl259370259393%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259364259372%_))))
                    (let* ((_%dir259396%_ _%hd259369259391%_)
                           (_%rest259398%_ _%tl259370259393%_))
                      (_%K259368259388%_ _%rest259398%_ _%dir259396%_)))
                  (_%else259366259380%_)))))))
    (define gxc#file-empty?
      (lambda (_%path259328%_)
        (zero? (let ((__tmp260406 (file-info _%path259328%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp260406)))))
    (define gxc#compile-top-module
      (lambda (_%ctx259319%_)
        (let ((__tmp260407
               (lambda ()
                 (let ((__tmp260408
                        (lambda ()
                          (let ((__tmp260409
                                 (lambda ()
                                   (let ((__tmp260411
                                          (lambda ()
                                            (let ((__tmp260413
                                                   (lambda ()
                                                     (let ((__tmp260415
                                                            (lambda ()
                                                              (let ((__tmp260416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx259319%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp260416))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp260417
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx259319%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp260417))
                          '#!void)
                      (gxc#collect-bindings _%ctx259319%_)
                      (gxc#compile-runtime-code _%ctx259319%_)
                      (gxc#compile-meta-code _%ctx259319%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx259319%_)
                          '#!void)))
                   (__tmp260414
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
                __tmp260415
                gxc#current-compile-runtime-names
                __tmp260414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp260412
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp260413
                                               gxc#current-compile-runtime-sections
                                               __tmp260412))))
                                         (__tmp260410
                                          (let ((__obj260308
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj260308))
                                            __obj260308)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp260411
                                      gxc#current-compile-symbol-table
                                      __tmp260410)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260409
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260408
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260407
           gx#current-expander-context
           _%ctx259319%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx259317%_)
        (let ((__tmp260418
               (##structure-ref _%ctx259317%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp260418))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx259262%_)
        (letrec ((_%compile1259264%_
                  (lambda (_%ctx259306%_)
                    (let* ((_%code259308%_
                            (##structure-ref
                             _%ctx259306%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm259312%_
                            (let ((_%idstr259310%_
                                   (let ((__tmp260419
                                          (##structure-ref
                                           _%ctx259306%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp260419))))
                              (declare (not safe))
                              (##string-append _%idstr259310%_ '"~0")))
                           (_%rtc?259314%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code259308%_))))
                      (if _%rtc?259314%_
                          (let ((__tmp260420
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp260420
                             _%ctx259306%_
                             _%rtm259312%_))
                          '#!void)
                      (_%generate-runtime-code259266%_
                       _%ctx259306%_
                       _%code259308%_
                       (if _%rtc?259314%_ _%rtm259312%_ '#f)))))
                 (_%context-timestamp259265%_
                  (lambda (_%ctx259304%_)
                    (let ((__tmp260421
                           (let ((__tmp260422
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx259304%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp260422 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp260421))))
                 (_%generate-runtime-code259266%_
                  (lambda (_%ctx259273%_ _%code259274%_ _%rtm259275%_)
                    (let* ((_%runtime-code?259277%_ (if _%rtm259275%_ '#t '#f))
                           (_%lifts259279%_ (box '()))
                           (_%runtime-code259285%_
                            (if _%runtime-code?259277%_
                                (let ((__tmp260423
                                       (lambda ()
                                         (let ((__tmp260424
                                                (lambda ()
                                                  (let ((__tmp260425
                                                         (lambda ()
                                                           (let ((__tmp260427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code259274%_))))
                         (__tmp260426
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260427
                      gxc#current-compile-marks
                      __tmp260426)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp260425
                                                     gxc#current-compile-lift
                                                     _%lifts259279%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp260424
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp260423
                                   gx#current-expander-context
                                   _%ctx259273%_))
                                '#f))
                           (_%runtime-code259287%_
                            (if _%runtime-code?259277%_
                                (if (null? (unbox _%lifts259279%_))
                                    _%runtime-code259285%_
                                    (cons 'begin
                                          (let ((__tmp260429
                                                 (cons _%runtime-code259285%_
                                                       '()))
                                                (__tmp260428
                                                 (reverse (unbox _%lifts259279%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260429
                                             __tmp260428))))
                                '#f))
                           (_%runtime-code259289%_
                            (if _%runtime-code?259277%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp259265%_
                                                         _%ctx259273%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code259287%_ '())))
                                '#f))
                           (_%loader-code259292%_
                            (let ((__tmp260430
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code259274%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260430
                               gx#current-expander-context
                               _%ctx259273%_)))
                           (_%loader-code259294%_
                            (cons 'begin
                                  (cons _%loader-code259292%_
                                        (cons (if _%runtime-code?259277%_
                                                  (cons 'load-module
                                                        (cons _%rtm259275%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0259296%_
                            (gxc#compile-output-file _%ctx259273%_ '0 '".scm"))
                           (_%scmrt259298%_
                            (gxc#compile-output-file
                             _%ctx259273%_
                             '#f
                             '".scm"))
                           (_%scms259300%_
                            (gxc#compile-static-output-file _%ctx259273%_)))
                      (if _%runtime-code?259277%_
                          (gxc#compile-scm-file__0
                           _%scm0259296%_
                           _%runtime-code259289%_)
                          '#!void)
                      (let ((__tmp260431
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt259298%_
                                _%loader-code259294%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp260431
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms259300%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms259300%_))
                          '#!void)
                      (if _%runtime-code?259277%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0259296%_ _%scms259300%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms259300%_ void)))))))
          (let* ((_%all-modules259268%_
                  (cons _%ctx259262%_ (gxc#lift-nested-modules _%ctx259262%_)))
                 (__tmp260432
                  (lambda (_%ctx259270%_)
                    (let ((__tmp260433
                           (lambda () (_%compile1259264%_ _%ctx259270%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260433
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp260432 _%all-modules259268%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx259161%_)
        (letrec ((_%compile-ssi259163%_
                  (lambda (_%code259230%_)
                    (let* ((_%path259232%_
                            (gxc#compile-output-file
                             _%ctx259161%_
                             '#f
                             '".ssi"))
                           (_%prelude259244%_
                            (let* ((_%super259234%_
                                    (##structure-ref
                                     _%ctx259161%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e259236%_
                                    (##structure-ref
                                     _%super259234%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e259236%_
                                  ((lambda (_%g259238259240%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g259238259240%_)))
                                   _%$e259236%_)
                                  ':<root>)))
                           (_%ns259246%_
                            (##structure-ref
                             _%ctx259161%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr259248%_
                            (symbol->string
                             (##structure-ref
                              _%ctx259161%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg259256%_
                            (let ((_%$e259250%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr259248%_ '#\/))))
                              (if _%$e259250%_
                                  ((lambda (_%x259253%_)
                                     (let ((__tmp260434
                                            (substring
                                             _%idstr259248%_
                                             '0
                                             _%x259253%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp260434)))
                                   _%$e259250%_)
                                  '#f)))
                           (_%rt259258%_
                            (let ((__tmp260435
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp260435 _%ctx259161%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path259232%_))
                      (gxc#with-output-to-scheme-file
                       _%path259232%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude259244%_))
                         (if _%pkg259256%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg259256%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns259246%_))
                         (newline)
                         (pretty-print _%code259230%_)
                         (if _%rt259258%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt259258%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi259164%_
                  (lambda (_%part259169%_)
                    (let* ((_%part259170259183%_ _%part259169%_)
                           (_%E259172259187%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part259170259183%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K259173259199%_
                            (lambda (_%code259190%_
                                     _%n259191%_
                                     _%phi259192%_
                                     _%phi-ctx259193%_)
                              (let ((_%code259197%_
                                     (let ((__tmp260436
                                            (lambda ()
                                              (let ((__tmp260437
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code259190%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260437
                                                 gx#current-expander-phi
                                                 _%phi259192%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260436
                                        gx#current-expander-context
                                        _%phi-ctx259193%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx259161%_
                                  _%n259191%_
                                  '".scm")
                                 _%code259197%_
                                 '#t)))))
                      (if (pair? _%part259170259183%_)
                          (let ((_%hd259174259202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part259170259183%_)))
                                (_%tl259175259204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part259170259183%_))))
                            (let ((_%phi-ctx259207%_ _%hd259174259202%_))
                              (if (pair? _%tl259175259204%_)
                                  (let ((_%hd259176259209%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259175259204%_)))
                                        (_%tl259177259211%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259175259204%_))))
                                    (let ((_%phi259214%_ _%hd259176259209%_))
                                      (if (pair? _%tl259177259211%_)
                                          (let ((_%hd259178259216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl259177259211%_)))
                                                (_%tl259179259218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl259177259211%_))))
                                            (let ((_%n259221%_
                                                   _%hd259178259216%_))
                                              (if (pair? _%tl259179259218%_)
                                                  (let ((_%hd259180259223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl259179259218%_)))
                                                        (_%tl259181259225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl259179259218%_))))
                                                    (let ((_%code259228%_
                                                           _%hd259180259223%_))
                                                      (if (null? _%tl259181259225%_)
                                                          (_%K259173259199%_
                                                           _%code259228%_
                                                           _%n259221%_
                                                           _%phi259214%_
                                                           _%phi-ctx259207%_)
                                                          (_%E259172259187%_))))
                                                  (_%E259172259187%_))))
                                          (_%E259172259187%_))))
                                  (_%E259172259187%_))))
                          (_%E259172259187%_))))))
          (let ((_g260438_ (gxc#generate-meta-code _%ctx259161%_)))
            (begin
              (let ((_g260439_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g260438_)
                           (##values-length _g260438_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g260439_ 2)))
                    (error "Context expects 2 values" _g260439_)))
              (let ((_%ssi-code259166%_
                     (let () (declare (not safe)) (##values-ref _g260438_ 0)))
                    (_%phi-code259167%_
                     (let () (declare (not safe)) (##values-ref _g260438_ 1))))
                (begin
                  (_%compile-ssi259163%_ _%ssi-code259166%_)
                  (for-each _%compile-phi259164%_ _%phi-code259167%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx259143%_)
        (let* ((_%path259145%_
                (gxc#compile-output-file _%ctx259143%_ '#f '".ssxi.ss"))
               (_%code259147%_
                (let ((__tmp260440
                       (##structure-ref
                        _%ctx259143%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp260440)))
               (_%idstr259149%_
                (symbol->string
                 (##structure-ref
                  _%ctx259143%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg259157%_
                (let ((_%$e259151%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr259149%_ '#\/))))
                  (if _%$e259151%_
                      ((lambda (_%x259154%_)
                         (let ((__tmp260441
                                (substring _%idstr259149%_ '0 _%x259154%_)))
                           (declare (not safe))
                           (##string->symbol __tmp260441)))
                       _%$e259151%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path259145%_))
          (gxc#with-output-to-scheme-file
           _%path259145%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg259157%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg259157%_))
                 '#!void)
             (newline)
             (pretty-print _%code259147%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx259136%_)
        (let* ((_%state259138%_
                (let ((__obj260309
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj260309 _%ctx259136%_))
                  __obj260309))
               (_%ssi-code259140%_
                (let ((__tmp260442
                       (##structure-ref
                        _%ctx259136%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state259138%_
                   __tmp260442))))
          (values _%ssi-code259140%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state259138%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx259128%_)
        (let* ((_%lifts259130%_ (box '()))
               (__tmp260443
                (lambda ()
                  (let ((__tmp260445
                         (lambda ()
                           (let ((_%code259134%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx259128%_))))
                             (if (null? (unbox _%lifts259130%_))
                                 _%code259134%_
                                 (cons 'begin
                                       (let ((__tmp260447
                                              (cons _%code259134%_ '()))
                                             (__tmp260446
                                              (reverse (unbox _%lifts259130%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp260447
                                          __tmp260446)))))))
                        (__tmp260444
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp260445
                     gxc#current-compile-marks
                     __tmp260444)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260443
           gxc#current-compile-lift
           _%lifts259130%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx259124%_)
        (let ((_%modules259126%_ (box '())))
          (let ((__tmp260448
                 (##structure-ref _%ctx259124%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules259126%_ __tmp260448))
          (reverse (unbox _%modules259126%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path259104%_ _%code259105%_ _%phi?259106%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path259104%_))
        (gxc#with-output-to-scheme-file
         _%path259104%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp260449
                                           (if _%phi?259106%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp260449)))))))
           (pretty-print _%code259105%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it259110%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path259104%_ _%phi?259106%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp260450
                         (cons 'compile-file (cons _%path259104%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it259110%_ __tmp260450))
                  (_%compile-it259110%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path259115%_ _%code259116%_)
        (let ((_%phi?259118%_ '#f))
          (gxc#compile-scm-file__%
           _%path259115%_
           _%code259116%_
           _%phi?259118%_))))
    (define gxc#compile-scm-file
      (lambda _g260451_
        (let ((_g260452_ (let () (declare (not safe)) (##length _g260451_))))
          (cond ((let () (declare (not safe)) (##fx= _g260452_ 2))
                 (apply gxc#compile-scm-file__0 _g260451_))
                ((let () (declare (not safe)) (##fx= _g260452_ 3))
                 (apply gxc#compile-scm-file__% _g260451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g260451_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?259005%_)
        (let _%lp259007%_ ((_%rest259009%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259010%_ '()))
          (let* ((_%rest259011259031%_ _%rest259009%_)
                 (_%else259015259039%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts259010%_)))
                        (reverse _%opts259010%_)))))
            (let ((_%K259025259082%_
                   (lambda (_%rest259080%_)
                     (_%lp259007%_ _%rest259080%_ _%opts259010%_)))
                  (_%K259020259064%_
                   (lambda (_%rest259062%_)
                     (_%lp259007%_ _%rest259062%_ _%opts259010%_)))
                  (_%K259017259046%_
                   (lambda (_%rest259043%_ _%opt259044%_)
                     (_%lp259007%_
                      _%rest259043%_
                      (cons _%opt259044%_ _%opts259010%_)))))
              (if (pair? _%rest259011259031%_)
                  (let ((_%tl259027259087%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259011259031%_)))
                        (_%hd259026259085%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259011259031%_))))
                    (if (equal? _%hd259026259085%_ '"-cc-options")
                        (if (pair? _%tl259027259087%_)
                            (let* ((_%tl259029259090%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259027259087%_)))
                                   (_%rest259093%_ _%tl259029259090%_))
                              (_%K259025259082%_ _%rest259093%_))
                            (let ((_%opt259054%_ _%hd259026259085%_)
                                  (_%rest259056%_ _%tl259027259087%_))
                              (_%K259017259046%_
                               _%rest259056%_
                               _%opt259054%_)))
                        (if (equal? _%hd259026259085%_ '"-ld-options")
                            (if (pair? _%tl259027259087%_)
                                (let* ((_%tl259024259072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl259027259087%_)))
                                       (_%rest259075%_ _%tl259024259072%_))
                                  (_%K259020259064%_ _%rest259075%_))
                                (let ((_%opt259054%_ _%hd259026259085%_)
                                      (_%rest259056%_ _%tl259027259087%_))
                                  (_%K259017259046%_
                                   _%rest259056%_
                                   _%opt259054%_)))
                            (let ((_%opt259054%_ _%hd259026259085%_)
                                  (_%rest259056%_ _%tl259027259087%_))
                              (_%K259017259046%_
                               _%rest259056%_
                               _%opt259054%_)))))
                  (_%else259015259039%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?259099%_ '#f)) (gxc#gsc-link-options__% _%phi?259099%_))))
    (define gxc#gsc-link-options
      (lambda _g260453_
        (let ((_g260454_ (let () (declare (not safe)) (##length _g260453_))))
          (cond ((let () (declare (not safe)) (##fx= _g260454_ 0))
                 (apply gxc#gsc-link-options__0 _g260453_))
                ((let () (declare (not safe)) (##fx= _g260454_ 1))
                 (apply gxc#gsc-link-options__% _g260453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g260453_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords258855%_ _%static?258851258856%_ _%phi?258857%_)
        (let ((_%static?258859%_
               (if (eq? _%static?258851258856%_ absent-value)
                   '#f
                   _%static?258851258856%_)))
          (if _%phi?258857%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp258861%_ ((_%rest258863%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258864%_ '()))
                (let* ((_%rest258865258891%_ _%rest258863%_)
                       (_%else258870258899%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts258864%_)))
                              (reverse! _%opts258864%_)))))
                  (let ((_%K258885258962%_
                         (lambda (_%rest258959%_ _%opt258960%_)
                           (if _%static?258859%_
                               (_%lp258861%_
                                _%rest258959%_
                                (cons _%opt258960%_
                                      (cons '"-cc-options" _%opts258864%_)))
                               (_%lp258861%_ _%rest258959%_ _%opts258864%_))))
                        (_%K258880258939%_
                         (lambda (_%rest258936%_ _%opt258937%_)
                           (_%lp258861%_
                            _%rest258936%_
                            (cons _%opt258937%_
                                  (cons '"-cc-options" _%opts258864%_)))))
                        (_%K258875258919%_
                         (lambda (_%rest258917%_)
                           (_%lp258861%_ _%rest258917%_ _%opts258864%_)))
                        (_%K258872258905%_
                         (lambda (_%rest258903%_)
                           (_%lp258861%_ _%rest258903%_ _%opts258864%_))))
                    (if (pair? _%rest258865258891%_)
                        (let ((_%tl258887258967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258865258891%_)))
                              (_%hd258886258965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258865258891%_))))
                          (if (equal? _%hd258886258965%_ '"-cc-options")
                              (if (pair? _%tl258887258967%_)
                                  (let ((_%tl258889258972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258887258967%_)))
                                        (_%hd258888258970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258887258967%_))))
                                    (if (equal? _%hd258888258970%_ '"-Bstatic")
                                        (let ((_%opt258975%_
                                               _%hd258888258970%_)
                                              (_%rest258977%_
                                               _%tl258889258972%_))
                                          (_%K258885258962%_
                                           _%rest258977%_
                                           _%opt258975%_))
                                        (let ((_%opt258952%_
                                               _%hd258888258970%_)
                                              (_%rest258954%_
                                               _%tl258889258972%_))
                                          (_%K258880258939%_
                                           _%rest258954%_
                                           _%opt258952%_))))
                                  (let ((_%rest258911%_ _%tl258887258967%_))
                                    (_%K258872258905%_ _%rest258911%_)))
                              (if (equal? _%hd258886258965%_ '"-ld-options")
                                  (if (pair? _%tl258887258967%_)
                                      (let* ((_%tl258879258927%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258887258967%_)))
                                             (_%rest258930%_
                                              _%tl258879258927%_))
                                        (_%K258875258919%_ _%rest258930%_))
                                      (let ((_%rest258911%_
                                             _%tl258887258967%_))
                                        (_%K258872258905%_ _%rest258911%_)))
                                  (let ((_%rest258911%_ _%tl258887258967%_))
                                    (_%K258872258905%_ _%rest258911%_)))))
                        (_%else258870258899%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords258982%_ _%static?258851258983%_)
        (let ((_%phi?258985%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords258982%_
           _%static?258851258983%_
           _%phi?258985%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g260455_
        (let ((_g260456_ (let () (declare (not safe)) (##length _g260455_))))
          (cond ((let () (declare (not safe)) (##fx= _g260456_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g260455_))
                ((let () (declare (not safe)) (##fx= _g260456_ 3))
                 (apply gxc#gsc-cc-options__%__% _g260455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g260455_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords258994%_ . _%args258995%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords258994%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258994%_
                  'static:
                  absent-value))
               _%args258995%_)))
    (define gxc#gsc-cc-options
      (lambda _%args258852259001%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args258852259001%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords258701%_ _%static?258697258702%_ _%phi?258703%_)
        (let ((_%static?258705%_
               (if (eq? _%static?258697258702%_ absent-value)
                   '#f
                   _%static?258697258702%_)))
          (if _%phi?258703%_
              '()
              (let _%lp258707%_ ((_%rest258709%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258710%_ '()))
                (let* ((_%rest258711258737%_ _%rest258709%_)
                       (_%else258716258745%_
                        (lambda () (reverse! _%opts258710%_))))
                  (let ((_%K258731258808%_
                         (lambda (_%rest258805%_ _%opt258806%_)
                           (if _%static?258705%_
                               (_%lp258707%_
                                _%rest258805%_
                                (cons _%opt258806%_
                                      (cons '"-ld-options" _%opts258710%_)))
                               (_%lp258707%_ _%rest258805%_ _%opts258710%_))))
                        (_%K258726258785%_
                         (lambda (_%rest258782%_ _%opt258783%_)
                           (_%lp258707%_
                            _%rest258782%_
                            (cons _%opt258783%_
                                  (cons '"-ld-options" _%opts258710%_)))))
                        (_%K258721258765%_
                         (lambda (_%rest258763%_)
                           (_%lp258707%_ _%rest258763%_ _%opts258710%_)))
                        (_%K258718258751%_
                         (lambda (_%rest258749%_)
                           (_%lp258707%_ _%rest258749%_ _%opts258710%_))))
                    (if (pair? _%rest258711258737%_)
                        (let ((_%tl258733258813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258711258737%_)))
                              (_%hd258732258811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258711258737%_))))
                          (if (equal? _%hd258732258811%_ '"-ld-options")
                              (if (pair? _%tl258733258813%_)
                                  (let ((_%tl258735258818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258733258813%_)))
                                        (_%hd258734258816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258733258813%_))))
                                    (if (equal? _%hd258734258816%_ '"-static")
                                        (let ((_%opt258821%_
                                               _%hd258734258816%_)
                                              (_%rest258823%_
                                               _%tl258735258818%_))
                                          (_%K258731258808%_
                                           _%rest258823%_
                                           _%opt258821%_))
                                        (let ((_%opt258798%_
                                               _%hd258734258816%_)
                                              (_%rest258800%_
                                               _%tl258735258818%_))
                                          (_%K258726258785%_
                                           _%rest258800%_
                                           _%opt258798%_))))
                                  (let ((_%rest258757%_ _%tl258733258813%_))
                                    (_%K258718258751%_ _%rest258757%_)))
                              (if (equal? _%hd258732258811%_ '"-cc-options")
                                  (if (pair? _%tl258733258813%_)
                                      (let* ((_%tl258725258773%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258733258813%_)))
                                             (_%rest258776%_
                                              _%tl258725258773%_))
                                        (_%K258721258765%_ _%rest258776%_))
                                      (let ((_%rest258757%_
                                             _%tl258733258813%_))
                                        (_%K258718258751%_ _%rest258757%_)))
                                  (let ((_%rest258757%_ _%tl258733258813%_))
                                    (_%K258718258751%_ _%rest258757%_)))))
                        (_%else258716258745%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords258828%_ _%static?258697258829%_)
        (let ((_%phi?258831%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords258828%_
           _%static?258697258829%_
           _%phi?258831%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g260457_
        (let ((_g260458_ (let () (declare (not safe)) (##length _g260457_))))
          (cond ((let () (declare (not safe)) (##fx= _g260458_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g260457_))
                ((let () (declare (not safe)) (##fx= _g260458_ 3))
                 (apply gxc#gsc-ld-options__%__% _g260457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g260457_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords258840%_ . _%args258841%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords258840%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258840%_
                  'static:
                  absent-value))
               _%args258841%_)))
    (define gxc#gsc-ld-options
      (lambda _%args258698258847%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args258698258847%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir258692%_)
        (let ((_%user-staticdir258694%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir258692%_
                       '" -I "
                       _%user-staticdir258694%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp258604%_ ((_%rest258606%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258607%_ '()))
          (let* ((_%rest258608258628%_ _%rest258606%_)
                 (_%else258612258636%_ (lambda () _%opts258607%_)))
            (let ((_%K258622258679%_
                   (lambda (_%rest258677%_)
                     (_%lp258604%_ _%rest258677%_ _%opts258607%_)))
                  (_%K258617258657%_
                   (lambda (_%rest258654%_ _%opt258655%_)
                     (_%lp258604%_
                      _%rest258654%_
                      (let ((__tmp260459
                             (let ((__tmp260460
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt258655%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp260460))))
                        (declare (not safe))
                        (##append _%opts258607%_ __tmp260459)))))
                  (_%K258614258642%_
                   (lambda (_%rest258640%_)
                     (_%lp258604%_ _%rest258640%_ _%opts258607%_))))
              (if (pair? _%rest258608258628%_)
                  (let ((_%tl258624258684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258608258628%_)))
                        (_%hd258623258682%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258608258628%_))))
                    (if (equal? _%hd258623258682%_ '"-cc-options")
                        (if (pair? _%tl258624258684%_)
                            (let* ((_%tl258626258687%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258624258684%_)))
                                   (_%rest258690%_ _%tl258626258687%_))
                              (_%K258622258679%_ _%rest258690%_))
                            (let ((_%rest258648%_ _%tl258624258684%_))
                              (_%K258614258642%_ _%rest258648%_)))
                        (if (equal? _%hd258623258682%_ '"-ld-options")
                            (if (pair? _%tl258624258684%_)
                                (let ((_%tl258621258667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl258624258684%_)))
                                      (_%hd258620258665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl258624258684%_))))
                                  (let ((_%opt258670%_ _%hd258620258665%_)
                                        (_%rest258672%_ _%tl258621258667%_))
                                    (_%K258617258657%_
                                     _%rest258672%_
                                     _%opt258670%_)))
                                (let ((_%rest258648%_ _%tl258624258684%_))
                                  (_%K258614258642%_ _%rest258648%_)))
                            (let ((_%rest258648%_ _%tl258624258684%_))
                              (_%K258614258642%_ _%rest258648%_)))))
                  (_%else258612258636%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str258601%_)
        (not (let () (declare (not safe)) (string-empty? _%str258601%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path258594%_ _%phi?258595%_)
        (let ((_%gsc-link-opts258597%_
               (gxc#gsc-link-options__% _%phi?258595%_))
              (_%gsc-cc-opts258598%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?258595%_))
              (_%gsc-ld-opts258599%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?258595%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp260461
                  (let ((__tmp260462
                         (let ((__tmp260463 (cons _%path258594%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260463
                            _%gsc-link-opts258597%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260462 _%gsc-ld-opts258599%_))))
             (declare (not safe))
             (foldr__0 cons __tmp260461 _%gsc-cc-opts258598%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx258560%_ _%n258561%_ _%ext258562%_)
        (letrec ((_%module-relative-path258564%_
                  (lambda (_%ctx258592%_)
                    (path-strip-directory
                     (let ((__tmp260464
                            (##structure-ref
                             _%ctx258592%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp260464)))))
                 (_%module-source-directory258565%_
                  (lambda (_%ctx258588%_)
                    (path-directory
                     (let ((_%mpath258590%_
                            (##structure-ref
                             _%ctx258588%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath258590%_)
                           _%mpath258590%_
                           (last _%mpath258590%_))))))
                 (_%section-string258566%_
                  (lambda (_%n258582%_)
                    (if (number? _%n258582%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n258582%_))
                        (if (symbol? _%n258582%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n258582%_))
                            (if (string? _%n258582%_)
                                _%n258582%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n258582%_)))))))
                 (_%file-name258567%_
                  (lambda (_%path258580%_)
                    (if _%n258561%_
                        (string-append
                         _%path258580%_
                         '"~"
                         (_%section-string258566%_ _%n258561%_)
                         _%ext258562%_)
                        (string-append _%path258580%_ _%ext258562%_))))
                 (_%file-path258568%_
                  (lambda ()
                    (let ((_%$e258574%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e258574%_
                          ((lambda (_%outdir258577%_)
                             (path-expand
                              (_%file-name258567%_
                               (let ((__tmp260465
                                      (##structure-ref
                                       _%ctx258560%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp260465)))
                              _%outdir258577%_))
                           _%$e258574%_)
                          (path-expand
                           (_%file-name258567%_
                            (_%module-relative-path258564%_ _%ctx258560%_))
                           (_%module-source-directory258565%_
                            _%ctx258560%_)))))))
          (let ((_%path258570%_ (_%file-path258568%_)))
            (let ((__tmp260466
                   (lambda ()
                     (let ((__tmp260467 (path-directory _%path258570%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260467)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260466))
            _%path258570%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx258541%_)
        (letrec ((_%file-name258543%_
                  (lambda (_%id258558%_)
                    (let ((__tmp260468 (gxc#static-module-name _%id258558%_)))
                      (declare (not safe))
                      (##string-append __tmp260468 '".scm"))))
                 (_%file-path258544%_
                  (lambda ()
                    (let* ((_%file258550%_
                            (_%file-name258543%_
                             (##structure-ref
                              _%ctx258541%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e258552%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e258552%_
                          ((lambda (_%outdir258555%_)
                             (path-expand
                              _%file258550%_
                              (path-expand '"static" _%outdir258555%_)))
                           _%$e258552%_)
                          (path-expand _%file258550%_ '"static"))))))
          (let ((_%path258546%_ (_%file-path258544%_)))
            (let ((__tmp260469
                   (lambda ()
                     (let ((__tmp260470 (path-directory _%path258546%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260470)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260469))
            _%path258546%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx258534%_ _%opts258535%_)
        (let ((_%$e258537%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts258535%_))))
          (if _%$e258537%_
              _%$e258537%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx258534%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr258524%_)
        (if (string? _%idstr258524%_)
            (let* ((_%str258527%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr258524%_)))
                   (_%strs258529%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str258527%_ '#\/))))
              (declare (not safe))
              (string-join _%strs258529%_ '"__"))
            (if (symbol? _%idstr258524%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr258524%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr258524%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp260471
               (let ((__tmp260472 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp260472 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp260471))))
    (define gxc#invoke__%
      (lambda (_%@@keywords258490%_
               _%stdout-redirection258486258491%_
               _%stderr-redirection258487258492%_
               _%program258493%_
               _%args258494%_)
        (let* ((_%stdout-redirection258496%_
                (if (eq? _%stdout-redirection258486258491%_ absent-value)
                    '#f
                    _%stdout-redirection258486258491%_))
               (_%stderr-redirection258498%_
                (if (eq? _%stderr-redirection258487258492%_ absent-value)
                    '#f
                    _%stderr-redirection258487258492%_)))
          (let ((__tmp260473 (cons _%program258493%_ _%args258494%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp260473))
          (let* ((_%proc258500%_
                  (open-process
                   (cons 'path:
                         (cons _%program258493%_
                               (cons 'arguments:
                                     (cons _%args258494%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection258496%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection258498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output258505%_
                  (if (or _%stdout-redirection258496%_
                          _%stderr-redirection258498%_)
                      (read-line _%proc258500%_ '#f)
                      '#f))
                 (_%status258508%_ (process-status _%proc258500%_)))
            (let () (declare (not safe)) (##close-port _%proc258500%_))
            (if (zero? _%status258508%_)
                '#!void
                (begin
                  (display _%output258505%_)
                  (let ((__tmp260474 (cons _%program258493%_ _%args258494%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp260474
                     _%status258508%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords258513%_ . _%args258514%_)
        (apply gxc#invoke__%
               _%@@keywords258513%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258513%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258513%_
                  'stderr-redirection:
                  absent-value))
               _%args258514%_)))
    (define gxc#invoke
      (lambda _%args258488258520%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args258488258520%_)))))
