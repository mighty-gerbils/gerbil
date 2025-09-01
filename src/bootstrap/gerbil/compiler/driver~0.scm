(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1756715360)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp211249 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp211249))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp211250 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp211250))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path211106%_ _%fun211107%_)
        (with-output-to-file
         (cons 'path: (cons _%path211106%_ gxc#scheme-file-settings))
         _%fun211107%_)))
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
      (lambda (_%gerbil-libdir211101%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir211101%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path211099%_)
        (let ((__tmp211251 (object->string _%path211099%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp211251 '")"))))
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
      (lambda (_%dir211097%_) (delete-file-or-directory _%dir211097%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath211041%_ _%opts211042%_)
        (if (string? _%srcpath211041%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath211041%_)))
        (let* ((_%outdir211044%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts211042%_)))
               (_%invoke-gsc?211046%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts211042%_)))
               (_%target211051%_
                (let ((_%$e211048%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts211042%_))))
                  (if _%$e211048%_ _%$e211048%_ 'C)))
               (_%gsc-options211056%_
                (append (cons '"-target"
                              (cons (symbol->string _%target211051%_) '()))
                        (let ((_%$e211053%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts211042%_))))
                          (if _%$e211053%_ _%$e211053%_ '()))))
               (_%keep-scm?211058%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts211042%_)))
               (_%verbosity211060%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts211042%_)))
               (_%optimize211062%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts211042%_)))
               (_%debug211064%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts211042%_)))
               (_%gen-ssxi211066%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts211042%_)))
               (_%parallel?211068%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts211042%_))))
          (if _%outdir211044%_
              (let ((__tmp211252
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir211044%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211252))
              '#!void)
          (if _%optimize211062%_
              (let ((__tmp211253
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211253))
              '#!void)
          (let ((__tmp211254
                 (lambda ()
                   (let ((__tmp211255
                          (lambda ()
                            (let ((__tmp211256
                                   (lambda ()
                                     (let ((__tmp211257
                                            (lambda ()
                                              (let ((__tmp211258
                                                     (lambda ()
                                                       (let ((__tmp211259
                                                              (lambda ()
                                                                (let ((__tmp211260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp211261
                                        (lambda ()
                                          (let ((__tmp211262
                                                 (lambda ()
                                                   (let ((__tmp211264
                                                          (lambda ()
                                                            (let ((__tmp211266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp211267
                                    (lambda ()
                                      (let ((__tmp211268
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath211041%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp211269
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath211041%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp211269))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp211268
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp211267
                                gxc#current-compile-parallel
                                _%parallel?211068%_))))
                          (__tmp211265
                           (cons (cons 'compile-module
                                       (cons _%srcpath211041%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211266
                       gxc#current-compile-context
                       __tmp211265))))
                 (__tmp211263 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp211264
                                                      gxc#current-compile-timestamp
                                                      __tmp211263)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp211262
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi211066%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp211261
                                    gxc#current-compile-debug
                                    _%debug211064%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp211260
                           gxc#current-compile-optimize
                           _%optimize211062%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp211259
                  gxc#current-compile-verbose
                  _%verbosity211060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211258
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?211058%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211257
                                        gxc#current-compile-gsc-options
                                        _%gsc-options211056%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211256
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?211046%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211255
                      gx#current-compilation-target
                      _%target211051%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211254
             gxc#current-compile-output-dir
             _%outdir211044%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath211090%_)
        (let ((_%opts211092%_ '()))
          (gxc#compile-module__% _%srcpath211090%_ _%opts211092%_))))
    (define gxc#compile-module
      (lambda _g211270_
        (let ((_g211271_ (let () (declare (not safe)) (##length _g211270_))))
          (cond ((let () (declare (not safe)) (##fx= _g211271_ 1))
                 (apply gxc#compile-module__0 _g211270_))
                ((let () (declare (not safe)) (##fx= _g211271_ 2))
                 (apply gxc#compile-module__% _g211270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g211270_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath210991%_ _%opts210992%_)
        (if (string? _%srcpath210991%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210991%_)))
        (let* ((_%outdir210994%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210992%_)))
               (_%invoke-gsc?210996%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210992%_)))
               (_%target211001%_
                (let ((_%$e210998%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210992%_))))
                  (if _%$e210998%_ _%$e210998%_ 'C)))
               (_%gsc-options211006%_
                (append (cons '"-target"
                              (cons (symbol->string _%target211001%_) '()))
                        (let ((_%$e211003%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210992%_))))
                          (if _%$e211003%_ _%$e211003%_ '()))))
               (_%keep-scm?211008%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210992%_)))
               (_%verbosity211010%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210992%_)))
               (_%debug211012%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210992%_)))
               (_%parallel?211014%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210992%_))))
          (if _%outdir210994%_
              (let ((__tmp211272
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210994%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211272))
              '#!void)
          (let ((__tmp211273
                 (lambda ()
                   (let ((__tmp211274
                          (lambda ()
                            (let ((__tmp211275
                                   (lambda ()
                                     (let ((__tmp211276
                                            (lambda ()
                                              (let ((__tmp211277
                                                     (lambda ()
                                                       (let ((__tmp211278
                                                              (lambda ()
                                                                (let ((__tmp211279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp211281
                                        (lambda ()
                                          (let ((__tmp211283
                                                 (lambda ()
                                                   (let ((__tmp211284
                                                          (lambda ()
                                                            (let ((__tmp211285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath210991%_))
                             (gxc#compile-executable-module
                              (let ((__tmp211286
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath210991%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp211286))
                              _%opts210992%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211285
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp211284
                                                      gxc#current-compile-parallel
                                                      _%parallel?211014%_))))
                                                (__tmp211282
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath210991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp211283
                                             gxc#current-compile-context
                                             __tmp211282))))
                                       (__tmp211280 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp211281
                                    gxc#current-compile-timestamp
                                    __tmp211280)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp211279
                           gxc#current-compile-debug
                           _%debug211012%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp211278
                  gxc#current-compile-verbose
                  _%verbosity211010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211277
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?211008%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211276
                                        gxc#current-compile-gsc-options
                                        _%gsc-options211006%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211275
                               gx#current-compilation-target
                               _%target211001%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211274
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?210996%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211273
             gxc#current-compile-output-dir
             _%outdir210994%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath211033%_)
        (let ((_%opts211035%_ '()))
          (gxc#compile-exe__% _%srcpath211033%_ _%opts211035%_))))
    (define gxc#compile-exe
      (lambda _g211287_
        (let ((_g211288_ (let () (declare (not safe)) (##length _g211287_))))
          (cond ((let () (declare (not safe)) (##fx= _g211288_ 1))
                 (apply gxc#compile-exe__0 _g211287_))
                ((let () (declare (not safe)) (##fx= _g211288_ 2))
                 (apply gxc#compile-exe__% _g211287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g211287_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx210987%_ _%opts210988%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts210988%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx210987%_
             _%opts210988%_)
            (gxc#compile-executable-module/separate
             _%ctx210987%_
             _%opts210988%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx210787%_ _%opts210788%_)
        (letrec ((_%generate-stub210790%_
                  (lambda (_%builtin-modules210983%_)
                    (let ((_%mod-main210985%_
                           (gxc#find-runtime-symbol _%ctx210787%_ 'main)))
                      (let ((__tmp211289
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules210983%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp211289))
                      (let ((__tmp211290
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main210985%_
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
                        (##write __tmp211290))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts210791%_
                  (lambda (_%gerbil-libdir210981%_)
                    (let ((__tmp211291
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir210981%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp211291 read))))
                 (_%replace-extension210792%_
                  (lambda (_%path210978%_ _%ext210979%_)
                    (string-append
                     (path-strip-extension _%path210978%_)
                     _%ext210979%_)))
                 (_%replace-extension-with-c210793%_
                  (lambda (_%path210976%_)
                    (_%replace-extension210792%_ _%path210976%_ '".c")))
                 (_%replace-extension-with-object210794%_
                  (lambda (_%path210974%_)
                    (_%replace-extension210792%_
                     _%path210974%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?210795%_
                  (lambda (_%ctx210972%_)
                    (if (_%exclude-module?210797%_ _%ctx210972%_)
                        '#f
                        (not (_%libgerbil-module?210796%_ _%ctx210972%_)))))
                 (_%libgerbil-module?210796%_
                  (lambda (_%ctx210965%_)
                    (let ((_%id-str210967%_
                           (symbol->string
                            (##structure-ref
                             _%ctx210965%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?210797%_ _%id-str210967%_)
                          '#f
                          (let ((_%$e210969%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str210967%_))))
                            (if _%$e210969%_
                                _%$e210969%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str210967%_))))))))
                 (_%exclude-module?210797%_
                  (lambda (_%ctx-or-str210961%_)
                    (let ((_%str210963%_
                           (if (string? _%ctx-or-str210961%_)
                               _%ctx-or-str210961%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str210961%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str210963%_))))
                 (_%not-file-empty?210798%_
                  (lambda (_%path210959%_)
                    (not (gxc#file-empty? _%path210959%_))))
                 (_%fold-libgerbil-runtime-scm210799%_
                  (lambda (_%gerbil-staticdir210952%_ _%libgerbil-scm210953%_)
                    (let ((_%gerbil-runtime-scm210957%_
                           (let ((__tmp211292
                                  (lambda (_%rtm210955%_)
                                    (path-expand
                                     (let ((__tmp211293
                                            (let ((__tmp211294
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm210955%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp211294
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp211293 '".scm"))
                                     _%gerbil-staticdir210952%_))))
                             (declare (not safe))
                             (##map __tmp211292 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates210800%_
                       (append _%gerbil-runtime-scm210957%_
                               _%libgerbil-scm210953%_)))))
                 (_%remove-duplicates210800%_
                  (lambda (_%strlst210912%_)
                    (let _%loop210914%_ ((_%rest210916%_ _%strlst210912%_)
                                         (_%result210917%_ '()))
                      (let* ((_%rest210918210926%_ _%rest210916%_)
                             (_%else210920210934%_
                              (lambda () (reverse! _%result210917%_)))
                             (_%K210922210940%_
                              (lambda (_%rest210937%_ _%path210938%_)
                                (if (member _%path210938%_ _%result210917%_)
                                    (_%loop210914%_
                                     _%rest210937%_
                                     _%result210917%_)
                                    (_%loop210914%_
                                     _%rest210937%_
                                     (cons _%path210938%_
                                           _%result210917%_))))))
                        (if (pair? _%rest210918210926%_)
                            (let ((_%hd210923210943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest210918210926%_)))
                                  (_%tl210924210945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest210918210926%_))))
                              (let* ((_%path210948%_ _%hd210923210943%_)
                                     (_%rest210950%_ _%tl210924210945%_))
                                (_%K210922210940%_
                                 _%rest210950%_
                                 _%path210948%_)))
                            (_%else210920210934%_))))))
                 (_%compile-stub210801%_
                  (lambda (_%output-scm210808%_ _%output-bin210809%_)
                    (let* ((_%gerbil-home210811%_
                            (let ((__tmp211295
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp211295)))
                           (_%gerbil-libdir210813%_
                            (path-expand '"lib" _%gerbil-home210811%_))
                           (_%gerbil-staticdir210815%_
                            (path-expand '"static" _%gerbil-libdir210813%_))
                           (_%deps210817%_
                            (gxc#find-runtime-module-deps _%ctx210787%_))
                           (_%libgerbil-deps210819%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?210796%_
                               _%deps210817%_)))
                           (_%libgerbil-scm210821%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps210819%_)))
                           (_%libgerbil-scm210823%_
                            (_%fold-libgerbil-runtime-scm210799%_
                             _%gerbil-staticdir210815%_
                             _%libgerbil-scm210821%_))
                           (_%libgerbil-c210825%_
                            (map _%replace-extension-with-c210793%_
                                 _%libgerbil-scm210823%_))
                           (_%libgerbil-o210827%_
                            (map _%replace-extension-with-object210794%_
                                 _%libgerbil-scm210823%_))
                           (_%src-deps210829%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?210795%_
                               _%deps210817%_)))
                           (_%src-deps-scm210831%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps210829%_)))
                           (_%src-deps-scm210833%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?210798%_
                               _%src-deps-scm210831%_)))
                           (_%src-deps-scm210835%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm210833%_)))
                           (_%src-deps-c210837%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c210793%_
                                     _%src-deps-scm210835%_)))
                           (_%src-deps-o210839%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object210794%_
                                     _%src-deps-scm210835%_)))
                           (_%src-bin-scm210841%_
                            (gxc#find-static-module-file _%ctx210787%_))
                           (_%src-bin-scm210843%_
                            (path-expand _%src-bin-scm210841%_))
                           (_%src-bin-c210845%_
                            (_%replace-extension-with-c210793%_
                             _%src-bin-scm210843%_))
                           (_%src-bin-o210847%_
                            (_%replace-extension-with-object210794%_
                             _%src-bin-scm210843%_))
                           (_%output-bin210849%_
                            (path-expand _%output-bin210809%_))
                           (_%output-scm210851%_
                            (path-expand _%output-scm210808%_))
                           (_%output-c210853%_
                            (_%replace-extension-with-c210793%_
                             _%output-scm210851%_))
                           (_%output-o210855%_
                            (_%replace-extension-with-object210794%_
                             _%output-scm210851%_))
                           (_%output_-c210857%_
                            (_%replace-extension210792%_
                             _%output-scm210851%_
                             '"_.c"))
                           (_%output_-o210859%_
                            (_%replace-extension210792%_
                             _%output-scm210851%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts210861%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210863%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210865%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir210815%_))
                           (_%output-ld-opts210867%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts210869%_
                            (_%get-libgerbil-ld-opts210791%_
                             _%gerbil-libdir210813%_))
                           (_%rpath210871%_
                            (gxc#gerbil-rpath _%gerbil-libdir210813%_))
                           (_%builtin-modules210875%_
                            (_%remove-duplicates210800%_
                             (let ((__tmp211296
                                    (let ((__tmp211298
                                           (lambda (_%mod210873%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod210873%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp211297
                                           (cons _%ctx210787%_
                                                 _%deps210817%_)))
                                      (declare (not safe))
                                      (##map __tmp211298 __tmp211297))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp211296)))))
                      (letrec ((_%compile-obj210878%_
                                (lambda (_%scm-path210885%_ _%c-path210886%_)
                                  (let* ((_%o-path210888%_
                                          (_%replace-extension210792%_
                                           _%c-path210886%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock210890%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path210888%_
                                             '".lock")))
                                         (_%locked210892%_ '#f)
                                         (_%unlock210895%_
                                          (lambda ()
                                            (close-port _%locked210892%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock210890%_)))))
                                    (let _%retry210898%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock210890%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry210898%_))
                                          (begin
                                            (set! _%locked210892%_
                                                  (let ((__tmp211299
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock210890%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp211299)))
                                            (if _%locked210892%_
                                                '#!void
                                                (_%retry210898%_)))))
                                    (let ((__tmp211301
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path210888%_)))
                                                     (not _%scm-path210885%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path210885%_
                                                        _%o-path210888%_)))
                                                 (let ((_%gsc-cc-opts210909%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp211302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp211303 (cons _%c-path210886%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp211303
                            _%gsc-static-opts210865%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211302 _%gsc-cc-opts210909%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp211300
                                           (lambda () (_%unlock210895%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp211301
                                       __tmp211300))))))
                        (let ((__tmp211304
                               (lambda ()
                                 (let ((__tmp211305
                                        (path-directory _%output-bin210849%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp211305)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp211304))
                        (gxc#with-output-to-scheme-file
                         _%output-scm210851%_
                         (lambda ()
                           (_%generate-stub210790%_
                            _%builtin-modules210875%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it210883%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp211306
                                                   (let ((__tmp211307
                                                          (let ((__tmp211308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm210843%_
                               (cons _%output-scm210851%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211308 _%src-deps-scm210835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp211307
                                                      _%libgerbil-c210825%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp211306
                                               _%gsc-link-opts210861%_))))
                                     (for-each
                                      _%compile-obj210878%_
                                      (let ((__tmp211309
                                             (cons _%src-bin-scm210843%_
                                                   (cons _%output-scm210851%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp211309
                                         _%src-deps-scm210835%_))
                                      (let ((__tmp211310
                                             (cons _%src-bin-c210845%_
                                                   (cons _%output-c210853%_
                                                         (cons _%output_-c210857%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp211310
                                         _%src-deps-c210837%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin210849%_
                                                        (let ((__tmp211311
                                                               (cons _%src-bin-o210847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o210855%_
                                   (cons _%output_-o210859%_
                                         (let ((__tmp211312
                                                (let ((__tmp211313
                                                       (let ((__tmp211315
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir210813%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts210869%_))))
                     (__tmp211314
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath210871%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp211315 __tmp211314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp211313
                                                   _%output-ld-opts210867%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp211312
                                            _%libgerbil-o210827%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp211311 _%src-deps-o210839%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp211316
                                            (cons _%output-c210853%_
                                                  (cons _%output_-c210857%_
                                                        (cons _%output-o210855%_
                                                              (cons _%output_-o210859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp211316)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it210883%_))
                                  (_%compile-it210883%_)))
                            '#!void))))))
          (let* ((_%output-bin210803%_
                  (gxc#compile-exe-output-file _%ctx210787%_ _%opts210788%_))
                 (_%output-scm210805%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210803%_ '"__exe.scm"))))
            (_%compile-stub210801%_
             _%output-scm210805%_
             _%output-bin210803%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx210609%_ _%opts210610%_)
        (letrec ((_%reset-declare210612%_
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
                 (_%generate-stub210613%_
                  (lambda (_%deps210778%_)
                    (let ((_%mod-main210780%_
                           (gxc#find-runtime-symbol _%ctx210609%_ 'main))
                          (_%reset-decl210781%_ (_%reset-declare210612%_))
                          (_%user-decl210782%_ (_%user-declare210614%_)))
                      (for-each
                       (lambda (_%dep210784%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl210781%_))
                         (newline)
                         (if _%user-decl210782%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl210782%_))
                               (newline))
                             '#!void)
                         (let ((__tmp211317
                                (cons 'include (cons _%dep210784%_ '()))))
                           (declare (not safe))
                           (##write __tmp211317))
                         (newline))
                       _%deps210778%_)
                      (let ((__tmp211318
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main210780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp211318))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare210614%_
                  (lambda ()
                    (let* ((_%gsc-opts210683%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts210610%_)))
                           (_%gsc-prelude210685%_
                            (if _%gsc-opts210683%_
                                (member '"-prelude" _%gsc-opts210683%_)
                                '#f))
                           (_%gsc-prelude210687%_
                            (if _%gsc-prelude210685%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude210685%_)))
                                '#f)))
                      (let _%lp210690%_ ((_%rest210692%_
                                          (cons _%gsc-prelude210687%_ '()))
                                         (_%user-decls210693%_ '()))
                        (let* ((_%rest210694210702%_ _%rest210692%_)
                               (_%else210696210710%_
                                (lambda ()
                                  (if (null? _%user-decls210693%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls210693%_)))))
                               (_%K210698210766%_
                                (lambda (_%rest210713%_ _%expr210714%_)
                                  (let* ((_%expr210715210727%_ _%expr210714%_)
                                         (_%else210718210735%_
                                          (lambda ()
                                            (_%lp210690%_
                                             _%rest210713%_
                                             _%user-decls210693%_))))
                                    (let ((_%K210723210756%_
                                           (lambda (_%decls210754%_)
                                             (_%lp210690%_
                                              _%rest210713%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls210693%_
                                                 _%decls210754%_)))))
                                          (_%K210720210741%_
                                           (lambda (_%exprs210739%_)
                                             (_%lp210690%_
                                              (append _%exprs210739%_
                                                      _%rest210713%_)
                                              _%user-decls210693%_))))
                                      (if (pair? _%expr210715210727%_)
                                          (let ((_%tl210725210761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr210715210727%_)))
                                                (_%hd210724210759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr210715210727%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd210724210759%_
                                                         'declare))
                                                (let ((_%decls210764%_
                                                       _%tl210725210761%_))
                                                  (_%K210723210756%_
                                                   _%decls210764%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd210724210759%_
                                                             'begin))
                                                    (let ((_%exprs210749%_
                                                           _%tl210725210761%_))
                                                      (_%K210720210741%_
                                                       _%exprs210749%_))
                                                    (_%else210718210735%_))))
                                          (_%else210718210735%_)))))))
                          (if (pair? _%rest210694210702%_)
                              (let ((_%hd210699210769%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest210694210702%_)))
                                    (_%tl210700210771%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest210694210702%_))))
                                (let* ((_%expr210774%_ _%hd210699210769%_)
                                       (_%rest210776%_ _%tl210700210771%_))
                                  (_%K210698210766%_
                                   _%rest210776%_
                                   _%expr210774%_)))
                              (_%else210696210710%_)))))))
                 (_%compile-stub210615%_
                  (lambda (_%output-scm210622%_ _%output-bin210623%_)
                    (let* ((_%gerbil-home210625%_
                            (let ((__tmp211319
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp211319)))
                           (_%gerbil-libdir210627%_
                            (path-expand '"lib" _%gerbil-home210625%_))
                           (_%runtime210629%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp210631%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home210625%_))
                           (_%include-gambit-sharp210633%_
                            (gxc#include-source _%gambit-sharp210631%_))
                           (_%bin-scm210635%_
                            (gxc#find-static-module-file _%ctx210609%_))
                           (_%deps210637%_
                            (gxc#find-runtime-module-deps _%ctx210609%_))
                           (_%deps210639%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps210637%_)))
                           (_%deps210644%_
                            (let ((__tmp211320
                                   (lambda (_%$obj210641%_)
                                     (not (gxc#file-empty? _%$obj210641%_)))))
                              (declare (not safe))
                              (##filter __tmp211320 _%deps210639%_)))
                           (_%deps210648%_
                            (let ((__tmp211321
                                   (lambda (_%f210646%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f210646%_
                                             _%runtime210629%_))))))
                              (declare (not safe))
                              (##filter __tmp211321 _%deps210644%_)))
                           (_%output-base210650%_
                            (let ((__tmp211322
                                   (path-strip-extension
                                    _%output-scm210622%_)))
                              (declare (not safe))
                              (##string-append __tmp211322)))
                           (_%output-c210652%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210650%_ '".c")))
                           (_%output-o210654%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base210650%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_210656%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210650%_ '"_.c")))
                           (_%output-o_210658%_
                            (let ((__tmp211323
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base210650%_
                               __tmp211323)))
                           (_%gsc-link-opts210660%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210662%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210664%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir210627%_)))
                           (_%output-ld-opts210666%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros210668%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp210633%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp210633%_
                                            '()))))
                           (_%gsc-link-opts210670%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts210660%_
                               _%gsc-gx-macros210668%_)))
                           (_%rpath210672%_
                            (gxc#gerbil-rpath _%gerbil-libdir210627%_))
                           (_%default-ld-options210674%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp211324
                             (lambda ()
                               (let ((__tmp211325
                                      (path-directory _%output-bin210623%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp211325)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp211324))
                      (gxc#with-output-to-scheme-file
                       _%output-scm210622%_
                       (lambda ()
                         (_%generate-stub210613%_
                          (let ((__tmp211326
                                 (let ((__tmp211327
                                        (cons _%bin-scm210635%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp211327
                                    _%deps210648%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp211326 _%runtime210629%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it210680%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_210656%_
                                                      (let ((__tmp211328
                                                             (cons _%output-scm210622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp211328 _%gsc-link-opts210670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp211329
                                                 (let ((__tmp211330
                                                        (cons _%output-c210652%_
                                                              (cons _%output-c_210656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp211330
                                                    _%gsc-static-opts210664%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp211329
                                             _%gsc-cc-opts210662%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin210623%_
                                                      (cons _%output-o210654%_
                                                            (cons _%output-o_210658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp211331
                                 (let ((__tmp211333
                                        (cons '"-L"
                                              (cons _%gerbil-libdir210627%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options210674%_))))
                                       (__tmp211332
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath210672%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp211333 __tmp211332))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp211331
                             _%output-ld-opts210666%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it210680%_))
                                (_%compile-it210680%_)))
                          '#!void)))))
          (let* ((_%output-bin210617%_
                  (gxc#compile-exe-output-file _%ctx210609%_ _%opts210610%_))
                 (_%output-scm210619%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210617%_ '"__exe.scm"))))
            (_%compile-stub210615%_
             _%output-scm210619%_
             _%output-bin210617%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx210558%_ _%id210559%_)
        (let ((_%$e210605%_
               (let ((__tmp211335
                      (lambda (_%e210560210562%_)
                        (let* ((_%g210564210574%_ _%e210560210562%_)
                               (_%else210566210582%_ (lambda () '#f))
                               (_%K210568210586%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g210564210574%_
                                 'gx#module-export::t))
                              (let* ((_%e210569210589%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210564210574%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e210570210592%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210564210574%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e210571210595%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210564210574%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e210571210595%_ '0))
                                    (let ((_%e210572210598%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g210564210574%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g210600210602%_)
                                             (eq? _%g210600210602%_
                                                  _%id210559%_))
                                           _%e210572210598%_)
                                          (_%K210568210586%_)
                                          (_%else210566210582%_)))
                                    (_%else210566210582%_)))
                              (_%else210566210582%_)))))
                     (__tmp211334
                      (##structure-ref
                       _%ctx210558%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp211335 __tmp211334))))
          (if _%$e210605%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e210605%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx210549%_ _%id210550%_)
        (let ((_%$e210552%_
               (gxc#find-export-binding _%ctx210549%_ _%id210550%_)))
          (if _%$e210552%_
              ((lambda (_%bind210555%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind210555%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id210550%_)))
                 (##structure-ref _%bind210555%_ '1 gx#binding::t '#f))
               _%$e210552%_)
              (let ((__tmp211336
                     (##structure-ref
                      _%ctx210549%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp211336
                 _%id210550%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx210415%_)
        (letrec* ((_%ht210417%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template210418%_
                   (lambda (_%in210494%_ _%phi210495%_)
                     (let ((_%iphi210497%_
                            (fx+ _%phi210495%_
                                 (##direct-structure-ref
                                  _%in210494%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports210498%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in210494%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp210500%_ ((_%rest210502%_ _%imports210498%_)
                                          (_%r210503%_ '()))
                         (let* ((_%rest210504210512%_ _%rest210502%_)
                                (_%else210506210520%_ (lambda () _%r210503%_))
                                (_%K210508210537%_
                                 (lambda (_%rest210523%_ _%in210524%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in210524%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi210497%_))
                                           (_%lp210500%_
                                            _%rest210523%_
                                            (cons _%in210524%_ _%r210503%_))
                                           (_%lp210500%_
                                            _%rest210523%_
                                            _%r210503%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in210524%_
                                              'gx#module-import::t))
                                           (let ((_%iphi210528%_
                                                  (fx+ _%phi210495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in210524%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi210528%_))
                                                 (_%lp210500%_
                                                  _%rest210523%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in210524%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r210503%_))
                                                 (_%lp210500%_
                                                  _%rest210523%_
                                                  _%r210503%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in210524%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi210531%_
                                                      (fx+ _%iphi210497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in210524%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi210531%_))
                                                     (_%lp210500%_
                                                      _%rest210523%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in210524%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r210503%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi210531%_))
                                                         (_%lp210500%_
                                                          _%rest210523%_
                                                          (let ((__tmp211337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template210418%_
                          _%in210524%_
                          _%iphi210497%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r210503%_ __tmp211337)))
                 (_%lp210500%_ _%rest210523%_ _%r210503%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp210500%_
                                                _%rest210523%_
                                                _%r210503%_)))))))
                           (if (pair? _%rest210504210512%_)
                               (let ((_%hd210509210540%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest210504210512%_)))
                                     (_%tl210510210542%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest210504210512%_))))
                                 (let* ((_%in210545%_ _%hd210509210540%_)
                                        (_%rest210547%_ _%tl210510210542%_))
                                   (_%K210508210537%_
                                    _%rest210547%_
                                    _%in210545%_)))
                               (_%else210506210520%_)))))))
                  (_%find-deps210419%_
                   (lambda (_%rest210427%_ _%deps210428%_)
                     (let* ((_%rest210429210437%_ _%rest210427%_)
                            (_%else210431210445%_ (lambda () _%deps210428%_))
                            (_%K210433210482%_
                             (lambda (_%rest210448%_ _%hd210449%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd210449%_
                                      'gx#module-context::t))
                                   (let ((_%id210452%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210449%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports210453%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210449%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht210417%_
                                            _%id210452%_))
                                         (_%find-deps210419%_
                                          _%rest210448%_
                                          _%deps210428%_)
                                         (let ((_%$e210456%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd210449%_))))
                                           (if _%$e210456%_
                                               ((lambda (_%pre210459%_)
                                                  (let ((_%xdeps210461%_
                                                         (_%find-deps210419%_
                                                          (cons _%pre210459%_
                                                                _%imports210453%_)
                                                          _%deps210428%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht210417%_
                                                       _%id210452%_
                                                       _%hd210449%_))
                                                    (_%find-deps210419%_
                                                     _%rest210448%_
                                                     (cons _%hd210449%_
                                                           _%xdeps210461%_))))
                                                _%$e210456%_)
                                               (let ((_%xdeps210464%_
                                                      (_%find-deps210419%_
                                                       _%imports210453%_
                                                       _%deps210428%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht210417%_
                                                    _%id210452%_
                                                    _%hd210449%_))
                                                 (_%find-deps210419%_
                                                  _%rest210448%_
                                                  (cons _%hd210449%_
                                                        _%xdeps210464%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd210449%_
                                          'gx#prelude-context::t))
                                       (let ((_%id210467%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd210449%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht210417%_
                                                _%id210467%_))
                                             (_%find-deps210419%_
                                              _%rest210448%_
                                              _%deps210428%_)
                                             (let ((_%xdeps210471%_
                                                    (_%find-deps210419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd210449%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps210428%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht210417%_
                                                      _%id210467%_))
                                                   (_%find-deps210419%_
                                                    _%rest210448%_
                                                    _%xdeps210471%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht210417%_
                                                        _%id210467%_
                                                        _%hd210449%_))
                                                     (_%find-deps210419%_
                                                      _%rest210448%_
                                                      (cons _%hd210449%_
                                                            _%xdeps210471%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd210449%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd210449%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps210419%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210449%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210448%_)
                                                _%deps210428%_)
                                               (_%find-deps210419%_
                                                _%rest210448%_
                                                _%deps210428%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd210449%_
                                                  'gx#module-export::t))
                                               (_%find-deps210419%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210449%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210448%_)
                                                _%deps210428%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd210449%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd210449%_ '2 '#f '#f)))
               (_%find-deps210419%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd210449%_ '1 '#f '#f))
                      _%rest210448%_)
                _%deps210428%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd210449%_ '2 '#f '#f)))
                   (let ((_%xdeps210478%_
                          (_%import-set-template210418%_ _%hd210449%_ '0)))
                     (_%find-deps210419%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest210448%_ _%xdeps210478%_))
                      _%deps210428%_))
                   (_%find-deps210419%_ _%rest210448%_ _%deps210428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd210449%_))))))))))
                       (if (pair? _%rest210429210437%_)
                           (let ((_%hd210434210485%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest210429210437%_)))
                                 (_%tl210435210487%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest210429210437%_))))
                             (let* ((_%hd210490%_ _%hd210434210485%_)
                                    (_%rest210492%_ _%tl210435210487%_))
                               (_%K210433210482%_
                                _%rest210492%_
                                _%hd210490%_)))
                           (_%else210431210445%_))))))
          (let ((__tmp211338
                 (filter gx#expander-context-id
                         (_%find-deps210419%_
                          (let ((_%$e210421%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx210415%_))))
                            (if _%$e210421%_
                                ((lambda (_%pre210424%_)
                                   (cons _%pre210424%_
                                         (##structure-ref
                                          _%ctx210415%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e210421%_)
                                (##structure-ref
                                 _%ctx210415%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp211338)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx210345%_)
        (let* ((_%context-id210347%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx210345%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx210345%_ '1 '#f '#f))
                    (string->symbol _%ctx210345%_)))
               (_%scm210349%_
                (let ((__tmp211339
                       (gxc#static-module-name _%context-id210347%_)))
                  (declare (not safe))
                  (##string-append __tmp211339 '".scm")))
               (_%dirs210351%_ (let () (declare (not safe)) (load-path)))
               (_%dirs210357%_
                (let ((_%user-libpath210353%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath210353%_
                      (let ((_%user-libpath210355%_
                             (path-expand '"lib" _%user-libpath210353%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath210355%_ _%dirs210351%_))
                            _%dirs210351%_
                            (cons _%user-libpath210355%_ _%dirs210351%_)))
                      _%dirs210351%_)))
               (_%dirs210367%_
                (let ((_%$e210359%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e210359%_
                      ((lambda (_%g210361210363%_)
                         (cons _%g210361210363%_ _%dirs210357%_))
                       _%$e210359%_)
                      _%dirs210357%_)))
               (_%dirs210373%_
                (let ((__tmp211340
                       (lambda (_%g210368210370%_)
                         (path-expand '"static" _%g210368210370%_))))
                  (declare (not safe))
                  (##map __tmp211340 _%dirs210367%_))))
          (let _%lp210376%_ ((_%rest210378%_ _%dirs210373%_))
            (let* ((_%rest210379210387%_ _%rest210378%_)
                   (_%else210381210395%_
                    (lambda ()
                      (let ((__tmp211341
                             (##structure-ref
                              _%ctx210345%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp211341
                         _%scm210349%_))))
                   (_%K210383210403%_
                    (lambda (_%rest210398%_ _%dir210399%_)
                      (let ((_%path210401%_
                             (path-expand _%scm210349%_ _%dir210399%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path210401%_))
                            _%path210401%_
                            (_%lp210376%_ _%rest210398%_))))))
              (if (pair? _%rest210379210387%_)
                  (let ((_%hd210384210406%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210379210387%_)))
                        (_%tl210385210408%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210379210387%_))))
                    (let* ((_%dir210411%_ _%hd210384210406%_)
                           (_%rest210413%_ _%tl210385210408%_))
                      (_%K210383210403%_ _%rest210413%_ _%dir210411%_)))
                  (_%else210381210395%_)))))))
    (define gxc#file-empty?
      (lambda (_%path210343%_)
        (zero? (let ((__tmp211342 (file-info _%path210343%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp211342)))))
    (define gxc#compile-top-module
      (lambda (_%ctx210334%_)
        (let ((__tmp211343
               (lambda ()
                 (let ((__tmp211344
                        (lambda ()
                          (let ((__tmp211345
                                 (lambda ()
                                   (let ((__tmp211347
                                          (lambda ()
                                            (let ((__tmp211349
                                                   (lambda ()
                                                     (let ((__tmp211351
                                                            (lambda ()
                                                              (let ((__tmp211352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx210334%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp211352))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp211353
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx210334%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp211353))
                          '#!void)
                      (gxc#collect-bindings _%ctx210334%_)
                      (gxc#compile-runtime-code _%ctx210334%_)
                      (gxc#compile-meta-code _%ctx210334%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx210334%_)
                          '#!void)))
                   (__tmp211350
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
                __tmp211351
                gxc#current-compile-runtime-names
                __tmp211350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp211348
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp211349
                                               gxc#current-compile-runtime-sections
                                               __tmp211348))))
                                         (__tmp211346
                                          (let ((__obj211247
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj211247))
                                            __obj211247)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp211347
                                      gxc#current-compile-symbol-table
                                      __tmp211346)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp211345
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp211344
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211343
           gx#current-expander-context
           _%ctx210334%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx210332%_)
        (let ((__tmp211354
               (##structure-ref _%ctx210332%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp211354))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx210276%_)
        (letrec ((_%compile1210278%_
                  (lambda (_%ctx210321%_)
                    (let* ((_%code210323%_
                            (##structure-ref
                             _%ctx210321%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm210327%_
                            (let ((_%idstr210325%_
                                   (let ((__tmp211355
                                          (##structure-ref
                                           _%ctx210321%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp211355))))
                              (declare (not safe))
                              (##string-append _%idstr210325%_ '"~0")))
                           (_%rtc?210329%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code210323%_))))
                      (if _%rtc?210329%_
                          (let ((__tmp211356
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp211356
                             _%ctx210321%_
                             _%rtm210327%_))
                          '#!void)
                      (_%generate-runtime-code210280%_
                       _%ctx210321%_
                       _%code210323%_
                       (if _%rtc?210329%_ _%rtm210327%_ '#f)))))
                 (_%context-timestamp210279%_
                  (lambda (_%ctx210319%_)
                    (let ((__tmp211357
                           (let ((__tmp211358
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx210319%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp211358 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp211357))))
                 (_%generate-runtime-code210280%_
                  (lambda (_%ctx210287%_ _%code210288%_ _%rtm210289%_)
                    (let* ((_%runtime-code?210291%_ (if _%rtm210289%_ '#t '#f))
                           (_%lifts210293%_ (box '()))
                           (_%runtime-code210300%_
                            (if _%runtime-code?210291%_
                                (let ((__tmp211359
                                       (lambda ()
                                         (let ((__tmp211360
                                                (lambda ()
                                                  (let ((__tmp211361
                                                         (lambda ()
                                                           (let ((__tmp211363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp211365
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code210288%_))))
                                  (__tmp211364
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211365
                               gxc#current-compile-identifiers
                               __tmp211364))))
                         (__tmp211362
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211363
                      gxc#current-compile-marks
                      __tmp211362)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp211361
                                                     gxc#current-compile-lift
                                                     _%lifts210293%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp211360
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp211359
                                   gx#current-expander-context
                                   _%ctx210287%_))
                                '#f))
                           (_%runtime-code210302%_
                            (if _%runtime-code?210291%_
                                (if (null? (unbox _%lifts210293%_))
                                    _%runtime-code210300%_
                                    (cons 'begin
                                          (let ((__tmp211367
                                                 (cons _%runtime-code210300%_
                                                       '()))
                                                (__tmp211366
                                                 (reverse (unbox _%lifts210293%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp211367
                                             __tmp211366))))
                                '#f))
                           (_%runtime-code210304%_
                            (if _%runtime-code?210291%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp210279%_
                                                         _%ctx210287%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code210302%_ '())))
                                '#f))
                           (_%loader-code210307%_
                            (let ((__tmp211368
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code210288%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211368
                               gx#current-expander-context
                               _%ctx210287%_)))
                           (_%loader-code210309%_
                            (cons 'begin
                                  (cons _%loader-code210307%_
                                        (cons (if _%runtime-code?210291%_
                                                  (cons 'load-module
                                                        (cons _%rtm210289%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0210311%_
                            (gxc#compile-output-file _%ctx210287%_ '0 '".scm"))
                           (_%scmrt210313%_
                            (gxc#compile-output-file
                             _%ctx210287%_
                             '#f
                             '".scm"))
                           (_%scms210315%_
                            (gxc#compile-static-output-file _%ctx210287%_)))
                      (if _%runtime-code?210291%_
                          (gxc#compile-scm-file__0
                           _%scm0210311%_
                           _%runtime-code210304%_)
                          '#!void)
                      (let ((__tmp211369
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt210313%_
                                _%loader-code210309%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp211369
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms210315%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms210315%_))
                          '#!void)
                      (if _%runtime-code?210291%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0210311%_ _%scms210315%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms210315%_ void)))))))
          (let* ((_%all-modules210282%_
                  (cons _%ctx210276%_ (gxc#lift-nested-modules _%ctx210276%_)))
                 (__tmp211370
                  (lambda (_%ctx210284%_)
                    (let ((__tmp211371
                           (lambda () (_%compile1210278%_ _%ctx210284%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211371
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp211370 _%all-modules210282%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx210175%_)
        (letrec ((_%compile-ssi210177%_
                  (lambda (_%code210244%_)
                    (let* ((_%path210246%_
                            (gxc#compile-output-file
                             _%ctx210175%_
                             '#f
                             '".ssi"))
                           (_%prelude210258%_
                            (let* ((_%super210248%_
                                    (##structure-ref
                                     _%ctx210175%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e210250%_
                                    (##structure-ref
                                     _%super210248%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e210250%_
                                  ((lambda (_%g210252210254%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g210252210254%_)))
                                   _%$e210250%_)
                                  ':<root>)))
                           (_%ns210260%_
                            (##structure-ref
                             _%ctx210175%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr210262%_
                            (symbol->string
                             (##structure-ref
                              _%ctx210175%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg210270%_
                            (let ((_%$e210264%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr210262%_ '#\/))))
                              (if _%$e210264%_
                                  ((lambda (_%x210267%_)
                                     (let ((__tmp211372
                                            (substring
                                             _%idstr210262%_
                                             '0
                                             _%x210267%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp211372)))
                                   _%$e210264%_)
                                  '#f)))
                           (_%rt210272%_
                            (let ((__tmp211373
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp211373 _%ctx210175%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path210246%_))
                      (gxc#with-output-to-scheme-file
                       _%path210246%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude210258%_))
                         (if _%pkg210270%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg210270%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns210260%_))
                         (newline)
                         (pretty-print _%code210244%_)
                         (if _%rt210272%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt210272%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi210178%_
                  (lambda (_%part210183%_)
                    (let* ((_%part210184210197%_ _%part210183%_)
                           (_%E210186210201%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part210184210197%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K210187210213%_
                            (lambda (_%code210204%_
                                     _%n210205%_
                                     _%phi210206%_
                                     _%phi-ctx210207%_)
                              (let ((_%code210211%_
                                     (let ((__tmp211374
                                            (lambda ()
                                              (let ((__tmp211375
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code210204%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211375
                                                 gx#current-expander-phi
                                                 _%phi210206%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211374
                                        gx#current-expander-context
                                        _%phi-ctx210207%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx210175%_
                                  _%n210205%_
                                  '".scm")
                                 _%code210211%_
                                 '#t)))))
                      (if (pair? _%part210184210197%_)
                          (let ((_%hd210188210216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part210184210197%_)))
                                (_%tl210189210218%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part210184210197%_))))
                            (let ((_%phi-ctx210221%_ _%hd210188210216%_))
                              (if (pair? _%tl210189210218%_)
                                  (let ((_%hd210190210223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl210189210218%_)))
                                        (_%tl210191210225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl210189210218%_))))
                                    (let ((_%phi210228%_ _%hd210190210223%_))
                                      (if (pair? _%tl210191210225%_)
                                          (let ((_%hd210192210230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl210191210225%_)))
                                                (_%tl210193210232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl210191210225%_))))
                                            (let ((_%n210235%_
                                                   _%hd210192210230%_))
                                              (if (pair? _%tl210193210232%_)
                                                  (let ((_%hd210194210237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl210193210232%_)))
                                                        (_%tl210195210239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl210193210232%_))))
                                                    (let ((_%code210242%_
                                                           _%hd210194210237%_))
                                                      (if (null? _%tl210195210239%_)
                                                          (_%K210187210213%_
                                                           _%code210242%_
                                                           _%n210235%_
                                                           _%phi210228%_
                                                           _%phi-ctx210221%_)
                                                          (_%E210186210201%_))))
                                                  (_%E210186210201%_))))
                                          (_%E210186210201%_))))
                                  (_%E210186210201%_))))
                          (_%E210186210201%_))))))
          (let ((_g211376_ (gxc#generate-meta-code _%ctx210175%_)))
            (begin
              (let ((_g211377_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g211376_)
                           (##values-length _g211376_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g211377_ 2)))
                    (error "Context expects 2 values" _g211377_)))
              (let ((_%ssi-code210180%_
                     (let () (declare (not safe)) (##values-ref _g211376_ 0)))
                    (_%phi-code210181%_
                     (let () (declare (not safe)) (##values-ref _g211376_ 1))))
                (begin
                  (_%compile-ssi210177%_ _%ssi-code210180%_)
                  (for-each _%compile-phi210178%_ _%phi-code210181%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx210157%_)
        (let* ((_%path210159%_
                (gxc#compile-output-file _%ctx210157%_ '#f '".ssxi.ss"))
               (_%code210161%_
                (let ((__tmp211378
                       (##structure-ref
                        _%ctx210157%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp211378)))
               (_%idstr210163%_
                (symbol->string
                 (##structure-ref
                  _%ctx210157%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg210171%_
                (let ((_%$e210165%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr210163%_ '#\/))))
                  (if _%$e210165%_
                      ((lambda (_%x210168%_)
                         (let ((__tmp211379
                                (substring _%idstr210163%_ '0 _%x210168%_)))
                           (declare (not safe))
                           (##string->symbol __tmp211379)))
                       _%$e210165%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path210159%_))
          (gxc#with-output-to-scheme-file
           _%path210159%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg210171%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg210171%_))
                 '#!void)
             (newline)
             (pretty-print _%code210161%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx210150%_)
        (let* ((_%state210152%_
                (let ((__obj211248
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj211248 _%ctx210150%_))
                  __obj211248))
               (_%ssi-code210154%_
                (let ((__tmp211380
                       (##structure-ref
                        _%ctx210150%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state210152%_
                   __tmp211380))))
          (values _%ssi-code210154%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state210152%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx210141%_)
        (let* ((_%lifts210143%_ (box '()))
               (__tmp211381
                (lambda ()
                  (let ((__tmp211383
                         (lambda ()
                           (let ((__tmp211385
                                  (lambda ()
                                    (let ((_%code210148%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx210141%_))))
                                      (if (null? (unbox _%lifts210143%_))
                                          _%code210148%_
                                          (cons 'begin
                                                (let ((__tmp211387
                                                       (cons _%code210148%_
                                                             '()))
                                                      (__tmp211386
                                                       (reverse (unbox _%lifts210143%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp211387
                                                   __tmp211386)))))))
                                 (__tmp211384
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp211385
                              gxc#current-compile-identifiers
                              __tmp211384))))
                        (__tmp211382
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp211383
                     gxc#current-compile-marks
                     __tmp211382)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211381
           gxc#current-compile-lift
           _%lifts210143%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx210137%_)
        (let ((_%modules210139%_ (box '())))
          (let ((__tmp211388
                 (##structure-ref _%ctx210137%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules210139%_ __tmp211388))
          (reverse (unbox _%modules210139%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path210117%_ _%code210118%_ _%phi?210119%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path210117%_))
        (gxc#with-output-to-scheme-file
         _%path210117%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp211389
                                           (if _%phi?210119%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp211389)))))))
           (pretty-print _%code210118%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it210123%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path210117%_ _%phi?210119%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp211390
                         (cons 'compile-file (cons _%path210117%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it210123%_ __tmp211390))
                  (_%compile-it210123%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path210128%_ _%code210129%_)
        (let ((_%phi?210131%_ '#f))
          (gxc#compile-scm-file__%
           _%path210128%_
           _%code210129%_
           _%phi?210131%_))))
    (define gxc#compile-scm-file
      (lambda _g211391_
        (let ((_g211392_ (let () (declare (not safe)) (##length _g211391_))))
          (cond ((let () (declare (not safe)) (##fx= _g211392_ 2))
                 (apply gxc#compile-scm-file__0 _g211391_))
                ((let () (declare (not safe)) (##fx= _g211392_ 3))
                 (apply gxc#compile-scm-file__% _g211391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g211391_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?210018%_)
        (let _%lp210020%_ ((_%rest210022%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts210023%_ '()))
          (let* ((_%rest210024210044%_ _%rest210022%_)
                 (_%else210028210052%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts210023%_)))
                        (reverse _%opts210023%_)))))
            (let ((_%K210038210095%_
                   (lambda (_%rest210093%_)
                     (_%lp210020%_ _%rest210093%_ _%opts210023%_)))
                  (_%K210033210077%_
                   (lambda (_%rest210075%_)
                     (_%lp210020%_ _%rest210075%_ _%opts210023%_)))
                  (_%K210030210059%_
                   (lambda (_%rest210056%_ _%opt210057%_)
                     (_%lp210020%_
                      _%rest210056%_
                      (cons _%opt210057%_ _%opts210023%_)))))
              (if (pair? _%rest210024210044%_)
                  (let ((_%tl210040210100%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210024210044%_)))
                        (_%hd210039210098%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210024210044%_))))
                    (if (equal? _%hd210039210098%_ '"-cc-options")
                        (if (pair? _%tl210040210100%_)
                            (let* ((_%tl210042210103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl210040210100%_)))
                                   (_%rest210106%_ _%tl210042210103%_))
                              (_%K210038210095%_ _%rest210106%_))
                            (let ((_%opt210067%_ _%hd210039210098%_)
                                  (_%rest210069%_ _%tl210040210100%_))
                              (_%K210030210059%_
                               _%rest210069%_
                               _%opt210067%_)))
                        (if (equal? _%hd210039210098%_ '"-ld-options")
                            (if (pair? _%tl210040210100%_)
                                (let* ((_%tl210037210085%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl210040210100%_)))
                                       (_%rest210088%_ _%tl210037210085%_))
                                  (_%K210033210077%_ _%rest210088%_))
                                (let ((_%opt210067%_ _%hd210039210098%_)
                                      (_%rest210069%_ _%tl210040210100%_))
                                  (_%K210030210059%_
                                   _%rest210069%_
                                   _%opt210067%_)))
                            (let ((_%opt210067%_ _%hd210039210098%_)
                                  (_%rest210069%_ _%tl210040210100%_))
                              (_%K210030210059%_
                               _%rest210069%_
                               _%opt210067%_)))))
                  (_%else210028210052%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?210112%_ '#f)) (gxc#gsc-link-options__% _%phi?210112%_))))
    (define gxc#gsc-link-options
      (lambda _g211393_
        (let ((_g211394_ (let () (declare (not safe)) (##length _g211393_))))
          (cond ((let () (declare (not safe)) (##fx= _g211394_ 0))
                 (apply gxc#gsc-link-options__0 _g211393_))
                ((let () (declare (not safe)) (##fx= _g211394_ 1))
                 (apply gxc#gsc-link-options__% _g211393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g211393_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords209867%_ _%static?209863209868%_ _%phi?209870%_)
        (let ((_%static?209872%_
               (if (eq? _%static?209863209868%_ absent-value)
                   '#f
                   _%static?209863209868%_)))
          (if _%phi?209870%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp209874%_ ((_%rest209876%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209877%_ '()))
                (let* ((_%rest209878209904%_ _%rest209876%_)
                       (_%else209883209912%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts209877%_)))
                              (reverse! _%opts209877%_)))))
                  (let ((_%K209898209975%_
                         (lambda (_%rest209972%_ _%opt209973%_)
                           (if _%static?209872%_
                               (_%lp209874%_
                                _%rest209972%_
                                (cons _%opt209973%_
                                      (cons '"-cc-options" _%opts209877%_)))
                               (_%lp209874%_ _%rest209972%_ _%opts209877%_))))
                        (_%K209893209952%_
                         (lambda (_%rest209949%_ _%opt209950%_)
                           (_%lp209874%_
                            _%rest209949%_
                            (cons _%opt209950%_
                                  (cons '"-cc-options" _%opts209877%_)))))
                        (_%K209888209932%_
                         (lambda (_%rest209930%_)
                           (_%lp209874%_ _%rest209930%_ _%opts209877%_)))
                        (_%K209885209918%_
                         (lambda (_%rest209916%_)
                           (_%lp209874%_ _%rest209916%_ _%opts209877%_))))
                    (if (pair? _%rest209878209904%_)
                        (let ((_%tl209900209980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209878209904%_)))
                              (_%hd209899209978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209878209904%_))))
                          (if (equal? _%hd209899209978%_ '"-cc-options")
                              (if (pair? _%tl209900209980%_)
                                  (let ((_%tl209902209985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209900209980%_)))
                                        (_%hd209901209983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209900209980%_))))
                                    (if (equal? _%hd209901209983%_ '"-Bstatic")
                                        (let ((_%opt209988%_
                                               _%hd209901209983%_)
                                              (_%rest209990%_
                                               _%tl209902209985%_))
                                          (_%K209898209975%_
                                           _%rest209990%_
                                           _%opt209988%_))
                                        (let ((_%opt209965%_
                                               _%hd209901209983%_)
                                              (_%rest209967%_
                                               _%tl209902209985%_))
                                          (_%K209893209952%_
                                           _%rest209967%_
                                           _%opt209965%_))))
                                  (let ((_%rest209924%_ _%tl209900209980%_))
                                    (_%K209885209918%_ _%rest209924%_)))
                              (if (equal? _%hd209899209978%_ '"-ld-options")
                                  (if (pair? _%tl209900209980%_)
                                      (let* ((_%tl209892209940%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209900209980%_)))
                                             (_%rest209943%_
                                              _%tl209892209940%_))
                                        (_%K209888209932%_ _%rest209943%_))
                                      (let ((_%rest209924%_
                                             _%tl209900209980%_))
                                        (_%K209885209918%_ _%rest209924%_)))
                                  (let ((_%rest209924%_ _%tl209900209980%_))
                                    (_%K209885209918%_ _%rest209924%_)))))
                        (_%else209883209912%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords209995%_ _%static?209863209996%_)
        (let ((_%phi?209998%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords209995%_
           _%static?209863209996%_
           _%phi?209998%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g211395_
        (let ((_g211396_ (let () (declare (not safe)) (##length _g211395_))))
          (cond ((let () (declare (not safe)) (##fx= _g211396_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g211395_))
                ((let () (declare (not safe)) (##fx= _g211396_ 3))
                 (apply gxc#gsc-cc-options__%__% _g211395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g211395_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords210007%_ . _%args210008%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords210007%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210007%_
                  'static:
                  absent-value))
               _%args210008%_)))
    (define gxc#gsc-cc-options
      (lambda _%args209864210014%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args209864210014%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords209712%_ _%static?209708209713%_ _%phi?209715%_)
        (let ((_%static?209717%_
               (if (eq? _%static?209708209713%_ absent-value)
                   '#f
                   _%static?209708209713%_)))
          (if _%phi?209715%_
              '()
              (let _%lp209719%_ ((_%rest209721%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209722%_ '()))
                (let* ((_%rest209723209749%_ _%rest209721%_)
                       (_%else209728209757%_
                        (lambda () (reverse! _%opts209722%_))))
                  (let ((_%K209743209820%_
                         (lambda (_%rest209817%_ _%opt209818%_)
                           (if _%static?209717%_
                               (_%lp209719%_
                                _%rest209817%_
                                (cons _%opt209818%_
                                      (cons '"-ld-options" _%opts209722%_)))
                               (_%lp209719%_ _%rest209817%_ _%opts209722%_))))
                        (_%K209738209797%_
                         (lambda (_%rest209794%_ _%opt209795%_)
                           (_%lp209719%_
                            _%rest209794%_
                            (cons _%opt209795%_
                                  (cons '"-ld-options" _%opts209722%_)))))
                        (_%K209733209777%_
                         (lambda (_%rest209775%_)
                           (_%lp209719%_ _%rest209775%_ _%opts209722%_)))
                        (_%K209730209763%_
                         (lambda (_%rest209761%_)
                           (_%lp209719%_ _%rest209761%_ _%opts209722%_))))
                    (if (pair? _%rest209723209749%_)
                        (let ((_%tl209745209825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209723209749%_)))
                              (_%hd209744209823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209723209749%_))))
                          (if (equal? _%hd209744209823%_ '"-ld-options")
                              (if (pair? _%tl209745209825%_)
                                  (let ((_%tl209747209830%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209745209825%_)))
                                        (_%hd209746209828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209745209825%_))))
                                    (if (equal? _%hd209746209828%_ '"-static")
                                        (let ((_%opt209833%_
                                               _%hd209746209828%_)
                                              (_%rest209835%_
                                               _%tl209747209830%_))
                                          (_%K209743209820%_
                                           _%rest209835%_
                                           _%opt209833%_))
                                        (let ((_%opt209810%_
                                               _%hd209746209828%_)
                                              (_%rest209812%_
                                               _%tl209747209830%_))
                                          (_%K209738209797%_
                                           _%rest209812%_
                                           _%opt209810%_))))
                                  (let ((_%rest209769%_ _%tl209745209825%_))
                                    (_%K209730209763%_ _%rest209769%_)))
                              (if (equal? _%hd209744209823%_ '"-cc-options")
                                  (if (pair? _%tl209745209825%_)
                                      (let* ((_%tl209737209785%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209745209825%_)))
                                             (_%rest209788%_
                                              _%tl209737209785%_))
                                        (_%K209733209777%_ _%rest209788%_))
                                      (let ((_%rest209769%_
                                             _%tl209745209825%_))
                                        (_%K209730209763%_ _%rest209769%_)))
                                  (let ((_%rest209769%_ _%tl209745209825%_))
                                    (_%K209730209763%_ _%rest209769%_)))))
                        (_%else209728209757%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords209840%_ _%static?209708209841%_)
        (let ((_%phi?209843%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords209840%_
           _%static?209708209841%_
           _%phi?209843%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g211397_
        (let ((_g211398_ (let () (declare (not safe)) (##length _g211397_))))
          (cond ((let () (declare (not safe)) (##fx= _g211398_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g211397_))
                ((let () (declare (not safe)) (##fx= _g211398_ 3))
                 (apply gxc#gsc-ld-options__%__% _g211397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g211397_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords209852%_ . _%args209853%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords209852%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209852%_
                  'static:
                  absent-value))
               _%args209853%_)))
    (define gxc#gsc-ld-options
      (lambda _%args209709209859%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args209709209859%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir209703%_)
        (let ((_%user-staticdir209705%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir209703%_
                       '" -I "
                       _%user-staticdir209705%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp209615%_ ((_%rest209617%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209618%_ '()))
          (let* ((_%rest209619209639%_ _%rest209617%_)
                 (_%else209623209647%_ (lambda () _%opts209618%_)))
            (let ((_%K209633209690%_
                   (lambda (_%rest209688%_)
                     (_%lp209615%_ _%rest209688%_ _%opts209618%_)))
                  (_%K209628209668%_
                   (lambda (_%rest209665%_ _%opt209666%_)
                     (_%lp209615%_
                      _%rest209665%_
                      (let ((__tmp211399
                             (let ((__tmp211400
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt209666%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp211400))))
                        (declare (not safe))
                        (##append _%opts209618%_ __tmp211399)))))
                  (_%K209625209653%_
                   (lambda (_%rest209651%_)
                     (_%lp209615%_ _%rest209651%_ _%opts209618%_))))
              (if (pair? _%rest209619209639%_)
                  (let ((_%tl209635209695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209619209639%_)))
                        (_%hd209634209693%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209619209639%_))))
                    (if (equal? _%hd209634209693%_ '"-cc-options")
                        (if (pair? _%tl209635209695%_)
                            (let* ((_%tl209637209698%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209635209695%_)))
                                   (_%rest209701%_ _%tl209637209698%_))
                              (_%K209633209690%_ _%rest209701%_))
                            (let ((_%rest209659%_ _%tl209635209695%_))
                              (_%K209625209653%_ _%rest209659%_)))
                        (if (equal? _%hd209634209693%_ '"-ld-options")
                            (if (pair? _%tl209635209695%_)
                                (let ((_%tl209632209678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl209635209695%_)))
                                      (_%hd209631209676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl209635209695%_))))
                                  (let ((_%opt209681%_ _%hd209631209676%_)
                                        (_%rest209683%_ _%tl209632209678%_))
                                    (_%K209628209668%_
                                     _%rest209683%_
                                     _%opt209681%_)))
                                (let ((_%rest209659%_ _%tl209635209695%_))
                                  (_%K209625209653%_ _%rest209659%_)))
                            (let ((_%rest209659%_ _%tl209635209695%_))
                              (_%K209625209653%_ _%rest209659%_)))))
                  (_%else209623209647%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str209612%_)
        (not (let () (declare (not safe)) (string-empty? _%str209612%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path209605%_ _%phi?209606%_)
        (let ((_%gsc-link-opts209608%_
               (gxc#gsc-link-options__% _%phi?209606%_))
              (_%gsc-cc-opts209609%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?209606%_))
              (_%gsc-ld-opts209610%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?209606%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp211401
                  (let ((__tmp211402
                         (let ((__tmp211403 (cons _%path209605%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp211403
                            _%gsc-link-opts209608%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211402 _%gsc-ld-opts209610%_))))
             (declare (not safe))
             (__foldr1 cons __tmp211401 _%gsc-cc-opts209609%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx209571%_ _%n209572%_ _%ext209573%_)
        (letrec ((_%module-relative-path209575%_
                  (lambda (_%ctx209603%_)
                    (path-strip-directory
                     (let ((__tmp211404
                            (##structure-ref
                             _%ctx209603%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp211404)))))
                 (_%module-source-directory209576%_
                  (lambda (_%ctx209599%_)
                    (path-directory
                     (let ((_%mpath209601%_
                            (##structure-ref
                             _%ctx209599%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath209601%_)
                           _%mpath209601%_
                           (last _%mpath209601%_))))))
                 (_%section-string209577%_
                  (lambda (_%n209593%_)
                    (if (number? _%n209593%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n209593%_))
                        (if (symbol? _%n209593%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n209593%_))
                            (if (string? _%n209593%_)
                                _%n209593%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n209593%_)))))))
                 (_%file-name209578%_
                  (lambda (_%path209591%_)
                    (if _%n209572%_
                        (string-append
                         _%path209591%_
                         '"~"
                         (_%section-string209577%_ _%n209572%_)
                         _%ext209573%_)
                        (string-append _%path209591%_ _%ext209573%_))))
                 (_%file-path209579%_
                  (lambda ()
                    (let ((_%$e209585%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e209585%_
                          ((lambda (_%outdir209588%_)
                             (path-expand
                              (_%file-name209578%_
                               (let ((__tmp211405
                                      (##structure-ref
                                       _%ctx209571%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp211405)))
                              _%outdir209588%_))
                           _%$e209585%_)
                          (path-expand
                           (_%file-name209578%_
                            (_%module-relative-path209575%_ _%ctx209571%_))
                           (_%module-source-directory209576%_
                            _%ctx209571%_)))))))
          (let ((_%path209581%_ (_%file-path209579%_)))
            (let ((__tmp211406
                   (lambda ()
                     (let ((__tmp211407 (path-directory _%path209581%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp211407)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp211406))
            _%path209581%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx209552%_)
        (letrec ((_%file-name209554%_
                  (lambda (_%id209569%_)
                    (let ((__tmp211408 (gxc#static-module-name _%id209569%_)))
                      (declare (not safe))
                      (##string-append __tmp211408 '".scm"))))
                 (_%file-path209555%_
                  (lambda ()
                    (let* ((_%file209561%_
                            (_%file-name209554%_
                             (##structure-ref
                              _%ctx209552%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e209563%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e209563%_
                          ((lambda (_%outdir209566%_)
                             (path-expand
                              _%file209561%_
                              (path-expand '"static" _%outdir209566%_)))
                           _%$e209563%_)
                          (path-expand _%file209561%_ '"static"))))))
          (let ((_%path209557%_ (_%file-path209555%_)))
            (let ((__tmp211409
                   (lambda ()
                     (let ((__tmp211410 (path-directory _%path209557%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp211410)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp211409))
            _%path209557%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx209545%_ _%opts209546%_)
        (let ((_%$e209548%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts209546%_))))
          (if _%$e209548%_
              _%$e209548%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx209545%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr209535%_)
        (if (string? _%idstr209535%_)
            (let* ((_%str209538%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr209535%_)))
                   (_%strs209540%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str209538%_ '#\/))))
              (declare (not safe))
              (string-join _%strs209540%_ '"__"))
            (if (symbol? _%idstr209535%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr209535%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr209535%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp211411
               (let ((__tmp211412 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp211412 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp211411))))
    (define gxc#invoke__%
      (lambda (_%@@keywords209499%_
               _%stdout-redirection209495209500%_
               _%stderr-redirection209496209502%_
               _%program209504%_
               _%args209505%_)
        (let* ((_%stdout-redirection209507%_
                (if (eq? _%stdout-redirection209495209500%_ absent-value)
                    '#f
                    _%stdout-redirection209495209500%_))
               (_%stderr-redirection209509%_
                (if (eq? _%stderr-redirection209496209502%_ absent-value)
                    '#f
                    _%stderr-redirection209496209502%_)))
          (let ((__tmp211413 (cons _%program209504%_ _%args209505%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp211413))
          (let* ((_%proc209511%_
                  (open-process
                   (cons 'path:
                         (cons _%program209504%_
                               (cons 'arguments:
                                     (cons _%args209505%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection209507%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection209509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output209516%_
                  (if (or _%stdout-redirection209507%_
                          _%stderr-redirection209509%_)
                      (read-line _%proc209511%_ '#f)
                      '#f))
                 (_%status209519%_ (process-status _%proc209511%_)))
            (let () (declare (not safe)) (##close-port _%proc209511%_))
            (if (zero? _%status209519%_)
                '#!void
                (begin
                  (display _%output209516%_)
                  (let ((__tmp211414 (cons _%program209504%_ _%args209505%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp211414
                     _%status209519%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords209524%_ . _%args209525%_)
        (apply gxc#invoke__%
               _%@@keywords209524%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209524%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209524%_
                  'stderr-redirection:
                  absent-value))
               _%args209525%_)))
    (define gxc#invoke
      (lambda _%args209497209531%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args209497209531%_)))))
