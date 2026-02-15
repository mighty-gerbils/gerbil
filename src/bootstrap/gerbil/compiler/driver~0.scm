(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771178572)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp260259 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp260259))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp260260 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp260260))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path260116%_ _%fun260117%_)
        (with-output-to-file
         (cons 'path: (cons _%path260116%_ gxc#scheme-file-settings))
         _%fun260117%_)))
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
      (lambda (_%gerbil-libdir260111%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir260111%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path260109%_)
        (let ((__tmp260261 (object->string _%path260109%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp260261 '")"))))
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
      (lambda (_%dir260107%_) (delete-file-or-directory _%dir260107%_ '#t)))
    (define gxc#compile-module__%
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
               (_%optimize260071%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts260051%_)))
               (_%debug260073%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260051%_)))
               (_%gen-ssxi260075%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts260051%_)))
               (_%parallel?260077%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260051%_))))
          (if _%outdir260053%_
              (let ((__tmp260262
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260053%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260262))
              '#!void)
          (if _%optimize260071%_
              (let ((__tmp260263
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260263))
              '#!void)
          (let ((__tmp260264
                 (lambda ()
                   (let ((__tmp260265
                          (lambda ()
                            (let ((__tmp260266
                                   (lambda ()
                                     (let ((__tmp260267
                                            (lambda ()
                                              (let ((__tmp260268
                                                     (lambda ()
                                                       (let ((__tmp260269
                                                              (lambda ()
                                                                (let ((__tmp260270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260271
                                        (lambda ()
                                          (let ((__tmp260272
                                                 (lambda ()
                                                   (let ((__tmp260274
                                                          (lambda ()
                                                            (let ((__tmp260276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260278
                                    (lambda ()
                                      (let ((__tmp260279
                                             (lambda ()
                                               (let ((__tmp260280
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath260050%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp260281
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath260050%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp260281))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260280
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp260279
                                         gxc#current-compile-parallel
                                         _%parallel?260077%_))))
                                   (__tmp260277
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260278
                                gxc#current-compile-identifiers
                                __tmp260277))))
                          (__tmp260275
                           (cons (cons 'compile-module
                                       (cons _%srcpath260050%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260276
                       gxc#current-compile-context
                       __tmp260275))))
                 (__tmp260273 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260274
                                                      gxc#current-compile-timestamp
                                                      __tmp260273)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260272
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi260075%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260271
                                    gxc#current-compile-debug
                                    _%debug260073%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260270
                           gxc#current-compile-optimize
                           _%optimize260071%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260269
                  gxc#current-compile-verbose
                  _%verbosity260069%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260268
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260067%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260267
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260065%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260266
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?260055%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260265
                      gx#current-compilation-target
                      _%target260060%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260264
             gxc#current-compile-output-dir
             _%outdir260053%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath260100%_)
        (let ((_%opts260102%_ '()))
          (gxc#compile-module__% _%srcpath260100%_ _%opts260102%_))))
    (define gxc#compile-module
      (lambda _g260282_
        (let ((_g260283_ (let () (declare (not safe)) (##length _g260282_))))
          (cond ((let () (declare (not safe)) (##fx= _g260283_ 1))
                 (apply gxc#compile-module__0 _g260282_))
                ((let () (declare (not safe)) (##fx= _g260283_ 2))
                 (apply gxc#compile-module__% _g260282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g260282_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath259999%_ _%opts260000%_)
        (if (string? _%srcpath259999%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259999%_)))
        (let* ((_%outdir260002%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260000%_)))
               (_%invoke-gsc?260004%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260000%_)))
               (_%target260009%_
                (let ((_%$e260006%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260000%_))))
                  (if _%$e260006%_ _%$e260006%_ 'C)))
               (_%gsc-options260014%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260009%_) '()))
                        (let ((_%$e260011%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260000%_))))
                          (if _%$e260011%_ _%$e260011%_ '()))))
               (_%keep-scm?260016%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260000%_)))
               (_%verbosity260018%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260000%_)))
               (_%debug260020%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260000%_)))
               (_%parallel?260022%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260000%_))))
          (if _%outdir260002%_
              (let ((__tmp260284
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260002%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260284))
              '#!void)
          (let ((__tmp260285
                 (lambda ()
                   (let ((__tmp260286
                          (lambda ()
                            (let ((__tmp260287
                                   (lambda ()
                                     (let ((__tmp260288
                                            (lambda ()
                                              (let ((__tmp260289
                                                     (lambda ()
                                                       (let ((__tmp260290
                                                              (lambda ()
                                                                (let ((__tmp260291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260293
                                        (lambda ()
                                          (let ((__tmp260295
                                                 (lambda ()
                                                   (let ((__tmp260297
                                                          (lambda ()
                                                            (let ((__tmp260298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260299
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath259999%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp260300
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath259999%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp260300))
                                       _%opts260000%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260299
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260298
                       gxc#current-compile-parallel
                       _%parallel?260022%_))))
                 (__tmp260296
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260297
                                                      gxc#current-compile-identifiers
                                                      __tmp260296))))
                                                (__tmp260294
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath259999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260295
                                             gxc#current-compile-context
                                             __tmp260294))))
                                       (__tmp260292 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260293
                                    gxc#current-compile-timestamp
                                    __tmp260292)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260291
                           gxc#current-compile-debug
                           _%debug260020%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260290
                  gxc#current-compile-verbose
                  _%verbosity260018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260289
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260016%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260288
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260014%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260287
                               gx#current-compilation-target
                               _%target260009%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260286
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260004%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260285
             gxc#current-compile-output-dir
             _%outdir260002%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath260042%_)
        (let ((_%opts260044%_ '()))
          (gxc#compile-exe__% _%srcpath260042%_ _%opts260044%_))))
    (define gxc#compile-exe
      (lambda _g260301_
        (let ((_g260302_ (let () (declare (not safe)) (##length _g260301_))))
          (cond ((let () (declare (not safe)) (##fx= _g260302_ 1))
                 (apply gxc#compile-exe__0 _g260301_))
                ((let () (declare (not safe)) (##fx= _g260302_ 2))
                 (apply gxc#compile-exe__% _g260301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g260301_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx259995%_ _%opts259996%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts259996%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx259995%_
             _%opts259996%_)
            (gxc#compile-executable-module/separate
             _%ctx259995%_
             _%opts259996%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx259721%_ _%opts259722%_)
        (letrec ((_%generate-stub259724%_
                  (lambda (_%builtin-modules259991%_)
                    (let ((_%mod-main259993%_
                           (gxc#find-runtime-symbol _%ctx259721%_ 'main)))
                      (let ((__tmp260303
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules259991%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp260303))
                      (let ((__tmp260304
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main259993%_
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
                        (##write __tmp260304))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts259725%_
                  (lambda (_%gerbil-libdir259989%_)
                    (let ((__tmp260305
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir259989%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp260305 read))))
                 (_%replace-extension259726%_
                  (lambda (_%path259986%_ _%ext259987%_)
                    (string-append
                     (path-strip-extension _%path259986%_)
                     _%ext259987%_)))
                 (_%replace-extension-with-c259727%_
                  (lambda (_%path259984%_)
                    (_%replace-extension259726%_ _%path259984%_ '".c")))
                 (_%replace-extension-with-object259728%_
                  (lambda (_%path259982%_)
                    (_%replace-extension259726%_
                     _%path259982%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?259729%_
                  (lambda (_%ctx259980%_)
                    (if (_%exclude-module?259731%_ _%ctx259980%_)
                        '#f
                        (not (_%libgerbil-module?259730%_ _%ctx259980%_)))))
                 (_%libgerbil-module?259730%_
                  (lambda (_%ctx259973%_)
                    (let ((_%id-str259975%_
                           (symbol->string
                            (##structure-ref
                             _%ctx259973%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?259731%_ _%id-str259975%_)
                          '#f
                          (let ((_%$e259977%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str259975%_))))
                            (if _%$e259977%_
                                _%$e259977%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str259975%_))))))))
                 (_%exclude-module?259731%_
                  (lambda (_%ctx-or-str259969%_)
                    (let ((_%str259971%_
                           (if (string? _%ctx-or-str259969%_)
                               _%ctx-or-str259969%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str259969%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str259971%_))))
                 (_%not-file-empty?259732%_
                  (lambda (_%path259967%_)
                    (not (gxc#file-empty? _%path259967%_))))
                 (_%fold-libgerbil-runtime-scm259733%_
                  (lambda (_%gerbil-staticdir259960%_ _%libgerbil-scm259961%_)
                    (let ((_%gerbil-runtime-scm259965%_
                           (let ((__tmp260306
                                  (lambda (_%rtm259963%_)
                                    (path-expand
                                     (let ((__tmp260307
                                            (let ((__tmp260308
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm259963%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp260308
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp260307 '".scm"))
                                     _%gerbil-staticdir259960%_))))
                             (declare (not safe))
                             (##map __tmp260306 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates259734%_
                       (append _%gerbil-runtime-scm259965%_
                               _%libgerbil-scm259961%_)))))
                 (_%remove-duplicates259734%_
                  (lambda (_%strlst259920%_)
                    (let _%loop259922%_ ((_%rest259924%_ _%strlst259920%_)
                                         (_%result259925%_ '()))
                      (let* ((_%rest259926259934%_ _%rest259924%_)
                             (_%else259928259942%_
                              (lambda () (reverse! _%result259925%_)))
                             (_%K259930259948%_
                              (lambda (_%rest259945%_ _%path259946%_)
                                (if (member _%path259946%_ _%result259925%_)
                                    (_%loop259922%_
                                     _%rest259945%_
                                     _%result259925%_)
                                    (_%loop259922%_
                                     _%rest259945%_
                                     (cons _%path259946%_
                                           _%result259925%_))))))
                        (if (pair? _%rest259926259934%_)
                            (let ((_%hd259931259951%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest259926259934%_)))
                                  (_%tl259932259953%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest259926259934%_))))
                              (let* ((_%path259956%_ _%hd259931259951%_)
                                     (_%rest259958%_ _%tl259932259953%_))
                                (_%K259930259948%_
                                 _%rest259958%_
                                 _%path259956%_)))
                            (_%else259928259942%_))))))
                 (_%compile-stub259735%_
                  (lambda (_%output-scm259742%_ _%output-bin259743%_)
                    (let* ((_%gerbil-home259745%_
                            (let ((__tmp260309
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260309)))
                           (_%gerbil-libdir259747%_
                            (path-expand '"lib" _%gerbil-home259745%_))
                           (_%gerbil-staticdir259749%_
                            (path-expand '"static" _%gerbil-libdir259747%_))
                           (_%deps259751%_
                            (gxc#find-runtime-module-deps _%ctx259721%_))
                           (_%libgerbil-deps259753%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?259730%_
                               _%deps259751%_)))
                           (_%libgerbil-scm259755%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps259753%_)))
                           (_%libgerbil-scm259757%_
                            (_%fold-libgerbil-runtime-scm259733%_
                             _%gerbil-staticdir259749%_
                             _%libgerbil-scm259755%_))
                           (_%libgerbil-c259759%_
                            (map _%replace-extension-with-c259727%_
                                 _%libgerbil-scm259757%_))
                           (_%libgerbil-o259761%_
                            (map _%replace-extension-with-object259728%_
                                 _%libgerbil-scm259757%_))
                           (_%src-deps259763%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?259729%_
                               _%deps259751%_)))
                           (_%src-deps-scm259765%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps259763%_)))
                           (_%src-deps-scm259767%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?259732%_
                               _%src-deps-scm259765%_)))
                           (_%src-deps-scm259769%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm259767%_)))
                           (_%src-deps-c259771%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c259727%_
                                     _%src-deps-scm259769%_)))
                           (_%src-deps-o259773%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object259728%_
                                     _%src-deps-scm259769%_)))
                           (_%src-bin-scm259775%_
                            (gxc#find-static-module-file _%ctx259721%_))
                           (_%src-bin-scm259777%_
                            (path-expand _%src-bin-scm259775%_))
                           (_%src-bin-c259779%_
                            (_%replace-extension-with-c259727%_
                             _%src-bin-scm259777%_))
                           (_%src-bin-o259781%_
                            (_%replace-extension-with-object259728%_
                             _%src-bin-scm259777%_))
                           (_%output-bin259783%_
                            (path-expand _%output-bin259743%_))
                           (_%output-scm259785%_
                            (path-expand _%output-scm259742%_))
                           (_%output-c259787%_
                            (_%replace-extension-with-c259727%_
                             _%output-scm259785%_))
                           (_%output-o259789%_
                            (_%replace-extension-with-object259728%_
                             _%output-scm259785%_))
                           (_%output_-c259791%_
                            (_%replace-extension259726%_
                             _%output-scm259785%_
                             '"_.c"))
                           (_%output_-o259793%_
                            (_%replace-extension259726%_
                             _%output-scm259785%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts259795%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259797%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259799%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir259749%_))
                           (_%output-ld-opts259801%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts259803%_
                            (_%get-libgerbil-ld-opts259725%_
                             _%gerbil-libdir259747%_))
                           (_%rpath259805%_
                            (gxc#gerbil-rpath _%gerbil-libdir259747%_))
                           (_%builtin-modules259809%_
                            (_%remove-duplicates259734%_
                             (let ((__tmp260310
                                    (let ((__tmp260312
                                           (lambda (_%mod259807%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod259807%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp260311
                                           (cons _%ctx259721%_
                                                 _%deps259751%_)))
                                      (declare (not safe))
                                      (##map __tmp260312 __tmp260311))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp260310)))))
                      (letrec ((_%compile-obj259812%_
                                (lambda (_%scm-path259819%_ _%c-path259820%_)
                                  (let* ((_%o-path259822%_
                                          (_%replace-extension259726%_
                                           _%c-path259820%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock259824%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path259822%_
                                             '".lock")))
                                         (_%locked259826%_ '#f)
                                         (_%unlock259829%_
                                          (lambda ()
                                            (close-port _%locked259826%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock259824%_)))))
                                    (let _%retry259832%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock259824%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry259832%_))
                                          (begin
                                            (set! _%locked259826%_
                                                  (let* ((_%handler259835%_
                                                          false)
                                                         (_%thunk259839%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock259824%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler259844%_ _%handler259835%_)
                 (_%thunk259900%_ _%thunk259839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler259844%_
                                                     _%thunk259900%_)))
                                            (if _%locked259826%_
                                                '#!void
                                                (_%retry259832%_)))))
                                    (let ((__tmp260314
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path259822%_)))
                                                     (not _%scm-path259819%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path259819%_
                                                        _%o-path259822%_)))
                                                 (let ((_%gsc-cc-opts259917%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp260315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp260316 (cons _%c-path259820%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260316
                            _%gsc-static-opts259799%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260315 _%gsc-cc-opts259917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp260313
                                           (lambda () (_%unlock259829%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp260314
                                       __tmp260313))))))
                        (let ((__tmp260317
                               (lambda ()
                                 (let ((__tmp260318
                                        (path-directory _%output-bin259783%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp260318)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp260317))
                        (gxc#with-output-to-scheme-file
                         _%output-scm259785%_
                         (lambda ()
                           (_%generate-stub259724%_
                            _%builtin-modules259809%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it259817%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp260319
                                                   (let ((__tmp260320
                                                          (let ((__tmp260321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm259777%_
                               (cons _%output-scm259785%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260321 _%src-deps-scm259769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp260320
                                                      _%libgerbil-c259759%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp260319
                                               _%gsc-link-opts259795%_))))
                                     (for-each
                                      _%compile-obj259812%_
                                      (let ((__tmp260322
                                             (cons _%src-bin-scm259777%_
                                                   (cons _%output-scm259785%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260322
                                         _%src-deps-scm259769%_))
                                      (let ((__tmp260323
                                             (cons _%src-bin-c259779%_
                                                   (cons _%output-c259787%_
                                                         (cons _%output_-c259791%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260323
                                         _%src-deps-c259771%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin259783%_
                                                        (let ((__tmp260324
                                                               (cons _%src-bin-o259781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o259789%_
                                   (cons _%output_-o259793%_
                                         (let ((__tmp260325
                                                (let ((__tmp260326
                                                       (let ((__tmp260328
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir259747%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts259803%_))))
                     (__tmp260327
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath259805%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp260328 __tmp260327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp260326
                                                   _%output-ld-opts259801%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp260325
                                            _%libgerbil-o259761%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp260324 _%src-deps-o259773%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp260329
                                            (cons _%output-c259787%_
                                                  (cons _%output_-c259791%_
                                                        (cons _%output-o259789%_
                                                              (cons _%output_-o259793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp260329)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it259817%_))
                                  (_%compile-it259817%_)))
                            '#!void))))))
          (let* ((_%output-bin259737%_
                  (gxc#compile-exe-output-file _%ctx259721%_ _%opts259722%_))
                 (_%output-scm259739%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259737%_ '"__exe.scm"))))
            (_%compile-stub259735%_
             _%output-scm259739%_
             _%output-bin259737%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx259543%_ _%opts259544%_)
        (letrec ((_%reset-declare259546%_
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
                 (_%generate-stub259547%_
                  (lambda (_%deps259712%_)
                    (let ((_%mod-main259714%_
                           (gxc#find-runtime-symbol _%ctx259543%_ 'main))
                          (_%reset-decl259715%_ (_%reset-declare259546%_))
                          (_%user-decl259716%_ (_%user-declare259548%_)))
                      (for-each
                       (lambda (_%dep259718%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl259715%_))
                         (newline)
                         (if _%user-decl259716%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl259716%_))
                               (newline))
                             '#!void)
                         (let ((__tmp260330
                                (cons 'include (cons _%dep259718%_ '()))))
                           (declare (not safe))
                           (##write __tmp260330))
                         (newline))
                       _%deps259712%_)
                      (let ((__tmp260331
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main259714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp260331))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare259548%_
                  (lambda ()
                    (let* ((_%gsc-opts259617%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts259544%_)))
                           (_%gsc-prelude259619%_
                            (if _%gsc-opts259617%_
                                (member '"-prelude" _%gsc-opts259617%_)
                                '#f))
                           (_%gsc-prelude259621%_
                            (if _%gsc-prelude259619%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude259619%_)))
                                '#f)))
                      (let _%lp259624%_ ((_%rest259626%_
                                          (cons _%gsc-prelude259621%_ '()))
                                         (_%user-decls259627%_ '()))
                        (let* ((_%rest259628259636%_ _%rest259626%_)
                               (_%else259630259644%_
                                (lambda ()
                                  (if (null? _%user-decls259627%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls259627%_)))))
                               (_%K259632259700%_
                                (lambda (_%rest259647%_ _%expr259648%_)
                                  (let* ((_%expr259649259661%_ _%expr259648%_)
                                         (_%else259652259669%_
                                          (lambda ()
                                            (_%lp259624%_
                                             _%rest259647%_
                                             _%user-decls259627%_))))
                                    (let ((_%K259657259690%_
                                           (lambda (_%decls259688%_)
                                             (_%lp259624%_
                                              _%rest259647%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls259627%_
                                                 _%decls259688%_)))))
                                          (_%K259654259675%_
                                           (lambda (_%exprs259673%_)
                                             (_%lp259624%_
                                              (append _%exprs259673%_
                                                      _%rest259647%_)
                                              _%user-decls259627%_))))
                                      (if (pair? _%expr259649259661%_)
                                          (let ((_%tl259659259695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr259649259661%_)))
                                                (_%hd259658259693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr259649259661%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd259658259693%_
                                                         'declare))
                                                (let ((_%decls259698%_
                                                       _%tl259659259695%_))
                                                  (_%K259657259690%_
                                                   _%decls259698%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd259658259693%_
                                                             'begin))
                                                    (let ((_%exprs259683%_
                                                           _%tl259659259695%_))
                                                      (_%K259654259675%_
                                                       _%exprs259683%_))
                                                    (_%else259652259669%_))))
                                          (_%else259652259669%_)))))))
                          (if (pair? _%rest259628259636%_)
                              (let ((_%hd259633259703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest259628259636%_)))
                                    (_%tl259634259705%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest259628259636%_))))
                                (let* ((_%expr259708%_ _%hd259633259703%_)
                                       (_%rest259710%_ _%tl259634259705%_))
                                  (_%K259632259700%_
                                   _%rest259710%_
                                   _%expr259708%_)))
                              (_%else259630259644%_)))))))
                 (_%compile-stub259549%_
                  (lambda (_%output-scm259556%_ _%output-bin259557%_)
                    (let* ((_%gerbil-home259559%_
                            (let ((__tmp260332
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260332)))
                           (_%gerbil-libdir259561%_
                            (path-expand '"lib" _%gerbil-home259559%_))
                           (_%runtime259563%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp259565%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home259559%_))
                           (_%include-gambit-sharp259567%_
                            (gxc#include-source _%gambit-sharp259565%_))
                           (_%bin-scm259569%_
                            (gxc#find-static-module-file _%ctx259543%_))
                           (_%deps259571%_
                            (gxc#find-runtime-module-deps _%ctx259543%_))
                           (_%deps259573%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps259571%_)))
                           (_%deps259578%_
                            (let ((__tmp260333
                                   (lambda (_%$obj259575%_)
                                     (not (gxc#file-empty? _%$obj259575%_)))))
                              (declare (not safe))
                              (##filter __tmp260333 _%deps259573%_)))
                           (_%deps259582%_
                            (let ((__tmp260334
                                   (lambda (_%f259580%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f259580%_
                                             _%runtime259563%_))))))
                              (declare (not safe))
                              (##filter __tmp260334 _%deps259578%_)))
                           (_%output-base259584%_
                            (let ((__tmp260335
                                   (path-strip-extension
                                    _%output-scm259556%_)))
                              (declare (not safe))
                              (##string-append __tmp260335)))
                           (_%output-c259586%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259584%_ '".c")))
                           (_%output-o259588%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base259584%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_259590%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259584%_ '"_.c")))
                           (_%output-o_259592%_
                            (let ((__tmp260336
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base259584%_
                               __tmp260336)))
                           (_%gsc-link-opts259594%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259596%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259598%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir259561%_)))
                           (_%output-ld-opts259600%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros259602%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp259567%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp259567%_
                                            '()))))
                           (_%gsc-link-opts259604%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts259594%_
                               _%gsc-gx-macros259602%_)))
                           (_%rpath259606%_
                            (gxc#gerbil-rpath _%gerbil-libdir259561%_))
                           (_%default-ld-options259608%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp260337
                             (lambda ()
                               (let ((__tmp260338
                                      (path-directory _%output-bin259557%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp260338)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp260337))
                      (gxc#with-output-to-scheme-file
                       _%output-scm259556%_
                       (lambda ()
                         (_%generate-stub259547%_
                          (let ((__tmp260339
                                 (let ((__tmp260340
                                        (cons _%bin-scm259569%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp260340
                                    _%deps259582%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp260339 _%runtime259563%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it259614%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_259590%_
                                                      (let ((__tmp260341
                                                             (cons _%output-scm259556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260341 _%gsc-link-opts259604%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp260342
                                                 (let ((__tmp260343
                                                        (cons _%output-c259586%_
                                                              (cons _%output-c_259590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp260343
                                                    _%gsc-static-opts259598%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260342
                                             _%gsc-cc-opts259596%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin259557%_
                                                      (cons _%output-o259588%_
                                                            (cons _%output-o_259592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260344
                                 (let ((__tmp260346
                                        (cons '"-L"
                                              (cons _%gerbil-libdir259561%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options259608%_))))
                                       (__tmp260345
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath259606%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp260346 __tmp260345))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp260344
                             _%output-ld-opts259600%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it259614%_))
                                (_%compile-it259614%_)))
                          '#!void)))))
          (let* ((_%output-bin259551%_
                  (gxc#compile-exe-output-file _%ctx259543%_ _%opts259544%_))
                 (_%output-scm259553%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259551%_ '"__exe.scm"))))
            (_%compile-stub259549%_
             _%output-scm259553%_
             _%output-bin259551%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx259492%_ _%id259493%_)
        (let ((_%$e259539%_
               (let ((__tmp260348
                      (lambda (_%e259494259496%_)
                        (let* ((_%e259494259498259508%_ _%e259494259496%_)
                               (_%else259500259516%_ (lambda () '#f))
                               (_%K259502259520%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e259494259498259508%_
                                 'gx#module-export::t))
                              (let* ((_%e259503259523%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259494259498259508%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e259504259526%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259494259498259508%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e259505259529%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259494259498259508%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e259505259529%_ '0))
                                    (let ((_%e259506259532%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e259494259498259508%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g259534259536%_)
                                             (eq? _%g259534259536%_
                                                  _%id259493%_))
                                           _%e259506259532%_)
                                          (_%K259502259520%_)
                                          (_%else259500259516%_)))
                                    (_%else259500259516%_)))
                              (_%else259500259516%_)))))
                     (__tmp260347
                      (##structure-ref
                       _%ctx259492%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp260348 __tmp260347))))
          (if _%$e259539%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e259539%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx259483%_ _%id259484%_)
        (let ((_%$e259486%_
               (gxc#find-export-binding _%ctx259483%_ _%id259484%_)))
          (if _%$e259486%_
              ((lambda (_%bind259489%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind259489%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id259484%_)))
                 (##structure-ref _%bind259489%_ '1 gx#binding::t '#f))
               _%$e259486%_)
              (let ((__tmp260349
                     (##structure-ref
                      _%ctx259483%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp260349
                 _%id259484%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx259349%_)
        (letrec* ((_%ht259351%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template259352%_
                   (lambda (_%in259428%_ _%phi259429%_)
                     (let ((_%iphi259431%_
                            (fx+ _%phi259429%_
                                 (##direct-structure-ref
                                  _%in259428%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports259432%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in259428%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp259434%_ ((_%rest259436%_ _%imports259432%_)
                                          (_%r259437%_ '()))
                         (let* ((_%rest259438259446%_ _%rest259436%_)
                                (_%else259440259454%_ (lambda () _%r259437%_))
                                (_%K259442259471%_
                                 (lambda (_%rest259457%_ _%in259458%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in259458%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi259431%_))
                                           (_%lp259434%_
                                            _%rest259457%_
                                            (cons _%in259458%_ _%r259437%_))
                                           (_%lp259434%_
                                            _%rest259457%_
                                            _%r259437%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in259458%_
                                              'gx#module-import::t))
                                           (let ((_%iphi259462%_
                                                  (fx+ _%phi259429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in259458%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi259462%_))
                                                 (_%lp259434%_
                                                  _%rest259457%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in259458%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r259437%_))
                                                 (_%lp259434%_
                                                  _%rest259457%_
                                                  _%r259437%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in259458%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi259465%_
                                                      (fx+ _%iphi259431%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in259458%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi259465%_))
                                                     (_%lp259434%_
                                                      _%rest259457%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in259458%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r259437%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi259465%_))
                                                         (_%lp259434%_
                                                          _%rest259457%_
                                                          (let ((__tmp260350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template259352%_
                          _%in259458%_
                          _%iphi259431%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r259437%_ __tmp260350)))
                 (_%lp259434%_ _%rest259457%_ _%r259437%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp259434%_
                                                _%rest259457%_
                                                _%r259437%_)))))))
                           (if (pair? _%rest259438259446%_)
                               (let ((_%hd259443259474%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest259438259446%_)))
                                     (_%tl259444259476%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest259438259446%_))))
                                 (let* ((_%in259479%_ _%hd259443259474%_)
                                        (_%rest259481%_ _%tl259444259476%_))
                                   (_%K259442259471%_
                                    _%rest259481%_
                                    _%in259479%_)))
                               (_%else259440259454%_)))))))
                  (_%find-deps259353%_
                   (lambda (_%rest259361%_ _%deps259362%_)
                     (let* ((_%rest259363259371%_ _%rest259361%_)
                            (_%else259365259379%_ (lambda () _%deps259362%_))
                            (_%K259367259416%_
                             (lambda (_%rest259382%_ _%hd259383%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd259383%_
                                      'gx#module-context::t))
                                   (let ((_%id259386%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259383%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports259387%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259383%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht259351%_
                                            _%id259386%_))
                                         (_%find-deps259353%_
                                          _%rest259382%_
                                          _%deps259362%_)
                                         (let ((_%$e259390%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd259383%_))))
                                           (if _%$e259390%_
                                               ((lambda (_%pre259393%_)
                                                  (let ((_%xdeps259395%_
                                                         (_%find-deps259353%_
                                                          (cons _%pre259393%_
                                                                _%imports259387%_)
                                                          _%deps259362%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht259351%_
                                                       _%id259386%_
                                                       _%hd259383%_))
                                                    (_%find-deps259353%_
                                                     _%rest259382%_
                                                     (cons _%hd259383%_
                                                           _%xdeps259395%_))))
                                                _%$e259390%_)
                                               (let ((_%xdeps259398%_
                                                      (_%find-deps259353%_
                                                       _%imports259387%_
                                                       _%deps259362%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht259351%_
                                                    _%id259386%_
                                                    _%hd259383%_))
                                                 (_%find-deps259353%_
                                                  _%rest259382%_
                                                  (cons _%hd259383%_
                                                        _%xdeps259398%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd259383%_
                                          'gx#prelude-context::t))
                                       (let ((_%id259401%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd259383%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht259351%_
                                                _%id259401%_))
                                             (_%find-deps259353%_
                                              _%rest259382%_
                                              _%deps259362%_)
                                             (let ((_%xdeps259405%_
                                                    (_%find-deps259353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd259383%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps259362%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht259351%_
                                                      _%id259401%_))
                                                   (_%find-deps259353%_
                                                    _%rest259382%_
                                                    _%xdeps259405%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht259351%_
                                                        _%id259401%_
                                                        _%hd259383%_))
                                                     (_%find-deps259353%_
                                                      _%rest259382%_
                                                      (cons _%hd259383%_
                                                            _%xdeps259405%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd259383%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd259383%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps259353%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259383%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259382%_)
                                                _%deps259362%_)
                                               (_%find-deps259353%_
                                                _%rest259382%_
                                                _%deps259362%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd259383%_
                                                  'gx#module-export::t))
                                               (_%find-deps259353%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259383%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259382%_)
                                                _%deps259362%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd259383%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd259383%_ '2 '#f '#f)))
               (_%find-deps259353%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd259383%_ '1 '#f '#f))
                      _%rest259382%_)
                _%deps259362%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd259383%_ '2 '#f '#f)))
                   (let ((_%xdeps259412%_
                          (_%import-set-template259352%_ _%hd259383%_ '0)))
                     (_%find-deps259353%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest259382%_ _%xdeps259412%_))
                      _%deps259362%_))
                   (_%find-deps259353%_ _%rest259382%_ _%deps259362%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd259383%_))))))))))
                       (if (pair? _%rest259363259371%_)
                           (let ((_%hd259368259419%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest259363259371%_)))
                                 (_%tl259369259421%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest259363259371%_))))
                             (let* ((_%hd259424%_ _%hd259368259419%_)
                                    (_%rest259426%_ _%tl259369259421%_))
                               (_%K259367259416%_
                                _%rest259426%_
                                _%hd259424%_)))
                           (_%else259365259379%_))))))
          (let ((__tmp260351
                 (filter gx#expander-context-id
                         (_%find-deps259353%_
                          (let ((_%$e259355%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx259349%_))))
                            (if _%$e259355%_
                                ((lambda (_%pre259358%_)
                                   (cons _%pre259358%_
                                         (##structure-ref
                                          _%ctx259349%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e259355%_)
                                (##structure-ref
                                 _%ctx259349%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp260351)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx259279%_)
        (let* ((_%context-id259281%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx259279%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx259279%_ '1 '#f '#f))
                    (string->symbol _%ctx259279%_)))
               (_%scm259283%_
                (let ((__tmp260352
                       (gxc#static-module-name _%context-id259281%_)))
                  (declare (not safe))
                  (##string-append __tmp260352 '".scm")))
               (_%dirs259285%_ (let () (declare (not safe)) (load-path)))
               (_%dirs259291%_
                (let ((_%user-libpath259287%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath259287%_
                      (let ((_%user-libpath259289%_
                             (path-expand '"lib" _%user-libpath259287%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath259289%_ _%dirs259285%_))
                            _%dirs259285%_
                            (cons _%user-libpath259289%_ _%dirs259285%_)))
                      _%dirs259285%_)))
               (_%dirs259301%_
                (let ((_%$e259293%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e259293%_
                      ((lambda (_%g259295259297%_)
                         (cons _%g259295259297%_ _%dirs259291%_))
                       _%$e259293%_)
                      _%dirs259291%_)))
               (_%dirs259307%_
                (let ((__tmp260353
                       (lambda (_%g259302259304%_)
                         (path-expand '"static" _%g259302259304%_))))
                  (declare (not safe))
                  (##map __tmp260353 _%dirs259301%_))))
          (let _%lp259310%_ ((_%rest259312%_ _%dirs259307%_))
            (let* ((_%rest259313259321%_ _%rest259312%_)
                   (_%else259315259329%_
                    (lambda ()
                      (let ((__tmp260354
                             (##structure-ref
                              _%ctx259279%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp260354
                         _%scm259283%_))))
                   (_%K259317259337%_
                    (lambda (_%rest259332%_ _%dir259333%_)
                      (let ((_%path259335%_
                             (path-expand _%scm259283%_ _%dir259333%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path259335%_))
                            _%path259335%_
                            (_%lp259310%_ _%rest259332%_))))))
              (if (pair? _%rest259313259321%_)
                  (let ((_%hd259318259340%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259313259321%_)))
                        (_%tl259319259342%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259313259321%_))))
                    (let* ((_%dir259345%_ _%hd259318259340%_)
                           (_%rest259347%_ _%tl259319259342%_))
                      (_%K259317259337%_ _%rest259347%_ _%dir259345%_)))
                  (_%else259315259329%_)))))))
    (define gxc#file-empty?
      (lambda (_%path259277%_)
        (zero? (let ((__tmp260355 (file-info _%path259277%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp260355)))))
    (define gxc#compile-top-module
      (lambda (_%ctx259268%_)
        (let ((__tmp260356
               (lambda ()
                 (let ((__tmp260357
                        (lambda ()
                          (let ((__tmp260358
                                 (lambda ()
                                   (let ((__tmp260360
                                          (lambda ()
                                            (let ((__tmp260362
                                                   (lambda ()
                                                     (let ((__tmp260364
                                                            (lambda ()
                                                              (let ((__tmp260365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx259268%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp260365))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp260366
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx259268%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp260366))
                          '#!void)
                      (gxc#collect-bindings _%ctx259268%_)
                      (gxc#compile-runtime-code _%ctx259268%_)
                      (gxc#compile-meta-code _%ctx259268%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx259268%_)
                          '#!void)))
                   (__tmp260363
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
                __tmp260364
                gxc#current-compile-runtime-names
                __tmp260363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp260361
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp260362
                                               gxc#current-compile-runtime-sections
                                               __tmp260361))))
                                         (__tmp260359
                                          (let ((__obj260257
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj260257))
                                            __obj260257)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp260360
                                      gxc#current-compile-symbol-table
                                      __tmp260359)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260358
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260357
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260356
           gx#current-expander-context
           _%ctx259268%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx259266%_)
        (let ((__tmp260367
               (##structure-ref _%ctx259266%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp260367))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx259211%_)
        (letrec ((_%compile1259213%_
                  (lambda (_%ctx259255%_)
                    (let* ((_%code259257%_
                            (##structure-ref
                             _%ctx259255%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm259261%_
                            (let ((_%idstr259259%_
                                   (let ((__tmp260368
                                          (##structure-ref
                                           _%ctx259255%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp260368))))
                              (declare (not safe))
                              (##string-append _%idstr259259%_ '"~0")))
                           (_%rtc?259263%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code259257%_))))
                      (if _%rtc?259263%_
                          (let ((__tmp260369
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp260369
                             _%ctx259255%_
                             _%rtm259261%_))
                          '#!void)
                      (_%generate-runtime-code259215%_
                       _%ctx259255%_
                       _%code259257%_
                       (if _%rtc?259263%_ _%rtm259261%_ '#f)))))
                 (_%context-timestamp259214%_
                  (lambda (_%ctx259253%_)
                    (let ((__tmp260370
                           (let ((__tmp260371
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx259253%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp260371 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp260370))))
                 (_%generate-runtime-code259215%_
                  (lambda (_%ctx259222%_ _%code259223%_ _%rtm259224%_)
                    (let* ((_%runtime-code?259226%_ (if _%rtm259224%_ '#t '#f))
                           (_%lifts259228%_ (box '()))
                           (_%runtime-code259234%_
                            (if _%runtime-code?259226%_
                                (let ((__tmp260372
                                       (lambda ()
                                         (let ((__tmp260373
                                                (lambda ()
                                                  (let ((__tmp260374
                                                         (lambda ()
                                                           (let ((__tmp260376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code259223%_))))
                         (__tmp260375
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260376
                      gxc#current-compile-marks
                      __tmp260375)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp260374
                                                     gxc#current-compile-lift
                                                     _%lifts259228%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp260373
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp260372
                                   gx#current-expander-context
                                   _%ctx259222%_))
                                '#f))
                           (_%runtime-code259236%_
                            (if _%runtime-code?259226%_
                                (if (null? (unbox _%lifts259228%_))
                                    _%runtime-code259234%_
                                    (cons 'begin
                                          (let ((__tmp260378
                                                 (cons _%runtime-code259234%_
                                                       '()))
                                                (__tmp260377
                                                 (reverse (unbox _%lifts259228%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260378
                                             __tmp260377))))
                                '#f))
                           (_%runtime-code259238%_
                            (if _%runtime-code?259226%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp259214%_
                                                         _%ctx259222%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code259236%_ '())))
                                '#f))
                           (_%loader-code259241%_
                            (let ((__tmp260379
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code259223%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260379
                               gx#current-expander-context
                               _%ctx259222%_)))
                           (_%loader-code259243%_
                            (cons 'begin
                                  (cons _%loader-code259241%_
                                        (cons (if _%runtime-code?259226%_
                                                  (cons 'load-module
                                                        (cons _%rtm259224%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0259245%_
                            (gxc#compile-output-file _%ctx259222%_ '0 '".scm"))
                           (_%scmrt259247%_
                            (gxc#compile-output-file
                             _%ctx259222%_
                             '#f
                             '".scm"))
                           (_%scms259249%_
                            (gxc#compile-static-output-file _%ctx259222%_)))
                      (if _%runtime-code?259226%_
                          (gxc#compile-scm-file__0
                           _%scm0259245%_
                           _%runtime-code259238%_)
                          '#!void)
                      (let ((__tmp260380
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt259247%_
                                _%loader-code259243%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp260380
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms259249%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms259249%_))
                          '#!void)
                      (if _%runtime-code?259226%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0259245%_ _%scms259249%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms259249%_ void)))))))
          (let* ((_%all-modules259217%_
                  (cons _%ctx259211%_ (gxc#lift-nested-modules _%ctx259211%_)))
                 (__tmp260381
                  (lambda (_%ctx259219%_)
                    (let ((__tmp260382
                           (lambda () (_%compile1259213%_ _%ctx259219%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260382
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp260381 _%all-modules259217%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx259110%_)
        (letrec ((_%compile-ssi259112%_
                  (lambda (_%code259179%_)
                    (let* ((_%path259181%_
                            (gxc#compile-output-file
                             _%ctx259110%_
                             '#f
                             '".ssi"))
                           (_%prelude259193%_
                            (let* ((_%super259183%_
                                    (##structure-ref
                                     _%ctx259110%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e259185%_
                                    (##structure-ref
                                     _%super259183%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e259185%_
                                  ((lambda (_%g259187259189%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g259187259189%_)))
                                   _%$e259185%_)
                                  ':<root>)))
                           (_%ns259195%_
                            (##structure-ref
                             _%ctx259110%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr259197%_
                            (symbol->string
                             (##structure-ref
                              _%ctx259110%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg259205%_
                            (let ((_%$e259199%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr259197%_ '#\/))))
                              (if _%$e259199%_
                                  ((lambda (_%x259202%_)
                                     (let ((__tmp260383
                                            (substring
                                             _%idstr259197%_
                                             '0
                                             _%x259202%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp260383)))
                                   _%$e259199%_)
                                  '#f)))
                           (_%rt259207%_
                            (let ((__tmp260384
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp260384 _%ctx259110%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path259181%_))
                      (gxc#with-output-to-scheme-file
                       _%path259181%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude259193%_))
                         (if _%pkg259205%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg259205%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns259195%_))
                         (newline)
                         (pretty-print _%code259179%_)
                         (if _%rt259207%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt259207%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi259113%_
                  (lambda (_%part259118%_)
                    (let* ((_%part259119259132%_ _%part259118%_)
                           (_%E259121259136%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part259119259132%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K259122259148%_
                            (lambda (_%code259139%_
                                     _%n259140%_
                                     _%phi259141%_
                                     _%phi-ctx259142%_)
                              (let ((_%code259146%_
                                     (let ((__tmp260385
                                            (lambda ()
                                              (let ((__tmp260386
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code259139%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260386
                                                 gx#current-expander-phi
                                                 _%phi259141%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260385
                                        gx#current-expander-context
                                        _%phi-ctx259142%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx259110%_
                                  _%n259140%_
                                  '".scm")
                                 _%code259146%_
                                 '#t)))))
                      (if (pair? _%part259119259132%_)
                          (let ((_%hd259123259151%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part259119259132%_)))
                                (_%tl259124259153%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part259119259132%_))))
                            (let ((_%phi-ctx259156%_ _%hd259123259151%_))
                              (if (pair? _%tl259124259153%_)
                                  (let ((_%hd259125259158%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259124259153%_)))
                                        (_%tl259126259160%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259124259153%_))))
                                    (let ((_%phi259163%_ _%hd259125259158%_))
                                      (if (pair? _%tl259126259160%_)
                                          (let ((_%hd259127259165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl259126259160%_)))
                                                (_%tl259128259167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl259126259160%_))))
                                            (let ((_%n259170%_
                                                   _%hd259127259165%_))
                                              (if (pair? _%tl259128259167%_)
                                                  (let ((_%hd259129259172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl259128259167%_)))
                                                        (_%tl259130259174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl259128259167%_))))
                                                    (let ((_%code259177%_
                                                           _%hd259129259172%_))
                                                      (if (null? _%tl259130259174%_)
                                                          (_%K259122259148%_
                                                           _%code259177%_
                                                           _%n259170%_
                                                           _%phi259163%_
                                                           _%phi-ctx259156%_)
                                                          (_%E259121259136%_))))
                                                  (_%E259121259136%_))))
                                          (_%E259121259136%_))))
                                  (_%E259121259136%_))))
                          (_%E259121259136%_))))))
          (let ((_g260387_ (gxc#generate-meta-code _%ctx259110%_)))
            (begin
              (let ((_g260388_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g260387_)
                           (##values-length _g260387_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g260388_ 2)))
                    (error "Context expects 2 values" _g260388_)))
              (let ((_%ssi-code259115%_
                     (let () (declare (not safe)) (##values-ref _g260387_ 0)))
                    (_%phi-code259116%_
                     (let () (declare (not safe)) (##values-ref _g260387_ 1))))
                (begin
                  (_%compile-ssi259112%_ _%ssi-code259115%_)
                  (for-each _%compile-phi259113%_ _%phi-code259116%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx259092%_)
        (let* ((_%path259094%_
                (gxc#compile-output-file _%ctx259092%_ '#f '".ssxi.ss"))
               (_%code259096%_
                (let ((__tmp260389
                       (##structure-ref
                        _%ctx259092%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp260389)))
               (_%idstr259098%_
                (symbol->string
                 (##structure-ref
                  _%ctx259092%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg259106%_
                (let ((_%$e259100%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr259098%_ '#\/))))
                  (if _%$e259100%_
                      ((lambda (_%x259103%_)
                         (let ((__tmp260390
                                (substring _%idstr259098%_ '0 _%x259103%_)))
                           (declare (not safe))
                           (##string->symbol __tmp260390)))
                       _%$e259100%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path259094%_))
          (gxc#with-output-to-scheme-file
           _%path259094%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg259106%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg259106%_))
                 '#!void)
             (newline)
             (pretty-print _%code259096%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx259085%_)
        (let* ((_%state259087%_
                (let ((__obj260258
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj260258 _%ctx259085%_))
                  __obj260258))
               (_%ssi-code259089%_
                (let ((__tmp260391
                       (##structure-ref
                        _%ctx259085%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state259087%_
                   __tmp260391))))
          (values _%ssi-code259089%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state259087%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx259077%_)
        (let* ((_%lifts259079%_ (box '()))
               (__tmp260392
                (lambda ()
                  (let ((__tmp260394
                         (lambda ()
                           (let ((_%code259083%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx259077%_))))
                             (if (null? (unbox _%lifts259079%_))
                                 _%code259083%_
                                 (cons 'begin
                                       (let ((__tmp260396
                                              (cons _%code259083%_ '()))
                                             (__tmp260395
                                              (reverse (unbox _%lifts259079%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp260396
                                          __tmp260395)))))))
                        (__tmp260393
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp260394
                     gxc#current-compile-marks
                     __tmp260393)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260392
           gxc#current-compile-lift
           _%lifts259079%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx259073%_)
        (let ((_%modules259075%_ (box '())))
          (let ((__tmp260397
                 (##structure-ref _%ctx259073%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules259075%_ __tmp260397))
          (reverse (unbox _%modules259075%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path259053%_ _%code259054%_ _%phi?259055%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path259053%_))
        (gxc#with-output-to-scheme-file
         _%path259053%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp260398
                                           (if _%phi?259055%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp260398)))))))
           (pretty-print _%code259054%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it259059%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path259053%_ _%phi?259055%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp260399
                         (cons 'compile-file (cons _%path259053%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it259059%_ __tmp260399))
                  (_%compile-it259059%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path259064%_ _%code259065%_)
        (let ((_%phi?259067%_ '#f))
          (gxc#compile-scm-file__%
           _%path259064%_
           _%code259065%_
           _%phi?259067%_))))
    (define gxc#compile-scm-file
      (lambda _g260400_
        (let ((_g260401_ (let () (declare (not safe)) (##length _g260400_))))
          (cond ((let () (declare (not safe)) (##fx= _g260401_ 2))
                 (apply gxc#compile-scm-file__0 _g260400_))
                ((let () (declare (not safe)) (##fx= _g260401_ 3))
                 (apply gxc#compile-scm-file__% _g260400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g260400_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?258954%_)
        (let _%lp258956%_ ((_%rest258958%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258959%_ '()))
          (let* ((_%rest258960258980%_ _%rest258958%_)
                 (_%else258964258988%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts258959%_)))
                        (reverse _%opts258959%_)))))
            (let ((_%K258974259031%_
                   (lambda (_%rest259029%_)
                     (_%lp258956%_ _%rest259029%_ _%opts258959%_)))
                  (_%K258969259013%_
                   (lambda (_%rest259011%_)
                     (_%lp258956%_ _%rest259011%_ _%opts258959%_)))
                  (_%K258966258995%_
                   (lambda (_%rest258992%_ _%opt258993%_)
                     (_%lp258956%_
                      _%rest258992%_
                      (cons _%opt258993%_ _%opts258959%_)))))
              (if (pair? _%rest258960258980%_)
                  (let ((_%tl258976259036%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258960258980%_)))
                        (_%hd258975259034%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258960258980%_))))
                    (if (equal? _%hd258975259034%_ '"-cc-options")
                        (if (pair? _%tl258976259036%_)
                            (let* ((_%tl258978259039%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258976259036%_)))
                                   (_%rest259042%_ _%tl258978259039%_))
                              (_%K258974259031%_ _%rest259042%_))
                            (let ((_%opt259003%_ _%hd258975259034%_)
                                  (_%rest259005%_ _%tl258976259036%_))
                              (_%K258966258995%_
                               _%rest259005%_
                               _%opt259003%_)))
                        (if (equal? _%hd258975259034%_ '"-ld-options")
                            (if (pair? _%tl258976259036%_)
                                (let* ((_%tl258973259021%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl258976259036%_)))
                                       (_%rest259024%_ _%tl258973259021%_))
                                  (_%K258969259013%_ _%rest259024%_))
                                (let ((_%opt259003%_ _%hd258975259034%_)
                                      (_%rest259005%_ _%tl258976259036%_))
                                  (_%K258966258995%_
                                   _%rest259005%_
                                   _%opt259003%_)))
                            (let ((_%opt259003%_ _%hd258975259034%_)
                                  (_%rest259005%_ _%tl258976259036%_))
                              (_%K258966258995%_
                               _%rest259005%_
                               _%opt259003%_)))))
                  (_%else258964258988%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?259048%_ '#f)) (gxc#gsc-link-options__% _%phi?259048%_))))
    (define gxc#gsc-link-options
      (lambda _g260402_
        (let ((_g260403_ (let () (declare (not safe)) (##length _g260402_))))
          (cond ((let () (declare (not safe)) (##fx= _g260403_ 0))
                 (apply gxc#gsc-link-options__0 _g260402_))
                ((let () (declare (not safe)) (##fx= _g260403_ 1))
                 (apply gxc#gsc-link-options__% _g260402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g260402_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords258804%_ _%static?258800258805%_ _%phi?258806%_)
        (let ((_%static?258808%_
               (if (eq? _%static?258800258805%_ absent-value)
                   '#f
                   _%static?258800258805%_)))
          (if _%phi?258806%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp258810%_ ((_%rest258812%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258813%_ '()))
                (let* ((_%rest258814258840%_ _%rest258812%_)
                       (_%else258819258848%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts258813%_)))
                              (reverse! _%opts258813%_)))))
                  (let ((_%K258834258911%_
                         (lambda (_%rest258908%_ _%opt258909%_)
                           (if _%static?258808%_
                               (_%lp258810%_
                                _%rest258908%_
                                (cons _%opt258909%_
                                      (cons '"-cc-options" _%opts258813%_)))
                               (_%lp258810%_ _%rest258908%_ _%opts258813%_))))
                        (_%K258829258888%_
                         (lambda (_%rest258885%_ _%opt258886%_)
                           (_%lp258810%_
                            _%rest258885%_
                            (cons _%opt258886%_
                                  (cons '"-cc-options" _%opts258813%_)))))
                        (_%K258824258868%_
                         (lambda (_%rest258866%_)
                           (_%lp258810%_ _%rest258866%_ _%opts258813%_)))
                        (_%K258821258854%_
                         (lambda (_%rest258852%_)
                           (_%lp258810%_ _%rest258852%_ _%opts258813%_))))
                    (if (pair? _%rest258814258840%_)
                        (let ((_%tl258836258916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258814258840%_)))
                              (_%hd258835258914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258814258840%_))))
                          (if (equal? _%hd258835258914%_ '"-cc-options")
                              (if (pair? _%tl258836258916%_)
                                  (let ((_%tl258838258921%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258836258916%_)))
                                        (_%hd258837258919%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258836258916%_))))
                                    (if (equal? _%hd258837258919%_ '"-Bstatic")
                                        (let ((_%opt258924%_
                                               _%hd258837258919%_)
                                              (_%rest258926%_
                                               _%tl258838258921%_))
                                          (_%K258834258911%_
                                           _%rest258926%_
                                           _%opt258924%_))
                                        (let ((_%opt258901%_
                                               _%hd258837258919%_)
                                              (_%rest258903%_
                                               _%tl258838258921%_))
                                          (_%K258829258888%_
                                           _%rest258903%_
                                           _%opt258901%_))))
                                  (let ((_%rest258860%_ _%tl258836258916%_))
                                    (_%K258821258854%_ _%rest258860%_)))
                              (if (equal? _%hd258835258914%_ '"-ld-options")
                                  (if (pair? _%tl258836258916%_)
                                      (let* ((_%tl258828258876%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258836258916%_)))
                                             (_%rest258879%_
                                              _%tl258828258876%_))
                                        (_%K258824258868%_ _%rest258879%_))
                                      (let ((_%rest258860%_
                                             _%tl258836258916%_))
                                        (_%K258821258854%_ _%rest258860%_)))
                                  (let ((_%rest258860%_ _%tl258836258916%_))
                                    (_%K258821258854%_ _%rest258860%_)))))
                        (_%else258819258848%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords258931%_ _%static?258800258932%_)
        (let ((_%phi?258934%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords258931%_
           _%static?258800258932%_
           _%phi?258934%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g260404_
        (let ((_g260405_ (let () (declare (not safe)) (##length _g260404_))))
          (cond ((let () (declare (not safe)) (##fx= _g260405_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g260404_))
                ((let () (declare (not safe)) (##fx= _g260405_ 3))
                 (apply gxc#gsc-cc-options__%__% _g260404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g260404_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords258943%_ . _%args258944%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords258943%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258943%_
                  'static:
                  absent-value))
               _%args258944%_)))
    (define gxc#gsc-cc-options
      (lambda _%args258801258950%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args258801258950%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords258650%_ _%static?258646258651%_ _%phi?258652%_)
        (let ((_%static?258654%_
               (if (eq? _%static?258646258651%_ absent-value)
                   '#f
                   _%static?258646258651%_)))
          (if _%phi?258652%_
              '()
              (let _%lp258656%_ ((_%rest258658%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258659%_ '()))
                (let* ((_%rest258660258686%_ _%rest258658%_)
                       (_%else258665258694%_
                        (lambda () (reverse! _%opts258659%_))))
                  (let ((_%K258680258757%_
                         (lambda (_%rest258754%_ _%opt258755%_)
                           (if _%static?258654%_
                               (_%lp258656%_
                                _%rest258754%_
                                (cons _%opt258755%_
                                      (cons '"-ld-options" _%opts258659%_)))
                               (_%lp258656%_ _%rest258754%_ _%opts258659%_))))
                        (_%K258675258734%_
                         (lambda (_%rest258731%_ _%opt258732%_)
                           (_%lp258656%_
                            _%rest258731%_
                            (cons _%opt258732%_
                                  (cons '"-ld-options" _%opts258659%_)))))
                        (_%K258670258714%_
                         (lambda (_%rest258712%_)
                           (_%lp258656%_ _%rest258712%_ _%opts258659%_)))
                        (_%K258667258700%_
                         (lambda (_%rest258698%_)
                           (_%lp258656%_ _%rest258698%_ _%opts258659%_))))
                    (if (pair? _%rest258660258686%_)
                        (let ((_%tl258682258762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258660258686%_)))
                              (_%hd258681258760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258660258686%_))))
                          (if (equal? _%hd258681258760%_ '"-ld-options")
                              (if (pair? _%tl258682258762%_)
                                  (let ((_%tl258684258767%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258682258762%_)))
                                        (_%hd258683258765%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258682258762%_))))
                                    (if (equal? _%hd258683258765%_ '"-static")
                                        (let ((_%opt258770%_
                                               _%hd258683258765%_)
                                              (_%rest258772%_
                                               _%tl258684258767%_))
                                          (_%K258680258757%_
                                           _%rest258772%_
                                           _%opt258770%_))
                                        (let ((_%opt258747%_
                                               _%hd258683258765%_)
                                              (_%rest258749%_
                                               _%tl258684258767%_))
                                          (_%K258675258734%_
                                           _%rest258749%_
                                           _%opt258747%_))))
                                  (let ((_%rest258706%_ _%tl258682258762%_))
                                    (_%K258667258700%_ _%rest258706%_)))
                              (if (equal? _%hd258681258760%_ '"-cc-options")
                                  (if (pair? _%tl258682258762%_)
                                      (let* ((_%tl258674258722%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258682258762%_)))
                                             (_%rest258725%_
                                              _%tl258674258722%_))
                                        (_%K258670258714%_ _%rest258725%_))
                                      (let ((_%rest258706%_
                                             _%tl258682258762%_))
                                        (_%K258667258700%_ _%rest258706%_)))
                                  (let ((_%rest258706%_ _%tl258682258762%_))
                                    (_%K258667258700%_ _%rest258706%_)))))
                        (_%else258665258694%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords258777%_ _%static?258646258778%_)
        (let ((_%phi?258780%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords258777%_
           _%static?258646258778%_
           _%phi?258780%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g260406_
        (let ((_g260407_ (let () (declare (not safe)) (##length _g260406_))))
          (cond ((let () (declare (not safe)) (##fx= _g260407_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g260406_))
                ((let () (declare (not safe)) (##fx= _g260407_ 3))
                 (apply gxc#gsc-ld-options__%__% _g260406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g260406_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords258789%_ . _%args258790%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords258789%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258789%_
                  'static:
                  absent-value))
               _%args258790%_)))
    (define gxc#gsc-ld-options
      (lambda _%args258647258796%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args258647258796%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir258641%_)
        (let ((_%user-staticdir258643%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir258641%_
                       '" -I "
                       _%user-staticdir258643%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp258553%_ ((_%rest258555%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258556%_ '()))
          (let* ((_%rest258557258577%_ _%rest258555%_)
                 (_%else258561258585%_ (lambda () _%opts258556%_)))
            (let ((_%K258571258628%_
                   (lambda (_%rest258626%_)
                     (_%lp258553%_ _%rest258626%_ _%opts258556%_)))
                  (_%K258566258606%_
                   (lambda (_%rest258603%_ _%opt258604%_)
                     (_%lp258553%_
                      _%rest258603%_
                      (let ((__tmp260408
                             (let ((__tmp260409
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt258604%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp260409))))
                        (declare (not safe))
                        (##append _%opts258556%_ __tmp260408)))))
                  (_%K258563258591%_
                   (lambda (_%rest258589%_)
                     (_%lp258553%_ _%rest258589%_ _%opts258556%_))))
              (if (pair? _%rest258557258577%_)
                  (let ((_%tl258573258633%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258557258577%_)))
                        (_%hd258572258631%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258557258577%_))))
                    (if (equal? _%hd258572258631%_ '"-cc-options")
                        (if (pair? _%tl258573258633%_)
                            (let* ((_%tl258575258636%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258573258633%_)))
                                   (_%rest258639%_ _%tl258575258636%_))
                              (_%K258571258628%_ _%rest258639%_))
                            (let ((_%rest258597%_ _%tl258573258633%_))
                              (_%K258563258591%_ _%rest258597%_)))
                        (if (equal? _%hd258572258631%_ '"-ld-options")
                            (if (pair? _%tl258573258633%_)
                                (let ((_%tl258570258616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl258573258633%_)))
                                      (_%hd258569258614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl258573258633%_))))
                                  (let ((_%opt258619%_ _%hd258569258614%_)
                                        (_%rest258621%_ _%tl258570258616%_))
                                    (_%K258566258606%_
                                     _%rest258621%_
                                     _%opt258619%_)))
                                (let ((_%rest258597%_ _%tl258573258633%_))
                                  (_%K258563258591%_ _%rest258597%_)))
                            (let ((_%rest258597%_ _%tl258573258633%_))
                              (_%K258563258591%_ _%rest258597%_)))))
                  (_%else258561258585%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str258550%_)
        (not (let () (declare (not safe)) (string-empty? _%str258550%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path258543%_ _%phi?258544%_)
        (let ((_%gsc-link-opts258546%_
               (gxc#gsc-link-options__% _%phi?258544%_))
              (_%gsc-cc-opts258547%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?258544%_))
              (_%gsc-ld-opts258548%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?258544%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp260410
                  (let ((__tmp260411
                         (let ((__tmp260412 (cons _%path258543%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260412
                            _%gsc-link-opts258546%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260411 _%gsc-ld-opts258548%_))))
             (declare (not safe))
             (foldr__0 cons __tmp260410 _%gsc-cc-opts258547%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx258509%_ _%n258510%_ _%ext258511%_)
        (letrec ((_%module-relative-path258513%_
                  (lambda (_%ctx258541%_)
                    (path-strip-directory
                     (let ((__tmp260413
                            (##structure-ref
                             _%ctx258541%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp260413)))))
                 (_%module-source-directory258514%_
                  (lambda (_%ctx258537%_)
                    (path-directory
                     (let ((_%mpath258539%_
                            (##structure-ref
                             _%ctx258537%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath258539%_)
                           _%mpath258539%_
                           (last _%mpath258539%_))))))
                 (_%section-string258515%_
                  (lambda (_%n258531%_)
                    (if (number? _%n258531%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n258531%_))
                        (if (symbol? _%n258531%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n258531%_))
                            (if (string? _%n258531%_)
                                _%n258531%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n258531%_)))))))
                 (_%file-name258516%_
                  (lambda (_%path258529%_)
                    (if _%n258510%_
                        (string-append
                         _%path258529%_
                         '"~"
                         (_%section-string258515%_ _%n258510%_)
                         _%ext258511%_)
                        (string-append _%path258529%_ _%ext258511%_))))
                 (_%file-path258517%_
                  (lambda ()
                    (let ((_%$e258523%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e258523%_
                          ((lambda (_%outdir258526%_)
                             (path-expand
                              (_%file-name258516%_
                               (let ((__tmp260414
                                      (##structure-ref
                                       _%ctx258509%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp260414)))
                              _%outdir258526%_))
                           _%$e258523%_)
                          (path-expand
                           (_%file-name258516%_
                            (_%module-relative-path258513%_ _%ctx258509%_))
                           (_%module-source-directory258514%_
                            _%ctx258509%_)))))))
          (let ((_%path258519%_ (_%file-path258517%_)))
            (let ((__tmp260415
                   (lambda ()
                     (let ((__tmp260416 (path-directory _%path258519%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260416)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260415))
            _%path258519%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx258490%_)
        (letrec ((_%file-name258492%_
                  (lambda (_%id258507%_)
                    (let ((__tmp260417 (gxc#static-module-name _%id258507%_)))
                      (declare (not safe))
                      (##string-append __tmp260417 '".scm"))))
                 (_%file-path258493%_
                  (lambda ()
                    (let* ((_%file258499%_
                            (_%file-name258492%_
                             (##structure-ref
                              _%ctx258490%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e258501%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e258501%_
                          ((lambda (_%outdir258504%_)
                             (path-expand
                              _%file258499%_
                              (path-expand '"static" _%outdir258504%_)))
                           _%$e258501%_)
                          (path-expand _%file258499%_ '"static"))))))
          (let ((_%path258495%_ (_%file-path258493%_)))
            (let ((__tmp260418
                   (lambda ()
                     (let ((__tmp260419 (path-directory _%path258495%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260419)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260418))
            _%path258495%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx258483%_ _%opts258484%_)
        (let ((_%$e258486%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts258484%_))))
          (if _%$e258486%_
              _%$e258486%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx258483%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr258473%_)
        (if (string? _%idstr258473%_)
            (let* ((_%str258476%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr258473%_)))
                   (_%strs258478%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str258476%_ '#\/))))
              (declare (not safe))
              (string-join _%strs258478%_ '"__"))
            (if (symbol? _%idstr258473%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr258473%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr258473%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp260420
               (let ((__tmp260421 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp260421 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp260420))))
    (define gxc#invoke__%
      (lambda (_%@@keywords258439%_
               _%stdout-redirection258435258440%_
               _%stderr-redirection258436258441%_
               _%program258442%_
               _%args258443%_)
        (let* ((_%stdout-redirection258445%_
                (if (eq? _%stdout-redirection258435258440%_ absent-value)
                    '#f
                    _%stdout-redirection258435258440%_))
               (_%stderr-redirection258447%_
                (if (eq? _%stderr-redirection258436258441%_ absent-value)
                    '#f
                    _%stderr-redirection258436258441%_)))
          (let ((__tmp260422 (cons _%program258442%_ _%args258443%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp260422))
          (let* ((_%proc258449%_
                  (open-process
                   (cons 'path:
                         (cons _%program258442%_
                               (cons 'arguments:
                                     (cons _%args258443%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection258445%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection258447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output258454%_
                  (if (or _%stdout-redirection258445%_
                          _%stderr-redirection258447%_)
                      (read-line _%proc258449%_ '#f)
                      '#f))
                 (_%status258457%_ (process-status _%proc258449%_)))
            (let () (declare (not safe)) (##close-port _%proc258449%_))
            (if (zero? _%status258457%_)
                '#!void
                (begin
                  (display _%output258454%_)
                  (let ((__tmp260423 (cons _%program258442%_ _%args258443%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp260423
                     _%status258457%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords258462%_ . _%args258463%_)
        (apply gxc#invoke__%
               _%@@keywords258462%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258462%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258462%_
                  'stderr-redirection:
                  absent-value))
               _%args258463%_)))
    (define gxc#invoke
      (lambda _%args258437258469%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args258437258469%_)))))
