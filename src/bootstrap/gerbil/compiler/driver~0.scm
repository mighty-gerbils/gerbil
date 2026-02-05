(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770327936)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226152 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226152))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226153 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226153))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path226009%_ _%fun226010%_)
        (with-output-to-file
         (cons 'path: (cons _%path226009%_ gxc#scheme-file-settings))
         _%fun226010%_)))
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
      (lambda (_%gerbil-libdir226004%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir226004%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path226002%_)
        (let ((__tmp226154 (object->string _%path226002%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226154 '")"))))
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
      (lambda (_%dir226000%_) (delete-file-or-directory _%dir226000%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225944%_ _%opts225945%_)
        (if (string? _%srcpath225944%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225944%_)))
        (let* ((_%outdir225947%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225945%_)))
               (_%invoke-gsc?225949%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225945%_)))
               (_%target225954%_
                (let ((_%$e225951%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225945%_))))
                  (if _%$e225951%_ _%$e225951%_ 'C)))
               (_%gsc-options225959%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225954%_) '()))
                        (let ((_%$e225956%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225945%_))))
                          (if _%$e225956%_ _%$e225956%_ '()))))
               (_%keep-scm?225961%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225945%_)))
               (_%verbosity225963%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225945%_)))
               (_%optimize225965%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225945%_)))
               (_%debug225967%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225945%_)))
               (_%gen-ssxi225969%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225945%_)))
               (_%parallel?225971%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225945%_))))
          (if _%outdir225947%_
              (let ((__tmp226155
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225947%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226155))
              '#!void)
          (if _%optimize225965%_
              (let ((__tmp226156
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226156))
              '#!void)
          (let ((__tmp226157
                 (lambda ()
                   (let ((__tmp226158
                          (lambda ()
                            (let ((__tmp226159
                                   (lambda ()
                                     (let ((__tmp226160
                                            (lambda ()
                                              (let ((__tmp226161
                                                     (lambda ()
                                                       (let ((__tmp226162
                                                              (lambda ()
                                                                (let ((__tmp226163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226164
                                        (lambda ()
                                          (let ((__tmp226165
                                                 (lambda ()
                                                   (let ((__tmp226167
                                                          (lambda ()
                                                            (let ((__tmp226169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226170
                                    (lambda ()
                                      (let ((__tmp226171
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225944%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226172
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225944%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226172))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226171
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226170
                                gxc#current-compile-parallel
                                _%parallel?225971%_))))
                          (__tmp226168
                           (cons (cons 'compile-module
                                       (cons _%srcpath225944%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226169
                       gxc#current-compile-context
                       __tmp226168))))
                 (__tmp226166 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226167
                                                      gxc#current-compile-timestamp
                                                      __tmp226166)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226165
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225969%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226164
                                    gxc#current-compile-debug
                                    _%debug225967%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226163
                           gxc#current-compile-optimize
                           _%optimize225965%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226162
                  gxc#current-compile-verbose
                  _%verbosity225963%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226161
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225961%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226160
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225959%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226159
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225949%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226158
                      gx#current-compilation-target
                      _%target225954%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226157
             gxc#current-compile-output-dir
             _%outdir225947%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath225993%_)
        (let ((_%opts225995%_ '()))
          (gxc#compile-module__% _%srcpath225993%_ _%opts225995%_))))
    (define gxc#compile-module
      (lambda _g226173_
        (let ((_g226174_ (let () (declare (not safe)) (##length _g226173_))))
          (cond ((let () (declare (not safe)) (##fx= _g226174_ 1))
                 (apply gxc#compile-module__0 _g226173_))
                ((let () (declare (not safe)) (##fx= _g226174_ 2))
                 (apply gxc#compile-module__% _g226173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226173_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225894%_ _%opts225895%_)
        (if (string? _%srcpath225894%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225894%_)))
        (let* ((_%outdir225897%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225895%_)))
               (_%invoke-gsc?225899%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225895%_)))
               (_%target225904%_
                (let ((_%$e225901%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225895%_))))
                  (if _%$e225901%_ _%$e225901%_ 'C)))
               (_%gsc-options225909%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225904%_) '()))
                        (let ((_%$e225906%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225895%_))))
                          (if _%$e225906%_ _%$e225906%_ '()))))
               (_%keep-scm?225911%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225895%_)))
               (_%verbosity225913%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225895%_)))
               (_%debug225915%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225895%_)))
               (_%parallel?225917%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225895%_))))
          (if _%outdir225897%_
              (let ((__tmp226175
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225897%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226175))
              '#!void)
          (let ((__tmp226176
                 (lambda ()
                   (let ((__tmp226177
                          (lambda ()
                            (let ((__tmp226178
                                   (lambda ()
                                     (let ((__tmp226179
                                            (lambda ()
                                              (let ((__tmp226180
                                                     (lambda ()
                                                       (let ((__tmp226181
                                                              (lambda ()
                                                                (let ((__tmp226182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226184
                                        (lambda ()
                                          (let ((__tmp226186
                                                 (lambda ()
                                                   (let ((__tmp226187
                                                          (lambda ()
                                                            (let ((__tmp226188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225894%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226189
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225894%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226189))
                              _%opts225895%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226188
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226187
                                                      gxc#current-compile-parallel
                                                      _%parallel?225917%_))))
                                                (__tmp226185
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226186
                                             gxc#current-compile-context
                                             __tmp226185))))
                                       (__tmp226183 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226184
                                    gxc#current-compile-timestamp
                                    __tmp226183)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226182
                           gxc#current-compile-debug
                           _%debug225915%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226181
                  gxc#current-compile-verbose
                  _%verbosity225913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226180
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225911%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226179
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225909%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226178
                               gx#current-compilation-target
                               _%target225904%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226177
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225899%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226176
             gxc#current-compile-output-dir
             _%outdir225897%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225936%_)
        (let ((_%opts225938%_ '()))
          (gxc#compile-exe__% _%srcpath225936%_ _%opts225938%_))))
    (define gxc#compile-exe
      (lambda _g226190_
        (let ((_g226191_ (let () (declare (not safe)) (##length _g226190_))))
          (cond ((let () (declare (not safe)) (##fx= _g226191_ 1))
                 (apply gxc#compile-exe__0 _g226190_))
                ((let () (declare (not safe)) (##fx= _g226191_ 2))
                 (apply gxc#compile-exe__% _g226190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226190_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225890%_ _%opts225891%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225891%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225890%_
             _%opts225891%_)
            (gxc#compile-executable-module/separate
             _%ctx225890%_
             _%opts225891%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225690%_ _%opts225691%_)
        (letrec ((_%generate-stub225693%_
                  (lambda (_%builtin-modules225886%_)
                    (let ((_%mod-main225888%_
                           (gxc#find-runtime-symbol _%ctx225690%_ 'main)))
                      (let ((__tmp226192
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225886%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226192))
                      (let ((__tmp226193
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225888%_
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
                        (##write __tmp226193))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225694%_
                  (lambda (_%gerbil-libdir225884%_)
                    (let ((__tmp226194
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225884%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226194 read))))
                 (_%replace-extension225695%_
                  (lambda (_%path225881%_ _%ext225882%_)
                    (string-append
                     (path-strip-extension _%path225881%_)
                     _%ext225882%_)))
                 (_%replace-extension-with-c225696%_
                  (lambda (_%path225879%_)
                    (_%replace-extension225695%_ _%path225879%_ '".c")))
                 (_%replace-extension-with-object225697%_
                  (lambda (_%path225877%_)
                    (_%replace-extension225695%_
                     _%path225877%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225698%_
                  (lambda (_%ctx225875%_)
                    (if (_%exclude-module?225700%_ _%ctx225875%_)
                        '#f
                        (not (_%libgerbil-module?225699%_ _%ctx225875%_)))))
                 (_%libgerbil-module?225699%_
                  (lambda (_%ctx225868%_)
                    (let ((_%id-str225870%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225868%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225700%_ _%id-str225870%_)
                          '#f
                          (let ((_%$e225872%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225870%_))))
                            (if _%$e225872%_
                                _%$e225872%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225870%_))))))))
                 (_%exclude-module?225700%_
                  (lambda (_%ctx-or-str225864%_)
                    (let ((_%str225866%_
                           (if (string? _%ctx-or-str225864%_)
                               _%ctx-or-str225864%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225864%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225866%_))))
                 (_%not-file-empty?225701%_
                  (lambda (_%path225862%_)
                    (not (gxc#file-empty? _%path225862%_))))
                 (_%fold-libgerbil-runtime-scm225702%_
                  (lambda (_%gerbil-staticdir225855%_ _%libgerbil-scm225856%_)
                    (let ((_%gerbil-runtime-scm225860%_
                           (let ((__tmp226195
                                  (lambda (_%rtm225858%_)
                                    (path-expand
                                     (let ((__tmp226196
                                            (let ((__tmp226197
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225858%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226197
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226196 '".scm"))
                                     _%gerbil-staticdir225855%_))))
                             (declare (not safe))
                             (##map __tmp226195 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225703%_
                       (append _%gerbil-runtime-scm225860%_
                               _%libgerbil-scm225856%_)))))
                 (_%remove-duplicates225703%_
                  (lambda (_%strlst225815%_)
                    (let _%loop225817%_ ((_%rest225819%_ _%strlst225815%_)
                                         (_%result225820%_ '()))
                      (let* ((_%rest225821225829%_ _%rest225819%_)
                             (_%else225823225837%_
                              (lambda () (reverse! _%result225820%_)))
                             (_%K225825225843%_
                              (lambda (_%rest225840%_ _%path225841%_)
                                (if (member _%path225841%_ _%result225820%_)
                                    (_%loop225817%_
                                     _%rest225840%_
                                     _%result225820%_)
                                    (_%loop225817%_
                                     _%rest225840%_
                                     (cons _%path225841%_
                                           _%result225820%_))))))
                        (if (pair? _%rest225821225829%_)
                            (let ((_%hd225826225846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225821225829%_)))
                                  (_%tl225827225848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225821225829%_))))
                              (let* ((_%path225851%_ _%hd225826225846%_)
                                     (_%rest225853%_ _%tl225827225848%_))
                                (_%K225825225843%_
                                 _%rest225853%_
                                 _%path225851%_)))
                            (_%else225823225837%_))))))
                 (_%compile-stub225704%_
                  (lambda (_%output-scm225711%_ _%output-bin225712%_)
                    (let* ((_%gerbil-home225714%_
                            (let ((__tmp226198
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226198)))
                           (_%gerbil-libdir225716%_
                            (path-expand '"lib" _%gerbil-home225714%_))
                           (_%gerbil-staticdir225718%_
                            (path-expand '"static" _%gerbil-libdir225716%_))
                           (_%deps225720%_
                            (gxc#find-runtime-module-deps _%ctx225690%_))
                           (_%libgerbil-deps225722%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225699%_
                               _%deps225720%_)))
                           (_%libgerbil-scm225724%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225722%_)))
                           (_%libgerbil-scm225726%_
                            (_%fold-libgerbil-runtime-scm225702%_
                             _%gerbil-staticdir225718%_
                             _%libgerbil-scm225724%_))
                           (_%libgerbil-c225728%_
                            (map _%replace-extension-with-c225696%_
                                 _%libgerbil-scm225726%_))
                           (_%libgerbil-o225730%_
                            (map _%replace-extension-with-object225697%_
                                 _%libgerbil-scm225726%_))
                           (_%src-deps225732%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225698%_
                               _%deps225720%_)))
                           (_%src-deps-scm225734%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225732%_)))
                           (_%src-deps-scm225736%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225701%_
                               _%src-deps-scm225734%_)))
                           (_%src-deps-scm225738%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225736%_)))
                           (_%src-deps-c225740%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225696%_
                                     _%src-deps-scm225738%_)))
                           (_%src-deps-o225742%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225697%_
                                     _%src-deps-scm225738%_)))
                           (_%src-bin-scm225744%_
                            (gxc#find-static-module-file _%ctx225690%_))
                           (_%src-bin-scm225746%_
                            (path-expand _%src-bin-scm225744%_))
                           (_%src-bin-c225748%_
                            (_%replace-extension-with-c225696%_
                             _%src-bin-scm225746%_))
                           (_%src-bin-o225750%_
                            (_%replace-extension-with-object225697%_
                             _%src-bin-scm225746%_))
                           (_%output-bin225752%_
                            (path-expand _%output-bin225712%_))
                           (_%output-scm225754%_
                            (path-expand _%output-scm225711%_))
                           (_%output-c225756%_
                            (_%replace-extension-with-c225696%_
                             _%output-scm225754%_))
                           (_%output-o225758%_
                            (_%replace-extension-with-object225697%_
                             _%output-scm225754%_))
                           (_%output_-c225760%_
                            (_%replace-extension225695%_
                             _%output-scm225754%_
                             '"_.c"))
                           (_%output_-o225762%_
                            (_%replace-extension225695%_
                             _%output-scm225754%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225764%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225766%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225768%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225718%_))
                           (_%output-ld-opts225770%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225772%_
                            (_%get-libgerbil-ld-opts225694%_
                             _%gerbil-libdir225716%_))
                           (_%rpath225774%_
                            (gxc#gerbil-rpath _%gerbil-libdir225716%_))
                           (_%builtin-modules225778%_
                            (_%remove-duplicates225703%_
                             (let ((__tmp226199
                                    (let ((__tmp226201
                                           (lambda (_%mod225776%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225776%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226200
                                           (cons _%ctx225690%_
                                                 _%deps225720%_)))
                                      (declare (not safe))
                                      (##map __tmp226201 __tmp226200))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226199)))))
                      (letrec ((_%compile-obj225781%_
                                (lambda (_%scm-path225788%_ _%c-path225789%_)
                                  (let* ((_%o-path225791%_
                                          (_%replace-extension225695%_
                                           _%c-path225789%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225793%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225791%_
                                             '".lock")))
                                         (_%locked225795%_ '#f)
                                         (_%unlock225798%_
                                          (lambda ()
                                            (close-port _%locked225795%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225793%_)))))
                                    (let _%retry225801%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225793%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225801%_))
                                          (begin
                                            (set! _%locked225795%_
                                                  (let ((__tmp226202
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225793%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226202)))
                                            (if _%locked225795%_
                                                '#!void
                                                (_%retry225801%_)))))
                                    (let ((__tmp226204
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225791%_)))
                                                     (not _%scm-path225788%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225788%_
                                                        _%o-path225791%_)))
                                                 (let ((_%gsc-cc-opts225812%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226206 (cons _%c-path225789%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226206
                            _%gsc-static-opts225768%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226205 _%gsc-cc-opts225812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226203
                                           (lambda () (_%unlock225798%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226204
                                       __tmp226203))))))
                        (let ((__tmp226207
                               (lambda ()
                                 (let ((__tmp226208
                                        (path-directory _%output-bin225752%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226208)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226207))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225754%_
                         (lambda ()
                           (_%generate-stub225693%_
                            _%builtin-modules225778%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225786%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226209
                                                   (let ((__tmp226210
                                                          (let ((__tmp226211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225746%_
                               (cons _%output-scm225754%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226211 _%src-deps-scm225738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226210
                                                      _%libgerbil-c225728%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226209
                                               _%gsc-link-opts225764%_))))
                                     (for-each
                                      _%compile-obj225781%_
                                      (let ((__tmp226212
                                             (cons _%src-bin-scm225746%_
                                                   (cons _%output-scm225754%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226212
                                         _%src-deps-scm225738%_))
                                      (let ((__tmp226213
                                             (cons _%src-bin-c225748%_
                                                   (cons _%output-c225756%_
                                                         (cons _%output_-c225760%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226213
                                         _%src-deps-c225740%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225752%_
                                                        (let ((__tmp226214
                                                               (cons _%src-bin-o225750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225758%_
                                   (cons _%output_-o225762%_
                                         (let ((__tmp226215
                                                (let ((__tmp226216
                                                       (let ((__tmp226218
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225716%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225772%_))))
                     (__tmp226217
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225774%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226218 __tmp226217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226216
                                                   _%output-ld-opts225770%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226215
                                            _%libgerbil-o225730%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226214 _%src-deps-o225742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226219
                                            (cons _%output-c225756%_
                                                  (cons _%output_-c225760%_
                                                        (cons _%output-o225758%_
                                                              (cons _%output_-o225762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226219)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225786%_))
                                  (_%compile-it225786%_)))
                            '#!void))))))
          (let* ((_%output-bin225706%_
                  (gxc#compile-exe-output-file _%ctx225690%_ _%opts225691%_))
                 (_%output-scm225708%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225706%_ '"__exe.scm"))))
            (_%compile-stub225704%_
             _%output-scm225708%_
             _%output-bin225706%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225512%_ _%opts225513%_)
        (letrec ((_%reset-declare225515%_
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
                 (_%generate-stub225516%_
                  (lambda (_%deps225681%_)
                    (let ((_%mod-main225683%_
                           (gxc#find-runtime-symbol _%ctx225512%_ 'main))
                          (_%reset-decl225684%_ (_%reset-declare225515%_))
                          (_%user-decl225685%_ (_%user-declare225517%_)))
                      (for-each
                       (lambda (_%dep225687%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225684%_))
                         (newline)
                         (if _%user-decl225685%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225685%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226220
                                (cons 'include (cons _%dep225687%_ '()))))
                           (declare (not safe))
                           (##write __tmp226220))
                         (newline))
                       _%deps225681%_)
                      (let ((__tmp226221
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226221))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225517%_
                  (lambda ()
                    (let* ((_%gsc-opts225586%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225513%_)))
                           (_%gsc-prelude225588%_
                            (if _%gsc-opts225586%_
                                (member '"-prelude" _%gsc-opts225586%_)
                                '#f))
                           (_%gsc-prelude225590%_
                            (if _%gsc-prelude225588%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225588%_)))
                                '#f)))
                      (let _%lp225593%_ ((_%rest225595%_
                                          (cons _%gsc-prelude225590%_ '()))
                                         (_%user-decls225596%_ '()))
                        (let* ((_%rest225597225605%_ _%rest225595%_)
                               (_%else225599225613%_
                                (lambda ()
                                  (if (null? _%user-decls225596%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225596%_)))))
                               (_%K225601225669%_
                                (lambda (_%rest225616%_ _%expr225617%_)
                                  (let* ((_%expr225618225630%_ _%expr225617%_)
                                         (_%else225621225638%_
                                          (lambda ()
                                            (_%lp225593%_
                                             _%rest225616%_
                                             _%user-decls225596%_))))
                                    (let ((_%K225626225659%_
                                           (lambda (_%decls225657%_)
                                             (_%lp225593%_
                                              _%rest225616%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225596%_
                                                 _%decls225657%_)))))
                                          (_%K225623225644%_
                                           (lambda (_%exprs225642%_)
                                             (_%lp225593%_
                                              (append _%exprs225642%_
                                                      _%rest225616%_)
                                              _%user-decls225596%_))))
                                      (if (pair? _%expr225618225630%_)
                                          (let ((_%tl225628225664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225618225630%_)))
                                                (_%hd225627225662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225618225630%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225627225662%_
                                                         'declare))
                                                (let ((_%decls225667%_
                                                       _%tl225628225664%_))
                                                  (_%K225626225659%_
                                                   _%decls225667%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225627225662%_
                                                             'begin))
                                                    (let ((_%exprs225652%_
                                                           _%tl225628225664%_))
                                                      (_%K225623225644%_
                                                       _%exprs225652%_))
                                                    (_%else225621225638%_))))
                                          (_%else225621225638%_)))))))
                          (if (pair? _%rest225597225605%_)
                              (let ((_%hd225602225672%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225597225605%_)))
                                    (_%tl225603225674%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225597225605%_))))
                                (let* ((_%expr225677%_ _%hd225602225672%_)
                                       (_%rest225679%_ _%tl225603225674%_))
                                  (_%K225601225669%_
                                   _%rest225679%_
                                   _%expr225677%_)))
                              (_%else225599225613%_)))))))
                 (_%compile-stub225518%_
                  (lambda (_%output-scm225525%_ _%output-bin225526%_)
                    (let* ((_%gerbil-home225528%_
                            (let ((__tmp226222
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226222)))
                           (_%gerbil-libdir225530%_
                            (path-expand '"lib" _%gerbil-home225528%_))
                           (_%runtime225532%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225534%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225528%_))
                           (_%include-gambit-sharp225536%_
                            (gxc#include-source _%gambit-sharp225534%_))
                           (_%bin-scm225538%_
                            (gxc#find-static-module-file _%ctx225512%_))
                           (_%deps225540%_
                            (gxc#find-runtime-module-deps _%ctx225512%_))
                           (_%deps225542%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225540%_)))
                           (_%deps225547%_
                            (let ((__tmp226223
                                   (lambda (_%$obj225544%_)
                                     (not (gxc#file-empty? _%$obj225544%_)))))
                              (declare (not safe))
                              (##filter __tmp226223 _%deps225542%_)))
                           (_%deps225551%_
                            (let ((__tmp226224
                                   (lambda (_%f225549%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225549%_
                                             _%runtime225532%_))))))
                              (declare (not safe))
                              (##filter __tmp226224 _%deps225547%_)))
                           (_%output-base225553%_
                            (let ((__tmp226225
                                   (path-strip-extension
                                    _%output-scm225525%_)))
                              (declare (not safe))
                              (##string-append __tmp226225)))
                           (_%output-c225555%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225553%_ '".c")))
                           (_%output-o225557%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225553%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225559%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225553%_ '"_.c")))
                           (_%output-o_225561%_
                            (let ((__tmp226226
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225553%_
                               __tmp226226)))
                           (_%gsc-link-opts225563%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225565%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225567%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225530%_)))
                           (_%output-ld-opts225569%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225571%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225536%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225536%_
                                            '()))))
                           (_%gsc-link-opts225573%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225563%_
                               _%gsc-gx-macros225571%_)))
                           (_%rpath225575%_
                            (gxc#gerbil-rpath _%gerbil-libdir225530%_))
                           (_%default-ld-options225577%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226227
                             (lambda ()
                               (let ((__tmp226228
                                      (path-directory _%output-bin225526%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226228)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226227))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225525%_
                       (lambda ()
                         (_%generate-stub225516%_
                          (let ((__tmp226229
                                 (let ((__tmp226230
                                        (cons _%bin-scm225538%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226230
                                    _%deps225551%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226229 _%runtime225532%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225583%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225559%_
                                                      (let ((__tmp226231
                                                             (cons _%output-scm225525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226231 _%gsc-link-opts225573%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226232
                                                 (let ((__tmp226233
                                                        (cons _%output-c225555%_
                                                              (cons _%output-c_225559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226233
                                                    _%gsc-static-opts225567%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226232
                                             _%gsc-cc-opts225565%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225526%_
                                                      (cons _%output-o225557%_
                                                            (cons _%output-o_225561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226234
                                 (let ((__tmp226236
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225530%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225577%_))))
                                       (__tmp226235
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225575%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226236 __tmp226235))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226234
                             _%output-ld-opts225569%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225583%_))
                                (_%compile-it225583%_)))
                          '#!void)))))
          (let* ((_%output-bin225520%_
                  (gxc#compile-exe-output-file _%ctx225512%_ _%opts225513%_))
                 (_%output-scm225522%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225520%_ '"__exe.scm"))))
            (_%compile-stub225518%_
             _%output-scm225522%_
             _%output-bin225520%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225461%_ _%id225462%_)
        (let ((_%$e225508%_
               (let ((__tmp226238
                      (lambda (_%e225463225465%_)
                        (let* ((_%e225463225467225477%_ _%e225463225465%_)
                               (_%else225469225485%_ (lambda () '#f))
                               (_%K225471225489%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225463225467225477%_
                                 'gx#module-export::t))
                              (let* ((_%e225472225492%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225463225467225477%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225473225495%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225463225467225477%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225474225498%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225463225467225477%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225474225498%_ '0))
                                    (let ((_%e225475225501%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225463225467225477%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225503225505%_)
                                             (eq? _%g225503225505%_
                                                  _%id225462%_))
                                           _%e225475225501%_)
                                          (_%K225471225489%_)
                                          (_%else225469225485%_)))
                                    (_%else225469225485%_)))
                              (_%else225469225485%_)))))
                     (__tmp226237
                      (##structure-ref
                       _%ctx225461%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226238 __tmp226237))))
          (if _%$e225508%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225508%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225452%_ _%id225453%_)
        (let ((_%$e225455%_
               (gxc#find-export-binding _%ctx225452%_ _%id225453%_)))
          (if _%$e225455%_
              ((lambda (_%bind225458%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225458%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225453%_)))
                 (##structure-ref _%bind225458%_ '1 gx#binding::t '#f))
               _%$e225455%_)
              (let ((__tmp226239
                     (##structure-ref
                      _%ctx225452%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226239
                 _%id225453%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225318%_)
        (letrec* ((_%ht225320%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225321%_
                   (lambda (_%in225397%_ _%phi225398%_)
                     (let ((_%iphi225400%_
                            (fx+ _%phi225398%_
                                 (##direct-structure-ref
                                  _%in225397%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225401%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225397%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225403%_ ((_%rest225405%_ _%imports225401%_)
                                          (_%r225406%_ '()))
                         (let* ((_%rest225407225415%_ _%rest225405%_)
                                (_%else225409225423%_ (lambda () _%r225406%_))
                                (_%K225411225440%_
                                 (lambda (_%rest225426%_ _%in225427%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225427%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225400%_))
                                           (_%lp225403%_
                                            _%rest225426%_
                                            (cons _%in225427%_ _%r225406%_))
                                           (_%lp225403%_
                                            _%rest225426%_
                                            _%r225406%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225427%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225431%_
                                                  (fx+ _%phi225398%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225427%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225431%_))
                                                 (_%lp225403%_
                                                  _%rest225426%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225427%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225406%_))
                                                 (_%lp225403%_
                                                  _%rest225426%_
                                                  _%r225406%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225427%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225434%_
                                                      (fx+ _%iphi225400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225427%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225434%_))
                                                     (_%lp225403%_
                                                      _%rest225426%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225427%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225406%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225434%_))
                                                         (_%lp225403%_
                                                          _%rest225426%_
                                                          (let ((__tmp226240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225321%_
                          _%in225427%_
                          _%iphi225400%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225406%_ __tmp226240)))
                 (_%lp225403%_ _%rest225426%_ _%r225406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225403%_
                                                _%rest225426%_
                                                _%r225406%_)))))))
                           (if (pair? _%rest225407225415%_)
                               (let ((_%hd225412225443%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225407225415%_)))
                                     (_%tl225413225445%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225407225415%_))))
                                 (let* ((_%in225448%_ _%hd225412225443%_)
                                        (_%rest225450%_ _%tl225413225445%_))
                                   (_%K225411225440%_
                                    _%rest225450%_
                                    _%in225448%_)))
                               (_%else225409225423%_)))))))
                  (_%find-deps225322%_
                   (lambda (_%rest225330%_ _%deps225331%_)
                     (let* ((_%rest225332225340%_ _%rest225330%_)
                            (_%else225334225348%_ (lambda () _%deps225331%_))
                            (_%K225336225385%_
                             (lambda (_%rest225351%_ _%hd225352%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225352%_
                                      'gx#module-context::t))
                                   (let ((_%id225355%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225352%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225356%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225352%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225320%_
                                            _%id225355%_))
                                         (_%find-deps225322%_
                                          _%rest225351%_
                                          _%deps225331%_)
                                         (let ((_%$e225359%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225352%_))))
                                           (if _%$e225359%_
                                               ((lambda (_%pre225362%_)
                                                  (let ((_%xdeps225364%_
                                                         (_%find-deps225322%_
                                                          (cons _%pre225362%_
                                                                _%imports225356%_)
                                                          _%deps225331%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225320%_
                                                       _%id225355%_
                                                       _%hd225352%_))
                                                    (_%find-deps225322%_
                                                     _%rest225351%_
                                                     (cons _%hd225352%_
                                                           _%xdeps225364%_))))
                                                _%$e225359%_)
                                               (let ((_%xdeps225367%_
                                                      (_%find-deps225322%_
                                                       _%imports225356%_
                                                       _%deps225331%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225320%_
                                                    _%id225355%_
                                                    _%hd225352%_))
                                                 (_%find-deps225322%_
                                                  _%rest225351%_
                                                  (cons _%hd225352%_
                                                        _%xdeps225367%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225352%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225370%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225352%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225320%_
                                                _%id225370%_))
                                             (_%find-deps225322%_
                                              _%rest225351%_
                                              _%deps225331%_)
                                             (let ((_%xdeps225374%_
                                                    (_%find-deps225322%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225352%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225331%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225320%_
                                                      _%id225370%_))
                                                   (_%find-deps225322%_
                                                    _%rest225351%_
                                                    _%xdeps225374%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225320%_
                                                        _%id225370%_
                                                        _%hd225352%_))
                                                     (_%find-deps225322%_
                                                      _%rest225351%_
                                                      (cons _%hd225352%_
                                                            _%xdeps225374%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225352%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225352%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225322%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225352%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225351%_)
                                                _%deps225331%_)
                                               (_%find-deps225322%_
                                                _%rest225351%_
                                                _%deps225331%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225352%_
                                                  'gx#module-export::t))
                                               (_%find-deps225322%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225352%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225351%_)
                                                _%deps225331%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225352%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225352%_ '2 '#f '#f)))
               (_%find-deps225322%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225352%_ '1 '#f '#f))
                      _%rest225351%_)
                _%deps225331%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225352%_ '2 '#f '#f)))
                   (let ((_%xdeps225381%_
                          (_%import-set-template225321%_ _%hd225352%_ '0)))
                     (_%find-deps225322%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225351%_ _%xdeps225381%_))
                      _%deps225331%_))
                   (_%find-deps225322%_ _%rest225351%_ _%deps225331%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225352%_))))))))))
                       (if (pair? _%rest225332225340%_)
                           (let ((_%hd225337225388%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225332225340%_)))
                                 (_%tl225338225390%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225332225340%_))))
                             (let* ((_%hd225393%_ _%hd225337225388%_)
                                    (_%rest225395%_ _%tl225338225390%_))
                               (_%K225336225385%_
                                _%rest225395%_
                                _%hd225393%_)))
                           (_%else225334225348%_))))))
          (let ((__tmp226241
                 (filter gx#expander-context-id
                         (_%find-deps225322%_
                          (let ((_%$e225324%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225318%_))))
                            (if _%$e225324%_
                                ((lambda (_%pre225327%_)
                                   (cons _%pre225327%_
                                         (##structure-ref
                                          _%ctx225318%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225324%_)
                                (##structure-ref
                                 _%ctx225318%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226241)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225248%_)
        (let* ((_%context-id225250%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225248%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225248%_ '1 '#f '#f))
                    (string->symbol _%ctx225248%_)))
               (_%scm225252%_
                (let ((__tmp226242
                       (gxc#static-module-name _%context-id225250%_)))
                  (declare (not safe))
                  (##string-append __tmp226242 '".scm")))
               (_%dirs225254%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225260%_
                (let ((_%user-libpath225256%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225256%_
                      (let ((_%user-libpath225258%_
                             (path-expand '"lib" _%user-libpath225256%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225258%_ _%dirs225254%_))
                            _%dirs225254%_
                            (cons _%user-libpath225258%_ _%dirs225254%_)))
                      _%dirs225254%_)))
               (_%dirs225270%_
                (let ((_%$e225262%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225262%_
                      ((lambda (_%g225264225266%_)
                         (cons _%g225264225266%_ _%dirs225260%_))
                       _%$e225262%_)
                      _%dirs225260%_)))
               (_%dirs225276%_
                (let ((__tmp226243
                       (lambda (_%g225271225273%_)
                         (path-expand '"static" _%g225271225273%_))))
                  (declare (not safe))
                  (##map __tmp226243 _%dirs225270%_))))
          (let _%lp225279%_ ((_%rest225281%_ _%dirs225276%_))
            (let* ((_%rest225282225290%_ _%rest225281%_)
                   (_%else225284225298%_
                    (lambda ()
                      (let ((__tmp226244
                             (##structure-ref
                              _%ctx225248%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226244
                         _%scm225252%_))))
                   (_%K225286225306%_
                    (lambda (_%rest225301%_ _%dir225302%_)
                      (let ((_%path225304%_
                             (path-expand _%scm225252%_ _%dir225302%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225304%_))
                            _%path225304%_
                            (_%lp225279%_ _%rest225301%_))))))
              (if (pair? _%rest225282225290%_)
                  (let ((_%hd225287225309%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225282225290%_)))
                        (_%tl225288225311%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225282225290%_))))
                    (let* ((_%dir225314%_ _%hd225287225309%_)
                           (_%rest225316%_ _%tl225288225311%_))
                      (_%K225286225306%_ _%rest225316%_ _%dir225314%_)))
                  (_%else225284225298%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225246%_)
        (zero? (let ((__tmp226245 (file-info _%path225246%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226245)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225237%_)
        (let ((__tmp226246
               (lambda ()
                 (let ((__tmp226247
                        (lambda ()
                          (let ((__tmp226248
                                 (lambda ()
                                   (let ((__tmp226250
                                          (lambda ()
                                            (let ((__tmp226252
                                                   (lambda ()
                                                     (let ((__tmp226254
                                                            (lambda ()
                                                              (let ((__tmp226255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225237%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226255))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226256
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225237%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226256))
                          '#!void)
                      (gxc#collect-bindings _%ctx225237%_)
                      (gxc#compile-runtime-code _%ctx225237%_)
                      (gxc#compile-meta-code _%ctx225237%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225237%_)
                          '#!void)))
                   (__tmp226253
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
                __tmp226254
                gxc#current-compile-runtime-names
                __tmp226253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226251
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226252
                                               gxc#current-compile-runtime-sections
                                               __tmp226251))))
                                         (__tmp226249
                                          (let ((__obj226150
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226150))
                                            __obj226150)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226250
                                      gxc#current-compile-symbol-table
                                      __tmp226249)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226248
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226247
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226246
           gx#current-expander-context
           _%ctx225237%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225235%_)
        (let ((__tmp226257
               (##structure-ref _%ctx225235%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226257))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225179%_)
        (letrec ((_%compile1225181%_
                  (lambda (_%ctx225224%_)
                    (let* ((_%code225226%_
                            (##structure-ref
                             _%ctx225224%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225230%_
                            (let ((_%idstr225228%_
                                   (let ((__tmp226258
                                          (##structure-ref
                                           _%ctx225224%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226258))))
                              (declare (not safe))
                              (##string-append _%idstr225228%_ '"~0")))
                           (_%rtc?225232%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225226%_))))
                      (if _%rtc?225232%_
                          (let ((__tmp226259
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226259
                             _%ctx225224%_
                             _%rtm225230%_))
                          '#!void)
                      (_%generate-runtime-code225183%_
                       _%ctx225224%_
                       _%code225226%_
                       (if _%rtc?225232%_ _%rtm225230%_ '#f)))))
                 (_%context-timestamp225182%_
                  (lambda (_%ctx225222%_)
                    (let ((__tmp226260
                           (let ((__tmp226261
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225222%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226261 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226260))))
                 (_%generate-runtime-code225183%_
                  (lambda (_%ctx225190%_ _%code225191%_ _%rtm225192%_)
                    (let* ((_%runtime-code?225194%_ (if _%rtm225192%_ '#t '#f))
                           (_%lifts225196%_ (box '()))
                           (_%runtime-code225203%_
                            (if _%runtime-code?225194%_
                                (let ((__tmp226262
                                       (lambda ()
                                         (let ((__tmp226263
                                                (lambda ()
                                                  (let ((__tmp226264
                                                         (lambda ()
                                                           (let ((__tmp226266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226268
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225191%_))))
                                  (__tmp226267
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226268
                               gxc#current-compile-identifiers
                               __tmp226267))))
                         (__tmp226265
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226266
                      gxc#current-compile-marks
                      __tmp226265)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226264
                                                     gxc#current-compile-lift
                                                     _%lifts225196%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226263
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226262
                                   gx#current-expander-context
                                   _%ctx225190%_))
                                '#f))
                           (_%runtime-code225205%_
                            (if _%runtime-code?225194%_
                                (if (null? (unbox _%lifts225196%_))
                                    _%runtime-code225203%_
                                    (cons 'begin
                                          (let ((__tmp226270
                                                 (cons _%runtime-code225203%_
                                                       '()))
                                                (__tmp226269
                                                 (reverse (unbox _%lifts225196%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226270
                                             __tmp226269))))
                                '#f))
                           (_%runtime-code225207%_
                            (if _%runtime-code?225194%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225182%_
                                                         _%ctx225190%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225205%_ '())))
                                '#f))
                           (_%loader-code225210%_
                            (let ((__tmp226271
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225191%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226271
                               gx#current-expander-context
                               _%ctx225190%_)))
                           (_%loader-code225212%_
                            (cons 'begin
                                  (cons _%loader-code225210%_
                                        (cons (if _%runtime-code?225194%_
                                                  (cons 'load-module
                                                        (cons _%rtm225192%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225214%_
                            (gxc#compile-output-file _%ctx225190%_ '0 '".scm"))
                           (_%scmrt225216%_
                            (gxc#compile-output-file
                             _%ctx225190%_
                             '#f
                             '".scm"))
                           (_%scms225218%_
                            (gxc#compile-static-output-file _%ctx225190%_)))
                      (if _%runtime-code?225194%_
                          (gxc#compile-scm-file__0
                           _%scm0225214%_
                           _%runtime-code225207%_)
                          '#!void)
                      (let ((__tmp226272
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225216%_
                                _%loader-code225212%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226272
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225218%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225218%_))
                          '#!void)
                      (if _%runtime-code?225194%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225214%_ _%scms225218%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225218%_ void)))))))
          (let* ((_%all-modules225185%_
                  (cons _%ctx225179%_ (gxc#lift-nested-modules _%ctx225179%_)))
                 (__tmp226273
                  (lambda (_%ctx225187%_)
                    (let ((__tmp226274
                           (lambda () (_%compile1225181%_ _%ctx225187%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226274
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226273 _%all-modules225185%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225078%_)
        (letrec ((_%compile-ssi225080%_
                  (lambda (_%code225147%_)
                    (let* ((_%path225149%_
                            (gxc#compile-output-file
                             _%ctx225078%_
                             '#f
                             '".ssi"))
                           (_%prelude225161%_
                            (let* ((_%super225151%_
                                    (##structure-ref
                                     _%ctx225078%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225153%_
                                    (##structure-ref
                                     _%super225151%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225153%_
                                  ((lambda (_%g225155225157%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225155225157%_)))
                                   _%$e225153%_)
                                  ':<root>)))
                           (_%ns225163%_
                            (##structure-ref
                             _%ctx225078%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225165%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225078%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225173%_
                            (let ((_%$e225167%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225165%_ '#\/))))
                              (if _%$e225167%_
                                  ((lambda (_%x225170%_)
                                     (let ((__tmp226275
                                            (substring
                                             _%idstr225165%_
                                             '0
                                             _%x225170%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226275)))
                                   _%$e225167%_)
                                  '#f)))
                           (_%rt225175%_
                            (let ((__tmp226276
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226276 _%ctx225078%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225149%_))
                      (gxc#with-output-to-scheme-file
                       _%path225149%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225161%_))
                         (if _%pkg225173%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225173%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225163%_))
                         (newline)
                         (pretty-print _%code225147%_)
                         (if _%rt225175%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225175%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225081%_
                  (lambda (_%part225086%_)
                    (let* ((_%part225087225100%_ _%part225086%_)
                           (_%E225089225104%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225087225100%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225090225116%_
                            (lambda (_%code225107%_
                                     _%n225108%_
                                     _%phi225109%_
                                     _%phi-ctx225110%_)
                              (let ((_%code225114%_
                                     (let ((__tmp226277
                                            (lambda ()
                                              (let ((__tmp226278
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225107%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226278
                                                 gx#current-expander-phi
                                                 _%phi225109%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226277
                                        gx#current-expander-context
                                        _%phi-ctx225110%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225078%_
                                  _%n225108%_
                                  '".scm")
                                 _%code225114%_
                                 '#t)))))
                      (if (pair? _%part225087225100%_)
                          (let ((_%hd225091225119%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225087225100%_)))
                                (_%tl225092225121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225087225100%_))))
                            (let ((_%phi-ctx225124%_ _%hd225091225119%_))
                              (if (pair? _%tl225092225121%_)
                                  (let ((_%hd225093225126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225092225121%_)))
                                        (_%tl225094225128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225092225121%_))))
                                    (let ((_%phi225131%_ _%hd225093225126%_))
                                      (if (pair? _%tl225094225128%_)
                                          (let ((_%hd225095225133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225094225128%_)))
                                                (_%tl225096225135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225094225128%_))))
                                            (let ((_%n225138%_
                                                   _%hd225095225133%_))
                                              (if (pair? _%tl225096225135%_)
                                                  (let ((_%hd225097225140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225096225135%_)))
                                                        (_%tl225098225142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225096225135%_))))
                                                    (let ((_%code225145%_
                                                           _%hd225097225140%_))
                                                      (if (null? _%tl225098225142%_)
                                                          (_%K225090225116%_
                                                           _%code225145%_
                                                           _%n225138%_
                                                           _%phi225131%_
                                                           _%phi-ctx225124%_)
                                                          (_%E225089225104%_))))
                                                  (_%E225089225104%_))))
                                          (_%E225089225104%_))))
                                  (_%E225089225104%_))))
                          (_%E225089225104%_))))))
          (let ((_g226279_ (gxc#generate-meta-code _%ctx225078%_)))
            (begin
              (let ((_g226280_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226279_)
                           (##values-length _g226279_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226280_ 2)))
                    (error "Context expects 2 values" _g226280_)))
              (let ((_%ssi-code225083%_
                     (let () (declare (not safe)) (##values-ref _g226279_ 0)))
                    (_%phi-code225084%_
                     (let () (declare (not safe)) (##values-ref _g226279_ 1))))
                (begin
                  (_%compile-ssi225080%_ _%ssi-code225083%_)
                  (for-each _%compile-phi225081%_ _%phi-code225084%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225060%_)
        (let* ((_%path225062%_
                (gxc#compile-output-file _%ctx225060%_ '#f '".ssxi.ss"))
               (_%code225064%_
                (let ((__tmp226281
                       (##structure-ref
                        _%ctx225060%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226281)))
               (_%idstr225066%_
                (symbol->string
                 (##structure-ref
                  _%ctx225060%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225074%_
                (let ((_%$e225068%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225066%_ '#\/))))
                  (if _%$e225068%_
                      ((lambda (_%x225071%_)
                         (let ((__tmp226282
                                (substring _%idstr225066%_ '0 _%x225071%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226282)))
                       _%$e225068%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225062%_))
          (gxc#with-output-to-scheme-file
           _%path225062%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225074%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225074%_))
                 '#!void)
             (newline)
             (pretty-print _%code225064%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225053%_)
        (let* ((_%state225055%_
                (let ((__obj226151
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226151 _%ctx225053%_))
                  __obj226151))
               (_%ssi-code225057%_
                (let ((__tmp226283
                       (##structure-ref
                        _%ctx225053%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225055%_
                   __tmp226283))))
          (values _%ssi-code225057%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225055%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225044%_)
        (let* ((_%lifts225046%_ (box '()))
               (__tmp226284
                (lambda ()
                  (let ((__tmp226286
                         (lambda ()
                           (let ((__tmp226288
                                  (lambda ()
                                    (let ((_%code225051%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx225044%_))))
                                      (if (null? (unbox _%lifts225046%_))
                                          _%code225051%_
                                          (cons 'begin
                                                (let ((__tmp226290
                                                       (cons _%code225051%_
                                                             '()))
                                                      (__tmp226289
                                                       (reverse (unbox _%lifts225046%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226290
                                                   __tmp226289)))))))
                                 (__tmp226287
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226288
                              gxc#current-compile-identifiers
                              __tmp226287))))
                        (__tmp226285
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226286
                     gxc#current-compile-marks
                     __tmp226285)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226284
           gxc#current-compile-lift
           _%lifts225046%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx225040%_)
        (let ((_%modules225042%_ (box '())))
          (let ((__tmp226291
                 (##structure-ref _%ctx225040%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules225042%_ __tmp226291))
          (reverse (unbox _%modules225042%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path225020%_ _%code225021%_ _%phi?225022%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path225020%_))
        (gxc#with-output-to-scheme-file
         _%path225020%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226292
                                           (if _%phi?225022%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226292)))))))
           (pretty-print _%code225021%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it225026%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path225020%_ _%phi?225022%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226293
                         (cons 'compile-file (cons _%path225020%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it225026%_ __tmp226293))
                  (_%compile-it225026%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path225031%_ _%code225032%_)
        (let ((_%phi?225034%_ '#f))
          (gxc#compile-scm-file__%
           _%path225031%_
           _%code225032%_
           _%phi?225034%_))))
    (define gxc#compile-scm-file
      (lambda _g226294_
        (let ((_g226295_ (let () (declare (not safe)) (##length _g226294_))))
          (cond ((let () (declare (not safe)) (##fx= _g226295_ 2))
                 (apply gxc#compile-scm-file__0 _g226294_))
                ((let () (declare (not safe)) (##fx= _g226295_ 3))
                 (apply gxc#compile-scm-file__% _g226294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226294_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224921%_)
        (let _%lp224923%_ ((_%rest224925%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224926%_ '()))
          (let* ((_%rest224927224947%_ _%rest224925%_)
                 (_%else224931224955%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224926%_)))
                        (reverse _%opts224926%_)))))
            (let ((_%K224941224998%_
                   (lambda (_%rest224996%_)
                     (_%lp224923%_ _%rest224996%_ _%opts224926%_)))
                  (_%K224936224980%_
                   (lambda (_%rest224978%_)
                     (_%lp224923%_ _%rest224978%_ _%opts224926%_)))
                  (_%K224933224962%_
                   (lambda (_%rest224959%_ _%opt224960%_)
                     (_%lp224923%_
                      _%rest224959%_
                      (cons _%opt224960%_ _%opts224926%_)))))
              (if (pair? _%rest224927224947%_)
                  (let ((_%tl224943225003%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224927224947%_)))
                        (_%hd224942225001%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224927224947%_))))
                    (if (equal? _%hd224942225001%_ '"-cc-options")
                        (if (pair? _%tl224943225003%_)
                            (let* ((_%tl224945225006%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224943225003%_)))
                                   (_%rest225009%_ _%tl224945225006%_))
                              (_%K224941224998%_ _%rest225009%_))
                            (let ((_%opt224970%_ _%hd224942225001%_)
                                  (_%rest224972%_ _%tl224943225003%_))
                              (_%K224933224962%_
                               _%rest224972%_
                               _%opt224970%_)))
                        (if (equal? _%hd224942225001%_ '"-ld-options")
                            (if (pair? _%tl224943225003%_)
                                (let* ((_%tl224940224988%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224943225003%_)))
                                       (_%rest224991%_ _%tl224940224988%_))
                                  (_%K224936224980%_ _%rest224991%_))
                                (let ((_%opt224970%_ _%hd224942225001%_)
                                      (_%rest224972%_ _%tl224943225003%_))
                                  (_%K224933224962%_
                                   _%rest224972%_
                                   _%opt224970%_)))
                            (let ((_%opt224970%_ _%hd224942225001%_)
                                  (_%rest224972%_ _%tl224943225003%_))
                              (_%K224933224962%_
                               _%rest224972%_
                               _%opt224970%_)))))
                  (_%else224931224955%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?225015%_ '#f)) (gxc#gsc-link-options__% _%phi?225015%_))))
    (define gxc#gsc-link-options
      (lambda _g226296_
        (let ((_g226297_ (let () (declare (not safe)) (##length _g226296_))))
          (cond ((let () (declare (not safe)) (##fx= _g226297_ 0))
                 (apply gxc#gsc-link-options__0 _g226296_))
                ((let () (declare (not safe)) (##fx= _g226297_ 1))
                 (apply gxc#gsc-link-options__% _g226296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226296_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224771%_ _%static?224767224772%_ _%phi?224773%_)
        (let ((_%static?224775%_
               (if (eq? _%static?224767224772%_ absent-value)
                   '#f
                   _%static?224767224772%_)))
          (if _%phi?224773%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224777%_ ((_%rest224779%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224780%_ '()))
                (let* ((_%rest224781224807%_ _%rest224779%_)
                       (_%else224786224815%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224780%_)))
                              (reverse! _%opts224780%_)))))
                  (let ((_%K224801224878%_
                         (lambda (_%rest224875%_ _%opt224876%_)
                           (if _%static?224775%_
                               (_%lp224777%_
                                _%rest224875%_
                                (cons _%opt224876%_
                                      (cons '"-cc-options" _%opts224780%_)))
                               (_%lp224777%_ _%rest224875%_ _%opts224780%_))))
                        (_%K224796224855%_
                         (lambda (_%rest224852%_ _%opt224853%_)
                           (_%lp224777%_
                            _%rest224852%_
                            (cons _%opt224853%_
                                  (cons '"-cc-options" _%opts224780%_)))))
                        (_%K224791224835%_
                         (lambda (_%rest224833%_)
                           (_%lp224777%_ _%rest224833%_ _%opts224780%_)))
                        (_%K224788224821%_
                         (lambda (_%rest224819%_)
                           (_%lp224777%_ _%rest224819%_ _%opts224780%_))))
                    (if (pair? _%rest224781224807%_)
                        (let ((_%tl224803224883%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224781224807%_)))
                              (_%hd224802224881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224781224807%_))))
                          (if (equal? _%hd224802224881%_ '"-cc-options")
                              (if (pair? _%tl224803224883%_)
                                  (let ((_%tl224805224888%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224803224883%_)))
                                        (_%hd224804224886%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224803224883%_))))
                                    (if (equal? _%hd224804224886%_ '"-Bstatic")
                                        (let ((_%opt224891%_
                                               _%hd224804224886%_)
                                              (_%rest224893%_
                                               _%tl224805224888%_))
                                          (_%K224801224878%_
                                           _%rest224893%_
                                           _%opt224891%_))
                                        (let ((_%opt224868%_
                                               _%hd224804224886%_)
                                              (_%rest224870%_
                                               _%tl224805224888%_))
                                          (_%K224796224855%_
                                           _%rest224870%_
                                           _%opt224868%_))))
                                  (let ((_%rest224827%_ _%tl224803224883%_))
                                    (_%K224788224821%_ _%rest224827%_)))
                              (if (equal? _%hd224802224881%_ '"-ld-options")
                                  (if (pair? _%tl224803224883%_)
                                      (let* ((_%tl224795224843%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224803224883%_)))
                                             (_%rest224846%_
                                              _%tl224795224843%_))
                                        (_%K224791224835%_ _%rest224846%_))
                                      (let ((_%rest224827%_
                                             _%tl224803224883%_))
                                        (_%K224788224821%_ _%rest224827%_)))
                                  (let ((_%rest224827%_ _%tl224803224883%_))
                                    (_%K224788224821%_ _%rest224827%_)))))
                        (_%else224786224815%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224898%_ _%static?224767224899%_)
        (let ((_%phi?224901%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224898%_
           _%static?224767224899%_
           _%phi?224901%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226298_
        (let ((_g226299_ (let () (declare (not safe)) (##length _g226298_))))
          (cond ((let () (declare (not safe)) (##fx= _g226299_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226298_))
                ((let () (declare (not safe)) (##fx= _g226299_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226298_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224910%_ . _%args224911%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224910%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224910%_
                  'static:
                  absent-value))
               _%args224911%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224768224917%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224768224917%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224617%_ _%static?224613224618%_ _%phi?224619%_)
        (let ((_%static?224621%_
               (if (eq? _%static?224613224618%_ absent-value)
                   '#f
                   _%static?224613224618%_)))
          (if _%phi?224619%_
              '()
              (let _%lp224623%_ ((_%rest224625%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224626%_ '()))
                (let* ((_%rest224627224653%_ _%rest224625%_)
                       (_%else224632224661%_
                        (lambda () (reverse! _%opts224626%_))))
                  (let ((_%K224647224724%_
                         (lambda (_%rest224721%_ _%opt224722%_)
                           (if _%static?224621%_
                               (_%lp224623%_
                                _%rest224721%_
                                (cons _%opt224722%_
                                      (cons '"-ld-options" _%opts224626%_)))
                               (_%lp224623%_ _%rest224721%_ _%opts224626%_))))
                        (_%K224642224701%_
                         (lambda (_%rest224698%_ _%opt224699%_)
                           (_%lp224623%_
                            _%rest224698%_
                            (cons _%opt224699%_
                                  (cons '"-ld-options" _%opts224626%_)))))
                        (_%K224637224681%_
                         (lambda (_%rest224679%_)
                           (_%lp224623%_ _%rest224679%_ _%opts224626%_)))
                        (_%K224634224667%_
                         (lambda (_%rest224665%_)
                           (_%lp224623%_ _%rest224665%_ _%opts224626%_))))
                    (if (pair? _%rest224627224653%_)
                        (let ((_%tl224649224729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224627224653%_)))
                              (_%hd224648224727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224627224653%_))))
                          (if (equal? _%hd224648224727%_ '"-ld-options")
                              (if (pair? _%tl224649224729%_)
                                  (let ((_%tl224651224734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224649224729%_)))
                                        (_%hd224650224732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224649224729%_))))
                                    (if (equal? _%hd224650224732%_ '"-static")
                                        (let ((_%opt224737%_
                                               _%hd224650224732%_)
                                              (_%rest224739%_
                                               _%tl224651224734%_))
                                          (_%K224647224724%_
                                           _%rest224739%_
                                           _%opt224737%_))
                                        (let ((_%opt224714%_
                                               _%hd224650224732%_)
                                              (_%rest224716%_
                                               _%tl224651224734%_))
                                          (_%K224642224701%_
                                           _%rest224716%_
                                           _%opt224714%_))))
                                  (let ((_%rest224673%_ _%tl224649224729%_))
                                    (_%K224634224667%_ _%rest224673%_)))
                              (if (equal? _%hd224648224727%_ '"-cc-options")
                                  (if (pair? _%tl224649224729%_)
                                      (let* ((_%tl224641224689%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224649224729%_)))
                                             (_%rest224692%_
                                              _%tl224641224689%_))
                                        (_%K224637224681%_ _%rest224692%_))
                                      (let ((_%rest224673%_
                                             _%tl224649224729%_))
                                        (_%K224634224667%_ _%rest224673%_)))
                                  (let ((_%rest224673%_ _%tl224649224729%_))
                                    (_%K224634224667%_ _%rest224673%_)))))
                        (_%else224632224661%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224744%_ _%static?224613224745%_)
        (let ((_%phi?224747%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224744%_
           _%static?224613224745%_
           _%phi?224747%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226300_
        (let ((_g226301_ (let () (declare (not safe)) (##length _g226300_))))
          (cond ((let () (declare (not safe)) (##fx= _g226301_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226300_))
                ((let () (declare (not safe)) (##fx= _g226301_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226300_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224756%_ . _%args224757%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224756%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224756%_
                  'static:
                  absent-value))
               _%args224757%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224614224763%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224614224763%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224608%_)
        (let ((_%user-staticdir224610%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224608%_
                       '" -I "
                       _%user-staticdir224610%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224520%_ ((_%rest224522%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224523%_ '()))
          (let* ((_%rest224524224544%_ _%rest224522%_)
                 (_%else224528224552%_ (lambda () _%opts224523%_)))
            (let ((_%K224538224595%_
                   (lambda (_%rest224593%_)
                     (_%lp224520%_ _%rest224593%_ _%opts224523%_)))
                  (_%K224533224573%_
                   (lambda (_%rest224570%_ _%opt224571%_)
                     (_%lp224520%_
                      _%rest224570%_
                      (let ((__tmp226302
                             (let ((__tmp226303
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224571%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226303))))
                        (declare (not safe))
                        (##append _%opts224523%_ __tmp226302)))))
                  (_%K224530224558%_
                   (lambda (_%rest224556%_)
                     (_%lp224520%_ _%rest224556%_ _%opts224523%_))))
              (if (pair? _%rest224524224544%_)
                  (let ((_%tl224540224600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224524224544%_)))
                        (_%hd224539224598%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224524224544%_))))
                    (if (equal? _%hd224539224598%_ '"-cc-options")
                        (if (pair? _%tl224540224600%_)
                            (let* ((_%tl224542224603%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224540224600%_)))
                                   (_%rest224606%_ _%tl224542224603%_))
                              (_%K224538224595%_ _%rest224606%_))
                            (let ((_%rest224564%_ _%tl224540224600%_))
                              (_%K224530224558%_ _%rest224564%_)))
                        (if (equal? _%hd224539224598%_ '"-ld-options")
                            (if (pair? _%tl224540224600%_)
                                (let ((_%tl224537224583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224540224600%_)))
                                      (_%hd224536224581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224540224600%_))))
                                  (let ((_%opt224586%_ _%hd224536224581%_)
                                        (_%rest224588%_ _%tl224537224583%_))
                                    (_%K224533224573%_
                                     _%rest224588%_
                                     _%opt224586%_)))
                                (let ((_%rest224564%_ _%tl224540224600%_))
                                  (_%K224530224558%_ _%rest224564%_)))
                            (let ((_%rest224564%_ _%tl224540224600%_))
                              (_%K224530224558%_ _%rest224564%_)))))
                  (_%else224528224552%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224517%_)
        (not (let () (declare (not safe)) (string-empty? _%str224517%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224510%_ _%phi?224511%_)
        (let ((_%gsc-link-opts224513%_
               (gxc#gsc-link-options__% _%phi?224511%_))
              (_%gsc-cc-opts224514%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224511%_))
              (_%gsc-ld-opts224515%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224511%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226304
                  (let ((__tmp226305
                         (let ((__tmp226306 (cons _%path224510%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226306
                            _%gsc-link-opts224513%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226305 _%gsc-ld-opts224515%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226304 _%gsc-cc-opts224514%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224476%_ _%n224477%_ _%ext224478%_)
        (letrec ((_%module-relative-path224480%_
                  (lambda (_%ctx224508%_)
                    (path-strip-directory
                     (let ((__tmp226307
                            (##structure-ref
                             _%ctx224508%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226307)))))
                 (_%module-source-directory224481%_
                  (lambda (_%ctx224504%_)
                    (path-directory
                     (let ((_%mpath224506%_
                            (##structure-ref
                             _%ctx224504%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224506%_)
                           _%mpath224506%_
                           (last _%mpath224506%_))))))
                 (_%section-string224482%_
                  (lambda (_%n224498%_)
                    (if (number? _%n224498%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224498%_))
                        (if (symbol? _%n224498%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224498%_))
                            (if (string? _%n224498%_)
                                _%n224498%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224498%_)))))))
                 (_%file-name224483%_
                  (lambda (_%path224496%_)
                    (if _%n224477%_
                        (string-append
                         _%path224496%_
                         '"~"
                         (_%section-string224482%_ _%n224477%_)
                         _%ext224478%_)
                        (string-append _%path224496%_ _%ext224478%_))))
                 (_%file-path224484%_
                  (lambda ()
                    (let ((_%$e224490%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224490%_
                          ((lambda (_%outdir224493%_)
                             (path-expand
                              (_%file-name224483%_
                               (let ((__tmp226308
                                      (##structure-ref
                                       _%ctx224476%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226308)))
                              _%outdir224493%_))
                           _%$e224490%_)
                          (path-expand
                           (_%file-name224483%_
                            (_%module-relative-path224480%_ _%ctx224476%_))
                           (_%module-source-directory224481%_
                            _%ctx224476%_)))))))
          (let ((_%path224486%_ (_%file-path224484%_)))
            (let ((__tmp226309
                   (lambda ()
                     (let ((__tmp226310 (path-directory _%path224486%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226310)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226309))
            _%path224486%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224457%_)
        (letrec ((_%file-name224459%_
                  (lambda (_%id224474%_)
                    (let ((__tmp226311 (gxc#static-module-name _%id224474%_)))
                      (declare (not safe))
                      (##string-append __tmp226311 '".scm"))))
                 (_%file-path224460%_
                  (lambda ()
                    (let* ((_%file224466%_
                            (_%file-name224459%_
                             (##structure-ref
                              _%ctx224457%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224468%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224468%_
                          ((lambda (_%outdir224471%_)
                             (path-expand
                              _%file224466%_
                              (path-expand '"static" _%outdir224471%_)))
                           _%$e224468%_)
                          (path-expand _%file224466%_ '"static"))))))
          (let ((_%path224462%_ (_%file-path224460%_)))
            (let ((__tmp226312
                   (lambda ()
                     (let ((__tmp226313 (path-directory _%path224462%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226313)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226312))
            _%path224462%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224450%_ _%opts224451%_)
        (let ((_%$e224453%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224451%_))))
          (if _%$e224453%_
              _%$e224453%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224450%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224440%_)
        (if (string? _%idstr224440%_)
            (let* ((_%str224443%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224440%_)))
                   (_%strs224445%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224443%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224445%_ '"__"))
            (if (symbol? _%idstr224440%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224440%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224440%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226314
               (let ((__tmp226315 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226315 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226314))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224406%_
               _%stdout-redirection224402224407%_
               _%stderr-redirection224403224408%_
               _%program224409%_
               _%args224410%_)
        (let* ((_%stdout-redirection224412%_
                (if (eq? _%stdout-redirection224402224407%_ absent-value)
                    '#f
                    _%stdout-redirection224402224407%_))
               (_%stderr-redirection224414%_
                (if (eq? _%stderr-redirection224403224408%_ absent-value)
                    '#f
                    _%stderr-redirection224403224408%_)))
          (let ((__tmp226316 (cons _%program224409%_ _%args224410%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226316))
          (let* ((_%proc224416%_
                  (open-process
                   (cons 'path:
                         (cons _%program224409%_
                               (cons 'arguments:
                                     (cons _%args224410%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224412%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224421%_
                  (if (or _%stdout-redirection224412%_
                          _%stderr-redirection224414%_)
                      (read-line _%proc224416%_ '#f)
                      '#f))
                 (_%status224424%_ (process-status _%proc224416%_)))
            (let () (declare (not safe)) (##close-port _%proc224416%_))
            (if (zero? _%status224424%_)
                '#!void
                (begin
                  (display _%output224421%_)
                  (let ((__tmp226317 (cons _%program224409%_ _%args224410%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226317
                     _%status224424%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224429%_ . _%args224430%_)
        (apply gxc#invoke__%
               _%@@keywords224429%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224429%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224429%_
                  'stderr-redirection:
                  absent-value))
               _%args224430%_)))
    (define gxc#invoke
      (lambda _%args224404224436%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224404224436%_)))))
