(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1756721303)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp211247 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp211247))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp211248 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp211248))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path211104%_ _%fun211105%_)
        (with-output-to-file
         (cons 'path: (cons _%path211104%_ gxc#scheme-file-settings))
         _%fun211105%_)))
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
      (lambda (_%gerbil-libdir211099%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir211099%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path211097%_)
        (let ((__tmp211249 (object->string _%path211097%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp211249 '")"))))
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
      (lambda (_%dir211095%_) (delete-file-or-directory _%dir211095%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath211039%_ _%opts211040%_)
        (if (string? _%srcpath211039%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath211039%_)))
        (let* ((_%outdir211042%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts211040%_)))
               (_%invoke-gsc?211044%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts211040%_)))
               (_%target211049%_
                (let ((_%$e211046%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts211040%_))))
                  (if _%$e211046%_ _%$e211046%_ 'C)))
               (_%gsc-options211054%_
                (append (cons '"-target"
                              (cons (symbol->string _%target211049%_) '()))
                        (let ((_%$e211051%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts211040%_))))
                          (if _%$e211051%_ _%$e211051%_ '()))))
               (_%keep-scm?211056%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts211040%_)))
               (_%verbosity211058%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts211040%_)))
               (_%optimize211060%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts211040%_)))
               (_%debug211062%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts211040%_)))
               (_%gen-ssxi211064%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts211040%_)))
               (_%parallel?211066%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts211040%_))))
          (if _%outdir211042%_
              (let ((__tmp211250
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir211042%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211250))
              '#!void)
          (if _%optimize211060%_
              (let ((__tmp211251
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211251))
              '#!void)
          (let ((__tmp211252
                 (lambda ()
                   (let ((__tmp211253
                          (lambda ()
                            (let ((__tmp211254
                                   (lambda ()
                                     (let ((__tmp211255
                                            (lambda ()
                                              (let ((__tmp211256
                                                     (lambda ()
                                                       (let ((__tmp211257
                                                              (lambda ()
                                                                (let ((__tmp211258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp211259
                                        (lambda ()
                                          (let ((__tmp211260
                                                 (lambda ()
                                                   (let ((__tmp211262
                                                          (lambda ()
                                                            (let ((__tmp211264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp211265
                                    (lambda ()
                                      (let ((__tmp211266
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath211039%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp211267
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath211039%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp211267))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp211266
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp211265
                                gxc#current-compile-parallel
                                _%parallel?211066%_))))
                          (__tmp211263
                           (cons (cons 'compile-module
                                       (cons _%srcpath211039%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211264
                       gxc#current-compile-context
                       __tmp211263))))
                 (__tmp211261 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp211262
                                                      gxc#current-compile-timestamp
                                                      __tmp211261)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp211260
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi211064%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp211259
                                    gxc#current-compile-debug
                                    _%debug211062%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp211258
                           gxc#current-compile-optimize
                           _%optimize211060%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp211257
                  gxc#current-compile-verbose
                  _%verbosity211058%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211256
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?211056%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211255
                                        gxc#current-compile-gsc-options
                                        _%gsc-options211054%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211254
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?211044%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211253
                      gx#current-compilation-target
                      _%target211049%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211252
             gxc#current-compile-output-dir
             _%outdir211042%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath211088%_)
        (let ((_%opts211090%_ '()))
          (gxc#compile-module__% _%srcpath211088%_ _%opts211090%_))))
    (define gxc#compile-module
      (lambda _g211268_
        (let ((_g211269_ (let () (declare (not safe)) (##length _g211268_))))
          (cond ((let () (declare (not safe)) (##fx= _g211269_ 1))
                 (apply gxc#compile-module__0 _g211268_))
                ((let () (declare (not safe)) (##fx= _g211269_ 2))
                 (apply gxc#compile-module__% _g211268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g211268_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath210989%_ _%opts210990%_)
        (if (string? _%srcpath210989%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210989%_)))
        (let* ((_%outdir210992%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210990%_)))
               (_%invoke-gsc?210994%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210990%_)))
               (_%target210999%_
                (let ((_%$e210996%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210990%_))))
                  (if _%$e210996%_ _%$e210996%_ 'C)))
               (_%gsc-options211004%_
                (append (cons '"-target"
                              (cons (symbol->string _%target210999%_) '()))
                        (let ((_%$e211001%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210990%_))))
                          (if _%$e211001%_ _%$e211001%_ '()))))
               (_%keep-scm?211006%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210990%_)))
               (_%verbosity211008%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210990%_)))
               (_%debug211010%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210990%_)))
               (_%parallel?211012%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210990%_))))
          (if _%outdir210992%_
              (let ((__tmp211270
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210992%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp211270))
              '#!void)
          (let ((__tmp211271
                 (lambda ()
                   (let ((__tmp211272
                          (lambda ()
                            (let ((__tmp211273
                                   (lambda ()
                                     (let ((__tmp211274
                                            (lambda ()
                                              (let ((__tmp211275
                                                     (lambda ()
                                                       (let ((__tmp211276
                                                              (lambda ()
                                                                (let ((__tmp211277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp211279
                                        (lambda ()
                                          (let ((__tmp211281
                                                 (lambda ()
                                                   (let ((__tmp211282
                                                          (lambda ()
                                                            (let ((__tmp211283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath210989%_))
                             (gxc#compile-executable-module
                              (let ((__tmp211284
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath210989%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp211284))
                              _%opts210990%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211283
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp211282
                                                      gxc#current-compile-parallel
                                                      _%parallel?211012%_))))
                                                (__tmp211280
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath210989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp211281
                                             gxc#current-compile-context
                                             __tmp211280))))
                                       (__tmp211278 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp211279
                                    gxc#current-compile-timestamp
                                    __tmp211278)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp211277
                           gxc#current-compile-debug
                           _%debug211010%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp211276
                  gxc#current-compile-verbose
                  _%verbosity211008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211275
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?211006%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211274
                                        gxc#current-compile-gsc-options
                                        _%gsc-options211004%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211273
                               gx#current-compilation-target
                               _%target210999%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211272
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?210994%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211271
             gxc#current-compile-output-dir
             _%outdir210992%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath211031%_)
        (let ((_%opts211033%_ '()))
          (gxc#compile-exe__% _%srcpath211031%_ _%opts211033%_))))
    (define gxc#compile-exe
      (lambda _g211285_
        (let ((_g211286_ (let () (declare (not safe)) (##length _g211285_))))
          (cond ((let () (declare (not safe)) (##fx= _g211286_ 1))
                 (apply gxc#compile-exe__0 _g211285_))
                ((let () (declare (not safe)) (##fx= _g211286_ 2))
                 (apply gxc#compile-exe__% _g211285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g211285_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx210985%_ _%opts210986%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts210986%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx210985%_
             _%opts210986%_)
            (gxc#compile-executable-module/separate
             _%ctx210985%_
             _%opts210986%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx210785%_ _%opts210786%_)
        (letrec ((_%generate-stub210788%_
                  (lambda (_%builtin-modules210981%_)
                    (let ((_%mod-main210983%_
                           (gxc#find-runtime-symbol _%ctx210785%_ 'main)))
                      (let ((__tmp211287
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules210981%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp211287))
                      (let ((__tmp211288
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main210983%_
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
                        (##write __tmp211288))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts210789%_
                  (lambda (_%gerbil-libdir210979%_)
                    (let ((__tmp211289
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir210979%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp211289 read))))
                 (_%replace-extension210790%_
                  (lambda (_%path210976%_ _%ext210977%_)
                    (string-append
                     (path-strip-extension _%path210976%_)
                     _%ext210977%_)))
                 (_%replace-extension-with-c210791%_
                  (lambda (_%path210974%_)
                    (_%replace-extension210790%_ _%path210974%_ '".c")))
                 (_%replace-extension-with-object210792%_
                  (lambda (_%path210972%_)
                    (_%replace-extension210790%_
                     _%path210972%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?210793%_
                  (lambda (_%ctx210970%_)
                    (if (_%exclude-module?210795%_ _%ctx210970%_)
                        '#f
                        (not (_%libgerbil-module?210794%_ _%ctx210970%_)))))
                 (_%libgerbil-module?210794%_
                  (lambda (_%ctx210963%_)
                    (let ((_%id-str210965%_
                           (symbol->string
                            (##structure-ref
                             _%ctx210963%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?210795%_ _%id-str210965%_)
                          '#f
                          (let ((_%$e210967%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str210965%_))))
                            (if _%$e210967%_
                                _%$e210967%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str210965%_))))))))
                 (_%exclude-module?210795%_
                  (lambda (_%ctx-or-str210959%_)
                    (let ((_%str210961%_
                           (if (string? _%ctx-or-str210959%_)
                               _%ctx-or-str210959%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str210959%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str210961%_))))
                 (_%not-file-empty?210796%_
                  (lambda (_%path210957%_)
                    (not (gxc#file-empty? _%path210957%_))))
                 (_%fold-libgerbil-runtime-scm210797%_
                  (lambda (_%gerbil-staticdir210950%_ _%libgerbil-scm210951%_)
                    (let ((_%gerbil-runtime-scm210955%_
                           (let ((__tmp211290
                                  (lambda (_%rtm210953%_)
                                    (path-expand
                                     (let ((__tmp211291
                                            (let ((__tmp211292
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm210953%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp211292
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp211291 '".scm"))
                                     _%gerbil-staticdir210950%_))))
                             (declare (not safe))
                             (##map __tmp211290 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates210798%_
                       (append _%gerbil-runtime-scm210955%_
                               _%libgerbil-scm210951%_)))))
                 (_%remove-duplicates210798%_
                  (lambda (_%strlst210910%_)
                    (let _%loop210912%_ ((_%rest210914%_ _%strlst210910%_)
                                         (_%result210915%_ '()))
                      (let* ((_%rest210916210924%_ _%rest210914%_)
                             (_%else210918210932%_
                              (lambda () (reverse! _%result210915%_)))
                             (_%K210920210938%_
                              (lambda (_%rest210935%_ _%path210936%_)
                                (if (member _%path210936%_ _%result210915%_)
                                    (_%loop210912%_
                                     _%rest210935%_
                                     _%result210915%_)
                                    (_%loop210912%_
                                     _%rest210935%_
                                     (cons _%path210936%_
                                           _%result210915%_))))))
                        (if (pair? _%rest210916210924%_)
                            (let ((_%hd210921210941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest210916210924%_)))
                                  (_%tl210922210943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest210916210924%_))))
                              (let* ((_%path210946%_ _%hd210921210941%_)
                                     (_%rest210948%_ _%tl210922210943%_))
                                (_%K210920210938%_
                                 _%rest210948%_
                                 _%path210946%_)))
                            (_%else210918210932%_))))))
                 (_%compile-stub210799%_
                  (lambda (_%output-scm210806%_ _%output-bin210807%_)
                    (let* ((_%gerbil-home210809%_
                            (let ((__tmp211293
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp211293)))
                           (_%gerbil-libdir210811%_
                            (path-expand '"lib" _%gerbil-home210809%_))
                           (_%gerbil-staticdir210813%_
                            (path-expand '"static" _%gerbil-libdir210811%_))
                           (_%deps210815%_
                            (gxc#find-runtime-module-deps _%ctx210785%_))
                           (_%libgerbil-deps210817%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?210794%_
                               _%deps210815%_)))
                           (_%libgerbil-scm210819%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps210817%_)))
                           (_%libgerbil-scm210821%_
                            (_%fold-libgerbil-runtime-scm210797%_
                             _%gerbil-staticdir210813%_
                             _%libgerbil-scm210819%_))
                           (_%libgerbil-c210823%_
                            (map _%replace-extension-with-c210791%_
                                 _%libgerbil-scm210821%_))
                           (_%libgerbil-o210825%_
                            (map _%replace-extension-with-object210792%_
                                 _%libgerbil-scm210821%_))
                           (_%src-deps210827%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?210793%_
                               _%deps210815%_)))
                           (_%src-deps-scm210829%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps210827%_)))
                           (_%src-deps-scm210831%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?210796%_
                               _%src-deps-scm210829%_)))
                           (_%src-deps-scm210833%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm210831%_)))
                           (_%src-deps-c210835%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c210791%_
                                     _%src-deps-scm210833%_)))
                           (_%src-deps-o210837%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object210792%_
                                     _%src-deps-scm210833%_)))
                           (_%src-bin-scm210839%_
                            (gxc#find-static-module-file _%ctx210785%_))
                           (_%src-bin-scm210841%_
                            (path-expand _%src-bin-scm210839%_))
                           (_%src-bin-c210843%_
                            (_%replace-extension-with-c210791%_
                             _%src-bin-scm210841%_))
                           (_%src-bin-o210845%_
                            (_%replace-extension-with-object210792%_
                             _%src-bin-scm210841%_))
                           (_%output-bin210847%_
                            (path-expand _%output-bin210807%_))
                           (_%output-scm210849%_
                            (path-expand _%output-scm210806%_))
                           (_%output-c210851%_
                            (_%replace-extension-with-c210791%_
                             _%output-scm210849%_))
                           (_%output-o210853%_
                            (_%replace-extension-with-object210792%_
                             _%output-scm210849%_))
                           (_%output_-c210855%_
                            (_%replace-extension210790%_
                             _%output-scm210849%_
                             '"_.c"))
                           (_%output_-o210857%_
                            (_%replace-extension210790%_
                             _%output-scm210849%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts210859%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210861%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210863%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir210813%_))
                           (_%output-ld-opts210865%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts210867%_
                            (_%get-libgerbil-ld-opts210789%_
                             _%gerbil-libdir210811%_))
                           (_%rpath210869%_
                            (gxc#gerbil-rpath _%gerbil-libdir210811%_))
                           (_%builtin-modules210873%_
                            (_%remove-duplicates210798%_
                             (let ((__tmp211294
                                    (let ((__tmp211296
                                           (lambda (_%mod210871%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod210871%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp211295
                                           (cons _%ctx210785%_
                                                 _%deps210815%_)))
                                      (declare (not safe))
                                      (##map __tmp211296 __tmp211295))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp211294)))))
                      (letrec ((_%compile-obj210876%_
                                (lambda (_%scm-path210883%_ _%c-path210884%_)
                                  (let* ((_%o-path210886%_
                                          (_%replace-extension210790%_
                                           _%c-path210884%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock210888%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path210886%_
                                             '".lock")))
                                         (_%locked210890%_ '#f)
                                         (_%unlock210893%_
                                          (lambda ()
                                            (close-port _%locked210890%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock210888%_)))))
                                    (let _%retry210896%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock210888%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry210896%_))
                                          (begin
                                            (set! _%locked210890%_
                                                  (let ((__tmp211297
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock210888%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp211297)))
                                            (if _%locked210890%_
                                                '#!void
                                                (_%retry210896%_)))))
                                    (let ((__tmp211299
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path210886%_)))
                                                     (not _%scm-path210883%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path210883%_
                                                        _%o-path210886%_)))
                                                 (let ((_%gsc-cc-opts210907%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp211300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp211301 (cons _%c-path210884%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp211301
                            _%gsc-static-opts210863%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211300 _%gsc-cc-opts210907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp211298
                                           (lambda () (_%unlock210893%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp211299
                                       __tmp211298))))))
                        (let ((__tmp211302
                               (lambda ()
                                 (let ((__tmp211303
                                        (path-directory _%output-bin210847%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp211303)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp211302))
                        (gxc#with-output-to-scheme-file
                         _%output-scm210849%_
                         (lambda ()
                           (_%generate-stub210788%_
                            _%builtin-modules210873%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it210881%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp211304
                                                   (let ((__tmp211305
                                                          (let ((__tmp211306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm210841%_
                               (cons _%output-scm210849%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211306 _%src-deps-scm210833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp211305
                                                      _%libgerbil-c210823%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp211304
                                               _%gsc-link-opts210859%_))))
                                     (for-each
                                      _%compile-obj210876%_
                                      (let ((__tmp211307
                                             (cons _%src-bin-scm210841%_
                                                   (cons _%output-scm210849%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp211307
                                         _%src-deps-scm210833%_))
                                      (let ((__tmp211308
                                             (cons _%src-bin-c210843%_
                                                   (cons _%output-c210851%_
                                                         (cons _%output_-c210855%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp211308
                                         _%src-deps-c210835%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin210847%_
                                                        (let ((__tmp211309
                                                               (cons _%src-bin-o210845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o210853%_
                                   (cons _%output_-o210857%_
                                         (let ((__tmp211310
                                                (let ((__tmp211311
                                                       (let ((__tmp211313
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir210811%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts210867%_))))
                     (__tmp211312
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath210869%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp211313 __tmp211312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp211311
                                                   _%output-ld-opts210865%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp211310
                                            _%libgerbil-o210825%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp211309 _%src-deps-o210837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp211314
                                            (cons _%output-c210851%_
                                                  (cons _%output_-c210855%_
                                                        (cons _%output-o210853%_
                                                              (cons _%output_-o210857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp211314)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it210881%_))
                                  (_%compile-it210881%_)))
                            '#!void))))))
          (let* ((_%output-bin210801%_
                  (gxc#compile-exe-output-file _%ctx210785%_ _%opts210786%_))
                 (_%output-scm210803%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210801%_ '"__exe.scm"))))
            (_%compile-stub210799%_
             _%output-scm210803%_
             _%output-bin210801%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx210607%_ _%opts210608%_)
        (letrec ((_%reset-declare210610%_
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
                 (_%generate-stub210611%_
                  (lambda (_%deps210776%_)
                    (let ((_%mod-main210778%_
                           (gxc#find-runtime-symbol _%ctx210607%_ 'main))
                          (_%reset-decl210779%_ (_%reset-declare210610%_))
                          (_%user-decl210780%_ (_%user-declare210612%_)))
                      (for-each
                       (lambda (_%dep210782%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl210779%_))
                         (newline)
                         (if _%user-decl210780%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl210780%_))
                               (newline))
                             '#!void)
                         (let ((__tmp211315
                                (cons 'include (cons _%dep210782%_ '()))))
                           (declare (not safe))
                           (##write __tmp211315))
                         (newline))
                       _%deps210776%_)
                      (let ((__tmp211316
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main210778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp211316))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare210612%_
                  (lambda ()
                    (let* ((_%gsc-opts210681%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts210608%_)))
                           (_%gsc-prelude210683%_
                            (if _%gsc-opts210681%_
                                (member '"-prelude" _%gsc-opts210681%_)
                                '#f))
                           (_%gsc-prelude210685%_
                            (if _%gsc-prelude210683%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude210683%_)))
                                '#f)))
                      (let _%lp210688%_ ((_%rest210690%_
                                          (cons _%gsc-prelude210685%_ '()))
                                         (_%user-decls210691%_ '()))
                        (let* ((_%rest210692210700%_ _%rest210690%_)
                               (_%else210694210708%_
                                (lambda ()
                                  (if (null? _%user-decls210691%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls210691%_)))))
                               (_%K210696210764%_
                                (lambda (_%rest210711%_ _%expr210712%_)
                                  (let* ((_%expr210713210725%_ _%expr210712%_)
                                         (_%else210716210733%_
                                          (lambda ()
                                            (_%lp210688%_
                                             _%rest210711%_
                                             _%user-decls210691%_))))
                                    (let ((_%K210721210754%_
                                           (lambda (_%decls210752%_)
                                             (_%lp210688%_
                                              _%rest210711%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls210691%_
                                                 _%decls210752%_)))))
                                          (_%K210718210739%_
                                           (lambda (_%exprs210737%_)
                                             (_%lp210688%_
                                              (append _%exprs210737%_
                                                      _%rest210711%_)
                                              _%user-decls210691%_))))
                                      (if (pair? _%expr210713210725%_)
                                          (let ((_%tl210723210759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr210713210725%_)))
                                                (_%hd210722210757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr210713210725%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd210722210757%_
                                                         'declare))
                                                (let ((_%decls210762%_
                                                       _%tl210723210759%_))
                                                  (_%K210721210754%_
                                                   _%decls210762%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd210722210757%_
                                                             'begin))
                                                    (let ((_%exprs210747%_
                                                           _%tl210723210759%_))
                                                      (_%K210718210739%_
                                                       _%exprs210747%_))
                                                    (_%else210716210733%_))))
                                          (_%else210716210733%_)))))))
                          (if (pair? _%rest210692210700%_)
                              (let ((_%hd210697210767%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest210692210700%_)))
                                    (_%tl210698210769%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest210692210700%_))))
                                (let* ((_%expr210772%_ _%hd210697210767%_)
                                       (_%rest210774%_ _%tl210698210769%_))
                                  (_%K210696210764%_
                                   _%rest210774%_
                                   _%expr210772%_)))
                              (_%else210694210708%_)))))))
                 (_%compile-stub210613%_
                  (lambda (_%output-scm210620%_ _%output-bin210621%_)
                    (let* ((_%gerbil-home210623%_
                            (let ((__tmp211317
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp211317)))
                           (_%gerbil-libdir210625%_
                            (path-expand '"lib" _%gerbil-home210623%_))
                           (_%runtime210627%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp210629%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home210623%_))
                           (_%include-gambit-sharp210631%_
                            (gxc#include-source _%gambit-sharp210629%_))
                           (_%bin-scm210633%_
                            (gxc#find-static-module-file _%ctx210607%_))
                           (_%deps210635%_
                            (gxc#find-runtime-module-deps _%ctx210607%_))
                           (_%deps210637%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps210635%_)))
                           (_%deps210642%_
                            (let ((__tmp211318
                                   (lambda (_%$obj210639%_)
                                     (not (gxc#file-empty? _%$obj210639%_)))))
                              (declare (not safe))
                              (##filter __tmp211318 _%deps210637%_)))
                           (_%deps210646%_
                            (let ((__tmp211319
                                   (lambda (_%f210644%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f210644%_
                                             _%runtime210627%_))))))
                              (declare (not safe))
                              (##filter __tmp211319 _%deps210642%_)))
                           (_%output-base210648%_
                            (let ((__tmp211320
                                   (path-strip-extension
                                    _%output-scm210620%_)))
                              (declare (not safe))
                              (##string-append __tmp211320)))
                           (_%output-c210650%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210648%_ '".c")))
                           (_%output-o210652%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base210648%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_210654%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210648%_ '"_.c")))
                           (_%output-o_210656%_
                            (let ((__tmp211321
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base210648%_
                               __tmp211321)))
                           (_%gsc-link-opts210658%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210660%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210662%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir210625%_)))
                           (_%output-ld-opts210664%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros210666%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp210631%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp210631%_
                                            '()))))
                           (_%gsc-link-opts210668%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts210658%_
                               _%gsc-gx-macros210666%_)))
                           (_%rpath210670%_
                            (gxc#gerbil-rpath _%gerbil-libdir210625%_))
                           (_%default-ld-options210672%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp211322
                             (lambda ()
                               (let ((__tmp211323
                                      (path-directory _%output-bin210621%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp211323)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp211322))
                      (gxc#with-output-to-scheme-file
                       _%output-scm210620%_
                       (lambda ()
                         (_%generate-stub210611%_
                          (let ((__tmp211324
                                 (let ((__tmp211325
                                        (cons _%bin-scm210633%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp211325
                                    _%deps210646%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp211324 _%runtime210627%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it210678%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_210654%_
                                                      (let ((__tmp211326
                                                             (cons _%output-scm210620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp211326 _%gsc-link-opts210668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp211327
                                                 (let ((__tmp211328
                                                        (cons _%output-c210650%_
                                                              (cons _%output-c_210654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp211328
                                                    _%gsc-static-opts210662%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp211327
                                             _%gsc-cc-opts210660%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin210621%_
                                                      (cons _%output-o210652%_
                                                            (cons _%output-o_210656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp211329
                                 (let ((__tmp211331
                                        (cons '"-L"
                                              (cons _%gerbil-libdir210625%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options210672%_))))
                                       (__tmp211330
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath210670%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp211331 __tmp211330))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp211329
                             _%output-ld-opts210664%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it210678%_))
                                (_%compile-it210678%_)))
                          '#!void)))))
          (let* ((_%output-bin210615%_
                  (gxc#compile-exe-output-file _%ctx210607%_ _%opts210608%_))
                 (_%output-scm210617%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210615%_ '"__exe.scm"))))
            (_%compile-stub210613%_
             _%output-scm210617%_
             _%output-bin210615%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx210556%_ _%id210557%_)
        (let ((_%$e210603%_
               (let ((__tmp211333
                      (lambda (_%e210558210560%_)
                        (let* ((_%g210562210572%_ _%e210558210560%_)
                               (_%else210564210580%_ (lambda () '#f))
                               (_%K210566210584%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g210562210572%_
                                 'gx#module-export::t))
                              (let* ((_%e210567210587%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210562210572%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e210568210590%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210562210572%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e210569210593%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210562210572%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e210569210593%_ '0))
                                    (let ((_%e210570210596%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g210562210572%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g210598210600%_)
                                             (eq? _%g210598210600%_
                                                  _%id210557%_))
                                           _%e210570210596%_)
                                          (_%K210566210584%_)
                                          (_%else210564210580%_)))
                                    (_%else210564210580%_)))
                              (_%else210564210580%_)))))
                     (__tmp211332
                      (##structure-ref
                       _%ctx210556%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp211333 __tmp211332))))
          (if _%$e210603%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e210603%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx210547%_ _%id210548%_)
        (let ((_%$e210550%_
               (gxc#find-export-binding _%ctx210547%_ _%id210548%_)))
          (if _%$e210550%_
              ((lambda (_%bind210553%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind210553%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id210548%_)))
                 (##structure-ref _%bind210553%_ '1 gx#binding::t '#f))
               _%$e210550%_)
              (let ((__tmp211334
                     (##structure-ref
                      _%ctx210547%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp211334
                 _%id210548%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx210413%_)
        (letrec* ((_%ht210415%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template210416%_
                   (lambda (_%in210492%_ _%phi210493%_)
                     (let ((_%iphi210495%_
                            (fx+ _%phi210493%_
                                 (##direct-structure-ref
                                  _%in210492%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports210496%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in210492%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp210498%_ ((_%rest210500%_ _%imports210496%_)
                                          (_%r210501%_ '()))
                         (let* ((_%rest210502210510%_ _%rest210500%_)
                                (_%else210504210518%_ (lambda () _%r210501%_))
                                (_%K210506210535%_
                                 (lambda (_%rest210521%_ _%in210522%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in210522%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi210495%_))
                                           (_%lp210498%_
                                            _%rest210521%_
                                            (cons _%in210522%_ _%r210501%_))
                                           (_%lp210498%_
                                            _%rest210521%_
                                            _%r210501%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in210522%_
                                              'gx#module-import::t))
                                           (let ((_%iphi210526%_
                                                  (fx+ _%phi210493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in210522%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi210526%_))
                                                 (_%lp210498%_
                                                  _%rest210521%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in210522%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r210501%_))
                                                 (_%lp210498%_
                                                  _%rest210521%_
                                                  _%r210501%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in210522%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi210529%_
                                                      (fx+ _%iphi210495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in210522%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi210529%_))
                                                     (_%lp210498%_
                                                      _%rest210521%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in210522%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r210501%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi210529%_))
                                                         (_%lp210498%_
                                                          _%rest210521%_
                                                          (let ((__tmp211335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template210416%_
                          _%in210522%_
                          _%iphi210495%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r210501%_ __tmp211335)))
                 (_%lp210498%_ _%rest210521%_ _%r210501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp210498%_
                                                _%rest210521%_
                                                _%r210501%_)))))))
                           (if (pair? _%rest210502210510%_)
                               (let ((_%hd210507210538%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest210502210510%_)))
                                     (_%tl210508210540%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest210502210510%_))))
                                 (let* ((_%in210543%_ _%hd210507210538%_)
                                        (_%rest210545%_ _%tl210508210540%_))
                                   (_%K210506210535%_
                                    _%rest210545%_
                                    _%in210543%_)))
                               (_%else210504210518%_)))))))
                  (_%find-deps210417%_
                   (lambda (_%rest210425%_ _%deps210426%_)
                     (let* ((_%rest210427210435%_ _%rest210425%_)
                            (_%else210429210443%_ (lambda () _%deps210426%_))
                            (_%K210431210480%_
                             (lambda (_%rest210446%_ _%hd210447%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd210447%_
                                      'gx#module-context::t))
                                   (let ((_%id210450%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210447%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports210451%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210447%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht210415%_
                                            _%id210450%_))
                                         (_%find-deps210417%_
                                          _%rest210446%_
                                          _%deps210426%_)
                                         (let ((_%$e210454%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd210447%_))))
                                           (if _%$e210454%_
                                               ((lambda (_%pre210457%_)
                                                  (let ((_%xdeps210459%_
                                                         (_%find-deps210417%_
                                                          (cons _%pre210457%_
                                                                _%imports210451%_)
                                                          _%deps210426%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht210415%_
                                                       _%id210450%_
                                                       _%hd210447%_))
                                                    (_%find-deps210417%_
                                                     _%rest210446%_
                                                     (cons _%hd210447%_
                                                           _%xdeps210459%_))))
                                                _%$e210454%_)
                                               (let ((_%xdeps210462%_
                                                      (_%find-deps210417%_
                                                       _%imports210451%_
                                                       _%deps210426%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht210415%_
                                                    _%id210450%_
                                                    _%hd210447%_))
                                                 (_%find-deps210417%_
                                                  _%rest210446%_
                                                  (cons _%hd210447%_
                                                        _%xdeps210462%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd210447%_
                                          'gx#prelude-context::t))
                                       (let ((_%id210465%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd210447%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht210415%_
                                                _%id210465%_))
                                             (_%find-deps210417%_
                                              _%rest210446%_
                                              _%deps210426%_)
                                             (let ((_%xdeps210469%_
                                                    (_%find-deps210417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd210447%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps210426%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht210415%_
                                                      _%id210465%_))
                                                   (_%find-deps210417%_
                                                    _%rest210446%_
                                                    _%xdeps210469%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht210415%_
                                                        _%id210465%_
                                                        _%hd210447%_))
                                                     (_%find-deps210417%_
                                                      _%rest210446%_
                                                      (cons _%hd210447%_
                                                            _%xdeps210469%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd210447%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd210447%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps210417%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210447%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210446%_)
                                                _%deps210426%_)
                                               (_%find-deps210417%_
                                                _%rest210446%_
                                                _%deps210426%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd210447%_
                                                  'gx#module-export::t))
                                               (_%find-deps210417%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210447%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210446%_)
                                                _%deps210426%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd210447%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd210447%_ '2 '#f '#f)))
               (_%find-deps210417%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd210447%_ '1 '#f '#f))
                      _%rest210446%_)
                _%deps210426%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd210447%_ '2 '#f '#f)))
                   (let ((_%xdeps210476%_
                          (_%import-set-template210416%_ _%hd210447%_ '0)))
                     (_%find-deps210417%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest210446%_ _%xdeps210476%_))
                      _%deps210426%_))
                   (_%find-deps210417%_ _%rest210446%_ _%deps210426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd210447%_))))))))))
                       (if (pair? _%rest210427210435%_)
                           (let ((_%hd210432210483%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest210427210435%_)))
                                 (_%tl210433210485%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest210427210435%_))))
                             (let* ((_%hd210488%_ _%hd210432210483%_)
                                    (_%rest210490%_ _%tl210433210485%_))
                               (_%K210431210480%_
                                _%rest210490%_
                                _%hd210488%_)))
                           (_%else210429210443%_))))))
          (let ((__tmp211336
                 (filter gx#expander-context-id
                         (_%find-deps210417%_
                          (let ((_%$e210419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx210413%_))))
                            (if _%$e210419%_
                                ((lambda (_%pre210422%_)
                                   (cons _%pre210422%_
                                         (##structure-ref
                                          _%ctx210413%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e210419%_)
                                (##structure-ref
                                 _%ctx210413%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp211336)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx210343%_)
        (let* ((_%context-id210345%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx210343%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx210343%_ '1 '#f '#f))
                    (string->symbol _%ctx210343%_)))
               (_%scm210347%_
                (let ((__tmp211337
                       (gxc#static-module-name _%context-id210345%_)))
                  (declare (not safe))
                  (##string-append __tmp211337 '".scm")))
               (_%dirs210349%_ (let () (declare (not safe)) (load-path)))
               (_%dirs210355%_
                (let ((_%user-libpath210351%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath210351%_
                      (let ((_%user-libpath210353%_
                             (path-expand '"lib" _%user-libpath210351%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath210353%_ _%dirs210349%_))
                            _%dirs210349%_
                            (cons _%user-libpath210353%_ _%dirs210349%_)))
                      _%dirs210349%_)))
               (_%dirs210365%_
                (let ((_%$e210357%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e210357%_
                      ((lambda (_%g210359210361%_)
                         (cons _%g210359210361%_ _%dirs210355%_))
                       _%$e210357%_)
                      _%dirs210355%_)))
               (_%dirs210371%_
                (let ((__tmp211338
                       (lambda (_%g210366210368%_)
                         (path-expand '"static" _%g210366210368%_))))
                  (declare (not safe))
                  (##map __tmp211338 _%dirs210365%_))))
          (let _%lp210374%_ ((_%rest210376%_ _%dirs210371%_))
            (let* ((_%rest210377210385%_ _%rest210376%_)
                   (_%else210379210393%_
                    (lambda ()
                      (let ((__tmp211339
                             (##structure-ref
                              _%ctx210343%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp211339
                         _%scm210347%_))))
                   (_%K210381210401%_
                    (lambda (_%rest210396%_ _%dir210397%_)
                      (let ((_%path210399%_
                             (path-expand _%scm210347%_ _%dir210397%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path210399%_))
                            _%path210399%_
                            (_%lp210374%_ _%rest210396%_))))))
              (if (pair? _%rest210377210385%_)
                  (let ((_%hd210382210404%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210377210385%_)))
                        (_%tl210383210406%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210377210385%_))))
                    (let* ((_%dir210409%_ _%hd210382210404%_)
                           (_%rest210411%_ _%tl210383210406%_))
                      (_%K210381210401%_ _%rest210411%_ _%dir210409%_)))
                  (_%else210379210393%_)))))))
    (define gxc#file-empty?
      (lambda (_%path210341%_)
        (zero? (let ((__tmp211340 (file-info _%path210341%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp211340)))))
    (define gxc#compile-top-module
      (lambda (_%ctx210332%_)
        (let ((__tmp211341
               (lambda ()
                 (let ((__tmp211342
                        (lambda ()
                          (let ((__tmp211343
                                 (lambda ()
                                   (let ((__tmp211345
                                          (lambda ()
                                            (let ((__tmp211347
                                                   (lambda ()
                                                     (let ((__tmp211349
                                                            (lambda ()
                                                              (let ((__tmp211350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx210332%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp211350))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp211351
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx210332%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp211351))
                          '#!void)
                      (gxc#collect-bindings _%ctx210332%_)
                      (gxc#compile-runtime-code _%ctx210332%_)
                      (gxc#compile-meta-code _%ctx210332%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx210332%_)
                          '#!void)))
                   (__tmp211348
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
                __tmp211349
                gxc#current-compile-runtime-names
                __tmp211348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp211346
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp211347
                                               gxc#current-compile-runtime-sections
                                               __tmp211346))))
                                         (__tmp211344
                                          (let ((__obj211245
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj211245))
                                            __obj211245)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp211345
                                      gxc#current-compile-symbol-table
                                      __tmp211344)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp211343
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp211342
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211341
           gx#current-expander-context
           _%ctx210332%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx210330%_)
        (let ((__tmp211352
               (##structure-ref _%ctx210330%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp211352))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx210274%_)
        (letrec ((_%compile1210276%_
                  (lambda (_%ctx210319%_)
                    (let* ((_%code210321%_
                            (##structure-ref
                             _%ctx210319%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm210325%_
                            (let ((_%idstr210323%_
                                   (let ((__tmp211353
                                          (##structure-ref
                                           _%ctx210319%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp211353))))
                              (declare (not safe))
                              (##string-append _%idstr210323%_ '"~0")))
                           (_%rtc?210327%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code210321%_))))
                      (if _%rtc?210327%_
                          (let ((__tmp211354
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp211354
                             _%ctx210319%_
                             _%rtm210325%_))
                          '#!void)
                      (_%generate-runtime-code210278%_
                       _%ctx210319%_
                       _%code210321%_
                       (if _%rtc?210327%_ _%rtm210325%_ '#f)))))
                 (_%context-timestamp210277%_
                  (lambda (_%ctx210317%_)
                    (let ((__tmp211355
                           (let ((__tmp211356
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx210317%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp211356 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp211355))))
                 (_%generate-runtime-code210278%_
                  (lambda (_%ctx210285%_ _%code210286%_ _%rtm210287%_)
                    (let* ((_%runtime-code?210289%_ (if _%rtm210287%_ '#t '#f))
                           (_%lifts210291%_ (box '()))
                           (_%runtime-code210298%_
                            (if _%runtime-code?210289%_
                                (let ((__tmp211357
                                       (lambda ()
                                         (let ((__tmp211358
                                                (lambda ()
                                                  (let ((__tmp211359
                                                         (lambda ()
                                                           (let ((__tmp211361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp211363
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code210286%_))))
                                  (__tmp211362
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211363
                               gxc#current-compile-identifiers
                               __tmp211362))))
                         (__tmp211360
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp211361
                      gxc#current-compile-marks
                      __tmp211360)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp211359
                                                     gxc#current-compile-lift
                                                     _%lifts210291%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp211358
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp211357
                                   gx#current-expander-context
                                   _%ctx210285%_))
                                '#f))
                           (_%runtime-code210300%_
                            (if _%runtime-code?210289%_
                                (if (null? (unbox _%lifts210291%_))
                                    _%runtime-code210298%_
                                    (cons 'begin
                                          (let ((__tmp211365
                                                 (cons _%runtime-code210298%_
                                                       '()))
                                                (__tmp211364
                                                 (reverse (unbox _%lifts210291%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp211365
                                             __tmp211364))))
                                '#f))
                           (_%runtime-code210302%_
                            (if _%runtime-code?210289%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp210277%_
                                                         _%ctx210285%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code210300%_ '())))
                                '#f))
                           (_%loader-code210305%_
                            (let ((__tmp211366
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code210286%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp211366
                               gx#current-expander-context
                               _%ctx210285%_)))
                           (_%loader-code210307%_
                            (cons 'begin
                                  (cons _%loader-code210305%_
                                        (cons (if _%runtime-code?210289%_
                                                  (cons 'load-module
                                                        (cons _%rtm210287%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0210309%_
                            (gxc#compile-output-file _%ctx210285%_ '0 '".scm"))
                           (_%scmrt210311%_
                            (gxc#compile-output-file
                             _%ctx210285%_
                             '#f
                             '".scm"))
                           (_%scms210313%_
                            (gxc#compile-static-output-file _%ctx210285%_)))
                      (if _%runtime-code?210289%_
                          (gxc#compile-scm-file__0
                           _%scm0210309%_
                           _%runtime-code210302%_)
                          '#!void)
                      (let ((__tmp211367
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt210311%_
                                _%loader-code210307%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp211367
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms210313%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms210313%_))
                          '#!void)
                      (if _%runtime-code?210289%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0210309%_ _%scms210313%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms210313%_ void)))))))
          (let* ((_%all-modules210280%_
                  (cons _%ctx210274%_ (gxc#lift-nested-modules _%ctx210274%_)))
                 (__tmp211368
                  (lambda (_%ctx210282%_)
                    (let ((__tmp211369
                           (lambda () (_%compile1210276%_ _%ctx210282%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp211369
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp211368 _%all-modules210280%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx210173%_)
        (letrec ((_%compile-ssi210175%_
                  (lambda (_%code210242%_)
                    (let* ((_%path210244%_
                            (gxc#compile-output-file
                             _%ctx210173%_
                             '#f
                             '".ssi"))
                           (_%prelude210256%_
                            (let* ((_%super210246%_
                                    (##structure-ref
                                     _%ctx210173%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e210248%_
                                    (##structure-ref
                                     _%super210246%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e210248%_
                                  ((lambda (_%g210250210252%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g210250210252%_)))
                                   _%$e210248%_)
                                  ':<root>)))
                           (_%ns210258%_
                            (##structure-ref
                             _%ctx210173%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr210260%_
                            (symbol->string
                             (##structure-ref
                              _%ctx210173%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg210268%_
                            (let ((_%$e210262%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr210260%_ '#\/))))
                              (if _%$e210262%_
                                  ((lambda (_%x210265%_)
                                     (let ((__tmp211370
                                            (substring
                                             _%idstr210260%_
                                             '0
                                             _%x210265%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp211370)))
                                   _%$e210262%_)
                                  '#f)))
                           (_%rt210270%_
                            (let ((__tmp211371
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp211371 _%ctx210173%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path210244%_))
                      (gxc#with-output-to-scheme-file
                       _%path210244%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude210256%_))
                         (if _%pkg210268%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg210268%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns210258%_))
                         (newline)
                         (pretty-print _%code210242%_)
                         (if _%rt210270%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt210270%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi210176%_
                  (lambda (_%part210181%_)
                    (let* ((_%part210182210195%_ _%part210181%_)
                           (_%E210184210199%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part210182210195%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K210185210211%_
                            (lambda (_%code210202%_
                                     _%n210203%_
                                     _%phi210204%_
                                     _%phi-ctx210205%_)
                              (let ((_%code210209%_
                                     (let ((__tmp211372
                                            (lambda ()
                                              (let ((__tmp211373
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code210202%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp211373
                                                 gx#current-expander-phi
                                                 _%phi210204%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp211372
                                        gx#current-expander-context
                                        _%phi-ctx210205%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx210173%_
                                  _%n210203%_
                                  '".scm")
                                 _%code210209%_
                                 '#t)))))
                      (if (pair? _%part210182210195%_)
                          (let ((_%hd210186210214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part210182210195%_)))
                                (_%tl210187210216%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part210182210195%_))))
                            (let ((_%phi-ctx210219%_ _%hd210186210214%_))
                              (if (pair? _%tl210187210216%_)
                                  (let ((_%hd210188210221%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl210187210216%_)))
                                        (_%tl210189210223%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl210187210216%_))))
                                    (let ((_%phi210226%_ _%hd210188210221%_))
                                      (if (pair? _%tl210189210223%_)
                                          (let ((_%hd210190210228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl210189210223%_)))
                                                (_%tl210191210230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl210189210223%_))))
                                            (let ((_%n210233%_
                                                   _%hd210190210228%_))
                                              (if (pair? _%tl210191210230%_)
                                                  (let ((_%hd210192210235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl210191210230%_)))
                                                        (_%tl210193210237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl210191210230%_))))
                                                    (let ((_%code210240%_
                                                           _%hd210192210235%_))
                                                      (if (null? _%tl210193210237%_)
                                                          (_%K210185210211%_
                                                           _%code210240%_
                                                           _%n210233%_
                                                           _%phi210226%_
                                                           _%phi-ctx210219%_)
                                                          (_%E210184210199%_))))
                                                  (_%E210184210199%_))))
                                          (_%E210184210199%_))))
                                  (_%E210184210199%_))))
                          (_%E210184210199%_))))))
          (let ((_g211374_ (gxc#generate-meta-code _%ctx210173%_)))
            (begin
              (let ((_g211375_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g211374_)
                           (##values-length _g211374_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g211375_ 2)))
                    (error "Context expects 2 values" _g211375_)))
              (let ((_%ssi-code210178%_
                     (let () (declare (not safe)) (##values-ref _g211374_ 0)))
                    (_%phi-code210179%_
                     (let () (declare (not safe)) (##values-ref _g211374_ 1))))
                (begin
                  (_%compile-ssi210175%_ _%ssi-code210178%_)
                  (for-each _%compile-phi210176%_ _%phi-code210179%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx210155%_)
        (let* ((_%path210157%_
                (gxc#compile-output-file _%ctx210155%_ '#f '".ssxi.ss"))
               (_%code210159%_
                (let ((__tmp211376
                       (##structure-ref
                        _%ctx210155%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp211376)))
               (_%idstr210161%_
                (symbol->string
                 (##structure-ref
                  _%ctx210155%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg210169%_
                (let ((_%$e210163%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr210161%_ '#\/))))
                  (if _%$e210163%_
                      ((lambda (_%x210166%_)
                         (let ((__tmp211377
                                (substring _%idstr210161%_ '0 _%x210166%_)))
                           (declare (not safe))
                           (##string->symbol __tmp211377)))
                       _%$e210163%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path210157%_))
          (gxc#with-output-to-scheme-file
           _%path210157%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg210169%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg210169%_))
                 '#!void)
             (newline)
             (pretty-print _%code210159%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx210148%_)
        (let* ((_%state210150%_
                (let ((__obj211246
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj211246 _%ctx210148%_))
                  __obj211246))
               (_%ssi-code210152%_
                (let ((__tmp211378
                       (##structure-ref
                        _%ctx210148%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state210150%_
                   __tmp211378))))
          (values _%ssi-code210152%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state210150%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx210139%_)
        (let* ((_%lifts210141%_ (box '()))
               (__tmp211379
                (lambda ()
                  (let ((__tmp211381
                         (lambda ()
                           (let ((__tmp211383
                                  (lambda ()
                                    (let ((_%code210146%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx210139%_))))
                                      (if (null? (unbox _%lifts210141%_))
                                          _%code210146%_
                                          (cons 'begin
                                                (let ((__tmp211385
                                                       (cons _%code210146%_
                                                             '()))
                                                      (__tmp211384
                                                       (reverse (unbox _%lifts210141%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp211385
                                                   __tmp211384)))))))
                                 (__tmp211382
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp211383
                              gxc#current-compile-identifiers
                              __tmp211382))))
                        (__tmp211380
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp211381
                     gxc#current-compile-marks
                     __tmp211380)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211379
           gxc#current-compile-lift
           _%lifts210141%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx210135%_)
        (let ((_%modules210137%_ (box '())))
          (let ((__tmp211386
                 (##structure-ref _%ctx210135%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules210137%_ __tmp211386))
          (reverse (unbox _%modules210137%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path210115%_ _%code210116%_ _%phi?210117%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path210115%_))
        (gxc#with-output-to-scheme-file
         _%path210115%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp211387
                                           (if _%phi?210117%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp211387)))))))
           (pretty-print _%code210116%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it210121%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path210115%_ _%phi?210117%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp211388
                         (cons 'compile-file (cons _%path210115%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it210121%_ __tmp211388))
                  (_%compile-it210121%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path210126%_ _%code210127%_)
        (let ((_%phi?210129%_ '#f))
          (gxc#compile-scm-file__%
           _%path210126%_
           _%code210127%_
           _%phi?210129%_))))
    (define gxc#compile-scm-file
      (lambda _g211389_
        (let ((_g211390_ (let () (declare (not safe)) (##length _g211389_))))
          (cond ((let () (declare (not safe)) (##fx= _g211390_ 2))
                 (apply gxc#compile-scm-file__0 _g211389_))
                ((let () (declare (not safe)) (##fx= _g211390_ 3))
                 (apply gxc#compile-scm-file__% _g211389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g211389_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?210016%_)
        (let _%lp210018%_ ((_%rest210020%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts210021%_ '()))
          (let* ((_%rest210022210042%_ _%rest210020%_)
                 (_%else210026210050%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts210021%_)))
                        (reverse _%opts210021%_)))))
            (let ((_%K210036210093%_
                   (lambda (_%rest210091%_)
                     (_%lp210018%_ _%rest210091%_ _%opts210021%_)))
                  (_%K210031210075%_
                   (lambda (_%rest210073%_)
                     (_%lp210018%_ _%rest210073%_ _%opts210021%_)))
                  (_%K210028210057%_
                   (lambda (_%rest210054%_ _%opt210055%_)
                     (_%lp210018%_
                      _%rest210054%_
                      (cons _%opt210055%_ _%opts210021%_)))))
              (if (pair? _%rest210022210042%_)
                  (let ((_%tl210038210098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210022210042%_)))
                        (_%hd210037210096%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210022210042%_))))
                    (if (equal? _%hd210037210096%_ '"-cc-options")
                        (if (pair? _%tl210038210098%_)
                            (let* ((_%tl210040210101%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl210038210098%_)))
                                   (_%rest210104%_ _%tl210040210101%_))
                              (_%K210036210093%_ _%rest210104%_))
                            (let ((_%opt210065%_ _%hd210037210096%_)
                                  (_%rest210067%_ _%tl210038210098%_))
                              (_%K210028210057%_
                               _%rest210067%_
                               _%opt210065%_)))
                        (if (equal? _%hd210037210096%_ '"-ld-options")
                            (if (pair? _%tl210038210098%_)
                                (let* ((_%tl210035210083%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl210038210098%_)))
                                       (_%rest210086%_ _%tl210035210083%_))
                                  (_%K210031210075%_ _%rest210086%_))
                                (let ((_%opt210065%_ _%hd210037210096%_)
                                      (_%rest210067%_ _%tl210038210098%_))
                                  (_%K210028210057%_
                                   _%rest210067%_
                                   _%opt210065%_)))
                            (let ((_%opt210065%_ _%hd210037210096%_)
                                  (_%rest210067%_ _%tl210038210098%_))
                              (_%K210028210057%_
                               _%rest210067%_
                               _%opt210065%_)))))
                  (_%else210026210050%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?210110%_ '#f)) (gxc#gsc-link-options__% _%phi?210110%_))))
    (define gxc#gsc-link-options
      (lambda _g211391_
        (let ((_g211392_ (let () (declare (not safe)) (##length _g211391_))))
          (cond ((let () (declare (not safe)) (##fx= _g211392_ 0))
                 (apply gxc#gsc-link-options__0 _g211391_))
                ((let () (declare (not safe)) (##fx= _g211392_ 1))
                 (apply gxc#gsc-link-options__% _g211391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g211391_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords209865%_ _%static?209861209866%_ _%phi?209868%_)
        (let ((_%static?209870%_
               (if (eq? _%static?209861209866%_ absent-value)
                   '#f
                   _%static?209861209866%_)))
          (if _%phi?209868%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp209872%_ ((_%rest209874%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209875%_ '()))
                (let* ((_%rest209876209902%_ _%rest209874%_)
                       (_%else209881209910%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts209875%_)))
                              (reverse! _%opts209875%_)))))
                  (let ((_%K209896209973%_
                         (lambda (_%rest209970%_ _%opt209971%_)
                           (if _%static?209870%_
                               (_%lp209872%_
                                _%rest209970%_
                                (cons _%opt209971%_
                                      (cons '"-cc-options" _%opts209875%_)))
                               (_%lp209872%_ _%rest209970%_ _%opts209875%_))))
                        (_%K209891209950%_
                         (lambda (_%rest209947%_ _%opt209948%_)
                           (_%lp209872%_
                            _%rest209947%_
                            (cons _%opt209948%_
                                  (cons '"-cc-options" _%opts209875%_)))))
                        (_%K209886209930%_
                         (lambda (_%rest209928%_)
                           (_%lp209872%_ _%rest209928%_ _%opts209875%_)))
                        (_%K209883209916%_
                         (lambda (_%rest209914%_)
                           (_%lp209872%_ _%rest209914%_ _%opts209875%_))))
                    (if (pair? _%rest209876209902%_)
                        (let ((_%tl209898209978%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209876209902%_)))
                              (_%hd209897209976%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209876209902%_))))
                          (if (equal? _%hd209897209976%_ '"-cc-options")
                              (if (pair? _%tl209898209978%_)
                                  (let ((_%tl209900209983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209898209978%_)))
                                        (_%hd209899209981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209898209978%_))))
                                    (if (equal? _%hd209899209981%_ '"-Bstatic")
                                        (let ((_%opt209986%_
                                               _%hd209899209981%_)
                                              (_%rest209988%_
                                               _%tl209900209983%_))
                                          (_%K209896209973%_
                                           _%rest209988%_
                                           _%opt209986%_))
                                        (let ((_%opt209963%_
                                               _%hd209899209981%_)
                                              (_%rest209965%_
                                               _%tl209900209983%_))
                                          (_%K209891209950%_
                                           _%rest209965%_
                                           _%opt209963%_))))
                                  (let ((_%rest209922%_ _%tl209898209978%_))
                                    (_%K209883209916%_ _%rest209922%_)))
                              (if (equal? _%hd209897209976%_ '"-ld-options")
                                  (if (pair? _%tl209898209978%_)
                                      (let* ((_%tl209890209938%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209898209978%_)))
                                             (_%rest209941%_
                                              _%tl209890209938%_))
                                        (_%K209886209930%_ _%rest209941%_))
                                      (let ((_%rest209922%_
                                             _%tl209898209978%_))
                                        (_%K209883209916%_ _%rest209922%_)))
                                  (let ((_%rest209922%_ _%tl209898209978%_))
                                    (_%K209883209916%_ _%rest209922%_)))))
                        (_%else209881209910%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords209993%_ _%static?209861209994%_)
        (let ((_%phi?209996%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords209993%_
           _%static?209861209994%_
           _%phi?209996%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g211393_
        (let ((_g211394_ (let () (declare (not safe)) (##length _g211393_))))
          (cond ((let () (declare (not safe)) (##fx= _g211394_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g211393_))
                ((let () (declare (not safe)) (##fx= _g211394_ 3))
                 (apply gxc#gsc-cc-options__%__% _g211393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g211393_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords210005%_ . _%args210006%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords210005%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210005%_
                  'static:
                  absent-value))
               _%args210006%_)))
    (define gxc#gsc-cc-options
      (lambda _%args209862210012%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args209862210012%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords209710%_ _%static?209706209711%_ _%phi?209713%_)
        (let ((_%static?209715%_
               (if (eq? _%static?209706209711%_ absent-value)
                   '#f
                   _%static?209706209711%_)))
          (if _%phi?209713%_
              '()
              (let _%lp209717%_ ((_%rest209719%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209720%_ '()))
                (let* ((_%rest209721209747%_ _%rest209719%_)
                       (_%else209726209755%_
                        (lambda () (reverse! _%opts209720%_))))
                  (let ((_%K209741209818%_
                         (lambda (_%rest209815%_ _%opt209816%_)
                           (if _%static?209715%_
                               (_%lp209717%_
                                _%rest209815%_
                                (cons _%opt209816%_
                                      (cons '"-ld-options" _%opts209720%_)))
                               (_%lp209717%_ _%rest209815%_ _%opts209720%_))))
                        (_%K209736209795%_
                         (lambda (_%rest209792%_ _%opt209793%_)
                           (_%lp209717%_
                            _%rest209792%_
                            (cons _%opt209793%_
                                  (cons '"-ld-options" _%opts209720%_)))))
                        (_%K209731209775%_
                         (lambda (_%rest209773%_)
                           (_%lp209717%_ _%rest209773%_ _%opts209720%_)))
                        (_%K209728209761%_
                         (lambda (_%rest209759%_)
                           (_%lp209717%_ _%rest209759%_ _%opts209720%_))))
                    (if (pair? _%rest209721209747%_)
                        (let ((_%tl209743209823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209721209747%_)))
                              (_%hd209742209821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209721209747%_))))
                          (if (equal? _%hd209742209821%_ '"-ld-options")
                              (if (pair? _%tl209743209823%_)
                                  (let ((_%tl209745209828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209743209823%_)))
                                        (_%hd209744209826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209743209823%_))))
                                    (if (equal? _%hd209744209826%_ '"-static")
                                        (let ((_%opt209831%_
                                               _%hd209744209826%_)
                                              (_%rest209833%_
                                               _%tl209745209828%_))
                                          (_%K209741209818%_
                                           _%rest209833%_
                                           _%opt209831%_))
                                        (let ((_%opt209808%_
                                               _%hd209744209826%_)
                                              (_%rest209810%_
                                               _%tl209745209828%_))
                                          (_%K209736209795%_
                                           _%rest209810%_
                                           _%opt209808%_))))
                                  (let ((_%rest209767%_ _%tl209743209823%_))
                                    (_%K209728209761%_ _%rest209767%_)))
                              (if (equal? _%hd209742209821%_ '"-cc-options")
                                  (if (pair? _%tl209743209823%_)
                                      (let* ((_%tl209735209783%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209743209823%_)))
                                             (_%rest209786%_
                                              _%tl209735209783%_))
                                        (_%K209731209775%_ _%rest209786%_))
                                      (let ((_%rest209767%_
                                             _%tl209743209823%_))
                                        (_%K209728209761%_ _%rest209767%_)))
                                  (let ((_%rest209767%_ _%tl209743209823%_))
                                    (_%K209728209761%_ _%rest209767%_)))))
                        (_%else209726209755%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords209838%_ _%static?209706209839%_)
        (let ((_%phi?209841%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords209838%_
           _%static?209706209839%_
           _%phi?209841%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g211395_
        (let ((_g211396_ (let () (declare (not safe)) (##length _g211395_))))
          (cond ((let () (declare (not safe)) (##fx= _g211396_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g211395_))
                ((let () (declare (not safe)) (##fx= _g211396_ 3))
                 (apply gxc#gsc-ld-options__%__% _g211395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g211395_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords209850%_ . _%args209851%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords209850%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209850%_
                  'static:
                  absent-value))
               _%args209851%_)))
    (define gxc#gsc-ld-options
      (lambda _%args209707209857%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args209707209857%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir209701%_)
        (let ((_%user-staticdir209703%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir209701%_
                       '" -I "
                       _%user-staticdir209703%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp209613%_ ((_%rest209615%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209616%_ '()))
          (let* ((_%rest209617209637%_ _%rest209615%_)
                 (_%else209621209645%_ (lambda () _%opts209616%_)))
            (let ((_%K209631209688%_
                   (lambda (_%rest209686%_)
                     (_%lp209613%_ _%rest209686%_ _%opts209616%_)))
                  (_%K209626209666%_
                   (lambda (_%rest209663%_ _%opt209664%_)
                     (_%lp209613%_
                      _%rest209663%_
                      (let ((__tmp211397
                             (let ((__tmp211398
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt209664%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp211398))))
                        (declare (not safe))
                        (##append _%opts209616%_ __tmp211397)))))
                  (_%K209623209651%_
                   (lambda (_%rest209649%_)
                     (_%lp209613%_ _%rest209649%_ _%opts209616%_))))
              (if (pair? _%rest209617209637%_)
                  (let ((_%tl209633209693%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209617209637%_)))
                        (_%hd209632209691%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209617209637%_))))
                    (if (equal? _%hd209632209691%_ '"-cc-options")
                        (if (pair? _%tl209633209693%_)
                            (let* ((_%tl209635209696%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209633209693%_)))
                                   (_%rest209699%_ _%tl209635209696%_))
                              (_%K209631209688%_ _%rest209699%_))
                            (let ((_%rest209657%_ _%tl209633209693%_))
                              (_%K209623209651%_ _%rest209657%_)))
                        (if (equal? _%hd209632209691%_ '"-ld-options")
                            (if (pair? _%tl209633209693%_)
                                (let ((_%tl209630209676%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl209633209693%_)))
                                      (_%hd209629209674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl209633209693%_))))
                                  (let ((_%opt209679%_ _%hd209629209674%_)
                                        (_%rest209681%_ _%tl209630209676%_))
                                    (_%K209626209666%_
                                     _%rest209681%_
                                     _%opt209679%_)))
                                (let ((_%rest209657%_ _%tl209633209693%_))
                                  (_%K209623209651%_ _%rest209657%_)))
                            (let ((_%rest209657%_ _%tl209633209693%_))
                              (_%K209623209651%_ _%rest209657%_)))))
                  (_%else209621209645%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str209610%_)
        (not (let () (declare (not safe)) (string-empty? _%str209610%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path209603%_ _%phi?209604%_)
        (let ((_%gsc-link-opts209606%_
               (gxc#gsc-link-options__% _%phi?209604%_))
              (_%gsc-cc-opts209607%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?209604%_))
              (_%gsc-ld-opts209608%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?209604%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp211399
                  (let ((__tmp211400
                         (let ((__tmp211401 (cons _%path209603%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp211401
                            _%gsc-link-opts209606%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp211400 _%gsc-ld-opts209608%_))))
             (declare (not safe))
             (__foldr1 cons __tmp211399 _%gsc-cc-opts209607%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx209569%_ _%n209570%_ _%ext209571%_)
        (letrec ((_%module-relative-path209573%_
                  (lambda (_%ctx209601%_)
                    (path-strip-directory
                     (let ((__tmp211402
                            (##structure-ref
                             _%ctx209601%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp211402)))))
                 (_%module-source-directory209574%_
                  (lambda (_%ctx209597%_)
                    (path-directory
                     (let ((_%mpath209599%_
                            (##structure-ref
                             _%ctx209597%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath209599%_)
                           _%mpath209599%_
                           (last _%mpath209599%_))))))
                 (_%section-string209575%_
                  (lambda (_%n209591%_)
                    (if (number? _%n209591%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n209591%_))
                        (if (symbol? _%n209591%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n209591%_))
                            (if (string? _%n209591%_)
                                _%n209591%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n209591%_)))))))
                 (_%file-name209576%_
                  (lambda (_%path209589%_)
                    (if _%n209570%_
                        (string-append
                         _%path209589%_
                         '"~"
                         (_%section-string209575%_ _%n209570%_)
                         _%ext209571%_)
                        (string-append _%path209589%_ _%ext209571%_))))
                 (_%file-path209577%_
                  (lambda ()
                    (let ((_%$e209583%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e209583%_
                          ((lambda (_%outdir209586%_)
                             (path-expand
                              (_%file-name209576%_
                               (let ((__tmp211403
                                      (##structure-ref
                                       _%ctx209569%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp211403)))
                              _%outdir209586%_))
                           _%$e209583%_)
                          (path-expand
                           (_%file-name209576%_
                            (_%module-relative-path209573%_ _%ctx209569%_))
                           (_%module-source-directory209574%_
                            _%ctx209569%_)))))))
          (let ((_%path209579%_ (_%file-path209577%_)))
            (let ((__tmp211404
                   (lambda ()
                     (let ((__tmp211405 (path-directory _%path209579%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp211405)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp211404))
            _%path209579%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx209550%_)
        (letrec ((_%file-name209552%_
                  (lambda (_%id209567%_)
                    (let ((__tmp211406 (gxc#static-module-name _%id209567%_)))
                      (declare (not safe))
                      (##string-append __tmp211406 '".scm"))))
                 (_%file-path209553%_
                  (lambda ()
                    (let* ((_%file209559%_
                            (_%file-name209552%_
                             (##structure-ref
                              _%ctx209550%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e209561%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e209561%_
                          ((lambda (_%outdir209564%_)
                             (path-expand
                              _%file209559%_
                              (path-expand '"static" _%outdir209564%_)))
                           _%$e209561%_)
                          (path-expand _%file209559%_ '"static"))))))
          (let ((_%path209555%_ (_%file-path209553%_)))
            (let ((__tmp211407
                   (lambda ()
                     (let ((__tmp211408 (path-directory _%path209555%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp211408)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp211407))
            _%path209555%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx209543%_ _%opts209544%_)
        (let ((_%$e209546%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts209544%_))))
          (if _%$e209546%_
              _%$e209546%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx209543%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr209533%_)
        (if (string? _%idstr209533%_)
            (let* ((_%str209536%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr209533%_)))
                   (_%strs209538%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str209536%_ '#\/))))
              (declare (not safe))
              (string-join _%strs209538%_ '"__"))
            (if (symbol? _%idstr209533%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr209533%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr209533%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp211409
               (let ((__tmp211410 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp211410 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp211409))))
    (define gxc#invoke__%
      (lambda (_%@@keywords209497%_
               _%stdout-redirection209493209498%_
               _%stderr-redirection209494209500%_
               _%program209502%_
               _%args209503%_)
        (let* ((_%stdout-redirection209505%_
                (if (eq? _%stdout-redirection209493209498%_ absent-value)
                    '#f
                    _%stdout-redirection209493209498%_))
               (_%stderr-redirection209507%_
                (if (eq? _%stderr-redirection209494209500%_ absent-value)
                    '#f
                    _%stderr-redirection209494209500%_)))
          (let ((__tmp211411 (cons _%program209502%_ _%args209503%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp211411))
          (let* ((_%proc209509%_
                  (open-process
                   (cons 'path:
                         (cons _%program209502%_
                               (cons 'arguments:
                                     (cons _%args209503%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection209505%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection209507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output209514%_
                  (if (or _%stdout-redirection209505%_
                          _%stderr-redirection209507%_)
                      (read-line _%proc209509%_ '#f)
                      '#f))
                 (_%status209517%_ (process-status _%proc209509%_)))
            (let () (declare (not safe)) (##close-port _%proc209509%_))
            (if (zero? _%status209517%_)
                '#!void
                (begin
                  (display _%output209514%_)
                  (let ((__tmp211412 (cons _%program209502%_ _%args209503%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp211412
                     _%status209517%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords209522%_ . _%args209523%_)
        (apply gxc#invoke__%
               _%@@keywords209522%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209522%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209522%_
                  'stderr-redirection:
                  absent-value))
               _%args209523%_)))
    (define gxc#invoke
      (lambda _%args209495209529%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args209495209529%_)))))
