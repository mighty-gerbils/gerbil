(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770342315)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226171 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226171))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226172 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226172))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path226028%_ _%fun226029%_)
        (with-output-to-file
         (cons 'path: (cons _%path226028%_ gxc#scheme-file-settings))
         _%fun226029%_)))
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
      (lambda (_%gerbil-libdir226023%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir226023%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path226021%_)
        (let ((__tmp226173 (object->string _%path226021%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226173 '")"))))
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
      (lambda (_%dir226019%_) (delete-file-or-directory _%dir226019%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225962%_ _%opts225963%_)
        (if (string? _%srcpath225962%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225962%_)))
        (let* ((_%outdir225965%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225963%_)))
               (_%invoke-gsc?225967%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225963%_)))
               (_%target225972%_
                (let ((_%$e225969%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225963%_))))
                  (if _%$e225969%_ _%$e225969%_ 'C)))
               (_%gsc-options225977%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225972%_) '()))
                        (let ((_%$e225974%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225963%_))))
                          (if _%$e225974%_ _%$e225974%_ '()))))
               (_%keep-scm?225979%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225963%_)))
               (_%verbosity225981%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225963%_)))
               (_%optimize225983%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225963%_)))
               (_%debug225985%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225963%_)))
               (_%gen-ssxi225987%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225963%_)))
               (_%parallel?225989%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225963%_))))
          (if _%outdir225965%_
              (let ((__tmp226174
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225965%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226174))
              '#!void)
          (if _%optimize225983%_
              (let ((__tmp226175
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
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
                                 (let ((__tmp226183
                                        (lambda ()
                                          (let ((__tmp226184
                                                 (lambda ()
                                                   (let ((__tmp226186
                                                          (lambda ()
                                                            (let ((__tmp226188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226190
                                    (lambda ()
                                      (let ((__tmp226191
                                             (lambda ()
                                               (let ((__tmp226192
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath225962%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp226193
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath225962%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp226193))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp226192
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226191
                                         gxc#current-compile-parallel
                                         _%parallel?225989%_))))
                                   (__tmp226189
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226190
                                gxc#current-compile-identifiers
                                __tmp226189))))
                          (__tmp226187
                           (cons (cons 'compile-module
                                       (cons _%srcpath225962%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226188
                       gxc#current-compile-context
                       __tmp226187))))
                 (__tmp226185 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226186
                                                      gxc#current-compile-timestamp
                                                      __tmp226185)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226184
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225987%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226183
                                    gxc#current-compile-debug
                                    _%debug225985%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226182
                           gxc#current-compile-optimize
                           _%optimize225983%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226181
                  gxc#current-compile-verbose
                  _%verbosity225981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226180
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225979%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226179
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225977%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226178
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225967%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226177
                      gx#current-compilation-target
                      _%target225972%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226176
             gxc#current-compile-output-dir
             _%outdir225965%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath226012%_)
        (let ((_%opts226014%_ '()))
          (gxc#compile-module__% _%srcpath226012%_ _%opts226014%_))))
    (define gxc#compile-module
      (lambda _g226194_
        (let ((_g226195_ (let () (declare (not safe)) (##length _g226194_))))
          (cond ((let () (declare (not safe)) (##fx= _g226195_ 1))
                 (apply gxc#compile-module__0 _g226194_))
                ((let () (declare (not safe)) (##fx= _g226195_ 2))
                 (apply gxc#compile-module__% _g226194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226194_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225911%_ _%opts225912%_)
        (if (string? _%srcpath225911%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225911%_)))
        (let* ((_%outdir225914%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225912%_)))
               (_%invoke-gsc?225916%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225912%_)))
               (_%target225921%_
                (let ((_%$e225918%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225912%_))))
                  (if _%$e225918%_ _%$e225918%_ 'C)))
               (_%gsc-options225926%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225921%_) '()))
                        (let ((_%$e225923%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225912%_))))
                          (if _%$e225923%_ _%$e225923%_ '()))))
               (_%keep-scm?225928%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225912%_)))
               (_%verbosity225930%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225912%_)))
               (_%debug225932%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225912%_)))
               (_%parallel?225934%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225912%_))))
          (if _%outdir225914%_
              (let ((__tmp226196
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225914%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226196))
              '#!void)
          (let ((__tmp226197
                 (lambda ()
                   (let ((__tmp226198
                          (lambda ()
                            (let ((__tmp226199
                                   (lambda ()
                                     (let ((__tmp226200
                                            (lambda ()
                                              (let ((__tmp226201
                                                     (lambda ()
                                                       (let ((__tmp226202
                                                              (lambda ()
                                                                (let ((__tmp226203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226205
                                        (lambda ()
                                          (let ((__tmp226207
                                                 (lambda ()
                                                   (let ((__tmp226209
                                                          (lambda ()
                                                            (let ((__tmp226210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226211
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath225911%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp226212
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath225911%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp226212))
                                       _%opts225912%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226211
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226210
                       gxc#current-compile-parallel
                       _%parallel?225934%_))))
                 (__tmp226208
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226209
                                                      gxc#current-compile-identifiers
                                                      __tmp226208))))
                                                (__tmp226206
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226207
                                             gxc#current-compile-context
                                             __tmp226206))))
                                       (__tmp226204 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226205
                                    gxc#current-compile-timestamp
                                    __tmp226204)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226203
                           gxc#current-compile-debug
                           _%debug225932%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226202
                  gxc#current-compile-verbose
                  _%verbosity225930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226201
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225928%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226200
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225926%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226199
                               gx#current-compilation-target
                               _%target225921%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226198
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225916%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226197
             gxc#current-compile-output-dir
             _%outdir225914%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225954%_)
        (let ((_%opts225956%_ '()))
          (gxc#compile-exe__% _%srcpath225954%_ _%opts225956%_))))
    (define gxc#compile-exe
      (lambda _g226213_
        (let ((_g226214_ (let () (declare (not safe)) (##length _g226213_))))
          (cond ((let () (declare (not safe)) (##fx= _g226214_ 1))
                 (apply gxc#compile-exe__0 _g226213_))
                ((let () (declare (not safe)) (##fx= _g226214_ 2))
                 (apply gxc#compile-exe__% _g226213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226213_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225907%_ _%opts225908%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225908%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225907%_
             _%opts225908%_)
            (gxc#compile-executable-module/separate
             _%ctx225907%_
             _%opts225908%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225707%_ _%opts225708%_)
        (letrec ((_%generate-stub225710%_
                  (lambda (_%builtin-modules225903%_)
                    (let ((_%mod-main225905%_
                           (gxc#find-runtime-symbol _%ctx225707%_ 'main)))
                      (let ((__tmp226215
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225903%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226215))
                      (let ((__tmp226216
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225905%_
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
                        (##write __tmp226216))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225711%_
                  (lambda (_%gerbil-libdir225901%_)
                    (let ((__tmp226217
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225901%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226217 read))))
                 (_%replace-extension225712%_
                  (lambda (_%path225898%_ _%ext225899%_)
                    (string-append
                     (path-strip-extension _%path225898%_)
                     _%ext225899%_)))
                 (_%replace-extension-with-c225713%_
                  (lambda (_%path225896%_)
                    (_%replace-extension225712%_ _%path225896%_ '".c")))
                 (_%replace-extension-with-object225714%_
                  (lambda (_%path225894%_)
                    (_%replace-extension225712%_
                     _%path225894%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225715%_
                  (lambda (_%ctx225892%_)
                    (if (_%exclude-module?225717%_ _%ctx225892%_)
                        '#f
                        (not (_%libgerbil-module?225716%_ _%ctx225892%_)))))
                 (_%libgerbil-module?225716%_
                  (lambda (_%ctx225885%_)
                    (let ((_%id-str225887%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225885%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225717%_ _%id-str225887%_)
                          '#f
                          (let ((_%$e225889%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225887%_))))
                            (if _%$e225889%_
                                _%$e225889%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225887%_))))))))
                 (_%exclude-module?225717%_
                  (lambda (_%ctx-or-str225881%_)
                    (let ((_%str225883%_
                           (if (string? _%ctx-or-str225881%_)
                               _%ctx-or-str225881%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225881%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225883%_))))
                 (_%not-file-empty?225718%_
                  (lambda (_%path225879%_)
                    (not (gxc#file-empty? _%path225879%_))))
                 (_%fold-libgerbil-runtime-scm225719%_
                  (lambda (_%gerbil-staticdir225872%_ _%libgerbil-scm225873%_)
                    (let ((_%gerbil-runtime-scm225877%_
                           (let ((__tmp226218
                                  (lambda (_%rtm225875%_)
                                    (path-expand
                                     (let ((__tmp226219
                                            (let ((__tmp226220
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225875%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226220
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226219 '".scm"))
                                     _%gerbil-staticdir225872%_))))
                             (declare (not safe))
                             (##map __tmp226218 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225720%_
                       (append _%gerbil-runtime-scm225877%_
                               _%libgerbil-scm225873%_)))))
                 (_%remove-duplicates225720%_
                  (lambda (_%strlst225832%_)
                    (let _%loop225834%_ ((_%rest225836%_ _%strlst225832%_)
                                         (_%result225837%_ '()))
                      (let* ((_%rest225838225846%_ _%rest225836%_)
                             (_%else225840225854%_
                              (lambda () (reverse! _%result225837%_)))
                             (_%K225842225860%_
                              (lambda (_%rest225857%_ _%path225858%_)
                                (if (member _%path225858%_ _%result225837%_)
                                    (_%loop225834%_
                                     _%rest225857%_
                                     _%result225837%_)
                                    (_%loop225834%_
                                     _%rest225857%_
                                     (cons _%path225858%_
                                           _%result225837%_))))))
                        (if (pair? _%rest225838225846%_)
                            (let ((_%hd225843225863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225838225846%_)))
                                  (_%tl225844225865%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225838225846%_))))
                              (let* ((_%path225868%_ _%hd225843225863%_)
                                     (_%rest225870%_ _%tl225844225865%_))
                                (_%K225842225860%_
                                 _%rest225870%_
                                 _%path225868%_)))
                            (_%else225840225854%_))))))
                 (_%compile-stub225721%_
                  (lambda (_%output-scm225728%_ _%output-bin225729%_)
                    (let* ((_%gerbil-home225731%_
                            (let ((__tmp226221
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226221)))
                           (_%gerbil-libdir225733%_
                            (path-expand '"lib" _%gerbil-home225731%_))
                           (_%gerbil-staticdir225735%_
                            (path-expand '"static" _%gerbil-libdir225733%_))
                           (_%deps225737%_
                            (gxc#find-runtime-module-deps _%ctx225707%_))
                           (_%libgerbil-deps225739%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225716%_
                               _%deps225737%_)))
                           (_%libgerbil-scm225741%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225739%_)))
                           (_%libgerbil-scm225743%_
                            (_%fold-libgerbil-runtime-scm225719%_
                             _%gerbil-staticdir225735%_
                             _%libgerbil-scm225741%_))
                           (_%libgerbil-c225745%_
                            (map _%replace-extension-with-c225713%_
                                 _%libgerbil-scm225743%_))
                           (_%libgerbil-o225747%_
                            (map _%replace-extension-with-object225714%_
                                 _%libgerbil-scm225743%_))
                           (_%src-deps225749%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225715%_
                               _%deps225737%_)))
                           (_%src-deps-scm225751%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225749%_)))
                           (_%src-deps-scm225753%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225718%_
                               _%src-deps-scm225751%_)))
                           (_%src-deps-scm225755%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225753%_)))
                           (_%src-deps-c225757%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225713%_
                                     _%src-deps-scm225755%_)))
                           (_%src-deps-o225759%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225714%_
                                     _%src-deps-scm225755%_)))
                           (_%src-bin-scm225761%_
                            (gxc#find-static-module-file _%ctx225707%_))
                           (_%src-bin-scm225763%_
                            (path-expand _%src-bin-scm225761%_))
                           (_%src-bin-c225765%_
                            (_%replace-extension-with-c225713%_
                             _%src-bin-scm225763%_))
                           (_%src-bin-o225767%_
                            (_%replace-extension-with-object225714%_
                             _%src-bin-scm225763%_))
                           (_%output-bin225769%_
                            (path-expand _%output-bin225729%_))
                           (_%output-scm225771%_
                            (path-expand _%output-scm225728%_))
                           (_%output-c225773%_
                            (_%replace-extension-with-c225713%_
                             _%output-scm225771%_))
                           (_%output-o225775%_
                            (_%replace-extension-with-object225714%_
                             _%output-scm225771%_))
                           (_%output_-c225777%_
                            (_%replace-extension225712%_
                             _%output-scm225771%_
                             '"_.c"))
                           (_%output_-o225779%_
                            (_%replace-extension225712%_
                             _%output-scm225771%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225781%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225783%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225785%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225735%_))
                           (_%output-ld-opts225787%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225789%_
                            (_%get-libgerbil-ld-opts225711%_
                             _%gerbil-libdir225733%_))
                           (_%rpath225791%_
                            (gxc#gerbil-rpath _%gerbil-libdir225733%_))
                           (_%builtin-modules225795%_
                            (_%remove-duplicates225720%_
                             (let ((__tmp226222
                                    (let ((__tmp226224
                                           (lambda (_%mod225793%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225793%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226223
                                           (cons _%ctx225707%_
                                                 _%deps225737%_)))
                                      (declare (not safe))
                                      (##map __tmp226224 __tmp226223))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226222)))))
                      (letrec ((_%compile-obj225798%_
                                (lambda (_%scm-path225805%_ _%c-path225806%_)
                                  (let* ((_%o-path225808%_
                                          (_%replace-extension225712%_
                                           _%c-path225806%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225810%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225808%_
                                             '".lock")))
                                         (_%locked225812%_ '#f)
                                         (_%unlock225815%_
                                          (lambda ()
                                            (close-port _%locked225812%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225810%_)))))
                                    (let _%retry225818%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225810%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225818%_))
                                          (begin
                                            (set! _%locked225812%_
                                                  (let ((__tmp226225
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225810%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226225)))
                                            (if _%locked225812%_
                                                '#!void
                                                (_%retry225818%_)))))
                                    (let ((__tmp226227
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225808%_)))
                                                     (not _%scm-path225805%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225805%_
                                                        _%o-path225808%_)))
                                                 (let ((_%gsc-cc-opts225829%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226229 (cons _%c-path225806%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226229
                            _%gsc-static-opts225785%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226228 _%gsc-cc-opts225829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226226
                                           (lambda () (_%unlock225815%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226227
                                       __tmp226226))))))
                        (let ((__tmp226230
                               (lambda ()
                                 (let ((__tmp226231
                                        (path-directory _%output-bin225769%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226231)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226230))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225771%_
                         (lambda ()
                           (_%generate-stub225710%_
                            _%builtin-modules225795%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225803%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226232
                                                   (let ((__tmp226233
                                                          (let ((__tmp226234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225763%_
                               (cons _%output-scm225771%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226234 _%src-deps-scm225755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226233
                                                      _%libgerbil-c225745%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226232
                                               _%gsc-link-opts225781%_))))
                                     (for-each
                                      _%compile-obj225798%_
                                      (let ((__tmp226235
                                             (cons _%src-bin-scm225763%_
                                                   (cons _%output-scm225771%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226235
                                         _%src-deps-scm225755%_))
                                      (let ((__tmp226236
                                             (cons _%src-bin-c225765%_
                                                   (cons _%output-c225773%_
                                                         (cons _%output_-c225777%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226236
                                         _%src-deps-c225757%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225769%_
                                                        (let ((__tmp226237
                                                               (cons _%src-bin-o225767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225775%_
                                   (cons _%output_-o225779%_
                                         (let ((__tmp226238
                                                (let ((__tmp226239
                                                       (let ((__tmp226241
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225733%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225789%_))))
                     (__tmp226240
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225791%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226241 __tmp226240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226239
                                                   _%output-ld-opts225787%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226238
                                            _%libgerbil-o225747%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226237 _%src-deps-o225759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226242
                                            (cons _%output-c225773%_
                                                  (cons _%output_-c225777%_
                                                        (cons _%output-o225775%_
                                                              (cons _%output_-o225779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226242)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225803%_))
                                  (_%compile-it225803%_)))
                            '#!void))))))
          (let* ((_%output-bin225723%_
                  (gxc#compile-exe-output-file _%ctx225707%_ _%opts225708%_))
                 (_%output-scm225725%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225723%_ '"__exe.scm"))))
            (_%compile-stub225721%_
             _%output-scm225725%_
             _%output-bin225723%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225529%_ _%opts225530%_)
        (letrec ((_%reset-declare225532%_
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
                 (_%generate-stub225533%_
                  (lambda (_%deps225698%_)
                    (let ((_%mod-main225700%_
                           (gxc#find-runtime-symbol _%ctx225529%_ 'main))
                          (_%reset-decl225701%_ (_%reset-declare225532%_))
                          (_%user-decl225702%_ (_%user-declare225534%_)))
                      (for-each
                       (lambda (_%dep225704%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225701%_))
                         (newline)
                         (if _%user-decl225702%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225702%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226243
                                (cons 'include (cons _%dep225704%_ '()))))
                           (declare (not safe))
                           (##write __tmp226243))
                         (newline))
                       _%deps225698%_)
                      (let ((__tmp226244
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226244))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225534%_
                  (lambda ()
                    (let* ((_%gsc-opts225603%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225530%_)))
                           (_%gsc-prelude225605%_
                            (if _%gsc-opts225603%_
                                (member '"-prelude" _%gsc-opts225603%_)
                                '#f))
                           (_%gsc-prelude225607%_
                            (if _%gsc-prelude225605%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225605%_)))
                                '#f)))
                      (let _%lp225610%_ ((_%rest225612%_
                                          (cons _%gsc-prelude225607%_ '()))
                                         (_%user-decls225613%_ '()))
                        (let* ((_%rest225614225622%_ _%rest225612%_)
                               (_%else225616225630%_
                                (lambda ()
                                  (if (null? _%user-decls225613%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225613%_)))))
                               (_%K225618225686%_
                                (lambda (_%rest225633%_ _%expr225634%_)
                                  (let* ((_%expr225635225647%_ _%expr225634%_)
                                         (_%else225638225655%_
                                          (lambda ()
                                            (_%lp225610%_
                                             _%rest225633%_
                                             _%user-decls225613%_))))
                                    (let ((_%K225643225676%_
                                           (lambda (_%decls225674%_)
                                             (_%lp225610%_
                                              _%rest225633%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225613%_
                                                 _%decls225674%_)))))
                                          (_%K225640225661%_
                                           (lambda (_%exprs225659%_)
                                             (_%lp225610%_
                                              (append _%exprs225659%_
                                                      _%rest225633%_)
                                              _%user-decls225613%_))))
                                      (if (pair? _%expr225635225647%_)
                                          (let ((_%tl225645225681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225635225647%_)))
                                                (_%hd225644225679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225635225647%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225644225679%_
                                                         'declare))
                                                (let ((_%decls225684%_
                                                       _%tl225645225681%_))
                                                  (_%K225643225676%_
                                                   _%decls225684%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225644225679%_
                                                             'begin))
                                                    (let ((_%exprs225669%_
                                                           _%tl225645225681%_))
                                                      (_%K225640225661%_
                                                       _%exprs225669%_))
                                                    (_%else225638225655%_))))
                                          (_%else225638225655%_)))))))
                          (if (pair? _%rest225614225622%_)
                              (let ((_%hd225619225689%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225614225622%_)))
                                    (_%tl225620225691%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225614225622%_))))
                                (let* ((_%expr225694%_ _%hd225619225689%_)
                                       (_%rest225696%_ _%tl225620225691%_))
                                  (_%K225618225686%_
                                   _%rest225696%_
                                   _%expr225694%_)))
                              (_%else225616225630%_)))))))
                 (_%compile-stub225535%_
                  (lambda (_%output-scm225542%_ _%output-bin225543%_)
                    (let* ((_%gerbil-home225545%_
                            (let ((__tmp226245
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226245)))
                           (_%gerbil-libdir225547%_
                            (path-expand '"lib" _%gerbil-home225545%_))
                           (_%runtime225549%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225551%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225545%_))
                           (_%include-gambit-sharp225553%_
                            (gxc#include-source _%gambit-sharp225551%_))
                           (_%bin-scm225555%_
                            (gxc#find-static-module-file _%ctx225529%_))
                           (_%deps225557%_
                            (gxc#find-runtime-module-deps _%ctx225529%_))
                           (_%deps225559%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225557%_)))
                           (_%deps225564%_
                            (let ((__tmp226246
                                   (lambda (_%$obj225561%_)
                                     (not (gxc#file-empty? _%$obj225561%_)))))
                              (declare (not safe))
                              (##filter __tmp226246 _%deps225559%_)))
                           (_%deps225568%_
                            (let ((__tmp226247
                                   (lambda (_%f225566%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225566%_
                                             _%runtime225549%_))))))
                              (declare (not safe))
                              (##filter __tmp226247 _%deps225564%_)))
                           (_%output-base225570%_
                            (let ((__tmp226248
                                   (path-strip-extension
                                    _%output-scm225542%_)))
                              (declare (not safe))
                              (##string-append __tmp226248)))
                           (_%output-c225572%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225570%_ '".c")))
                           (_%output-o225574%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225570%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225576%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225570%_ '"_.c")))
                           (_%output-o_225578%_
                            (let ((__tmp226249
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225570%_
                               __tmp226249)))
                           (_%gsc-link-opts225580%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225582%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225584%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225547%_)))
                           (_%output-ld-opts225586%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225588%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225553%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225553%_
                                            '()))))
                           (_%gsc-link-opts225590%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225580%_
                               _%gsc-gx-macros225588%_)))
                           (_%rpath225592%_
                            (gxc#gerbil-rpath _%gerbil-libdir225547%_))
                           (_%default-ld-options225594%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226250
                             (lambda ()
                               (let ((__tmp226251
                                      (path-directory _%output-bin225543%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226251)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226250))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225542%_
                       (lambda ()
                         (_%generate-stub225533%_
                          (let ((__tmp226252
                                 (let ((__tmp226253
                                        (cons _%bin-scm225555%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226253
                                    _%deps225568%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226252 _%runtime225549%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225600%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225576%_
                                                      (let ((__tmp226254
                                                             (cons _%output-scm225542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226254 _%gsc-link-opts225590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226255
                                                 (let ((__tmp226256
                                                        (cons _%output-c225572%_
                                                              (cons _%output-c_225576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226256
                                                    _%gsc-static-opts225584%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226255
                                             _%gsc-cc-opts225582%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225543%_
                                                      (cons _%output-o225574%_
                                                            (cons _%output-o_225578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226257
                                 (let ((__tmp226259
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225547%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225594%_))))
                                       (__tmp226258
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225592%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226259 __tmp226258))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226257
                             _%output-ld-opts225586%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225600%_))
                                (_%compile-it225600%_)))
                          '#!void)))))
          (let* ((_%output-bin225537%_
                  (gxc#compile-exe-output-file _%ctx225529%_ _%opts225530%_))
                 (_%output-scm225539%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225537%_ '"__exe.scm"))))
            (_%compile-stub225535%_
             _%output-scm225539%_
             _%output-bin225537%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225478%_ _%id225479%_)
        (let ((_%$e225525%_
               (let ((__tmp226261
                      (lambda (_%e225480225482%_)
                        (let* ((_%e225480225484225494%_ _%e225480225482%_)
                               (_%else225486225502%_ (lambda () '#f))
                               (_%K225488225506%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225480225484225494%_
                                 'gx#module-export::t))
                              (let* ((_%e225489225509%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225480225484225494%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225490225512%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225480225484225494%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225491225515%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225480225484225494%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225491225515%_ '0))
                                    (let ((_%e225492225518%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225480225484225494%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225520225522%_)
                                             (eq? _%g225520225522%_
                                                  _%id225479%_))
                                           _%e225492225518%_)
                                          (_%K225488225506%_)
                                          (_%else225486225502%_)))
                                    (_%else225486225502%_)))
                              (_%else225486225502%_)))))
                     (__tmp226260
                      (##structure-ref
                       _%ctx225478%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226261 __tmp226260))))
          (if _%$e225525%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225525%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225469%_ _%id225470%_)
        (let ((_%$e225472%_
               (gxc#find-export-binding _%ctx225469%_ _%id225470%_)))
          (if _%$e225472%_
              ((lambda (_%bind225475%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225475%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225470%_)))
                 (##structure-ref _%bind225475%_ '1 gx#binding::t '#f))
               _%$e225472%_)
              (let ((__tmp226262
                     (##structure-ref
                      _%ctx225469%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226262
                 _%id225470%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225335%_)
        (letrec* ((_%ht225337%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225338%_
                   (lambda (_%in225414%_ _%phi225415%_)
                     (let ((_%iphi225417%_
                            (fx+ _%phi225415%_
                                 (##direct-structure-ref
                                  _%in225414%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225418%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225414%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225420%_ ((_%rest225422%_ _%imports225418%_)
                                          (_%r225423%_ '()))
                         (let* ((_%rest225424225432%_ _%rest225422%_)
                                (_%else225426225440%_ (lambda () _%r225423%_))
                                (_%K225428225457%_
                                 (lambda (_%rest225443%_ _%in225444%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225444%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225417%_))
                                           (_%lp225420%_
                                            _%rest225443%_
                                            (cons _%in225444%_ _%r225423%_))
                                           (_%lp225420%_
                                            _%rest225443%_
                                            _%r225423%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225444%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225448%_
                                                  (fx+ _%phi225415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225444%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225448%_))
                                                 (_%lp225420%_
                                                  _%rest225443%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225444%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225423%_))
                                                 (_%lp225420%_
                                                  _%rest225443%_
                                                  _%r225423%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225444%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225451%_
                                                      (fx+ _%iphi225417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225444%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225451%_))
                                                     (_%lp225420%_
                                                      _%rest225443%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225444%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225423%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225451%_))
                                                         (_%lp225420%_
                                                          _%rest225443%_
                                                          (let ((__tmp226263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225338%_
                          _%in225444%_
                          _%iphi225417%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225423%_ __tmp226263)))
                 (_%lp225420%_ _%rest225443%_ _%r225423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225420%_
                                                _%rest225443%_
                                                _%r225423%_)))))))
                           (if (pair? _%rest225424225432%_)
                               (let ((_%hd225429225460%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225424225432%_)))
                                     (_%tl225430225462%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225424225432%_))))
                                 (let* ((_%in225465%_ _%hd225429225460%_)
                                        (_%rest225467%_ _%tl225430225462%_))
                                   (_%K225428225457%_
                                    _%rest225467%_
                                    _%in225465%_)))
                               (_%else225426225440%_)))))))
                  (_%find-deps225339%_
                   (lambda (_%rest225347%_ _%deps225348%_)
                     (let* ((_%rest225349225357%_ _%rest225347%_)
                            (_%else225351225365%_ (lambda () _%deps225348%_))
                            (_%K225353225402%_
                             (lambda (_%rest225368%_ _%hd225369%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225369%_
                                      'gx#module-context::t))
                                   (let ((_%id225372%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225369%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225373%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225369%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225337%_
                                            _%id225372%_))
                                         (_%find-deps225339%_
                                          _%rest225368%_
                                          _%deps225348%_)
                                         (let ((_%$e225376%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225369%_))))
                                           (if _%$e225376%_
                                               ((lambda (_%pre225379%_)
                                                  (let ((_%xdeps225381%_
                                                         (_%find-deps225339%_
                                                          (cons _%pre225379%_
                                                                _%imports225373%_)
                                                          _%deps225348%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225337%_
                                                       _%id225372%_
                                                       _%hd225369%_))
                                                    (_%find-deps225339%_
                                                     _%rest225368%_
                                                     (cons _%hd225369%_
                                                           _%xdeps225381%_))))
                                                _%$e225376%_)
                                               (let ((_%xdeps225384%_
                                                      (_%find-deps225339%_
                                                       _%imports225373%_
                                                       _%deps225348%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225337%_
                                                    _%id225372%_
                                                    _%hd225369%_))
                                                 (_%find-deps225339%_
                                                  _%rest225368%_
                                                  (cons _%hd225369%_
                                                        _%xdeps225384%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225369%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225387%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225369%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225337%_
                                                _%id225387%_))
                                             (_%find-deps225339%_
                                              _%rest225368%_
                                              _%deps225348%_)
                                             (let ((_%xdeps225391%_
                                                    (_%find-deps225339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225369%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225348%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225337%_
                                                      _%id225387%_))
                                                   (_%find-deps225339%_
                                                    _%rest225368%_
                                                    _%xdeps225391%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225337%_
                                                        _%id225387%_
                                                        _%hd225369%_))
                                                     (_%find-deps225339%_
                                                      _%rest225368%_
                                                      (cons _%hd225369%_
                                                            _%xdeps225391%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225369%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225369%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225339%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225369%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225368%_)
                                                _%deps225348%_)
                                               (_%find-deps225339%_
                                                _%rest225368%_
                                                _%deps225348%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225369%_
                                                  'gx#module-export::t))
                                               (_%find-deps225339%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225369%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225368%_)
                                                _%deps225348%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225369%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225369%_ '2 '#f '#f)))
               (_%find-deps225339%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225369%_ '1 '#f '#f))
                      _%rest225368%_)
                _%deps225348%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225369%_ '2 '#f '#f)))
                   (let ((_%xdeps225398%_
                          (_%import-set-template225338%_ _%hd225369%_ '0)))
                     (_%find-deps225339%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225368%_ _%xdeps225398%_))
                      _%deps225348%_))
                   (_%find-deps225339%_ _%rest225368%_ _%deps225348%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225369%_))))))))))
                       (if (pair? _%rest225349225357%_)
                           (let ((_%hd225354225405%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225349225357%_)))
                                 (_%tl225355225407%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225349225357%_))))
                             (let* ((_%hd225410%_ _%hd225354225405%_)
                                    (_%rest225412%_ _%tl225355225407%_))
                               (_%K225353225402%_
                                _%rest225412%_
                                _%hd225410%_)))
                           (_%else225351225365%_))))))
          (let ((__tmp226264
                 (filter gx#expander-context-id
                         (_%find-deps225339%_
                          (let ((_%$e225341%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225335%_))))
                            (if _%$e225341%_
                                ((lambda (_%pre225344%_)
                                   (cons _%pre225344%_
                                         (##structure-ref
                                          _%ctx225335%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225341%_)
                                (##structure-ref
                                 _%ctx225335%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226264)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225265%_)
        (let* ((_%context-id225267%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225265%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225265%_ '1 '#f '#f))
                    (string->symbol _%ctx225265%_)))
               (_%scm225269%_
                (let ((__tmp226265
                       (gxc#static-module-name _%context-id225267%_)))
                  (declare (not safe))
                  (##string-append __tmp226265 '".scm")))
               (_%dirs225271%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225277%_
                (let ((_%user-libpath225273%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225273%_
                      (let ((_%user-libpath225275%_
                             (path-expand '"lib" _%user-libpath225273%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225275%_ _%dirs225271%_))
                            _%dirs225271%_
                            (cons _%user-libpath225275%_ _%dirs225271%_)))
                      _%dirs225271%_)))
               (_%dirs225287%_
                (let ((_%$e225279%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225279%_
                      ((lambda (_%g225281225283%_)
                         (cons _%g225281225283%_ _%dirs225277%_))
                       _%$e225279%_)
                      _%dirs225277%_)))
               (_%dirs225293%_
                (let ((__tmp226266
                       (lambda (_%g225288225290%_)
                         (path-expand '"static" _%g225288225290%_))))
                  (declare (not safe))
                  (##map __tmp226266 _%dirs225287%_))))
          (let _%lp225296%_ ((_%rest225298%_ _%dirs225293%_))
            (let* ((_%rest225299225307%_ _%rest225298%_)
                   (_%else225301225315%_
                    (lambda ()
                      (let ((__tmp226267
                             (##structure-ref
                              _%ctx225265%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226267
                         _%scm225269%_))))
                   (_%K225303225323%_
                    (lambda (_%rest225318%_ _%dir225319%_)
                      (let ((_%path225321%_
                             (path-expand _%scm225269%_ _%dir225319%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225321%_))
                            _%path225321%_
                            (_%lp225296%_ _%rest225318%_))))))
              (if (pair? _%rest225299225307%_)
                  (let ((_%hd225304225326%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225299225307%_)))
                        (_%tl225305225328%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225299225307%_))))
                    (let* ((_%dir225331%_ _%hd225304225326%_)
                           (_%rest225333%_ _%tl225305225328%_))
                      (_%K225303225323%_ _%rest225333%_ _%dir225331%_)))
                  (_%else225301225315%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225263%_)
        (zero? (let ((__tmp226268 (file-info _%path225263%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226268)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225254%_)
        (let ((__tmp226269
               (lambda ()
                 (let ((__tmp226270
                        (lambda ()
                          (let ((__tmp226271
                                 (lambda ()
                                   (let ((__tmp226273
                                          (lambda ()
                                            (let ((__tmp226275
                                                   (lambda ()
                                                     (let ((__tmp226277
                                                            (lambda ()
                                                              (let ((__tmp226278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225254%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226278))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226279
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225254%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226279))
                          '#!void)
                      (gxc#collect-bindings _%ctx225254%_)
                      (gxc#compile-runtime-code _%ctx225254%_)
                      (gxc#compile-meta-code _%ctx225254%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225254%_)
                          '#!void)))
                   (__tmp226276
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
                __tmp226277
                gxc#current-compile-runtime-names
                __tmp226276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226274
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226275
                                               gxc#current-compile-runtime-sections
                                               __tmp226274))))
                                         (__tmp226272
                                          (let ((__obj226169
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226169))
                                            __obj226169)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226273
                                      gxc#current-compile-symbol-table
                                      __tmp226272)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226271
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226270
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226269
           gx#current-expander-context
           _%ctx225254%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225252%_)
        (let ((__tmp226280
               (##structure-ref _%ctx225252%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226280))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225197%_)
        (letrec ((_%compile1225199%_
                  (lambda (_%ctx225241%_)
                    (let* ((_%code225243%_
                            (##structure-ref
                             _%ctx225241%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225247%_
                            (let ((_%idstr225245%_
                                   (let ((__tmp226281
                                          (##structure-ref
                                           _%ctx225241%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226281))))
                              (declare (not safe))
                              (##string-append _%idstr225245%_ '"~0")))
                           (_%rtc?225249%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225243%_))))
                      (if _%rtc?225249%_
                          (let ((__tmp226282
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226282
                             _%ctx225241%_
                             _%rtm225247%_))
                          '#!void)
                      (_%generate-runtime-code225201%_
                       _%ctx225241%_
                       _%code225243%_
                       (if _%rtc?225249%_ _%rtm225247%_ '#f)))))
                 (_%context-timestamp225200%_
                  (lambda (_%ctx225239%_)
                    (let ((__tmp226283
                           (let ((__tmp226284
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225239%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226284 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226283))))
                 (_%generate-runtime-code225201%_
                  (lambda (_%ctx225208%_ _%code225209%_ _%rtm225210%_)
                    (let* ((_%runtime-code?225212%_ (if _%rtm225210%_ '#t '#f))
                           (_%lifts225214%_ (box '()))
                           (_%runtime-code225220%_
                            (if _%runtime-code?225212%_
                                (let ((__tmp226285
                                       (lambda ()
                                         (let ((__tmp226286
                                                (lambda ()
                                                  (let ((__tmp226287
                                                         (lambda ()
                                                           (let ((__tmp226289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code225209%_))))
                         (__tmp226288
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226289
                      gxc#current-compile-marks
                      __tmp226288)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226287
                                                     gxc#current-compile-lift
                                                     _%lifts225214%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226286
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226285
                                   gx#current-expander-context
                                   _%ctx225208%_))
                                '#f))
                           (_%runtime-code225222%_
                            (if _%runtime-code?225212%_
                                (if (null? (unbox _%lifts225214%_))
                                    _%runtime-code225220%_
                                    (cons 'begin
                                          (let ((__tmp226291
                                                 (cons _%runtime-code225220%_
                                                       '()))
                                                (__tmp226290
                                                 (reverse (unbox _%lifts225214%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226291
                                             __tmp226290))))
                                '#f))
                           (_%runtime-code225224%_
                            (if _%runtime-code?225212%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225200%_
                                                         _%ctx225208%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225222%_ '())))
                                '#f))
                           (_%loader-code225227%_
                            (let ((__tmp226292
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225209%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226292
                               gx#current-expander-context
                               _%ctx225208%_)))
                           (_%loader-code225229%_
                            (cons 'begin
                                  (cons _%loader-code225227%_
                                        (cons (if _%runtime-code?225212%_
                                                  (cons 'load-module
                                                        (cons _%rtm225210%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225231%_
                            (gxc#compile-output-file _%ctx225208%_ '0 '".scm"))
                           (_%scmrt225233%_
                            (gxc#compile-output-file
                             _%ctx225208%_
                             '#f
                             '".scm"))
                           (_%scms225235%_
                            (gxc#compile-static-output-file _%ctx225208%_)))
                      (if _%runtime-code?225212%_
                          (gxc#compile-scm-file__0
                           _%scm0225231%_
                           _%runtime-code225224%_)
                          '#!void)
                      (let ((__tmp226293
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225233%_
                                _%loader-code225229%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226293
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225235%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225235%_))
                          '#!void)
                      (if _%runtime-code?225212%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225231%_ _%scms225235%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225235%_ void)))))))
          (let* ((_%all-modules225203%_
                  (cons _%ctx225197%_ (gxc#lift-nested-modules _%ctx225197%_)))
                 (__tmp226294
                  (lambda (_%ctx225205%_)
                    (let ((__tmp226295
                           (lambda () (_%compile1225199%_ _%ctx225205%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226295
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226294 _%all-modules225203%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225096%_)
        (letrec ((_%compile-ssi225098%_
                  (lambda (_%code225165%_)
                    (let* ((_%path225167%_
                            (gxc#compile-output-file
                             _%ctx225096%_
                             '#f
                             '".ssi"))
                           (_%prelude225179%_
                            (let* ((_%super225169%_
                                    (##structure-ref
                                     _%ctx225096%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225171%_
                                    (##structure-ref
                                     _%super225169%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225171%_
                                  ((lambda (_%g225173225175%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225173225175%_)))
                                   _%$e225171%_)
                                  ':<root>)))
                           (_%ns225181%_
                            (##structure-ref
                             _%ctx225096%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225183%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225096%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225191%_
                            (let ((_%$e225185%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225183%_ '#\/))))
                              (if _%$e225185%_
                                  ((lambda (_%x225188%_)
                                     (let ((__tmp226296
                                            (substring
                                             _%idstr225183%_
                                             '0
                                             _%x225188%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226296)))
                                   _%$e225185%_)
                                  '#f)))
                           (_%rt225193%_
                            (let ((__tmp226297
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226297 _%ctx225096%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225167%_))
                      (gxc#with-output-to-scheme-file
                       _%path225167%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225179%_))
                         (if _%pkg225191%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225191%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225181%_))
                         (newline)
                         (pretty-print _%code225165%_)
                         (if _%rt225193%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225193%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225099%_
                  (lambda (_%part225104%_)
                    (let* ((_%part225105225118%_ _%part225104%_)
                           (_%E225107225122%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225105225118%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225108225134%_
                            (lambda (_%code225125%_
                                     _%n225126%_
                                     _%phi225127%_
                                     _%phi-ctx225128%_)
                              (let ((_%code225132%_
                                     (let ((__tmp226298
                                            (lambda ()
                                              (let ((__tmp226299
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225125%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226299
                                                 gx#current-expander-phi
                                                 _%phi225127%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226298
                                        gx#current-expander-context
                                        _%phi-ctx225128%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225096%_
                                  _%n225126%_
                                  '".scm")
                                 _%code225132%_
                                 '#t)))))
                      (if (pair? _%part225105225118%_)
                          (let ((_%hd225109225137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225105225118%_)))
                                (_%tl225110225139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225105225118%_))))
                            (let ((_%phi-ctx225142%_ _%hd225109225137%_))
                              (if (pair? _%tl225110225139%_)
                                  (let ((_%hd225111225144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225110225139%_)))
                                        (_%tl225112225146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225110225139%_))))
                                    (let ((_%phi225149%_ _%hd225111225144%_))
                                      (if (pair? _%tl225112225146%_)
                                          (let ((_%hd225113225151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225112225146%_)))
                                                (_%tl225114225153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225112225146%_))))
                                            (let ((_%n225156%_
                                                   _%hd225113225151%_))
                                              (if (pair? _%tl225114225153%_)
                                                  (let ((_%hd225115225158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225114225153%_)))
                                                        (_%tl225116225160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225114225153%_))))
                                                    (let ((_%code225163%_
                                                           _%hd225115225158%_))
                                                      (if (null? _%tl225116225160%_)
                                                          (_%K225108225134%_
                                                           _%code225163%_
                                                           _%n225156%_
                                                           _%phi225149%_
                                                           _%phi-ctx225142%_)
                                                          (_%E225107225122%_))))
                                                  (_%E225107225122%_))))
                                          (_%E225107225122%_))))
                                  (_%E225107225122%_))))
                          (_%E225107225122%_))))))
          (let ((_g226300_ (gxc#generate-meta-code _%ctx225096%_)))
            (begin
              (let ((_g226301_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226300_)
                           (##values-length _g226300_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226301_ 2)))
                    (error "Context expects 2 values" _g226301_)))
              (let ((_%ssi-code225101%_
                     (let () (declare (not safe)) (##values-ref _g226300_ 0)))
                    (_%phi-code225102%_
                     (let () (declare (not safe)) (##values-ref _g226300_ 1))))
                (begin
                  (_%compile-ssi225098%_ _%ssi-code225101%_)
                  (for-each _%compile-phi225099%_ _%phi-code225102%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225078%_)
        (let* ((_%path225080%_
                (gxc#compile-output-file _%ctx225078%_ '#f '".ssxi.ss"))
               (_%code225082%_
                (let ((__tmp226302
                       (##structure-ref
                        _%ctx225078%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226302)))
               (_%idstr225084%_
                (symbol->string
                 (##structure-ref
                  _%ctx225078%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225092%_
                (let ((_%$e225086%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225084%_ '#\/))))
                  (if _%$e225086%_
                      ((lambda (_%x225089%_)
                         (let ((__tmp226303
                                (substring _%idstr225084%_ '0 _%x225089%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226303)))
                       _%$e225086%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225080%_))
          (gxc#with-output-to-scheme-file
           _%path225080%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225092%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225092%_))
                 '#!void)
             (newline)
             (pretty-print _%code225082%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225071%_)
        (let* ((_%state225073%_
                (let ((__obj226170
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226170 _%ctx225071%_))
                  __obj226170))
               (_%ssi-code225075%_
                (let ((__tmp226304
                       (##structure-ref
                        _%ctx225071%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225073%_
                   __tmp226304))))
          (values _%ssi-code225075%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225073%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225063%_)
        (let* ((_%lifts225065%_ (box '()))
               (__tmp226305
                (lambda ()
                  (let ((__tmp226307
                         (lambda ()
                           (let ((_%code225069%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx225063%_))))
                             (if (null? (unbox _%lifts225065%_))
                                 _%code225069%_
                                 (cons 'begin
                                       (let ((__tmp226309
                                              (cons _%code225069%_ '()))
                                             (__tmp226308
                                              (reverse (unbox _%lifts225065%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp226309
                                          __tmp226308)))))))
                        (__tmp226306
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226307
                     gxc#current-compile-marks
                     __tmp226306)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226305
           gxc#current-compile-lift
           _%lifts225065%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx225059%_)
        (let ((_%modules225061%_ (box '())))
          (let ((__tmp226310
                 (##structure-ref _%ctx225059%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules225061%_ __tmp226310))
          (reverse (unbox _%modules225061%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path225039%_ _%code225040%_ _%phi?225041%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path225039%_))
        (gxc#with-output-to-scheme-file
         _%path225039%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226311
                                           (if _%phi?225041%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226311)))))))
           (pretty-print _%code225040%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it225045%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path225039%_ _%phi?225041%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226312
                         (cons 'compile-file (cons _%path225039%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it225045%_ __tmp226312))
                  (_%compile-it225045%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path225050%_ _%code225051%_)
        (let ((_%phi?225053%_ '#f))
          (gxc#compile-scm-file__%
           _%path225050%_
           _%code225051%_
           _%phi?225053%_))))
    (define gxc#compile-scm-file
      (lambda _g226313_
        (let ((_g226314_ (let () (declare (not safe)) (##length _g226313_))))
          (cond ((let () (declare (not safe)) (##fx= _g226314_ 2))
                 (apply gxc#compile-scm-file__0 _g226313_))
                ((let () (declare (not safe)) (##fx= _g226314_ 3))
                 (apply gxc#compile-scm-file__% _g226313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226313_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224940%_)
        (let _%lp224942%_ ((_%rest224944%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224945%_ '()))
          (let* ((_%rest224946224966%_ _%rest224944%_)
                 (_%else224950224974%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224945%_)))
                        (reverse _%opts224945%_)))))
            (let ((_%K224960225017%_
                   (lambda (_%rest225015%_)
                     (_%lp224942%_ _%rest225015%_ _%opts224945%_)))
                  (_%K224955224999%_
                   (lambda (_%rest224997%_)
                     (_%lp224942%_ _%rest224997%_ _%opts224945%_)))
                  (_%K224952224981%_
                   (lambda (_%rest224978%_ _%opt224979%_)
                     (_%lp224942%_
                      _%rest224978%_
                      (cons _%opt224979%_ _%opts224945%_)))))
              (if (pair? _%rest224946224966%_)
                  (let ((_%tl224962225022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224946224966%_)))
                        (_%hd224961225020%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224946224966%_))))
                    (if (equal? _%hd224961225020%_ '"-cc-options")
                        (if (pair? _%tl224962225022%_)
                            (let* ((_%tl224964225025%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224962225022%_)))
                                   (_%rest225028%_ _%tl224964225025%_))
                              (_%K224960225017%_ _%rest225028%_))
                            (let ((_%opt224989%_ _%hd224961225020%_)
                                  (_%rest224991%_ _%tl224962225022%_))
                              (_%K224952224981%_
                               _%rest224991%_
                               _%opt224989%_)))
                        (if (equal? _%hd224961225020%_ '"-ld-options")
                            (if (pair? _%tl224962225022%_)
                                (let* ((_%tl224959225007%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224962225022%_)))
                                       (_%rest225010%_ _%tl224959225007%_))
                                  (_%K224955224999%_ _%rest225010%_))
                                (let ((_%opt224989%_ _%hd224961225020%_)
                                      (_%rest224991%_ _%tl224962225022%_))
                                  (_%K224952224981%_
                                   _%rest224991%_
                                   _%opt224989%_)))
                            (let ((_%opt224989%_ _%hd224961225020%_)
                                  (_%rest224991%_ _%tl224962225022%_))
                              (_%K224952224981%_
                               _%rest224991%_
                               _%opt224989%_)))))
                  (_%else224950224974%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?225034%_ '#f)) (gxc#gsc-link-options__% _%phi?225034%_))))
    (define gxc#gsc-link-options
      (lambda _g226315_
        (let ((_g226316_ (let () (declare (not safe)) (##length _g226315_))))
          (cond ((let () (declare (not safe)) (##fx= _g226316_ 0))
                 (apply gxc#gsc-link-options__0 _g226315_))
                ((let () (declare (not safe)) (##fx= _g226316_ 1))
                 (apply gxc#gsc-link-options__% _g226315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226315_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224790%_ _%static?224786224791%_ _%phi?224792%_)
        (let ((_%static?224794%_
               (if (eq? _%static?224786224791%_ absent-value)
                   '#f
                   _%static?224786224791%_)))
          (if _%phi?224792%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224796%_ ((_%rest224798%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224799%_ '()))
                (let* ((_%rest224800224826%_ _%rest224798%_)
                       (_%else224805224834%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224799%_)))
                              (reverse! _%opts224799%_)))))
                  (let ((_%K224820224897%_
                         (lambda (_%rest224894%_ _%opt224895%_)
                           (if _%static?224794%_
                               (_%lp224796%_
                                _%rest224894%_
                                (cons _%opt224895%_
                                      (cons '"-cc-options" _%opts224799%_)))
                               (_%lp224796%_ _%rest224894%_ _%opts224799%_))))
                        (_%K224815224874%_
                         (lambda (_%rest224871%_ _%opt224872%_)
                           (_%lp224796%_
                            _%rest224871%_
                            (cons _%opt224872%_
                                  (cons '"-cc-options" _%opts224799%_)))))
                        (_%K224810224854%_
                         (lambda (_%rest224852%_)
                           (_%lp224796%_ _%rest224852%_ _%opts224799%_)))
                        (_%K224807224840%_
                         (lambda (_%rest224838%_)
                           (_%lp224796%_ _%rest224838%_ _%opts224799%_))))
                    (if (pair? _%rest224800224826%_)
                        (let ((_%tl224822224902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224800224826%_)))
                              (_%hd224821224900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224800224826%_))))
                          (if (equal? _%hd224821224900%_ '"-cc-options")
                              (if (pair? _%tl224822224902%_)
                                  (let ((_%tl224824224907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224822224902%_)))
                                        (_%hd224823224905%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224822224902%_))))
                                    (if (equal? _%hd224823224905%_ '"-Bstatic")
                                        (let ((_%opt224910%_
                                               _%hd224823224905%_)
                                              (_%rest224912%_
                                               _%tl224824224907%_))
                                          (_%K224820224897%_
                                           _%rest224912%_
                                           _%opt224910%_))
                                        (let ((_%opt224887%_
                                               _%hd224823224905%_)
                                              (_%rest224889%_
                                               _%tl224824224907%_))
                                          (_%K224815224874%_
                                           _%rest224889%_
                                           _%opt224887%_))))
                                  (let ((_%rest224846%_ _%tl224822224902%_))
                                    (_%K224807224840%_ _%rest224846%_)))
                              (if (equal? _%hd224821224900%_ '"-ld-options")
                                  (if (pair? _%tl224822224902%_)
                                      (let* ((_%tl224814224862%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224822224902%_)))
                                             (_%rest224865%_
                                              _%tl224814224862%_))
                                        (_%K224810224854%_ _%rest224865%_))
                                      (let ((_%rest224846%_
                                             _%tl224822224902%_))
                                        (_%K224807224840%_ _%rest224846%_)))
                                  (let ((_%rest224846%_ _%tl224822224902%_))
                                    (_%K224807224840%_ _%rest224846%_)))))
                        (_%else224805224834%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224917%_ _%static?224786224918%_)
        (let ((_%phi?224920%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224917%_
           _%static?224786224918%_
           _%phi?224920%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226317_
        (let ((_g226318_ (let () (declare (not safe)) (##length _g226317_))))
          (cond ((let () (declare (not safe)) (##fx= _g226318_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226317_))
                ((let () (declare (not safe)) (##fx= _g226318_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226317_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224929%_ . _%args224930%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224929%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224929%_
                  'static:
                  absent-value))
               _%args224930%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224787224936%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224787224936%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224636%_ _%static?224632224637%_ _%phi?224638%_)
        (let ((_%static?224640%_
               (if (eq? _%static?224632224637%_ absent-value)
                   '#f
                   _%static?224632224637%_)))
          (if _%phi?224638%_
              '()
              (let _%lp224642%_ ((_%rest224644%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224645%_ '()))
                (let* ((_%rest224646224672%_ _%rest224644%_)
                       (_%else224651224680%_
                        (lambda () (reverse! _%opts224645%_))))
                  (let ((_%K224666224743%_
                         (lambda (_%rest224740%_ _%opt224741%_)
                           (if _%static?224640%_
                               (_%lp224642%_
                                _%rest224740%_
                                (cons _%opt224741%_
                                      (cons '"-ld-options" _%opts224645%_)))
                               (_%lp224642%_ _%rest224740%_ _%opts224645%_))))
                        (_%K224661224720%_
                         (lambda (_%rest224717%_ _%opt224718%_)
                           (_%lp224642%_
                            _%rest224717%_
                            (cons _%opt224718%_
                                  (cons '"-ld-options" _%opts224645%_)))))
                        (_%K224656224700%_
                         (lambda (_%rest224698%_)
                           (_%lp224642%_ _%rest224698%_ _%opts224645%_)))
                        (_%K224653224686%_
                         (lambda (_%rest224684%_)
                           (_%lp224642%_ _%rest224684%_ _%opts224645%_))))
                    (if (pair? _%rest224646224672%_)
                        (let ((_%tl224668224748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224646224672%_)))
                              (_%hd224667224746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224646224672%_))))
                          (if (equal? _%hd224667224746%_ '"-ld-options")
                              (if (pair? _%tl224668224748%_)
                                  (let ((_%tl224670224753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224668224748%_)))
                                        (_%hd224669224751%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224668224748%_))))
                                    (if (equal? _%hd224669224751%_ '"-static")
                                        (let ((_%opt224756%_
                                               _%hd224669224751%_)
                                              (_%rest224758%_
                                               _%tl224670224753%_))
                                          (_%K224666224743%_
                                           _%rest224758%_
                                           _%opt224756%_))
                                        (let ((_%opt224733%_
                                               _%hd224669224751%_)
                                              (_%rest224735%_
                                               _%tl224670224753%_))
                                          (_%K224661224720%_
                                           _%rest224735%_
                                           _%opt224733%_))))
                                  (let ((_%rest224692%_ _%tl224668224748%_))
                                    (_%K224653224686%_ _%rest224692%_)))
                              (if (equal? _%hd224667224746%_ '"-cc-options")
                                  (if (pair? _%tl224668224748%_)
                                      (let* ((_%tl224660224708%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224668224748%_)))
                                             (_%rest224711%_
                                              _%tl224660224708%_))
                                        (_%K224656224700%_ _%rest224711%_))
                                      (let ((_%rest224692%_
                                             _%tl224668224748%_))
                                        (_%K224653224686%_ _%rest224692%_)))
                                  (let ((_%rest224692%_ _%tl224668224748%_))
                                    (_%K224653224686%_ _%rest224692%_)))))
                        (_%else224651224680%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224763%_ _%static?224632224764%_)
        (let ((_%phi?224766%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224763%_
           _%static?224632224764%_
           _%phi?224766%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226319_
        (let ((_g226320_ (let () (declare (not safe)) (##length _g226319_))))
          (cond ((let () (declare (not safe)) (##fx= _g226320_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226319_))
                ((let () (declare (not safe)) (##fx= _g226320_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226319_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224775%_ . _%args224776%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224775%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224775%_
                  'static:
                  absent-value))
               _%args224776%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224633224782%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224633224782%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224627%_)
        (let ((_%user-staticdir224629%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224627%_
                       '" -I "
                       _%user-staticdir224629%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224539%_ ((_%rest224541%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224542%_ '()))
          (let* ((_%rest224543224563%_ _%rest224541%_)
                 (_%else224547224571%_ (lambda () _%opts224542%_)))
            (let ((_%K224557224614%_
                   (lambda (_%rest224612%_)
                     (_%lp224539%_ _%rest224612%_ _%opts224542%_)))
                  (_%K224552224592%_
                   (lambda (_%rest224589%_ _%opt224590%_)
                     (_%lp224539%_
                      _%rest224589%_
                      (let ((__tmp226321
                             (let ((__tmp226322
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224590%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226322))))
                        (declare (not safe))
                        (##append _%opts224542%_ __tmp226321)))))
                  (_%K224549224577%_
                   (lambda (_%rest224575%_)
                     (_%lp224539%_ _%rest224575%_ _%opts224542%_))))
              (if (pair? _%rest224543224563%_)
                  (let ((_%tl224559224619%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224543224563%_)))
                        (_%hd224558224617%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224543224563%_))))
                    (if (equal? _%hd224558224617%_ '"-cc-options")
                        (if (pair? _%tl224559224619%_)
                            (let* ((_%tl224561224622%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224559224619%_)))
                                   (_%rest224625%_ _%tl224561224622%_))
                              (_%K224557224614%_ _%rest224625%_))
                            (let ((_%rest224583%_ _%tl224559224619%_))
                              (_%K224549224577%_ _%rest224583%_)))
                        (if (equal? _%hd224558224617%_ '"-ld-options")
                            (if (pair? _%tl224559224619%_)
                                (let ((_%tl224556224602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224559224619%_)))
                                      (_%hd224555224600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224559224619%_))))
                                  (let ((_%opt224605%_ _%hd224555224600%_)
                                        (_%rest224607%_ _%tl224556224602%_))
                                    (_%K224552224592%_
                                     _%rest224607%_
                                     _%opt224605%_)))
                                (let ((_%rest224583%_ _%tl224559224619%_))
                                  (_%K224549224577%_ _%rest224583%_)))
                            (let ((_%rest224583%_ _%tl224559224619%_))
                              (_%K224549224577%_ _%rest224583%_)))))
                  (_%else224547224571%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224536%_)
        (not (let () (declare (not safe)) (string-empty? _%str224536%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224529%_ _%phi?224530%_)
        (let ((_%gsc-link-opts224532%_
               (gxc#gsc-link-options__% _%phi?224530%_))
              (_%gsc-cc-opts224533%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224530%_))
              (_%gsc-ld-opts224534%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224530%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226323
                  (let ((__tmp226324
                         (let ((__tmp226325 (cons _%path224529%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226325
                            _%gsc-link-opts224532%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226324 _%gsc-ld-opts224534%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226323 _%gsc-cc-opts224533%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224495%_ _%n224496%_ _%ext224497%_)
        (letrec ((_%module-relative-path224499%_
                  (lambda (_%ctx224527%_)
                    (path-strip-directory
                     (let ((__tmp226326
                            (##structure-ref
                             _%ctx224527%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226326)))))
                 (_%module-source-directory224500%_
                  (lambda (_%ctx224523%_)
                    (path-directory
                     (let ((_%mpath224525%_
                            (##structure-ref
                             _%ctx224523%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224525%_)
                           _%mpath224525%_
                           (last _%mpath224525%_))))))
                 (_%section-string224501%_
                  (lambda (_%n224517%_)
                    (if (number? _%n224517%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224517%_))
                        (if (symbol? _%n224517%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224517%_))
                            (if (string? _%n224517%_)
                                _%n224517%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224517%_)))))))
                 (_%file-name224502%_
                  (lambda (_%path224515%_)
                    (if _%n224496%_
                        (string-append
                         _%path224515%_
                         '"~"
                         (_%section-string224501%_ _%n224496%_)
                         _%ext224497%_)
                        (string-append _%path224515%_ _%ext224497%_))))
                 (_%file-path224503%_
                  (lambda ()
                    (let ((_%$e224509%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224509%_
                          ((lambda (_%outdir224512%_)
                             (path-expand
                              (_%file-name224502%_
                               (let ((__tmp226327
                                      (##structure-ref
                                       _%ctx224495%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226327)))
                              _%outdir224512%_))
                           _%$e224509%_)
                          (path-expand
                           (_%file-name224502%_
                            (_%module-relative-path224499%_ _%ctx224495%_))
                           (_%module-source-directory224500%_
                            _%ctx224495%_)))))))
          (let ((_%path224505%_ (_%file-path224503%_)))
            (let ((__tmp226328
                   (lambda ()
                     (let ((__tmp226329 (path-directory _%path224505%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226329)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226328))
            _%path224505%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224476%_)
        (letrec ((_%file-name224478%_
                  (lambda (_%id224493%_)
                    (let ((__tmp226330 (gxc#static-module-name _%id224493%_)))
                      (declare (not safe))
                      (##string-append __tmp226330 '".scm"))))
                 (_%file-path224479%_
                  (lambda ()
                    (let* ((_%file224485%_
                            (_%file-name224478%_
                             (##structure-ref
                              _%ctx224476%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224487%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224487%_
                          ((lambda (_%outdir224490%_)
                             (path-expand
                              _%file224485%_
                              (path-expand '"static" _%outdir224490%_)))
                           _%$e224487%_)
                          (path-expand _%file224485%_ '"static"))))))
          (let ((_%path224481%_ (_%file-path224479%_)))
            (let ((__tmp226331
                   (lambda ()
                     (let ((__tmp226332 (path-directory _%path224481%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226332)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226331))
            _%path224481%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224469%_ _%opts224470%_)
        (let ((_%$e224472%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224470%_))))
          (if _%$e224472%_
              _%$e224472%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224469%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224459%_)
        (if (string? _%idstr224459%_)
            (let* ((_%str224462%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224459%_)))
                   (_%strs224464%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224462%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224464%_ '"__"))
            (if (symbol? _%idstr224459%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224459%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224459%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226333
               (let ((__tmp226334 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226334 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226333))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224425%_
               _%stdout-redirection224421224426%_
               _%stderr-redirection224422224427%_
               _%program224428%_
               _%args224429%_)
        (let* ((_%stdout-redirection224431%_
                (if (eq? _%stdout-redirection224421224426%_ absent-value)
                    '#f
                    _%stdout-redirection224421224426%_))
               (_%stderr-redirection224433%_
                (if (eq? _%stderr-redirection224422224427%_ absent-value)
                    '#f
                    _%stderr-redirection224422224427%_)))
          (let ((__tmp226335 (cons _%program224428%_ _%args224429%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226335))
          (let* ((_%proc224435%_
                  (open-process
                   (cons 'path:
                         (cons _%program224428%_
                               (cons 'arguments:
                                     (cons _%args224429%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224431%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224440%_
                  (if (or _%stdout-redirection224431%_
                          _%stderr-redirection224433%_)
                      (read-line _%proc224435%_ '#f)
                      '#f))
                 (_%status224443%_ (process-status _%proc224435%_)))
            (let () (declare (not safe)) (##close-port _%proc224435%_))
            (if (zero? _%status224443%_)
                '#!void
                (begin
                  (display _%output224440%_)
                  (let ((__tmp226336 (cons _%program224428%_ _%args224429%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226336
                     _%status224443%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224448%_ . _%args224449%_)
        (apply gxc#invoke__%
               _%@@keywords224448%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224448%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224448%_
                  'stderr-redirection:
                  absent-value))
               _%args224449%_)))
    (define gxc#invoke
      (lambda _%args224423224455%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224423224455%_)))))
