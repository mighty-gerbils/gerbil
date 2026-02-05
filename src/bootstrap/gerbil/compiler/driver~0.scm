(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770313943)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226196 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226196))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226197 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226197))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path226053%_ _%fun226054%_)
        (with-output-to-file
         (cons 'path: (cons _%path226053%_ gxc#scheme-file-settings))
         _%fun226054%_)))
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
      (lambda (_%gerbil-libdir226048%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir226048%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path226046%_)
        (let ((__tmp226198 (object->string _%path226046%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226198 '")"))))
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
      (lambda (_%dir226044%_) (delete-file-or-directory _%dir226044%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225988%_ _%opts225989%_)
        (if (string? _%srcpath225988%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225988%_)))
        (let* ((_%outdir225991%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225989%_)))
               (_%invoke-gsc?225993%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225989%_)))
               (_%target225998%_
                (let ((_%$e225995%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225989%_))))
                  (if _%$e225995%_ _%$e225995%_ 'C)))
               (_%gsc-options226003%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225998%_) '()))
                        (let ((_%$e226000%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225989%_))))
                          (if _%$e226000%_ _%$e226000%_ '()))))
               (_%keep-scm?226005%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225989%_)))
               (_%verbosity226007%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225989%_)))
               (_%optimize226009%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225989%_)))
               (_%debug226011%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225989%_)))
               (_%gen-ssxi226013%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225989%_)))
               (_%parallel?226015%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225989%_))))
          (if _%outdir225991%_
              (let ((__tmp226199
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225991%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226199))
              '#!void)
          (if _%optimize226009%_
              (let ((__tmp226200
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226200))
              '#!void)
          (let ((__tmp226201
                 (lambda ()
                   (let ((__tmp226202
                          (lambda ()
                            (let ((__tmp226203
                                   (lambda ()
                                     (let ((__tmp226204
                                            (lambda ()
                                              (let ((__tmp226205
                                                     (lambda ()
                                                       (let ((__tmp226206
                                                              (lambda ()
                                                                (let ((__tmp226207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226208
                                        (lambda ()
                                          (let ((__tmp226209
                                                 (lambda ()
                                                   (let ((__tmp226211
                                                          (lambda ()
                                                            (let ((__tmp226213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226214
                                    (lambda ()
                                      (let ((__tmp226215
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225988%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226216
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225988%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226216))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226215
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226214
                                gxc#current-compile-parallel
                                _%parallel?226015%_))))
                          (__tmp226212
                           (cons (cons 'compile-module
                                       (cons _%srcpath225988%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226213
                       gxc#current-compile-context
                       __tmp226212))))
                 (__tmp226210 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226211
                                                      gxc#current-compile-timestamp
                                                      __tmp226210)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226209
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi226013%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226208
                                    gxc#current-compile-debug
                                    _%debug226011%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226207
                           gxc#current-compile-optimize
                           _%optimize226009%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226206
                  gxc#current-compile-verbose
                  _%verbosity226007%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226205
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?226005%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226204
                                        gxc#current-compile-gsc-options
                                        _%gsc-options226003%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226203
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225993%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226202
                      gx#current-compilation-target
                      _%target225998%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226201
             gxc#current-compile-output-dir
             _%outdir225991%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath226037%_)
        (let ((_%opts226039%_ '()))
          (gxc#compile-module__% _%srcpath226037%_ _%opts226039%_))))
    (define gxc#compile-module
      (lambda _g226217_
        (let ((_g226218_ (let () (declare (not safe)) (##length _g226217_))))
          (cond ((let () (declare (not safe)) (##fx= _g226218_ 1))
                 (apply gxc#compile-module__0 _g226217_))
                ((let () (declare (not safe)) (##fx= _g226218_ 2))
                 (apply gxc#compile-module__% _g226217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226217_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225938%_ _%opts225939%_)
        (if (string? _%srcpath225938%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225938%_)))
        (let* ((_%outdir225941%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225939%_)))
               (_%invoke-gsc?225943%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225939%_)))
               (_%target225948%_
                (let ((_%$e225945%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225939%_))))
                  (if _%$e225945%_ _%$e225945%_ 'C)))
               (_%gsc-options225953%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225948%_) '()))
                        (let ((_%$e225950%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225939%_))))
                          (if _%$e225950%_ _%$e225950%_ '()))))
               (_%keep-scm?225955%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225939%_)))
               (_%verbosity225957%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225939%_)))
               (_%debug225959%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225939%_)))
               (_%parallel?225961%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225939%_))))
          (if _%outdir225941%_
              (let ((__tmp226219
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225941%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226219))
              '#!void)
          (let ((__tmp226220
                 (lambda ()
                   (let ((__tmp226221
                          (lambda ()
                            (let ((__tmp226222
                                   (lambda ()
                                     (let ((__tmp226223
                                            (lambda ()
                                              (let ((__tmp226224
                                                     (lambda ()
                                                       (let ((__tmp226225
                                                              (lambda ()
                                                                (let ((__tmp226226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226228
                                        (lambda ()
                                          (let ((__tmp226230
                                                 (lambda ()
                                                   (let ((__tmp226231
                                                          (lambda ()
                                                            (let ((__tmp226232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225938%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226233
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225938%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226233))
                              _%opts225939%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226232
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226231
                                                      gxc#current-compile-parallel
                                                      _%parallel?225961%_))))
                                                (__tmp226229
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226230
                                             gxc#current-compile-context
                                             __tmp226229))))
                                       (__tmp226227 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226228
                                    gxc#current-compile-timestamp
                                    __tmp226227)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226226
                           gxc#current-compile-debug
                           _%debug225959%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226225
                  gxc#current-compile-verbose
                  _%verbosity225957%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226224
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225955%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226223
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225953%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226222
                               gx#current-compilation-target
                               _%target225948%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226221
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225943%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226220
             gxc#current-compile-output-dir
             _%outdir225941%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225980%_)
        (let ((_%opts225982%_ '()))
          (gxc#compile-exe__% _%srcpath225980%_ _%opts225982%_))))
    (define gxc#compile-exe
      (lambda _g226234_
        (let ((_g226235_ (let () (declare (not safe)) (##length _g226234_))))
          (cond ((let () (declare (not safe)) (##fx= _g226235_ 1))
                 (apply gxc#compile-exe__0 _g226234_))
                ((let () (declare (not safe)) (##fx= _g226235_ 2))
                 (apply gxc#compile-exe__% _g226234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226234_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225934%_ _%opts225935%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225935%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225934%_
             _%opts225935%_)
            (gxc#compile-executable-module/separate
             _%ctx225934%_
             _%opts225935%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225734%_ _%opts225735%_)
        (letrec ((_%generate-stub225737%_
                  (lambda (_%builtin-modules225930%_)
                    (let ((_%mod-main225932%_
                           (gxc#find-runtime-symbol _%ctx225734%_ 'main)))
                      (let ((__tmp226236
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225930%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226236))
                      (let ((__tmp226237
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225932%_
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
                        (##write __tmp226237))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225738%_
                  (lambda (_%gerbil-libdir225928%_)
                    (let ((__tmp226238
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225928%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226238 read))))
                 (_%replace-extension225739%_
                  (lambda (_%path225925%_ _%ext225926%_)
                    (string-append
                     (path-strip-extension _%path225925%_)
                     _%ext225926%_)))
                 (_%replace-extension-with-c225740%_
                  (lambda (_%path225923%_)
                    (_%replace-extension225739%_ _%path225923%_ '".c")))
                 (_%replace-extension-with-object225741%_
                  (lambda (_%path225921%_)
                    (_%replace-extension225739%_
                     _%path225921%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225742%_
                  (lambda (_%ctx225919%_)
                    (if (_%exclude-module?225744%_ _%ctx225919%_)
                        '#f
                        (not (_%libgerbil-module?225743%_ _%ctx225919%_)))))
                 (_%libgerbil-module?225743%_
                  (lambda (_%ctx225912%_)
                    (let ((_%id-str225914%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225912%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225744%_ _%id-str225914%_)
                          '#f
                          (let ((_%$e225916%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225914%_))))
                            (if _%$e225916%_
                                _%$e225916%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225914%_))))))))
                 (_%exclude-module?225744%_
                  (lambda (_%ctx-or-str225908%_)
                    (let ((_%str225910%_
                           (if (string? _%ctx-or-str225908%_)
                               _%ctx-or-str225908%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225908%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225910%_))))
                 (_%not-file-empty?225745%_
                  (lambda (_%path225906%_)
                    (not (gxc#file-empty? _%path225906%_))))
                 (_%fold-libgerbil-runtime-scm225746%_
                  (lambda (_%gerbil-staticdir225899%_ _%libgerbil-scm225900%_)
                    (let ((_%gerbil-runtime-scm225904%_
                           (let ((__tmp226239
                                  (lambda (_%rtm225902%_)
                                    (path-expand
                                     (let ((__tmp226240
                                            (let ((__tmp226241
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225902%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226241
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226240 '".scm"))
                                     _%gerbil-staticdir225899%_))))
                             (declare (not safe))
                             (##map __tmp226239 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225747%_
                       (append _%gerbil-runtime-scm225904%_
                               _%libgerbil-scm225900%_)))))
                 (_%remove-duplicates225747%_
                  (lambda (_%strlst225859%_)
                    (let _%loop225861%_ ((_%rest225863%_ _%strlst225859%_)
                                         (_%result225864%_ '()))
                      (let* ((_%rest225865225873%_ _%rest225863%_)
                             (_%else225867225881%_
                              (lambda () (reverse! _%result225864%_)))
                             (_%K225869225887%_
                              (lambda (_%rest225884%_ _%path225885%_)
                                (if (member _%path225885%_ _%result225864%_)
                                    (_%loop225861%_
                                     _%rest225884%_
                                     _%result225864%_)
                                    (_%loop225861%_
                                     _%rest225884%_
                                     (cons _%path225885%_
                                           _%result225864%_))))))
                        (if (pair? _%rest225865225873%_)
                            (let ((_%hd225870225890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225865225873%_)))
                                  (_%tl225871225892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225865225873%_))))
                              (let* ((_%path225895%_ _%hd225870225890%_)
                                     (_%rest225897%_ _%tl225871225892%_))
                                (_%K225869225887%_
                                 _%rest225897%_
                                 _%path225895%_)))
                            (_%else225867225881%_))))))
                 (_%compile-stub225748%_
                  (lambda (_%output-scm225755%_ _%output-bin225756%_)
                    (let* ((_%gerbil-home225758%_
                            (let ((__tmp226242
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226242)))
                           (_%gerbil-libdir225760%_
                            (path-expand '"lib" _%gerbil-home225758%_))
                           (_%gerbil-staticdir225762%_
                            (path-expand '"static" _%gerbil-libdir225760%_))
                           (_%deps225764%_
                            (gxc#find-runtime-module-deps _%ctx225734%_))
                           (_%libgerbil-deps225766%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225743%_
                               _%deps225764%_)))
                           (_%libgerbil-scm225768%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225766%_)))
                           (_%libgerbil-scm225770%_
                            (_%fold-libgerbil-runtime-scm225746%_
                             _%gerbil-staticdir225762%_
                             _%libgerbil-scm225768%_))
                           (_%libgerbil-c225772%_
                            (map _%replace-extension-with-c225740%_
                                 _%libgerbil-scm225770%_))
                           (_%libgerbil-o225774%_
                            (map _%replace-extension-with-object225741%_
                                 _%libgerbil-scm225770%_))
                           (_%src-deps225776%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225742%_
                               _%deps225764%_)))
                           (_%src-deps-scm225778%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225776%_)))
                           (_%src-deps-scm225780%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225745%_
                               _%src-deps-scm225778%_)))
                           (_%src-deps-scm225782%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225780%_)))
                           (_%src-deps-c225784%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225740%_
                                     _%src-deps-scm225782%_)))
                           (_%src-deps-o225786%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225741%_
                                     _%src-deps-scm225782%_)))
                           (_%src-bin-scm225788%_
                            (gxc#find-static-module-file _%ctx225734%_))
                           (_%src-bin-scm225790%_
                            (path-expand _%src-bin-scm225788%_))
                           (_%src-bin-c225792%_
                            (_%replace-extension-with-c225740%_
                             _%src-bin-scm225790%_))
                           (_%src-bin-o225794%_
                            (_%replace-extension-with-object225741%_
                             _%src-bin-scm225790%_))
                           (_%output-bin225796%_
                            (path-expand _%output-bin225756%_))
                           (_%output-scm225798%_
                            (path-expand _%output-scm225755%_))
                           (_%output-c225800%_
                            (_%replace-extension-with-c225740%_
                             _%output-scm225798%_))
                           (_%output-o225802%_
                            (_%replace-extension-with-object225741%_
                             _%output-scm225798%_))
                           (_%output_-c225804%_
                            (_%replace-extension225739%_
                             _%output-scm225798%_
                             '"_.c"))
                           (_%output_-o225806%_
                            (_%replace-extension225739%_
                             _%output-scm225798%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225808%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225810%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225812%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225762%_))
                           (_%output-ld-opts225814%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225816%_
                            (_%get-libgerbil-ld-opts225738%_
                             _%gerbil-libdir225760%_))
                           (_%rpath225818%_
                            (gxc#gerbil-rpath _%gerbil-libdir225760%_))
                           (_%builtin-modules225822%_
                            (_%remove-duplicates225747%_
                             (let ((__tmp226243
                                    (let ((__tmp226245
                                           (lambda (_%mod225820%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225820%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226244
                                           (cons _%ctx225734%_
                                                 _%deps225764%_)))
                                      (declare (not safe))
                                      (##map __tmp226245 __tmp226244))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226243)))))
                      (letrec ((_%compile-obj225825%_
                                (lambda (_%scm-path225832%_ _%c-path225833%_)
                                  (let* ((_%o-path225835%_
                                          (_%replace-extension225739%_
                                           _%c-path225833%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225837%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225835%_
                                             '".lock")))
                                         (_%locked225839%_ '#f)
                                         (_%unlock225842%_
                                          (lambda ()
                                            (close-port _%locked225839%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225837%_)))))
                                    (let _%retry225845%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225837%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225845%_))
                                          (begin
                                            (set! _%locked225839%_
                                                  (let ((__tmp226246
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225837%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226246)))
                                            (if _%locked225839%_
                                                '#!void
                                                (_%retry225845%_)))))
                                    (let ((__tmp226248
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225835%_)))
                                                     (not _%scm-path225832%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225832%_
                                                        _%o-path225835%_)))
                                                 (let ((_%gsc-cc-opts225856%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226250 (cons _%c-path225833%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226250
                            _%gsc-static-opts225812%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226249 _%gsc-cc-opts225856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226247
                                           (lambda () (_%unlock225842%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226248
                                       __tmp226247))))))
                        (let ((__tmp226251
                               (lambda ()
                                 (let ((__tmp226252
                                        (path-directory _%output-bin225796%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226252)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226251))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225798%_
                         (lambda ()
                           (_%generate-stub225737%_
                            _%builtin-modules225822%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225830%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226253
                                                   (let ((__tmp226254
                                                          (let ((__tmp226255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225790%_
                               (cons _%output-scm225798%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226255 _%src-deps-scm225782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226254
                                                      _%libgerbil-c225772%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226253
                                               _%gsc-link-opts225808%_))))
                                     (for-each
                                      _%compile-obj225825%_
                                      (let ((__tmp226256
                                             (cons _%src-bin-scm225790%_
                                                   (cons _%output-scm225798%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226256
                                         _%src-deps-scm225782%_))
                                      (let ((__tmp226257
                                             (cons _%src-bin-c225792%_
                                                   (cons _%output-c225800%_
                                                         (cons _%output_-c225804%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226257
                                         _%src-deps-c225784%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225796%_
                                                        (let ((__tmp226258
                                                               (cons _%src-bin-o225794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225802%_
                                   (cons _%output_-o225806%_
                                         (let ((__tmp226259
                                                (let ((__tmp226260
                                                       (let ((__tmp226262
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225760%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225816%_))))
                     (__tmp226261
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225818%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226262 __tmp226261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226260
                                                   _%output-ld-opts225814%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226259
                                            _%libgerbil-o225774%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226258 _%src-deps-o225786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226263
                                            (cons _%output-c225800%_
                                                  (cons _%output_-c225804%_
                                                        (cons _%output-o225802%_
                                                              (cons _%output_-o225806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226263)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225830%_))
                                  (_%compile-it225830%_)))
                            '#!void))))))
          (let* ((_%output-bin225750%_
                  (gxc#compile-exe-output-file _%ctx225734%_ _%opts225735%_))
                 (_%output-scm225752%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225750%_ '"__exe.scm"))))
            (_%compile-stub225748%_
             _%output-scm225752%_
             _%output-bin225750%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225556%_ _%opts225557%_)
        (letrec ((_%reset-declare225559%_
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
                 (_%generate-stub225560%_
                  (lambda (_%deps225725%_)
                    (let ((_%mod-main225727%_
                           (gxc#find-runtime-symbol _%ctx225556%_ 'main))
                          (_%reset-decl225728%_ (_%reset-declare225559%_))
                          (_%user-decl225729%_ (_%user-declare225561%_)))
                      (for-each
                       (lambda (_%dep225731%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225728%_))
                         (newline)
                         (if _%user-decl225729%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225729%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226264
                                (cons 'include (cons _%dep225731%_ '()))))
                           (declare (not safe))
                           (##write __tmp226264))
                         (newline))
                       _%deps225725%_)
                      (let ((__tmp226265
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226265))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225561%_
                  (lambda ()
                    (let* ((_%gsc-opts225630%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225557%_)))
                           (_%gsc-prelude225632%_
                            (if _%gsc-opts225630%_
                                (member '"-prelude" _%gsc-opts225630%_)
                                '#f))
                           (_%gsc-prelude225634%_
                            (if _%gsc-prelude225632%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225632%_)))
                                '#f)))
                      (let _%lp225637%_ ((_%rest225639%_
                                          (cons _%gsc-prelude225634%_ '()))
                                         (_%user-decls225640%_ '()))
                        (let* ((_%rest225641225649%_ _%rest225639%_)
                               (_%else225643225657%_
                                (lambda ()
                                  (if (null? _%user-decls225640%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225640%_)))))
                               (_%K225645225713%_
                                (lambda (_%rest225660%_ _%expr225661%_)
                                  (let* ((_%expr225662225674%_ _%expr225661%_)
                                         (_%else225665225682%_
                                          (lambda ()
                                            (_%lp225637%_
                                             _%rest225660%_
                                             _%user-decls225640%_))))
                                    (let ((_%K225670225703%_
                                           (lambda (_%decls225701%_)
                                             (_%lp225637%_
                                              _%rest225660%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225640%_
                                                 _%decls225701%_)))))
                                          (_%K225667225688%_
                                           (lambda (_%exprs225686%_)
                                             (_%lp225637%_
                                              (append _%exprs225686%_
                                                      _%rest225660%_)
                                              _%user-decls225640%_))))
                                      (if (pair? _%expr225662225674%_)
                                          (let ((_%tl225672225708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225662225674%_)))
                                                (_%hd225671225706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225662225674%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225671225706%_
                                                         'declare))
                                                (let ((_%decls225711%_
                                                       _%tl225672225708%_))
                                                  (_%K225670225703%_
                                                   _%decls225711%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225671225706%_
                                                             'begin))
                                                    (let ((_%exprs225696%_
                                                           _%tl225672225708%_))
                                                      (_%K225667225688%_
                                                       _%exprs225696%_))
                                                    (_%else225665225682%_))))
                                          (_%else225665225682%_)))))))
                          (if (pair? _%rest225641225649%_)
                              (let ((_%hd225646225716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225641225649%_)))
                                    (_%tl225647225718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225641225649%_))))
                                (let* ((_%expr225721%_ _%hd225646225716%_)
                                       (_%rest225723%_ _%tl225647225718%_))
                                  (_%K225645225713%_
                                   _%rest225723%_
                                   _%expr225721%_)))
                              (_%else225643225657%_)))))))
                 (_%compile-stub225562%_
                  (lambda (_%output-scm225569%_ _%output-bin225570%_)
                    (let* ((_%gerbil-home225572%_
                            (let ((__tmp226266
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226266)))
                           (_%gerbil-libdir225574%_
                            (path-expand '"lib" _%gerbil-home225572%_))
                           (_%runtime225576%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225578%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225572%_))
                           (_%include-gambit-sharp225580%_
                            (gxc#include-source _%gambit-sharp225578%_))
                           (_%bin-scm225582%_
                            (gxc#find-static-module-file _%ctx225556%_))
                           (_%deps225584%_
                            (gxc#find-runtime-module-deps _%ctx225556%_))
                           (_%deps225586%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225584%_)))
                           (_%deps225591%_
                            (let ((__tmp226267
                                   (lambda (_%$obj225588%_)
                                     (not (gxc#file-empty? _%$obj225588%_)))))
                              (declare (not safe))
                              (##filter __tmp226267 _%deps225586%_)))
                           (_%deps225595%_
                            (let ((__tmp226268
                                   (lambda (_%f225593%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225593%_
                                             _%runtime225576%_))))))
                              (declare (not safe))
                              (##filter __tmp226268 _%deps225591%_)))
                           (_%output-base225597%_
                            (let ((__tmp226269
                                   (path-strip-extension
                                    _%output-scm225569%_)))
                              (declare (not safe))
                              (##string-append __tmp226269)))
                           (_%output-c225599%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225597%_ '".c")))
                           (_%output-o225601%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225597%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225603%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225597%_ '"_.c")))
                           (_%output-o_225605%_
                            (let ((__tmp226270
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225597%_
                               __tmp226270)))
                           (_%gsc-link-opts225607%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225609%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225611%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225574%_)))
                           (_%output-ld-opts225613%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225615%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225580%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225580%_
                                            '()))))
                           (_%gsc-link-opts225617%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225607%_
                               _%gsc-gx-macros225615%_)))
                           (_%rpath225619%_
                            (gxc#gerbil-rpath _%gerbil-libdir225574%_))
                           (_%default-ld-options225621%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226271
                             (lambda ()
                               (let ((__tmp226272
                                      (path-directory _%output-bin225570%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226272)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226271))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225569%_
                       (lambda ()
                         (_%generate-stub225560%_
                          (let ((__tmp226273
                                 (let ((__tmp226274
                                        (cons _%bin-scm225582%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226274
                                    _%deps225595%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226273 _%runtime225576%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225627%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225603%_
                                                      (let ((__tmp226275
                                                             (cons _%output-scm225569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226275 _%gsc-link-opts225617%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226276
                                                 (let ((__tmp226277
                                                        (cons _%output-c225599%_
                                                              (cons _%output-c_225603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226277
                                                    _%gsc-static-opts225611%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226276
                                             _%gsc-cc-opts225609%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225570%_
                                                      (cons _%output-o225601%_
                                                            (cons _%output-o_225605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226278
                                 (let ((__tmp226280
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225574%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225621%_))))
                                       (__tmp226279
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225619%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226280 __tmp226279))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226278
                             _%output-ld-opts225613%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225627%_))
                                (_%compile-it225627%_)))
                          '#!void)))))
          (let* ((_%output-bin225564%_
                  (gxc#compile-exe-output-file _%ctx225556%_ _%opts225557%_))
                 (_%output-scm225566%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225564%_ '"__exe.scm"))))
            (_%compile-stub225562%_
             _%output-scm225566%_
             _%output-bin225564%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225505%_ _%id225506%_)
        (let ((_%$e225552%_
               (let ((__tmp226282
                      (lambda (_%e225507225509%_)
                        (let* ((_%e225507225511225521%_ _%e225507225509%_)
                               (_%else225513225529%_ (lambda () '#f))
                               (_%K225515225533%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225507225511225521%_
                                 'gx#module-export::t))
                              (let* ((_%e225516225536%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225507225511225521%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225517225539%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225507225511225521%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225518225542%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225507225511225521%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225518225542%_ '0))
                                    (let ((_%e225519225545%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225507225511225521%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225547225549%_)
                                             (eq? _%g225547225549%_
                                                  _%id225506%_))
                                           _%e225519225545%_)
                                          (_%K225515225533%_)
                                          (_%else225513225529%_)))
                                    (_%else225513225529%_)))
                              (_%else225513225529%_)))))
                     (__tmp226281
                      (##structure-ref
                       _%ctx225505%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226282 __tmp226281))))
          (if _%$e225552%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225552%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225496%_ _%id225497%_)
        (let ((_%$e225499%_
               (gxc#find-export-binding _%ctx225496%_ _%id225497%_)))
          (if _%$e225499%_
              ((lambda (_%bind225502%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225502%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225497%_)))
                 (##structure-ref _%bind225502%_ '1 gx#binding::t '#f))
               _%$e225499%_)
              (let ((__tmp226283
                     (##structure-ref
                      _%ctx225496%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226283
                 _%id225497%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225362%_)
        (letrec* ((_%ht225364%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225365%_
                   (lambda (_%in225441%_ _%phi225442%_)
                     (let ((_%iphi225444%_
                            (fx+ _%phi225442%_
                                 (##direct-structure-ref
                                  _%in225441%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225445%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225441%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225447%_ ((_%rest225449%_ _%imports225445%_)
                                          (_%r225450%_ '()))
                         (let* ((_%rest225451225459%_ _%rest225449%_)
                                (_%else225453225467%_ (lambda () _%r225450%_))
                                (_%K225455225484%_
                                 (lambda (_%rest225470%_ _%in225471%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225471%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225444%_))
                                           (_%lp225447%_
                                            _%rest225470%_
                                            (cons _%in225471%_ _%r225450%_))
                                           (_%lp225447%_
                                            _%rest225470%_
                                            _%r225450%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225471%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225475%_
                                                  (fx+ _%phi225442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225471%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225475%_))
                                                 (_%lp225447%_
                                                  _%rest225470%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225471%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225450%_))
                                                 (_%lp225447%_
                                                  _%rest225470%_
                                                  _%r225450%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225471%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225478%_
                                                      (fx+ _%iphi225444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225471%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225478%_))
                                                     (_%lp225447%_
                                                      _%rest225470%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225471%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225450%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225478%_))
                                                         (_%lp225447%_
                                                          _%rest225470%_
                                                          (let ((__tmp226284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225365%_
                          _%in225471%_
                          _%iphi225444%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225450%_ __tmp226284)))
                 (_%lp225447%_ _%rest225470%_ _%r225450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225447%_
                                                _%rest225470%_
                                                _%r225450%_)))))))
                           (if (pair? _%rest225451225459%_)
                               (let ((_%hd225456225487%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225451225459%_)))
                                     (_%tl225457225489%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225451225459%_))))
                                 (let* ((_%in225492%_ _%hd225456225487%_)
                                        (_%rest225494%_ _%tl225457225489%_))
                                   (_%K225455225484%_
                                    _%rest225494%_
                                    _%in225492%_)))
                               (_%else225453225467%_)))))))
                  (_%find-deps225366%_
                   (lambda (_%rest225374%_ _%deps225375%_)
                     (let* ((_%rest225376225384%_ _%rest225374%_)
                            (_%else225378225392%_ (lambda () _%deps225375%_))
                            (_%K225380225429%_
                             (lambda (_%rest225395%_ _%hd225396%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225396%_
                                      'gx#module-context::t))
                                   (let ((_%id225399%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225396%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225400%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225396%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225364%_
                                            _%id225399%_))
                                         (_%find-deps225366%_
                                          _%rest225395%_
                                          _%deps225375%_)
                                         (let ((_%$e225403%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225396%_))))
                                           (if _%$e225403%_
                                               ((lambda (_%pre225406%_)
                                                  (let ((_%xdeps225408%_
                                                         (_%find-deps225366%_
                                                          (cons _%pre225406%_
                                                                _%imports225400%_)
                                                          _%deps225375%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225364%_
                                                       _%id225399%_
                                                       _%hd225396%_))
                                                    (_%find-deps225366%_
                                                     _%rest225395%_
                                                     (cons _%hd225396%_
                                                           _%xdeps225408%_))))
                                                _%$e225403%_)
                                               (let ((_%xdeps225411%_
                                                      (_%find-deps225366%_
                                                       _%imports225400%_
                                                       _%deps225375%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225364%_
                                                    _%id225399%_
                                                    _%hd225396%_))
                                                 (_%find-deps225366%_
                                                  _%rest225395%_
                                                  (cons _%hd225396%_
                                                        _%xdeps225411%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225396%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225414%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225396%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225364%_
                                                _%id225414%_))
                                             (_%find-deps225366%_
                                              _%rest225395%_
                                              _%deps225375%_)
                                             (let ((_%xdeps225418%_
                                                    (_%find-deps225366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225396%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225375%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225364%_
                                                      _%id225414%_))
                                                   (_%find-deps225366%_
                                                    _%rest225395%_
                                                    _%xdeps225418%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225364%_
                                                        _%id225414%_
                                                        _%hd225396%_))
                                                     (_%find-deps225366%_
                                                      _%rest225395%_
                                                      (cons _%hd225396%_
                                                            _%xdeps225418%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225396%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225396%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225366%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225396%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225395%_)
                                                _%deps225375%_)
                                               (_%find-deps225366%_
                                                _%rest225395%_
                                                _%deps225375%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225396%_
                                                  'gx#module-export::t))
                                               (_%find-deps225366%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225396%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225395%_)
                                                _%deps225375%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225396%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225396%_ '2 '#f '#f)))
               (_%find-deps225366%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225396%_ '1 '#f '#f))
                      _%rest225395%_)
                _%deps225375%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225396%_ '2 '#f '#f)))
                   (let ((_%xdeps225425%_
                          (_%import-set-template225365%_ _%hd225396%_ '0)))
                     (_%find-deps225366%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225395%_ _%xdeps225425%_))
                      _%deps225375%_))
                   (_%find-deps225366%_ _%rest225395%_ _%deps225375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225396%_))))))))))
                       (if (pair? _%rest225376225384%_)
                           (let ((_%hd225381225432%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225376225384%_)))
                                 (_%tl225382225434%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225376225384%_))))
                             (let* ((_%hd225437%_ _%hd225381225432%_)
                                    (_%rest225439%_ _%tl225382225434%_))
                               (_%K225380225429%_
                                _%rest225439%_
                                _%hd225437%_)))
                           (_%else225378225392%_))))))
          (let ((__tmp226285
                 (filter gx#expander-context-id
                         (_%find-deps225366%_
                          (let ((_%$e225368%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225362%_))))
                            (if _%$e225368%_
                                ((lambda (_%pre225371%_)
                                   (cons _%pre225371%_
                                         (##structure-ref
                                          _%ctx225362%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225368%_)
                                (##structure-ref
                                 _%ctx225362%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226285)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225292%_)
        (let* ((_%context-id225294%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225292%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225292%_ '1 '#f '#f))
                    (string->symbol _%ctx225292%_)))
               (_%scm225296%_
                (let ((__tmp226286
                       (gxc#static-module-name _%context-id225294%_)))
                  (declare (not safe))
                  (##string-append __tmp226286 '".scm")))
               (_%dirs225298%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225304%_
                (let ((_%user-libpath225300%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225300%_
                      (let ((_%user-libpath225302%_
                             (path-expand '"lib" _%user-libpath225300%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225302%_ _%dirs225298%_))
                            _%dirs225298%_
                            (cons _%user-libpath225302%_ _%dirs225298%_)))
                      _%dirs225298%_)))
               (_%dirs225314%_
                (let ((_%$e225306%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225306%_
                      ((lambda (_%g225308225310%_)
                         (cons _%g225308225310%_ _%dirs225304%_))
                       _%$e225306%_)
                      _%dirs225304%_)))
               (_%dirs225320%_
                (let ((__tmp226287
                       (lambda (_%g225315225317%_)
                         (path-expand '"static" _%g225315225317%_))))
                  (declare (not safe))
                  (##map __tmp226287 _%dirs225314%_))))
          (let _%lp225323%_ ((_%rest225325%_ _%dirs225320%_))
            (let* ((_%rest225326225334%_ _%rest225325%_)
                   (_%else225328225342%_
                    (lambda ()
                      (let ((__tmp226288
                             (##structure-ref
                              _%ctx225292%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226288
                         _%scm225296%_))))
                   (_%K225330225350%_
                    (lambda (_%rest225345%_ _%dir225346%_)
                      (let ((_%path225348%_
                             (path-expand _%scm225296%_ _%dir225346%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225348%_))
                            _%path225348%_
                            (_%lp225323%_ _%rest225345%_))))))
              (if (pair? _%rest225326225334%_)
                  (let ((_%hd225331225353%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225326225334%_)))
                        (_%tl225332225355%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225326225334%_))))
                    (let* ((_%dir225358%_ _%hd225331225353%_)
                           (_%rest225360%_ _%tl225332225355%_))
                      (_%K225330225350%_ _%rest225360%_ _%dir225358%_)))
                  (_%else225328225342%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225290%_)
        (zero? (let ((__tmp226289 (file-info _%path225290%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226289)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225281%_)
        (let ((__tmp226290
               (lambda ()
                 (let ((__tmp226291
                        (lambda ()
                          (let ((__tmp226292
                                 (lambda ()
                                   (let ((__tmp226294
                                          (lambda ()
                                            (let ((__tmp226296
                                                   (lambda ()
                                                     (let ((__tmp226298
                                                            (lambda ()
                                                              (let ((__tmp226299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225281%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226299))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226300
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225281%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226300))
                          '#!void)
                      (gxc#collect-bindings _%ctx225281%_)
                      (gxc#compile-runtime-code _%ctx225281%_)
                      (gxc#compile-meta-code _%ctx225281%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225281%_)
                          '#!void)))
                   (__tmp226297
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
                __tmp226298
                gxc#current-compile-runtime-names
                __tmp226297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226295
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226296
                                               gxc#current-compile-runtime-sections
                                               __tmp226295))))
                                         (__tmp226293
                                          (let ((__obj226194
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226194))
                                            __obj226194)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226294
                                      gxc#current-compile-symbol-table
                                      __tmp226293)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226292
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226291
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226290
           gx#current-expander-context
           _%ctx225281%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225279%_)
        (let ((__tmp226301
               (##structure-ref _%ctx225279%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226301))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225223%_)
        (letrec ((_%compile1225225%_
                  (lambda (_%ctx225268%_)
                    (let* ((_%code225270%_
                            (##structure-ref
                             _%ctx225268%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225274%_
                            (let ((_%idstr225272%_
                                   (let ((__tmp226302
                                          (##structure-ref
                                           _%ctx225268%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226302))))
                              (declare (not safe))
                              (##string-append _%idstr225272%_ '"~0")))
                           (_%rtc?225276%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225270%_))))
                      (if _%rtc?225276%_
                          (let ((__tmp226303
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226303
                             _%ctx225268%_
                             _%rtm225274%_))
                          '#!void)
                      (_%generate-runtime-code225227%_
                       _%ctx225268%_
                       _%code225270%_
                       (if _%rtc?225276%_ _%rtm225274%_ '#f)))))
                 (_%context-timestamp225226%_
                  (lambda (_%ctx225266%_)
                    (let ((__tmp226304
                           (let ((__tmp226305
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225266%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226305 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226304))))
                 (_%generate-runtime-code225227%_
                  (lambda (_%ctx225234%_ _%code225235%_ _%rtm225236%_)
                    (let* ((_%runtime-code?225238%_ (if _%rtm225236%_ '#t '#f))
                           (_%lifts225240%_ (box '()))
                           (_%runtime-code225247%_
                            (if _%runtime-code?225238%_
                                (let ((__tmp226306
                                       (lambda ()
                                         (let ((__tmp226307
                                                (lambda ()
                                                  (let ((__tmp226308
                                                         (lambda ()
                                                           (let ((__tmp226310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226312
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225235%_))))
                                  (__tmp226311
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226312
                               gxc#current-compile-identifiers
                               __tmp226311))))
                         (__tmp226309
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226310
                      gxc#current-compile-marks
                      __tmp226309)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226308
                                                     gxc#current-compile-lift
                                                     _%lifts225240%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226307
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226306
                                   gx#current-expander-context
                                   _%ctx225234%_))
                                '#f))
                           (_%runtime-code225249%_
                            (if _%runtime-code?225238%_
                                (if (null? (unbox _%lifts225240%_))
                                    _%runtime-code225247%_
                                    (cons 'begin
                                          (let ((__tmp226314
                                                 (cons _%runtime-code225247%_
                                                       '()))
                                                (__tmp226313
                                                 (reverse (unbox _%lifts225240%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226314
                                             __tmp226313))))
                                '#f))
                           (_%runtime-code225251%_
                            (if _%runtime-code?225238%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225226%_
                                                         _%ctx225234%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225249%_ '())))
                                '#f))
                           (_%loader-code225254%_
                            (let ((__tmp226315
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225235%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226315
                               gx#current-expander-context
                               _%ctx225234%_)))
                           (_%loader-code225256%_
                            (cons 'begin
                                  (cons _%loader-code225254%_
                                        (cons (if _%runtime-code?225238%_
                                                  (cons 'load-module
                                                        (cons _%rtm225236%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225258%_
                            (gxc#compile-output-file _%ctx225234%_ '0 '".scm"))
                           (_%scmrt225260%_
                            (gxc#compile-output-file
                             _%ctx225234%_
                             '#f
                             '".scm"))
                           (_%scms225262%_
                            (gxc#compile-static-output-file _%ctx225234%_)))
                      (if _%runtime-code?225238%_
                          (gxc#compile-scm-file__0
                           _%scm0225258%_
                           _%runtime-code225251%_)
                          '#!void)
                      (let ((__tmp226316
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225260%_
                                _%loader-code225256%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226316
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225262%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225262%_))
                          '#!void)
                      (if _%runtime-code?225238%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225258%_ _%scms225262%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225262%_ void)))))))
          (let* ((_%all-modules225229%_
                  (cons _%ctx225223%_ (gxc#lift-nested-modules _%ctx225223%_)))
                 (__tmp226317
                  (lambda (_%ctx225231%_)
                    (let ((__tmp226318
                           (lambda () (_%compile1225225%_ _%ctx225231%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226318
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226317 _%all-modules225229%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225122%_)
        (letrec ((_%compile-ssi225124%_
                  (lambda (_%code225191%_)
                    (let* ((_%path225193%_
                            (gxc#compile-output-file
                             _%ctx225122%_
                             '#f
                             '".ssi"))
                           (_%prelude225205%_
                            (let* ((_%super225195%_
                                    (##structure-ref
                                     _%ctx225122%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225197%_
                                    (##structure-ref
                                     _%super225195%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225197%_
                                  ((lambda (_%g225199225201%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225199225201%_)))
                                   _%$e225197%_)
                                  ':<root>)))
                           (_%ns225207%_
                            (##structure-ref
                             _%ctx225122%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225209%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225122%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225217%_
                            (let ((_%$e225211%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225209%_ '#\/))))
                              (if _%$e225211%_
                                  ((lambda (_%x225214%_)
                                     (let ((__tmp226319
                                            (substring
                                             _%idstr225209%_
                                             '0
                                             _%x225214%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226319)))
                                   _%$e225211%_)
                                  '#f)))
                           (_%rt225219%_
                            (let ((__tmp226320
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226320 _%ctx225122%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225193%_))
                      (gxc#with-output-to-scheme-file
                       _%path225193%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225205%_))
                         (if _%pkg225217%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225217%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225207%_))
                         (newline)
                         (pretty-print _%code225191%_)
                         (if _%rt225219%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225219%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225125%_
                  (lambda (_%part225130%_)
                    (let* ((_%part225131225144%_ _%part225130%_)
                           (_%E225133225148%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225131225144%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225134225160%_
                            (lambda (_%code225151%_
                                     _%n225152%_
                                     _%phi225153%_
                                     _%phi-ctx225154%_)
                              (let ((_%code225158%_
                                     (let ((__tmp226321
                                            (lambda ()
                                              (let ((__tmp226322
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225151%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226322
                                                 gx#current-expander-phi
                                                 _%phi225153%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226321
                                        gx#current-expander-context
                                        _%phi-ctx225154%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225122%_
                                  _%n225152%_
                                  '".scm")
                                 _%code225158%_
                                 '#t)))))
                      (if (pair? _%part225131225144%_)
                          (let ((_%hd225135225163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225131225144%_)))
                                (_%tl225136225165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225131225144%_))))
                            (let ((_%phi-ctx225168%_ _%hd225135225163%_))
                              (if (pair? _%tl225136225165%_)
                                  (let ((_%hd225137225170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225136225165%_)))
                                        (_%tl225138225172%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225136225165%_))))
                                    (let ((_%phi225175%_ _%hd225137225170%_))
                                      (if (pair? _%tl225138225172%_)
                                          (let ((_%hd225139225177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225138225172%_)))
                                                (_%tl225140225179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225138225172%_))))
                                            (let ((_%n225182%_
                                                   _%hd225139225177%_))
                                              (if (pair? _%tl225140225179%_)
                                                  (let ((_%hd225141225184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225140225179%_)))
                                                        (_%tl225142225186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225140225179%_))))
                                                    (let ((_%code225189%_
                                                           _%hd225141225184%_))
                                                      (if (null? _%tl225142225186%_)
                                                          (_%K225134225160%_
                                                           _%code225189%_
                                                           _%n225182%_
                                                           _%phi225175%_
                                                           _%phi-ctx225168%_)
                                                          (_%E225133225148%_))))
                                                  (_%E225133225148%_))))
                                          (_%E225133225148%_))))
                                  (_%E225133225148%_))))
                          (_%E225133225148%_))))))
          (let ((_g226323_ (gxc#generate-meta-code _%ctx225122%_)))
            (begin
              (let ((_g226324_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226323_)
                           (##values-length _g226323_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226324_ 2)))
                    (error "Context expects 2 values" _g226324_)))
              (let ((_%ssi-code225127%_
                     (let () (declare (not safe)) (##values-ref _g226323_ 0)))
                    (_%phi-code225128%_
                     (let () (declare (not safe)) (##values-ref _g226323_ 1))))
                (begin
                  (_%compile-ssi225124%_ _%ssi-code225127%_)
                  (for-each _%compile-phi225125%_ _%phi-code225128%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225104%_)
        (let* ((_%path225106%_
                (gxc#compile-output-file _%ctx225104%_ '#f '".ssxi.ss"))
               (_%code225108%_
                (let ((__tmp226325
                       (##structure-ref
                        _%ctx225104%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226325)))
               (_%idstr225110%_
                (symbol->string
                 (##structure-ref
                  _%ctx225104%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225118%_
                (let ((_%$e225112%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225110%_ '#\/))))
                  (if _%$e225112%_
                      ((lambda (_%x225115%_)
                         (let ((__tmp226326
                                (substring _%idstr225110%_ '0 _%x225115%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226326)))
                       _%$e225112%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225106%_))
          (gxc#with-output-to-scheme-file
           _%path225106%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225118%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225118%_))
                 '#!void)
             (newline)
             (pretty-print _%code225108%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225097%_)
        (let* ((_%state225099%_
                (let ((__obj226195
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226195 _%ctx225097%_))
                  __obj226195))
               (_%ssi-code225101%_
                (let ((__tmp226327
                       (##structure-ref
                        _%ctx225097%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225099%_
                   __tmp226327))))
          (values _%ssi-code225101%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225099%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225088%_)
        (let* ((_%lifts225090%_ (box '()))
               (__tmp226328
                (lambda ()
                  (let ((__tmp226330
                         (lambda ()
                           (let ((__tmp226332
                                  (lambda ()
                                    (let ((_%code225095%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx225088%_))))
                                      (if (null? (unbox _%lifts225090%_))
                                          _%code225095%_
                                          (cons 'begin
                                                (let ((__tmp226334
                                                       (cons _%code225095%_
                                                             '()))
                                                      (__tmp226333
                                                       (reverse (unbox _%lifts225090%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226334
                                                   __tmp226333)))))))
                                 (__tmp226331
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226332
                              gxc#current-compile-identifiers
                              __tmp226331))))
                        (__tmp226329
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226330
                     gxc#current-compile-marks
                     __tmp226329)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226328
           gxc#current-compile-lift
           _%lifts225090%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx225084%_)
        (let ((_%modules225086%_ (box '())))
          (let ((__tmp226335
                 (##structure-ref _%ctx225084%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules225086%_ __tmp226335))
          (reverse (unbox _%modules225086%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path225064%_ _%code225065%_ _%phi?225066%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path225064%_))
        (gxc#with-output-to-scheme-file
         _%path225064%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226336
                                           (if _%phi?225066%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226336)))))))
           (pretty-print _%code225065%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it225070%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path225064%_ _%phi?225066%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226337
                         (cons 'compile-file (cons _%path225064%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it225070%_ __tmp226337))
                  (_%compile-it225070%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path225075%_ _%code225076%_)
        (let ((_%phi?225078%_ '#f))
          (gxc#compile-scm-file__%
           _%path225075%_
           _%code225076%_
           _%phi?225078%_))))
    (define gxc#compile-scm-file
      (lambda _g226338_
        (let ((_g226339_ (let () (declare (not safe)) (##length _g226338_))))
          (cond ((let () (declare (not safe)) (##fx= _g226339_ 2))
                 (apply gxc#compile-scm-file__0 _g226338_))
                ((let () (declare (not safe)) (##fx= _g226339_ 3))
                 (apply gxc#compile-scm-file__% _g226338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226338_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224965%_)
        (let _%lp224967%_ ((_%rest224969%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224970%_ '()))
          (let* ((_%rest224971224991%_ _%rest224969%_)
                 (_%else224975224999%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224970%_)))
                        (reverse _%opts224970%_)))))
            (let ((_%K224985225042%_
                   (lambda (_%rest225040%_)
                     (_%lp224967%_ _%rest225040%_ _%opts224970%_)))
                  (_%K224980225024%_
                   (lambda (_%rest225022%_)
                     (_%lp224967%_ _%rest225022%_ _%opts224970%_)))
                  (_%K224977225006%_
                   (lambda (_%rest225003%_ _%opt225004%_)
                     (_%lp224967%_
                      _%rest225003%_
                      (cons _%opt225004%_ _%opts224970%_)))))
              (if (pair? _%rest224971224991%_)
                  (let ((_%tl224987225047%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224971224991%_)))
                        (_%hd224986225045%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224971224991%_))))
                    (if (equal? _%hd224986225045%_ '"-cc-options")
                        (if (pair? _%tl224987225047%_)
                            (let* ((_%tl224989225050%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224987225047%_)))
                                   (_%rest225053%_ _%tl224989225050%_))
                              (_%K224985225042%_ _%rest225053%_))
                            (let ((_%opt225014%_ _%hd224986225045%_)
                                  (_%rest225016%_ _%tl224987225047%_))
                              (_%K224977225006%_
                               _%rest225016%_
                               _%opt225014%_)))
                        (if (equal? _%hd224986225045%_ '"-ld-options")
                            (if (pair? _%tl224987225047%_)
                                (let* ((_%tl224984225032%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224987225047%_)))
                                       (_%rest225035%_ _%tl224984225032%_))
                                  (_%K224980225024%_ _%rest225035%_))
                                (let ((_%opt225014%_ _%hd224986225045%_)
                                      (_%rest225016%_ _%tl224987225047%_))
                                  (_%K224977225006%_
                                   _%rest225016%_
                                   _%opt225014%_)))
                            (let ((_%opt225014%_ _%hd224986225045%_)
                                  (_%rest225016%_ _%tl224987225047%_))
                              (_%K224977225006%_
                               _%rest225016%_
                               _%opt225014%_)))))
                  (_%else224975224999%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?225059%_ '#f)) (gxc#gsc-link-options__% _%phi?225059%_))))
    (define gxc#gsc-link-options
      (lambda _g226340_
        (let ((_g226341_ (let () (declare (not safe)) (##length _g226340_))))
          (cond ((let () (declare (not safe)) (##fx= _g226341_ 0))
                 (apply gxc#gsc-link-options__0 _g226340_))
                ((let () (declare (not safe)) (##fx= _g226341_ 1))
                 (apply gxc#gsc-link-options__% _g226340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226340_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224815%_ _%static?224811224816%_ _%phi?224817%_)
        (let ((_%static?224819%_
               (if (eq? _%static?224811224816%_ absent-value)
                   '#f
                   _%static?224811224816%_)))
          (if _%phi?224817%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224821%_ ((_%rest224823%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224824%_ '()))
                (let* ((_%rest224825224851%_ _%rest224823%_)
                       (_%else224830224859%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224824%_)))
                              (reverse! _%opts224824%_)))))
                  (let ((_%K224845224922%_
                         (lambda (_%rest224919%_ _%opt224920%_)
                           (if _%static?224819%_
                               (_%lp224821%_
                                _%rest224919%_
                                (cons _%opt224920%_
                                      (cons '"-cc-options" _%opts224824%_)))
                               (_%lp224821%_ _%rest224919%_ _%opts224824%_))))
                        (_%K224840224899%_
                         (lambda (_%rest224896%_ _%opt224897%_)
                           (_%lp224821%_
                            _%rest224896%_
                            (cons _%opt224897%_
                                  (cons '"-cc-options" _%opts224824%_)))))
                        (_%K224835224879%_
                         (lambda (_%rest224877%_)
                           (_%lp224821%_ _%rest224877%_ _%opts224824%_)))
                        (_%K224832224865%_
                         (lambda (_%rest224863%_)
                           (_%lp224821%_ _%rest224863%_ _%opts224824%_))))
                    (if (pair? _%rest224825224851%_)
                        (let ((_%tl224847224927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224825224851%_)))
                              (_%hd224846224925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224825224851%_))))
                          (if (equal? _%hd224846224925%_ '"-cc-options")
                              (if (pair? _%tl224847224927%_)
                                  (let ((_%tl224849224932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224847224927%_)))
                                        (_%hd224848224930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224847224927%_))))
                                    (if (equal? _%hd224848224930%_ '"-Bstatic")
                                        (let ((_%opt224935%_
                                               _%hd224848224930%_)
                                              (_%rest224937%_
                                               _%tl224849224932%_))
                                          (_%K224845224922%_
                                           _%rest224937%_
                                           _%opt224935%_))
                                        (let ((_%opt224912%_
                                               _%hd224848224930%_)
                                              (_%rest224914%_
                                               _%tl224849224932%_))
                                          (_%K224840224899%_
                                           _%rest224914%_
                                           _%opt224912%_))))
                                  (let ((_%rest224871%_ _%tl224847224927%_))
                                    (_%K224832224865%_ _%rest224871%_)))
                              (if (equal? _%hd224846224925%_ '"-ld-options")
                                  (if (pair? _%tl224847224927%_)
                                      (let* ((_%tl224839224887%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224847224927%_)))
                                             (_%rest224890%_
                                              _%tl224839224887%_))
                                        (_%K224835224879%_ _%rest224890%_))
                                      (let ((_%rest224871%_
                                             _%tl224847224927%_))
                                        (_%K224832224865%_ _%rest224871%_)))
                                  (let ((_%rest224871%_ _%tl224847224927%_))
                                    (_%K224832224865%_ _%rest224871%_)))))
                        (_%else224830224859%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224942%_ _%static?224811224943%_)
        (let ((_%phi?224945%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224942%_
           _%static?224811224943%_
           _%phi?224945%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226342_
        (let ((_g226343_ (let () (declare (not safe)) (##length _g226342_))))
          (cond ((let () (declare (not safe)) (##fx= _g226343_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226342_))
                ((let () (declare (not safe)) (##fx= _g226343_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226342_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224954%_ . _%args224955%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224954%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224954%_
                  'static:
                  absent-value))
               _%args224955%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224812224961%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224812224961%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224661%_ _%static?224657224662%_ _%phi?224663%_)
        (let ((_%static?224665%_
               (if (eq? _%static?224657224662%_ absent-value)
                   '#f
                   _%static?224657224662%_)))
          (if _%phi?224663%_
              '()
              (let _%lp224667%_ ((_%rest224669%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224670%_ '()))
                (let* ((_%rest224671224697%_ _%rest224669%_)
                       (_%else224676224705%_
                        (lambda () (reverse! _%opts224670%_))))
                  (let ((_%K224691224768%_
                         (lambda (_%rest224765%_ _%opt224766%_)
                           (if _%static?224665%_
                               (_%lp224667%_
                                _%rest224765%_
                                (cons _%opt224766%_
                                      (cons '"-ld-options" _%opts224670%_)))
                               (_%lp224667%_ _%rest224765%_ _%opts224670%_))))
                        (_%K224686224745%_
                         (lambda (_%rest224742%_ _%opt224743%_)
                           (_%lp224667%_
                            _%rest224742%_
                            (cons _%opt224743%_
                                  (cons '"-ld-options" _%opts224670%_)))))
                        (_%K224681224725%_
                         (lambda (_%rest224723%_)
                           (_%lp224667%_ _%rest224723%_ _%opts224670%_)))
                        (_%K224678224711%_
                         (lambda (_%rest224709%_)
                           (_%lp224667%_ _%rest224709%_ _%opts224670%_))))
                    (if (pair? _%rest224671224697%_)
                        (let ((_%tl224693224773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224671224697%_)))
                              (_%hd224692224771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224671224697%_))))
                          (if (equal? _%hd224692224771%_ '"-ld-options")
                              (if (pair? _%tl224693224773%_)
                                  (let ((_%tl224695224778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224693224773%_)))
                                        (_%hd224694224776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224693224773%_))))
                                    (if (equal? _%hd224694224776%_ '"-static")
                                        (let ((_%opt224781%_
                                               _%hd224694224776%_)
                                              (_%rest224783%_
                                               _%tl224695224778%_))
                                          (_%K224691224768%_
                                           _%rest224783%_
                                           _%opt224781%_))
                                        (let ((_%opt224758%_
                                               _%hd224694224776%_)
                                              (_%rest224760%_
                                               _%tl224695224778%_))
                                          (_%K224686224745%_
                                           _%rest224760%_
                                           _%opt224758%_))))
                                  (let ((_%rest224717%_ _%tl224693224773%_))
                                    (_%K224678224711%_ _%rest224717%_)))
                              (if (equal? _%hd224692224771%_ '"-cc-options")
                                  (if (pair? _%tl224693224773%_)
                                      (let* ((_%tl224685224733%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224693224773%_)))
                                             (_%rest224736%_
                                              _%tl224685224733%_))
                                        (_%K224681224725%_ _%rest224736%_))
                                      (let ((_%rest224717%_
                                             _%tl224693224773%_))
                                        (_%K224678224711%_ _%rest224717%_)))
                                  (let ((_%rest224717%_ _%tl224693224773%_))
                                    (_%K224678224711%_ _%rest224717%_)))))
                        (_%else224676224705%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224788%_ _%static?224657224789%_)
        (let ((_%phi?224791%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224788%_
           _%static?224657224789%_
           _%phi?224791%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226344_
        (let ((_g226345_ (let () (declare (not safe)) (##length _g226344_))))
          (cond ((let () (declare (not safe)) (##fx= _g226345_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226344_))
                ((let () (declare (not safe)) (##fx= _g226345_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226344_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224800%_ . _%args224801%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224800%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224800%_
                  'static:
                  absent-value))
               _%args224801%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224658224807%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224658224807%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224652%_)
        (let ((_%user-staticdir224654%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224652%_
                       '" -I "
                       _%user-staticdir224654%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224564%_ ((_%rest224566%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224567%_ '()))
          (let* ((_%rest224568224588%_ _%rest224566%_)
                 (_%else224572224596%_ (lambda () _%opts224567%_)))
            (let ((_%K224582224639%_
                   (lambda (_%rest224637%_)
                     (_%lp224564%_ _%rest224637%_ _%opts224567%_)))
                  (_%K224577224617%_
                   (lambda (_%rest224614%_ _%opt224615%_)
                     (_%lp224564%_
                      _%rest224614%_
                      (let ((__tmp226346
                             (let ((__tmp226347
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224615%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226347))))
                        (declare (not safe))
                        (##append _%opts224567%_ __tmp226346)))))
                  (_%K224574224602%_
                   (lambda (_%rest224600%_)
                     (_%lp224564%_ _%rest224600%_ _%opts224567%_))))
              (if (pair? _%rest224568224588%_)
                  (let ((_%tl224584224644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224568224588%_)))
                        (_%hd224583224642%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224568224588%_))))
                    (if (equal? _%hd224583224642%_ '"-cc-options")
                        (if (pair? _%tl224584224644%_)
                            (let* ((_%tl224586224647%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224584224644%_)))
                                   (_%rest224650%_ _%tl224586224647%_))
                              (_%K224582224639%_ _%rest224650%_))
                            (let ((_%rest224608%_ _%tl224584224644%_))
                              (_%K224574224602%_ _%rest224608%_)))
                        (if (equal? _%hd224583224642%_ '"-ld-options")
                            (if (pair? _%tl224584224644%_)
                                (let ((_%tl224581224627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224584224644%_)))
                                      (_%hd224580224625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224584224644%_))))
                                  (let ((_%opt224630%_ _%hd224580224625%_)
                                        (_%rest224632%_ _%tl224581224627%_))
                                    (_%K224577224617%_
                                     _%rest224632%_
                                     _%opt224630%_)))
                                (let ((_%rest224608%_ _%tl224584224644%_))
                                  (_%K224574224602%_ _%rest224608%_)))
                            (let ((_%rest224608%_ _%tl224584224644%_))
                              (_%K224574224602%_ _%rest224608%_)))))
                  (_%else224572224596%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224561%_)
        (not (let () (declare (not safe)) (string-empty? _%str224561%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224554%_ _%phi?224555%_)
        (let ((_%gsc-link-opts224557%_
               (gxc#gsc-link-options__% _%phi?224555%_))
              (_%gsc-cc-opts224558%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224555%_))
              (_%gsc-ld-opts224559%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224555%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226348
                  (let ((__tmp226349
                         (let ((__tmp226350 (cons _%path224554%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226350
                            _%gsc-link-opts224557%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226349 _%gsc-ld-opts224559%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226348 _%gsc-cc-opts224558%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224520%_ _%n224521%_ _%ext224522%_)
        (letrec ((_%module-relative-path224524%_
                  (lambda (_%ctx224552%_)
                    (path-strip-directory
                     (let ((__tmp226351
                            (##structure-ref
                             _%ctx224552%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226351)))))
                 (_%module-source-directory224525%_
                  (lambda (_%ctx224548%_)
                    (path-directory
                     (let ((_%mpath224550%_
                            (##structure-ref
                             _%ctx224548%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224550%_)
                           _%mpath224550%_
                           (last _%mpath224550%_))))))
                 (_%section-string224526%_
                  (lambda (_%n224542%_)
                    (if (number? _%n224542%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224542%_))
                        (if (symbol? _%n224542%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224542%_))
                            (if (string? _%n224542%_)
                                _%n224542%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224542%_)))))))
                 (_%file-name224527%_
                  (lambda (_%path224540%_)
                    (if _%n224521%_
                        (string-append
                         _%path224540%_
                         '"~"
                         (_%section-string224526%_ _%n224521%_)
                         _%ext224522%_)
                        (string-append _%path224540%_ _%ext224522%_))))
                 (_%file-path224528%_
                  (lambda ()
                    (let ((_%$e224534%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224534%_
                          ((lambda (_%outdir224537%_)
                             (path-expand
                              (_%file-name224527%_
                               (let ((__tmp226352
                                      (##structure-ref
                                       _%ctx224520%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226352)))
                              _%outdir224537%_))
                           _%$e224534%_)
                          (path-expand
                           (_%file-name224527%_
                            (_%module-relative-path224524%_ _%ctx224520%_))
                           (_%module-source-directory224525%_
                            _%ctx224520%_)))))))
          (let ((_%path224530%_ (_%file-path224528%_)))
            (let ((__tmp226353
                   (lambda ()
                     (let ((__tmp226354 (path-directory _%path224530%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226354)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226353))
            _%path224530%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224501%_)
        (letrec ((_%file-name224503%_
                  (lambda (_%id224518%_)
                    (let ((__tmp226355 (gxc#static-module-name _%id224518%_)))
                      (declare (not safe))
                      (##string-append __tmp226355 '".scm"))))
                 (_%file-path224504%_
                  (lambda ()
                    (let* ((_%file224510%_
                            (_%file-name224503%_
                             (##structure-ref
                              _%ctx224501%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224512%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224512%_
                          ((lambda (_%outdir224515%_)
                             (path-expand
                              _%file224510%_
                              (path-expand '"static" _%outdir224515%_)))
                           _%$e224512%_)
                          (path-expand _%file224510%_ '"static"))))))
          (let ((_%path224506%_ (_%file-path224504%_)))
            (let ((__tmp226356
                   (lambda ()
                     (let ((__tmp226357 (path-directory _%path224506%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226357)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226356))
            _%path224506%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224494%_ _%opts224495%_)
        (let ((_%$e224497%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224495%_))))
          (if _%$e224497%_
              _%$e224497%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224494%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224484%_)
        (if (string? _%idstr224484%_)
            (let* ((_%str224487%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224484%_)))
                   (_%strs224489%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224487%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224489%_ '"__"))
            (if (symbol? _%idstr224484%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224484%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224484%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226358
               (let ((__tmp226359 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226359 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226358))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224450%_
               _%stdout-redirection224446224451%_
               _%stderr-redirection224447224452%_
               _%program224453%_
               _%args224454%_)
        (let* ((_%stdout-redirection224456%_
                (if (eq? _%stdout-redirection224446224451%_ absent-value)
                    '#f
                    _%stdout-redirection224446224451%_))
               (_%stderr-redirection224458%_
                (if (eq? _%stderr-redirection224447224452%_ absent-value)
                    '#f
                    _%stderr-redirection224447224452%_)))
          (let ((__tmp226360 (cons _%program224453%_ _%args224454%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226360))
          (let* ((_%proc224460%_
                  (open-process
                   (cons 'path:
                         (cons _%program224453%_
                               (cons 'arguments:
                                     (cons _%args224454%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224456%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224465%_
                  (if (or _%stdout-redirection224456%_
                          _%stderr-redirection224458%_)
                      (read-line _%proc224460%_ '#f)
                      '#f))
                 (_%status224468%_ (process-status _%proc224460%_)))
            (let () (declare (not safe)) (##close-port _%proc224460%_))
            (if (zero? _%status224468%_)
                '#!void
                (begin
                  (display _%output224465%_)
                  (let ((__tmp226361 (cons _%program224453%_ _%args224454%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226361
                     _%status224468%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224473%_ . _%args224474%_)
        (apply gxc#invoke__%
               _%@@keywords224473%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224473%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224473%_
                  'stderr-redirection:
                  absent-value))
               _%args224474%_)))
    (define gxc#invoke
      (lambda _%args224448224480%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224448224480%_)))))
