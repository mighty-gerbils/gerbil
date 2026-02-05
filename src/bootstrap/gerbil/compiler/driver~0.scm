(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770334647)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226178 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226178))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226179 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226179))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path226035%_ _%fun226036%_)
        (with-output-to-file
         (cons 'path: (cons _%path226035%_ gxc#scheme-file-settings))
         _%fun226036%_)))
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
      (lambda (_%gerbil-libdir226030%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir226030%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path226028%_)
        (let ((__tmp226180 (object->string _%path226028%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226180 '")"))))
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
      (lambda (_%dir226026%_) (delete-file-or-directory _%dir226026%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225970%_ _%opts225971%_)
        (if (string? _%srcpath225970%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225970%_)))
        (let* ((_%outdir225973%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225971%_)))
               (_%invoke-gsc?225975%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225971%_)))
               (_%target225980%_
                (let ((_%$e225977%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225971%_))))
                  (if _%$e225977%_ _%$e225977%_ 'C)))
               (_%gsc-options225985%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225980%_) '()))
                        (let ((_%$e225982%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225971%_))))
                          (if _%$e225982%_ _%$e225982%_ '()))))
               (_%keep-scm?225987%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225971%_)))
               (_%verbosity225989%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225971%_)))
               (_%optimize225991%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225971%_)))
               (_%debug225993%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225971%_)))
               (_%gen-ssxi225995%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225971%_)))
               (_%parallel?225997%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225971%_))))
          (if _%outdir225973%_
              (let ((__tmp226181
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225973%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226181))
              '#!void)
          (if _%optimize225991%_
              (let ((__tmp226182
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226182))
              '#!void)
          (let ((__tmp226183
                 (lambda ()
                   (let ((__tmp226184
                          (lambda ()
                            (let ((__tmp226185
                                   (lambda ()
                                     (let ((__tmp226186
                                            (lambda ()
                                              (let ((__tmp226187
                                                     (lambda ()
                                                       (let ((__tmp226188
                                                              (lambda ()
                                                                (let ((__tmp226189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226190
                                        (lambda ()
                                          (let ((__tmp226191
                                                 (lambda ()
                                                   (let ((__tmp226193
                                                          (lambda ()
                                                            (let ((__tmp226195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226196
                                    (lambda ()
                                      (let ((__tmp226197
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225970%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226198
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225970%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226198))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226197
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226196
                                gxc#current-compile-parallel
                                _%parallel?225997%_))))
                          (__tmp226194
                           (cons (cons 'compile-module
                                       (cons _%srcpath225970%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226195
                       gxc#current-compile-context
                       __tmp226194))))
                 (__tmp226192 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226193
                                                      gxc#current-compile-timestamp
                                                      __tmp226192)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226191
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225995%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226190
                                    gxc#current-compile-debug
                                    _%debug225993%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226189
                           gxc#current-compile-optimize
                           _%optimize225991%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226188
                  gxc#current-compile-verbose
                  _%verbosity225989%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226187
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225987%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226186
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225985%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226185
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225975%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226184
                      gx#current-compilation-target
                      _%target225980%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226183
             gxc#current-compile-output-dir
             _%outdir225973%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath226019%_)
        (let ((_%opts226021%_ '()))
          (gxc#compile-module__% _%srcpath226019%_ _%opts226021%_))))
    (define gxc#compile-module
      (lambda _g226199_
        (let ((_g226200_ (let () (declare (not safe)) (##length _g226199_))))
          (cond ((let () (declare (not safe)) (##fx= _g226200_ 1))
                 (apply gxc#compile-module__0 _g226199_))
                ((let () (declare (not safe)) (##fx= _g226200_ 2))
                 (apply gxc#compile-module__% _g226199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226199_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225920%_ _%opts225921%_)
        (if (string? _%srcpath225920%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225920%_)))
        (let* ((_%outdir225923%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225921%_)))
               (_%invoke-gsc?225925%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225921%_)))
               (_%target225930%_
                (let ((_%$e225927%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225921%_))))
                  (if _%$e225927%_ _%$e225927%_ 'C)))
               (_%gsc-options225935%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225930%_) '()))
                        (let ((_%$e225932%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225921%_))))
                          (if _%$e225932%_ _%$e225932%_ '()))))
               (_%keep-scm?225937%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225921%_)))
               (_%verbosity225939%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225921%_)))
               (_%debug225941%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225921%_)))
               (_%parallel?225943%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225921%_))))
          (if _%outdir225923%_
              (let ((__tmp226201
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225923%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226201))
              '#!void)
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
                                                              (lambda ()
                                                                (let ((__tmp226208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226210
                                        (lambda ()
                                          (let ((__tmp226212
                                                 (lambda ()
                                                   (let ((__tmp226213
                                                          (lambda ()
                                                            (let ((__tmp226214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225920%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226215
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225920%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226215))
                              _%opts225921%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226214
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226213
                                                      gxc#current-compile-parallel
                                                      _%parallel?225943%_))))
                                                (__tmp226211
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226212
                                             gxc#current-compile-context
                                             __tmp226211))))
                                       (__tmp226209 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226210
                                    gxc#current-compile-timestamp
                                    __tmp226209)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226208
                           gxc#current-compile-debug
                           _%debug225941%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226207
                  gxc#current-compile-verbose
                  _%verbosity225939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226206
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225937%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226205
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225935%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226204
                               gx#current-compilation-target
                               _%target225930%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226203
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225925%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226202
             gxc#current-compile-output-dir
             _%outdir225923%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225962%_)
        (let ((_%opts225964%_ '()))
          (gxc#compile-exe__% _%srcpath225962%_ _%opts225964%_))))
    (define gxc#compile-exe
      (lambda _g226216_
        (let ((_g226217_ (let () (declare (not safe)) (##length _g226216_))))
          (cond ((let () (declare (not safe)) (##fx= _g226217_ 1))
                 (apply gxc#compile-exe__0 _g226216_))
                ((let () (declare (not safe)) (##fx= _g226217_ 2))
                 (apply gxc#compile-exe__% _g226216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226216_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225916%_ _%opts225917%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225917%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225916%_
             _%opts225917%_)
            (gxc#compile-executable-module/separate
             _%ctx225916%_
             _%opts225917%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225716%_ _%opts225717%_)
        (letrec ((_%generate-stub225719%_
                  (lambda (_%builtin-modules225912%_)
                    (let ((_%mod-main225914%_
                           (gxc#find-runtime-symbol _%ctx225716%_ 'main)))
                      (let ((__tmp226218
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225912%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226218))
                      (let ((__tmp226219
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225914%_
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
                        (##write __tmp226219))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225720%_
                  (lambda (_%gerbil-libdir225910%_)
                    (let ((__tmp226220
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225910%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226220 read))))
                 (_%replace-extension225721%_
                  (lambda (_%path225907%_ _%ext225908%_)
                    (string-append
                     (path-strip-extension _%path225907%_)
                     _%ext225908%_)))
                 (_%replace-extension-with-c225722%_
                  (lambda (_%path225905%_)
                    (_%replace-extension225721%_ _%path225905%_ '".c")))
                 (_%replace-extension-with-object225723%_
                  (lambda (_%path225903%_)
                    (_%replace-extension225721%_
                     _%path225903%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225724%_
                  (lambda (_%ctx225901%_)
                    (if (_%exclude-module?225726%_ _%ctx225901%_)
                        '#f
                        (not (_%libgerbil-module?225725%_ _%ctx225901%_)))))
                 (_%libgerbil-module?225725%_
                  (lambda (_%ctx225894%_)
                    (let ((_%id-str225896%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225894%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225726%_ _%id-str225896%_)
                          '#f
                          (let ((_%$e225898%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225896%_))))
                            (if _%$e225898%_
                                _%$e225898%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225896%_))))))))
                 (_%exclude-module?225726%_
                  (lambda (_%ctx-or-str225890%_)
                    (let ((_%str225892%_
                           (if (string? _%ctx-or-str225890%_)
                               _%ctx-or-str225890%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225890%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225892%_))))
                 (_%not-file-empty?225727%_
                  (lambda (_%path225888%_)
                    (not (gxc#file-empty? _%path225888%_))))
                 (_%fold-libgerbil-runtime-scm225728%_
                  (lambda (_%gerbil-staticdir225881%_ _%libgerbil-scm225882%_)
                    (let ((_%gerbil-runtime-scm225886%_
                           (let ((__tmp226221
                                  (lambda (_%rtm225884%_)
                                    (path-expand
                                     (let ((__tmp226222
                                            (let ((__tmp226223
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225884%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226223
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226222 '".scm"))
                                     _%gerbil-staticdir225881%_))))
                             (declare (not safe))
                             (##map __tmp226221 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225729%_
                       (append _%gerbil-runtime-scm225886%_
                               _%libgerbil-scm225882%_)))))
                 (_%remove-duplicates225729%_
                  (lambda (_%strlst225841%_)
                    (let _%loop225843%_ ((_%rest225845%_ _%strlst225841%_)
                                         (_%result225846%_ '()))
                      (let* ((_%rest225847225855%_ _%rest225845%_)
                             (_%else225849225863%_
                              (lambda () (reverse! _%result225846%_)))
                             (_%K225851225869%_
                              (lambda (_%rest225866%_ _%path225867%_)
                                (if (member _%path225867%_ _%result225846%_)
                                    (_%loop225843%_
                                     _%rest225866%_
                                     _%result225846%_)
                                    (_%loop225843%_
                                     _%rest225866%_
                                     (cons _%path225867%_
                                           _%result225846%_))))))
                        (if (pair? _%rest225847225855%_)
                            (let ((_%hd225852225872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225847225855%_)))
                                  (_%tl225853225874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225847225855%_))))
                              (let* ((_%path225877%_ _%hd225852225872%_)
                                     (_%rest225879%_ _%tl225853225874%_))
                                (_%K225851225869%_
                                 _%rest225879%_
                                 _%path225877%_)))
                            (_%else225849225863%_))))))
                 (_%compile-stub225730%_
                  (lambda (_%output-scm225737%_ _%output-bin225738%_)
                    (let* ((_%gerbil-home225740%_
                            (let ((__tmp226224
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226224)))
                           (_%gerbil-libdir225742%_
                            (path-expand '"lib" _%gerbil-home225740%_))
                           (_%gerbil-staticdir225744%_
                            (path-expand '"static" _%gerbil-libdir225742%_))
                           (_%deps225746%_
                            (gxc#find-runtime-module-deps _%ctx225716%_))
                           (_%libgerbil-deps225748%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225725%_
                               _%deps225746%_)))
                           (_%libgerbil-scm225750%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225748%_)))
                           (_%libgerbil-scm225752%_
                            (_%fold-libgerbil-runtime-scm225728%_
                             _%gerbil-staticdir225744%_
                             _%libgerbil-scm225750%_))
                           (_%libgerbil-c225754%_
                            (map _%replace-extension-with-c225722%_
                                 _%libgerbil-scm225752%_))
                           (_%libgerbil-o225756%_
                            (map _%replace-extension-with-object225723%_
                                 _%libgerbil-scm225752%_))
                           (_%src-deps225758%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225724%_
                               _%deps225746%_)))
                           (_%src-deps-scm225760%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225758%_)))
                           (_%src-deps-scm225762%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225727%_
                               _%src-deps-scm225760%_)))
                           (_%src-deps-scm225764%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225762%_)))
                           (_%src-deps-c225766%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225722%_
                                     _%src-deps-scm225764%_)))
                           (_%src-deps-o225768%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225723%_
                                     _%src-deps-scm225764%_)))
                           (_%src-bin-scm225770%_
                            (gxc#find-static-module-file _%ctx225716%_))
                           (_%src-bin-scm225772%_
                            (path-expand _%src-bin-scm225770%_))
                           (_%src-bin-c225774%_
                            (_%replace-extension-with-c225722%_
                             _%src-bin-scm225772%_))
                           (_%src-bin-o225776%_
                            (_%replace-extension-with-object225723%_
                             _%src-bin-scm225772%_))
                           (_%output-bin225778%_
                            (path-expand _%output-bin225738%_))
                           (_%output-scm225780%_
                            (path-expand _%output-scm225737%_))
                           (_%output-c225782%_
                            (_%replace-extension-with-c225722%_
                             _%output-scm225780%_))
                           (_%output-o225784%_
                            (_%replace-extension-with-object225723%_
                             _%output-scm225780%_))
                           (_%output_-c225786%_
                            (_%replace-extension225721%_
                             _%output-scm225780%_
                             '"_.c"))
                           (_%output_-o225788%_
                            (_%replace-extension225721%_
                             _%output-scm225780%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225790%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225792%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225794%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225744%_))
                           (_%output-ld-opts225796%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225798%_
                            (_%get-libgerbil-ld-opts225720%_
                             _%gerbil-libdir225742%_))
                           (_%rpath225800%_
                            (gxc#gerbil-rpath _%gerbil-libdir225742%_))
                           (_%builtin-modules225804%_
                            (_%remove-duplicates225729%_
                             (let ((__tmp226225
                                    (let ((__tmp226227
                                           (lambda (_%mod225802%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225802%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226226
                                           (cons _%ctx225716%_
                                                 _%deps225746%_)))
                                      (declare (not safe))
                                      (##map __tmp226227 __tmp226226))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226225)))))
                      (letrec ((_%compile-obj225807%_
                                (lambda (_%scm-path225814%_ _%c-path225815%_)
                                  (let* ((_%o-path225817%_
                                          (_%replace-extension225721%_
                                           _%c-path225815%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225819%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225817%_
                                             '".lock")))
                                         (_%locked225821%_ '#f)
                                         (_%unlock225824%_
                                          (lambda ()
                                            (close-port _%locked225821%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225819%_)))))
                                    (let _%retry225827%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225819%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225827%_))
                                          (begin
                                            (set! _%locked225821%_
                                                  (let ((__tmp226228
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225819%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226228)))
                                            (if _%locked225821%_
                                                '#!void
                                                (_%retry225827%_)))))
                                    (let ((__tmp226230
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225817%_)))
                                                     (not _%scm-path225814%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225814%_
                                                        _%o-path225817%_)))
                                                 (let ((_%gsc-cc-opts225838%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226232 (cons _%c-path225815%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226232
                            _%gsc-static-opts225794%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226231 _%gsc-cc-opts225838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226229
                                           (lambda () (_%unlock225824%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226230
                                       __tmp226229))))))
                        (let ((__tmp226233
                               (lambda ()
                                 (let ((__tmp226234
                                        (path-directory _%output-bin225778%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226234)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226233))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225780%_
                         (lambda ()
                           (_%generate-stub225719%_
                            _%builtin-modules225804%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225812%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226235
                                                   (let ((__tmp226236
                                                          (let ((__tmp226237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225772%_
                               (cons _%output-scm225780%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226237 _%src-deps-scm225764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226236
                                                      _%libgerbil-c225754%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226235
                                               _%gsc-link-opts225790%_))))
                                     (for-each
                                      _%compile-obj225807%_
                                      (let ((__tmp226238
                                             (cons _%src-bin-scm225772%_
                                                   (cons _%output-scm225780%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226238
                                         _%src-deps-scm225764%_))
                                      (let ((__tmp226239
                                             (cons _%src-bin-c225774%_
                                                   (cons _%output-c225782%_
                                                         (cons _%output_-c225786%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226239
                                         _%src-deps-c225766%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225778%_
                                                        (let ((__tmp226240
                                                               (cons _%src-bin-o225776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225784%_
                                   (cons _%output_-o225788%_
                                         (let ((__tmp226241
                                                (let ((__tmp226242
                                                       (let ((__tmp226244
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225742%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225798%_))))
                     (__tmp226243
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225800%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226244 __tmp226243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226242
                                                   _%output-ld-opts225796%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226241
                                            _%libgerbil-o225756%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226240 _%src-deps-o225768%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226245
                                            (cons _%output-c225782%_
                                                  (cons _%output_-c225786%_
                                                        (cons _%output-o225784%_
                                                              (cons _%output_-o225788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226245)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225812%_))
                                  (_%compile-it225812%_)))
                            '#!void))))))
          (let* ((_%output-bin225732%_
                  (gxc#compile-exe-output-file _%ctx225716%_ _%opts225717%_))
                 (_%output-scm225734%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225732%_ '"__exe.scm"))))
            (_%compile-stub225730%_
             _%output-scm225734%_
             _%output-bin225732%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225538%_ _%opts225539%_)
        (letrec ((_%reset-declare225541%_
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
                 (_%generate-stub225542%_
                  (lambda (_%deps225707%_)
                    (let ((_%mod-main225709%_
                           (gxc#find-runtime-symbol _%ctx225538%_ 'main))
                          (_%reset-decl225710%_ (_%reset-declare225541%_))
                          (_%user-decl225711%_ (_%user-declare225543%_)))
                      (for-each
                       (lambda (_%dep225713%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225710%_))
                         (newline)
                         (if _%user-decl225711%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225711%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226246
                                (cons 'include (cons _%dep225713%_ '()))))
                           (declare (not safe))
                           (##write __tmp226246))
                         (newline))
                       _%deps225707%_)
                      (let ((__tmp226247
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226247))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225543%_
                  (lambda ()
                    (let* ((_%gsc-opts225612%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225539%_)))
                           (_%gsc-prelude225614%_
                            (if _%gsc-opts225612%_
                                (member '"-prelude" _%gsc-opts225612%_)
                                '#f))
                           (_%gsc-prelude225616%_
                            (if _%gsc-prelude225614%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225614%_)))
                                '#f)))
                      (let _%lp225619%_ ((_%rest225621%_
                                          (cons _%gsc-prelude225616%_ '()))
                                         (_%user-decls225622%_ '()))
                        (let* ((_%rest225623225631%_ _%rest225621%_)
                               (_%else225625225639%_
                                (lambda ()
                                  (if (null? _%user-decls225622%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225622%_)))))
                               (_%K225627225695%_
                                (lambda (_%rest225642%_ _%expr225643%_)
                                  (let* ((_%expr225644225656%_ _%expr225643%_)
                                         (_%else225647225664%_
                                          (lambda ()
                                            (_%lp225619%_
                                             _%rest225642%_
                                             _%user-decls225622%_))))
                                    (let ((_%K225652225685%_
                                           (lambda (_%decls225683%_)
                                             (_%lp225619%_
                                              _%rest225642%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225622%_
                                                 _%decls225683%_)))))
                                          (_%K225649225670%_
                                           (lambda (_%exprs225668%_)
                                             (_%lp225619%_
                                              (append _%exprs225668%_
                                                      _%rest225642%_)
                                              _%user-decls225622%_))))
                                      (if (pair? _%expr225644225656%_)
                                          (let ((_%tl225654225690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225644225656%_)))
                                                (_%hd225653225688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225644225656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225653225688%_
                                                         'declare))
                                                (let ((_%decls225693%_
                                                       _%tl225654225690%_))
                                                  (_%K225652225685%_
                                                   _%decls225693%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225653225688%_
                                                             'begin))
                                                    (let ((_%exprs225678%_
                                                           _%tl225654225690%_))
                                                      (_%K225649225670%_
                                                       _%exprs225678%_))
                                                    (_%else225647225664%_))))
                                          (_%else225647225664%_)))))))
                          (if (pair? _%rest225623225631%_)
                              (let ((_%hd225628225698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225623225631%_)))
                                    (_%tl225629225700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225623225631%_))))
                                (let* ((_%expr225703%_ _%hd225628225698%_)
                                       (_%rest225705%_ _%tl225629225700%_))
                                  (_%K225627225695%_
                                   _%rest225705%_
                                   _%expr225703%_)))
                              (_%else225625225639%_)))))))
                 (_%compile-stub225544%_
                  (lambda (_%output-scm225551%_ _%output-bin225552%_)
                    (let* ((_%gerbil-home225554%_
                            (let ((__tmp226248
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226248)))
                           (_%gerbil-libdir225556%_
                            (path-expand '"lib" _%gerbil-home225554%_))
                           (_%runtime225558%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225560%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225554%_))
                           (_%include-gambit-sharp225562%_
                            (gxc#include-source _%gambit-sharp225560%_))
                           (_%bin-scm225564%_
                            (gxc#find-static-module-file _%ctx225538%_))
                           (_%deps225566%_
                            (gxc#find-runtime-module-deps _%ctx225538%_))
                           (_%deps225568%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225566%_)))
                           (_%deps225573%_
                            (let ((__tmp226249
                                   (lambda (_%$obj225570%_)
                                     (not (gxc#file-empty? _%$obj225570%_)))))
                              (declare (not safe))
                              (##filter __tmp226249 _%deps225568%_)))
                           (_%deps225577%_
                            (let ((__tmp226250
                                   (lambda (_%f225575%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225575%_
                                             _%runtime225558%_))))))
                              (declare (not safe))
                              (##filter __tmp226250 _%deps225573%_)))
                           (_%output-base225579%_
                            (let ((__tmp226251
                                   (path-strip-extension
                                    _%output-scm225551%_)))
                              (declare (not safe))
                              (##string-append __tmp226251)))
                           (_%output-c225581%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225579%_ '".c")))
                           (_%output-o225583%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225579%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225585%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225579%_ '"_.c")))
                           (_%output-o_225587%_
                            (let ((__tmp226252
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225579%_
                               __tmp226252)))
                           (_%gsc-link-opts225589%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225591%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225593%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225556%_)))
                           (_%output-ld-opts225595%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225597%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225562%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225562%_
                                            '()))))
                           (_%gsc-link-opts225599%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225589%_
                               _%gsc-gx-macros225597%_)))
                           (_%rpath225601%_
                            (gxc#gerbil-rpath _%gerbil-libdir225556%_))
                           (_%default-ld-options225603%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226253
                             (lambda ()
                               (let ((__tmp226254
                                      (path-directory _%output-bin225552%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226254)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226253))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225551%_
                       (lambda ()
                         (_%generate-stub225542%_
                          (let ((__tmp226255
                                 (let ((__tmp226256
                                        (cons _%bin-scm225564%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226256
                                    _%deps225577%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226255 _%runtime225558%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225609%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225585%_
                                                      (let ((__tmp226257
                                                             (cons _%output-scm225551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226257 _%gsc-link-opts225599%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226258
                                                 (let ((__tmp226259
                                                        (cons _%output-c225581%_
                                                              (cons _%output-c_225585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226259
                                                    _%gsc-static-opts225593%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226258
                                             _%gsc-cc-opts225591%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225552%_
                                                      (cons _%output-o225583%_
                                                            (cons _%output-o_225587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226260
                                 (let ((__tmp226262
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225556%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225603%_))))
                                       (__tmp226261
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225601%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226262 __tmp226261))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226260
                             _%output-ld-opts225595%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225609%_))
                                (_%compile-it225609%_)))
                          '#!void)))))
          (let* ((_%output-bin225546%_
                  (gxc#compile-exe-output-file _%ctx225538%_ _%opts225539%_))
                 (_%output-scm225548%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225546%_ '"__exe.scm"))))
            (_%compile-stub225544%_
             _%output-scm225548%_
             _%output-bin225546%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225487%_ _%id225488%_)
        (let ((_%$e225534%_
               (let ((__tmp226264
                      (lambda (_%e225489225491%_)
                        (let* ((_%e225489225493225503%_ _%e225489225491%_)
                               (_%else225495225511%_ (lambda () '#f))
                               (_%K225497225515%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225489225493225503%_
                                 'gx#module-export::t))
                              (let* ((_%e225498225518%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225489225493225503%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225499225521%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225489225493225503%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225500225524%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225489225493225503%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225500225524%_ '0))
                                    (let ((_%e225501225527%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225489225493225503%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225529225531%_)
                                             (eq? _%g225529225531%_
                                                  _%id225488%_))
                                           _%e225501225527%_)
                                          (_%K225497225515%_)
                                          (_%else225495225511%_)))
                                    (_%else225495225511%_)))
                              (_%else225495225511%_)))))
                     (__tmp226263
                      (##structure-ref
                       _%ctx225487%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226264 __tmp226263))))
          (if _%$e225534%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225534%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225478%_ _%id225479%_)
        (let ((_%$e225481%_
               (gxc#find-export-binding _%ctx225478%_ _%id225479%_)))
          (if _%$e225481%_
              ((lambda (_%bind225484%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225484%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225479%_)))
                 (##structure-ref _%bind225484%_ '1 gx#binding::t '#f))
               _%$e225481%_)
              (let ((__tmp226265
                     (##structure-ref
                      _%ctx225478%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226265
                 _%id225479%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225344%_)
        (letrec* ((_%ht225346%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225347%_
                   (lambda (_%in225423%_ _%phi225424%_)
                     (let ((_%iphi225426%_
                            (fx+ _%phi225424%_
                                 (##direct-structure-ref
                                  _%in225423%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225427%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225423%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225429%_ ((_%rest225431%_ _%imports225427%_)
                                          (_%r225432%_ '()))
                         (let* ((_%rest225433225441%_ _%rest225431%_)
                                (_%else225435225449%_ (lambda () _%r225432%_))
                                (_%K225437225466%_
                                 (lambda (_%rest225452%_ _%in225453%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225453%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225426%_))
                                           (_%lp225429%_
                                            _%rest225452%_
                                            (cons _%in225453%_ _%r225432%_))
                                           (_%lp225429%_
                                            _%rest225452%_
                                            _%r225432%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225453%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225457%_
                                                  (fx+ _%phi225424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225453%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225457%_))
                                                 (_%lp225429%_
                                                  _%rest225452%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225453%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225432%_))
                                                 (_%lp225429%_
                                                  _%rest225452%_
                                                  _%r225432%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225453%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225460%_
                                                      (fx+ _%iphi225426%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225453%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225460%_))
                                                     (_%lp225429%_
                                                      _%rest225452%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225453%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225432%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225460%_))
                                                         (_%lp225429%_
                                                          _%rest225452%_
                                                          (let ((__tmp226266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225347%_
                          _%in225453%_
                          _%iphi225426%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225432%_ __tmp226266)))
                 (_%lp225429%_ _%rest225452%_ _%r225432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225429%_
                                                _%rest225452%_
                                                _%r225432%_)))))))
                           (if (pair? _%rest225433225441%_)
                               (let ((_%hd225438225469%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225433225441%_)))
                                     (_%tl225439225471%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225433225441%_))))
                                 (let* ((_%in225474%_ _%hd225438225469%_)
                                        (_%rest225476%_ _%tl225439225471%_))
                                   (_%K225437225466%_
                                    _%rest225476%_
                                    _%in225474%_)))
                               (_%else225435225449%_)))))))
                  (_%find-deps225348%_
                   (lambda (_%rest225356%_ _%deps225357%_)
                     (let* ((_%rest225358225366%_ _%rest225356%_)
                            (_%else225360225374%_ (lambda () _%deps225357%_))
                            (_%K225362225411%_
                             (lambda (_%rest225377%_ _%hd225378%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225378%_
                                      'gx#module-context::t))
                                   (let ((_%id225381%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225378%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225382%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225378%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225346%_
                                            _%id225381%_))
                                         (_%find-deps225348%_
                                          _%rest225377%_
                                          _%deps225357%_)
                                         (let ((_%$e225385%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225378%_))))
                                           (if _%$e225385%_
                                               ((lambda (_%pre225388%_)
                                                  (let ((_%xdeps225390%_
                                                         (_%find-deps225348%_
                                                          (cons _%pre225388%_
                                                                _%imports225382%_)
                                                          _%deps225357%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225346%_
                                                       _%id225381%_
                                                       _%hd225378%_))
                                                    (_%find-deps225348%_
                                                     _%rest225377%_
                                                     (cons _%hd225378%_
                                                           _%xdeps225390%_))))
                                                _%$e225385%_)
                                               (let ((_%xdeps225393%_
                                                      (_%find-deps225348%_
                                                       _%imports225382%_
                                                       _%deps225357%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225346%_
                                                    _%id225381%_
                                                    _%hd225378%_))
                                                 (_%find-deps225348%_
                                                  _%rest225377%_
                                                  (cons _%hd225378%_
                                                        _%xdeps225393%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225378%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225396%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225378%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225346%_
                                                _%id225396%_))
                                             (_%find-deps225348%_
                                              _%rest225377%_
                                              _%deps225357%_)
                                             (let ((_%xdeps225400%_
                                                    (_%find-deps225348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225378%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225357%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225346%_
                                                      _%id225396%_))
                                                   (_%find-deps225348%_
                                                    _%rest225377%_
                                                    _%xdeps225400%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225346%_
                                                        _%id225396%_
                                                        _%hd225378%_))
                                                     (_%find-deps225348%_
                                                      _%rest225377%_
                                                      (cons _%hd225378%_
                                                            _%xdeps225400%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225378%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225378%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225348%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225378%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225377%_)
                                                _%deps225357%_)
                                               (_%find-deps225348%_
                                                _%rest225377%_
                                                _%deps225357%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225378%_
                                                  'gx#module-export::t))
                                               (_%find-deps225348%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225378%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225377%_)
                                                _%deps225357%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225378%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225378%_ '2 '#f '#f)))
               (_%find-deps225348%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225378%_ '1 '#f '#f))
                      _%rest225377%_)
                _%deps225357%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225378%_ '2 '#f '#f)))
                   (let ((_%xdeps225407%_
                          (_%import-set-template225347%_ _%hd225378%_ '0)))
                     (_%find-deps225348%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225377%_ _%xdeps225407%_))
                      _%deps225357%_))
                   (_%find-deps225348%_ _%rest225377%_ _%deps225357%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225378%_))))))))))
                       (if (pair? _%rest225358225366%_)
                           (let ((_%hd225363225414%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225358225366%_)))
                                 (_%tl225364225416%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225358225366%_))))
                             (let* ((_%hd225419%_ _%hd225363225414%_)
                                    (_%rest225421%_ _%tl225364225416%_))
                               (_%K225362225411%_
                                _%rest225421%_
                                _%hd225419%_)))
                           (_%else225360225374%_))))))
          (let ((__tmp226267
                 (filter gx#expander-context-id
                         (_%find-deps225348%_
                          (let ((_%$e225350%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225344%_))))
                            (if _%$e225350%_
                                ((lambda (_%pre225353%_)
                                   (cons _%pre225353%_
                                         (##structure-ref
                                          _%ctx225344%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225350%_)
                                (##structure-ref
                                 _%ctx225344%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226267)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225274%_)
        (let* ((_%context-id225276%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225274%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225274%_ '1 '#f '#f))
                    (string->symbol _%ctx225274%_)))
               (_%scm225278%_
                (let ((__tmp226268
                       (gxc#static-module-name _%context-id225276%_)))
                  (declare (not safe))
                  (##string-append __tmp226268 '".scm")))
               (_%dirs225280%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225286%_
                (let ((_%user-libpath225282%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225282%_
                      (let ((_%user-libpath225284%_
                             (path-expand '"lib" _%user-libpath225282%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225284%_ _%dirs225280%_))
                            _%dirs225280%_
                            (cons _%user-libpath225284%_ _%dirs225280%_)))
                      _%dirs225280%_)))
               (_%dirs225296%_
                (let ((_%$e225288%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225288%_
                      ((lambda (_%g225290225292%_)
                         (cons _%g225290225292%_ _%dirs225286%_))
                       _%$e225288%_)
                      _%dirs225286%_)))
               (_%dirs225302%_
                (let ((__tmp226269
                       (lambda (_%g225297225299%_)
                         (path-expand '"static" _%g225297225299%_))))
                  (declare (not safe))
                  (##map __tmp226269 _%dirs225296%_))))
          (let _%lp225305%_ ((_%rest225307%_ _%dirs225302%_))
            (let* ((_%rest225308225316%_ _%rest225307%_)
                   (_%else225310225324%_
                    (lambda ()
                      (let ((__tmp226270
                             (##structure-ref
                              _%ctx225274%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226270
                         _%scm225278%_))))
                   (_%K225312225332%_
                    (lambda (_%rest225327%_ _%dir225328%_)
                      (let ((_%path225330%_
                             (path-expand _%scm225278%_ _%dir225328%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225330%_))
                            _%path225330%_
                            (_%lp225305%_ _%rest225327%_))))))
              (if (pair? _%rest225308225316%_)
                  (let ((_%hd225313225335%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225308225316%_)))
                        (_%tl225314225337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225308225316%_))))
                    (let* ((_%dir225340%_ _%hd225313225335%_)
                           (_%rest225342%_ _%tl225314225337%_))
                      (_%K225312225332%_ _%rest225342%_ _%dir225340%_)))
                  (_%else225310225324%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225272%_)
        (zero? (let ((__tmp226271 (file-info _%path225272%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226271)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225263%_)
        (let ((__tmp226272
               (lambda ()
                 (let ((__tmp226273
                        (lambda ()
                          (let ((__tmp226274
                                 (lambda ()
                                   (let ((__tmp226276
                                          (lambda ()
                                            (let ((__tmp226278
                                                   (lambda ()
                                                     (let ((__tmp226280
                                                            (lambda ()
                                                              (let ((__tmp226281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225263%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226281))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226282
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225263%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226282))
                          '#!void)
                      (gxc#collect-bindings _%ctx225263%_)
                      (gxc#compile-runtime-code _%ctx225263%_)
                      (gxc#compile-meta-code _%ctx225263%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225263%_)
                          '#!void)))
                   (__tmp226279
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
                __tmp226280
                gxc#current-compile-runtime-names
                __tmp226279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226277
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226278
                                               gxc#current-compile-runtime-sections
                                               __tmp226277))))
                                         (__tmp226275
                                          (let ((__obj226176
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226176))
                                            __obj226176)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226276
                                      gxc#current-compile-symbol-table
                                      __tmp226275)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226274
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226273
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226272
           gx#current-expander-context
           _%ctx225263%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225261%_)
        (let ((__tmp226283
               (##structure-ref _%ctx225261%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226283))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225205%_)
        (letrec ((_%compile1225207%_
                  (lambda (_%ctx225250%_)
                    (let* ((_%code225252%_
                            (##structure-ref
                             _%ctx225250%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225256%_
                            (let ((_%idstr225254%_
                                   (let ((__tmp226284
                                          (##structure-ref
                                           _%ctx225250%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226284))))
                              (declare (not safe))
                              (##string-append _%idstr225254%_ '"~0")))
                           (_%rtc?225258%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225252%_))))
                      (if _%rtc?225258%_
                          (let ((__tmp226285
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226285
                             _%ctx225250%_
                             _%rtm225256%_))
                          '#!void)
                      (_%generate-runtime-code225209%_
                       _%ctx225250%_
                       _%code225252%_
                       (if _%rtc?225258%_ _%rtm225256%_ '#f)))))
                 (_%context-timestamp225208%_
                  (lambda (_%ctx225248%_)
                    (let ((__tmp226286
                           (let ((__tmp226287
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225248%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226287 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226286))))
                 (_%generate-runtime-code225209%_
                  (lambda (_%ctx225216%_ _%code225217%_ _%rtm225218%_)
                    (let* ((_%runtime-code?225220%_ (if _%rtm225218%_ '#t '#f))
                           (_%lifts225222%_ (box '()))
                           (_%runtime-code225229%_
                            (if _%runtime-code?225220%_
                                (let ((__tmp226288
                                       (lambda ()
                                         (let ((__tmp226289
                                                (lambda ()
                                                  (let ((__tmp226290
                                                         (lambda ()
                                                           (let ((__tmp226292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226294
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225217%_))))
                                  (__tmp226293
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226294
                               gxc#current-compile-identifiers
                               __tmp226293))))
                         (__tmp226291
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226292
                      gxc#current-compile-marks
                      __tmp226291)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226290
                                                     gxc#current-compile-lift
                                                     _%lifts225222%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226289
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226288
                                   gx#current-expander-context
                                   _%ctx225216%_))
                                '#f))
                           (_%runtime-code225231%_
                            (if _%runtime-code?225220%_
                                (if (null? (unbox _%lifts225222%_))
                                    _%runtime-code225229%_
                                    (cons 'begin
                                          (let ((__tmp226296
                                                 (cons _%runtime-code225229%_
                                                       '()))
                                                (__tmp226295
                                                 (reverse (unbox _%lifts225222%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226296
                                             __tmp226295))))
                                '#f))
                           (_%runtime-code225233%_
                            (if _%runtime-code?225220%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225208%_
                                                         _%ctx225216%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225231%_ '())))
                                '#f))
                           (_%loader-code225236%_
                            (let ((__tmp226297
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225217%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226297
                               gx#current-expander-context
                               _%ctx225216%_)))
                           (_%loader-code225238%_
                            (cons 'begin
                                  (cons _%loader-code225236%_
                                        (cons (if _%runtime-code?225220%_
                                                  (cons 'load-module
                                                        (cons _%rtm225218%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225240%_
                            (gxc#compile-output-file _%ctx225216%_ '0 '".scm"))
                           (_%scmrt225242%_
                            (gxc#compile-output-file
                             _%ctx225216%_
                             '#f
                             '".scm"))
                           (_%scms225244%_
                            (gxc#compile-static-output-file _%ctx225216%_)))
                      (if _%runtime-code?225220%_
                          (gxc#compile-scm-file__0
                           _%scm0225240%_
                           _%runtime-code225233%_)
                          '#!void)
                      (let ((__tmp226298
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225242%_
                                _%loader-code225238%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226298
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225244%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225244%_))
                          '#!void)
                      (if _%runtime-code?225220%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225240%_ _%scms225244%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225244%_ void)))))))
          (let* ((_%all-modules225211%_
                  (cons _%ctx225205%_ (gxc#lift-nested-modules _%ctx225205%_)))
                 (__tmp226299
                  (lambda (_%ctx225213%_)
                    (let ((__tmp226300
                           (lambda () (_%compile1225207%_ _%ctx225213%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226300
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226299 _%all-modules225211%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225104%_)
        (letrec ((_%compile-ssi225106%_
                  (lambda (_%code225173%_)
                    (let* ((_%path225175%_
                            (gxc#compile-output-file
                             _%ctx225104%_
                             '#f
                             '".ssi"))
                           (_%prelude225187%_
                            (let* ((_%super225177%_
                                    (##structure-ref
                                     _%ctx225104%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225179%_
                                    (##structure-ref
                                     _%super225177%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225179%_
                                  ((lambda (_%g225181225183%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225181225183%_)))
                                   _%$e225179%_)
                                  ':<root>)))
                           (_%ns225189%_
                            (##structure-ref
                             _%ctx225104%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225191%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225104%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225199%_
                            (let ((_%$e225193%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225191%_ '#\/))))
                              (if _%$e225193%_
                                  ((lambda (_%x225196%_)
                                     (let ((__tmp226301
                                            (substring
                                             _%idstr225191%_
                                             '0
                                             _%x225196%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226301)))
                                   _%$e225193%_)
                                  '#f)))
                           (_%rt225201%_
                            (let ((__tmp226302
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226302 _%ctx225104%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225175%_))
                      (gxc#with-output-to-scheme-file
                       _%path225175%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225187%_))
                         (if _%pkg225199%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225199%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225189%_))
                         (newline)
                         (pretty-print _%code225173%_)
                         (if _%rt225201%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225201%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225107%_
                  (lambda (_%part225112%_)
                    (let* ((_%part225113225126%_ _%part225112%_)
                           (_%E225115225130%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225113225126%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225116225142%_
                            (lambda (_%code225133%_
                                     _%n225134%_
                                     _%phi225135%_
                                     _%phi-ctx225136%_)
                              (let ((_%code225140%_
                                     (let ((__tmp226303
                                            (lambda ()
                                              (let ((__tmp226304
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225133%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226304
                                                 gx#current-expander-phi
                                                 _%phi225135%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226303
                                        gx#current-expander-context
                                        _%phi-ctx225136%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225104%_
                                  _%n225134%_
                                  '".scm")
                                 _%code225140%_
                                 '#t)))))
                      (if (pair? _%part225113225126%_)
                          (let ((_%hd225117225145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225113225126%_)))
                                (_%tl225118225147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225113225126%_))))
                            (let ((_%phi-ctx225150%_ _%hd225117225145%_))
                              (if (pair? _%tl225118225147%_)
                                  (let ((_%hd225119225152%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225118225147%_)))
                                        (_%tl225120225154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225118225147%_))))
                                    (let ((_%phi225157%_ _%hd225119225152%_))
                                      (if (pair? _%tl225120225154%_)
                                          (let ((_%hd225121225159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225120225154%_)))
                                                (_%tl225122225161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225120225154%_))))
                                            (let ((_%n225164%_
                                                   _%hd225121225159%_))
                                              (if (pair? _%tl225122225161%_)
                                                  (let ((_%hd225123225166%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225122225161%_)))
                                                        (_%tl225124225168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225122225161%_))))
                                                    (let ((_%code225171%_
                                                           _%hd225123225166%_))
                                                      (if (null? _%tl225124225168%_)
                                                          (_%K225116225142%_
                                                           _%code225171%_
                                                           _%n225164%_
                                                           _%phi225157%_
                                                           _%phi-ctx225150%_)
                                                          (_%E225115225130%_))))
                                                  (_%E225115225130%_))))
                                          (_%E225115225130%_))))
                                  (_%E225115225130%_))))
                          (_%E225115225130%_))))))
          (let ((_g226305_ (gxc#generate-meta-code _%ctx225104%_)))
            (begin
              (let ((_g226306_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226305_)
                           (##values-length _g226305_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226306_ 2)))
                    (error "Context expects 2 values" _g226306_)))
              (let ((_%ssi-code225109%_
                     (let () (declare (not safe)) (##values-ref _g226305_ 0)))
                    (_%phi-code225110%_
                     (let () (declare (not safe)) (##values-ref _g226305_ 1))))
                (begin
                  (_%compile-ssi225106%_ _%ssi-code225109%_)
                  (for-each _%compile-phi225107%_ _%phi-code225110%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225086%_)
        (let* ((_%path225088%_
                (gxc#compile-output-file _%ctx225086%_ '#f '".ssxi.ss"))
               (_%code225090%_
                (let ((__tmp226307
                       (##structure-ref
                        _%ctx225086%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226307)))
               (_%idstr225092%_
                (symbol->string
                 (##structure-ref
                  _%ctx225086%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225100%_
                (let ((_%$e225094%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225092%_ '#\/))))
                  (if _%$e225094%_
                      ((lambda (_%x225097%_)
                         (let ((__tmp226308
                                (substring _%idstr225092%_ '0 _%x225097%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226308)))
                       _%$e225094%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225088%_))
          (gxc#with-output-to-scheme-file
           _%path225088%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225100%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225100%_))
                 '#!void)
             (newline)
             (pretty-print _%code225090%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225079%_)
        (let* ((_%state225081%_
                (let ((__obj226177
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226177 _%ctx225079%_))
                  __obj226177))
               (_%ssi-code225083%_
                (let ((__tmp226309
                       (##structure-ref
                        _%ctx225079%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225081%_
                   __tmp226309))))
          (values _%ssi-code225083%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225081%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225070%_)
        (let* ((_%lifts225072%_ (box '()))
               (__tmp226310
                (lambda ()
                  (let ((__tmp226312
                         (lambda ()
                           (let ((__tmp226314
                                  (lambda ()
                                    (let ((_%code225077%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx225070%_))))
                                      (if (null? (unbox _%lifts225072%_))
                                          _%code225077%_
                                          (cons 'begin
                                                (let ((__tmp226316
                                                       (cons _%code225077%_
                                                             '()))
                                                      (__tmp226315
                                                       (reverse (unbox _%lifts225072%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226316
                                                   __tmp226315)))))))
                                 (__tmp226313
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226314
                              gxc#current-compile-identifiers
                              __tmp226313))))
                        (__tmp226311
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226312
                     gxc#current-compile-marks
                     __tmp226311)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226310
           gxc#current-compile-lift
           _%lifts225072%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx225066%_)
        (let ((_%modules225068%_ (box '())))
          (let ((__tmp226317
                 (##structure-ref _%ctx225066%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules225068%_ __tmp226317))
          (reverse (unbox _%modules225068%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path225046%_ _%code225047%_ _%phi?225048%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path225046%_))
        (gxc#with-output-to-scheme-file
         _%path225046%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226318
                                           (if _%phi?225048%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226318)))))))
           (pretty-print _%code225047%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it225052%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path225046%_ _%phi?225048%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226319
                         (cons 'compile-file (cons _%path225046%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it225052%_ __tmp226319))
                  (_%compile-it225052%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path225057%_ _%code225058%_)
        (let ((_%phi?225060%_ '#f))
          (gxc#compile-scm-file__%
           _%path225057%_
           _%code225058%_
           _%phi?225060%_))))
    (define gxc#compile-scm-file
      (lambda _g226320_
        (let ((_g226321_ (let () (declare (not safe)) (##length _g226320_))))
          (cond ((let () (declare (not safe)) (##fx= _g226321_ 2))
                 (apply gxc#compile-scm-file__0 _g226320_))
                ((let () (declare (not safe)) (##fx= _g226321_ 3))
                 (apply gxc#compile-scm-file__% _g226320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226320_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224947%_)
        (let _%lp224949%_ ((_%rest224951%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224952%_ '()))
          (let* ((_%rest224953224973%_ _%rest224951%_)
                 (_%else224957224981%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224952%_)))
                        (reverse _%opts224952%_)))))
            (let ((_%K224967225024%_
                   (lambda (_%rest225022%_)
                     (_%lp224949%_ _%rest225022%_ _%opts224952%_)))
                  (_%K224962225006%_
                   (lambda (_%rest225004%_)
                     (_%lp224949%_ _%rest225004%_ _%opts224952%_)))
                  (_%K224959224988%_
                   (lambda (_%rest224985%_ _%opt224986%_)
                     (_%lp224949%_
                      _%rest224985%_
                      (cons _%opt224986%_ _%opts224952%_)))))
              (if (pair? _%rest224953224973%_)
                  (let ((_%tl224969225029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224953224973%_)))
                        (_%hd224968225027%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224953224973%_))))
                    (if (equal? _%hd224968225027%_ '"-cc-options")
                        (if (pair? _%tl224969225029%_)
                            (let* ((_%tl224971225032%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224969225029%_)))
                                   (_%rest225035%_ _%tl224971225032%_))
                              (_%K224967225024%_ _%rest225035%_))
                            (let ((_%opt224996%_ _%hd224968225027%_)
                                  (_%rest224998%_ _%tl224969225029%_))
                              (_%K224959224988%_
                               _%rest224998%_
                               _%opt224996%_)))
                        (if (equal? _%hd224968225027%_ '"-ld-options")
                            (if (pair? _%tl224969225029%_)
                                (let* ((_%tl224966225014%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224969225029%_)))
                                       (_%rest225017%_ _%tl224966225014%_))
                                  (_%K224962225006%_ _%rest225017%_))
                                (let ((_%opt224996%_ _%hd224968225027%_)
                                      (_%rest224998%_ _%tl224969225029%_))
                                  (_%K224959224988%_
                                   _%rest224998%_
                                   _%opt224996%_)))
                            (let ((_%opt224996%_ _%hd224968225027%_)
                                  (_%rest224998%_ _%tl224969225029%_))
                              (_%K224959224988%_
                               _%rest224998%_
                               _%opt224996%_)))))
                  (_%else224957224981%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?225041%_ '#f)) (gxc#gsc-link-options__% _%phi?225041%_))))
    (define gxc#gsc-link-options
      (lambda _g226322_
        (let ((_g226323_ (let () (declare (not safe)) (##length _g226322_))))
          (cond ((let () (declare (not safe)) (##fx= _g226323_ 0))
                 (apply gxc#gsc-link-options__0 _g226322_))
                ((let () (declare (not safe)) (##fx= _g226323_ 1))
                 (apply gxc#gsc-link-options__% _g226322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226322_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224797%_ _%static?224793224798%_ _%phi?224799%_)
        (let ((_%static?224801%_
               (if (eq? _%static?224793224798%_ absent-value)
                   '#f
                   _%static?224793224798%_)))
          (if _%phi?224799%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224803%_ ((_%rest224805%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224806%_ '()))
                (let* ((_%rest224807224833%_ _%rest224805%_)
                       (_%else224812224841%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224806%_)))
                              (reverse! _%opts224806%_)))))
                  (let ((_%K224827224904%_
                         (lambda (_%rest224901%_ _%opt224902%_)
                           (if _%static?224801%_
                               (_%lp224803%_
                                _%rest224901%_
                                (cons _%opt224902%_
                                      (cons '"-cc-options" _%opts224806%_)))
                               (_%lp224803%_ _%rest224901%_ _%opts224806%_))))
                        (_%K224822224881%_
                         (lambda (_%rest224878%_ _%opt224879%_)
                           (_%lp224803%_
                            _%rest224878%_
                            (cons _%opt224879%_
                                  (cons '"-cc-options" _%opts224806%_)))))
                        (_%K224817224861%_
                         (lambda (_%rest224859%_)
                           (_%lp224803%_ _%rest224859%_ _%opts224806%_)))
                        (_%K224814224847%_
                         (lambda (_%rest224845%_)
                           (_%lp224803%_ _%rest224845%_ _%opts224806%_))))
                    (if (pair? _%rest224807224833%_)
                        (let ((_%tl224829224909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224807224833%_)))
                              (_%hd224828224907%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224807224833%_))))
                          (if (equal? _%hd224828224907%_ '"-cc-options")
                              (if (pair? _%tl224829224909%_)
                                  (let ((_%tl224831224914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224829224909%_)))
                                        (_%hd224830224912%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224829224909%_))))
                                    (if (equal? _%hd224830224912%_ '"-Bstatic")
                                        (let ((_%opt224917%_
                                               _%hd224830224912%_)
                                              (_%rest224919%_
                                               _%tl224831224914%_))
                                          (_%K224827224904%_
                                           _%rest224919%_
                                           _%opt224917%_))
                                        (let ((_%opt224894%_
                                               _%hd224830224912%_)
                                              (_%rest224896%_
                                               _%tl224831224914%_))
                                          (_%K224822224881%_
                                           _%rest224896%_
                                           _%opt224894%_))))
                                  (let ((_%rest224853%_ _%tl224829224909%_))
                                    (_%K224814224847%_ _%rest224853%_)))
                              (if (equal? _%hd224828224907%_ '"-ld-options")
                                  (if (pair? _%tl224829224909%_)
                                      (let* ((_%tl224821224869%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224829224909%_)))
                                             (_%rest224872%_
                                              _%tl224821224869%_))
                                        (_%K224817224861%_ _%rest224872%_))
                                      (let ((_%rest224853%_
                                             _%tl224829224909%_))
                                        (_%K224814224847%_ _%rest224853%_)))
                                  (let ((_%rest224853%_ _%tl224829224909%_))
                                    (_%K224814224847%_ _%rest224853%_)))))
                        (_%else224812224841%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224924%_ _%static?224793224925%_)
        (let ((_%phi?224927%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224924%_
           _%static?224793224925%_
           _%phi?224927%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226324_
        (let ((_g226325_ (let () (declare (not safe)) (##length _g226324_))))
          (cond ((let () (declare (not safe)) (##fx= _g226325_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226324_))
                ((let () (declare (not safe)) (##fx= _g226325_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226324_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224936%_ . _%args224937%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224936%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224936%_
                  'static:
                  absent-value))
               _%args224937%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224794224943%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224794224943%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224643%_ _%static?224639224644%_ _%phi?224645%_)
        (let ((_%static?224647%_
               (if (eq? _%static?224639224644%_ absent-value)
                   '#f
                   _%static?224639224644%_)))
          (if _%phi?224645%_
              '()
              (let _%lp224649%_ ((_%rest224651%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224652%_ '()))
                (let* ((_%rest224653224679%_ _%rest224651%_)
                       (_%else224658224687%_
                        (lambda () (reverse! _%opts224652%_))))
                  (let ((_%K224673224750%_
                         (lambda (_%rest224747%_ _%opt224748%_)
                           (if _%static?224647%_
                               (_%lp224649%_
                                _%rest224747%_
                                (cons _%opt224748%_
                                      (cons '"-ld-options" _%opts224652%_)))
                               (_%lp224649%_ _%rest224747%_ _%opts224652%_))))
                        (_%K224668224727%_
                         (lambda (_%rest224724%_ _%opt224725%_)
                           (_%lp224649%_
                            _%rest224724%_
                            (cons _%opt224725%_
                                  (cons '"-ld-options" _%opts224652%_)))))
                        (_%K224663224707%_
                         (lambda (_%rest224705%_)
                           (_%lp224649%_ _%rest224705%_ _%opts224652%_)))
                        (_%K224660224693%_
                         (lambda (_%rest224691%_)
                           (_%lp224649%_ _%rest224691%_ _%opts224652%_))))
                    (if (pair? _%rest224653224679%_)
                        (let ((_%tl224675224755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224653224679%_)))
                              (_%hd224674224753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224653224679%_))))
                          (if (equal? _%hd224674224753%_ '"-ld-options")
                              (if (pair? _%tl224675224755%_)
                                  (let ((_%tl224677224760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224675224755%_)))
                                        (_%hd224676224758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224675224755%_))))
                                    (if (equal? _%hd224676224758%_ '"-static")
                                        (let ((_%opt224763%_
                                               _%hd224676224758%_)
                                              (_%rest224765%_
                                               _%tl224677224760%_))
                                          (_%K224673224750%_
                                           _%rest224765%_
                                           _%opt224763%_))
                                        (let ((_%opt224740%_
                                               _%hd224676224758%_)
                                              (_%rest224742%_
                                               _%tl224677224760%_))
                                          (_%K224668224727%_
                                           _%rest224742%_
                                           _%opt224740%_))))
                                  (let ((_%rest224699%_ _%tl224675224755%_))
                                    (_%K224660224693%_ _%rest224699%_)))
                              (if (equal? _%hd224674224753%_ '"-cc-options")
                                  (if (pair? _%tl224675224755%_)
                                      (let* ((_%tl224667224715%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224675224755%_)))
                                             (_%rest224718%_
                                              _%tl224667224715%_))
                                        (_%K224663224707%_ _%rest224718%_))
                                      (let ((_%rest224699%_
                                             _%tl224675224755%_))
                                        (_%K224660224693%_ _%rest224699%_)))
                                  (let ((_%rest224699%_ _%tl224675224755%_))
                                    (_%K224660224693%_ _%rest224699%_)))))
                        (_%else224658224687%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224770%_ _%static?224639224771%_)
        (let ((_%phi?224773%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224770%_
           _%static?224639224771%_
           _%phi?224773%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226326_
        (let ((_g226327_ (let () (declare (not safe)) (##length _g226326_))))
          (cond ((let () (declare (not safe)) (##fx= _g226327_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226326_))
                ((let () (declare (not safe)) (##fx= _g226327_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226326_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224782%_ . _%args224783%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224782%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224782%_
                  'static:
                  absent-value))
               _%args224783%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224640224789%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224640224789%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224634%_)
        (let ((_%user-staticdir224636%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224634%_
                       '" -I "
                       _%user-staticdir224636%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224546%_ ((_%rest224548%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224549%_ '()))
          (let* ((_%rest224550224570%_ _%rest224548%_)
                 (_%else224554224578%_ (lambda () _%opts224549%_)))
            (let ((_%K224564224621%_
                   (lambda (_%rest224619%_)
                     (_%lp224546%_ _%rest224619%_ _%opts224549%_)))
                  (_%K224559224599%_
                   (lambda (_%rest224596%_ _%opt224597%_)
                     (_%lp224546%_
                      _%rest224596%_
                      (let ((__tmp226328
                             (let ((__tmp226329
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224597%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226329))))
                        (declare (not safe))
                        (##append _%opts224549%_ __tmp226328)))))
                  (_%K224556224584%_
                   (lambda (_%rest224582%_)
                     (_%lp224546%_ _%rest224582%_ _%opts224549%_))))
              (if (pair? _%rest224550224570%_)
                  (let ((_%tl224566224626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224550224570%_)))
                        (_%hd224565224624%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224550224570%_))))
                    (if (equal? _%hd224565224624%_ '"-cc-options")
                        (if (pair? _%tl224566224626%_)
                            (let* ((_%tl224568224629%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224566224626%_)))
                                   (_%rest224632%_ _%tl224568224629%_))
                              (_%K224564224621%_ _%rest224632%_))
                            (let ((_%rest224590%_ _%tl224566224626%_))
                              (_%K224556224584%_ _%rest224590%_)))
                        (if (equal? _%hd224565224624%_ '"-ld-options")
                            (if (pair? _%tl224566224626%_)
                                (let ((_%tl224563224609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224566224626%_)))
                                      (_%hd224562224607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224566224626%_))))
                                  (let ((_%opt224612%_ _%hd224562224607%_)
                                        (_%rest224614%_ _%tl224563224609%_))
                                    (_%K224559224599%_
                                     _%rest224614%_
                                     _%opt224612%_)))
                                (let ((_%rest224590%_ _%tl224566224626%_))
                                  (_%K224556224584%_ _%rest224590%_)))
                            (let ((_%rest224590%_ _%tl224566224626%_))
                              (_%K224556224584%_ _%rest224590%_)))))
                  (_%else224554224578%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224543%_)
        (not (let () (declare (not safe)) (string-empty? _%str224543%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224536%_ _%phi?224537%_)
        (let ((_%gsc-link-opts224539%_
               (gxc#gsc-link-options__% _%phi?224537%_))
              (_%gsc-cc-opts224540%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224537%_))
              (_%gsc-ld-opts224541%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224537%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226330
                  (let ((__tmp226331
                         (let ((__tmp226332 (cons _%path224536%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226332
                            _%gsc-link-opts224539%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226331 _%gsc-ld-opts224541%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226330 _%gsc-cc-opts224540%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224502%_ _%n224503%_ _%ext224504%_)
        (letrec ((_%module-relative-path224506%_
                  (lambda (_%ctx224534%_)
                    (path-strip-directory
                     (let ((__tmp226333
                            (##structure-ref
                             _%ctx224534%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226333)))))
                 (_%module-source-directory224507%_
                  (lambda (_%ctx224530%_)
                    (path-directory
                     (let ((_%mpath224532%_
                            (##structure-ref
                             _%ctx224530%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224532%_)
                           _%mpath224532%_
                           (last _%mpath224532%_))))))
                 (_%section-string224508%_
                  (lambda (_%n224524%_)
                    (if (number? _%n224524%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224524%_))
                        (if (symbol? _%n224524%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224524%_))
                            (if (string? _%n224524%_)
                                _%n224524%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224524%_)))))))
                 (_%file-name224509%_
                  (lambda (_%path224522%_)
                    (if _%n224503%_
                        (string-append
                         _%path224522%_
                         '"~"
                         (_%section-string224508%_ _%n224503%_)
                         _%ext224504%_)
                        (string-append _%path224522%_ _%ext224504%_))))
                 (_%file-path224510%_
                  (lambda ()
                    (let ((_%$e224516%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224516%_
                          ((lambda (_%outdir224519%_)
                             (path-expand
                              (_%file-name224509%_
                               (let ((__tmp226334
                                      (##structure-ref
                                       _%ctx224502%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226334)))
                              _%outdir224519%_))
                           _%$e224516%_)
                          (path-expand
                           (_%file-name224509%_
                            (_%module-relative-path224506%_ _%ctx224502%_))
                           (_%module-source-directory224507%_
                            _%ctx224502%_)))))))
          (let ((_%path224512%_ (_%file-path224510%_)))
            (let ((__tmp226335
                   (lambda ()
                     (let ((__tmp226336 (path-directory _%path224512%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226336)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226335))
            _%path224512%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224483%_)
        (letrec ((_%file-name224485%_
                  (lambda (_%id224500%_)
                    (let ((__tmp226337 (gxc#static-module-name _%id224500%_)))
                      (declare (not safe))
                      (##string-append __tmp226337 '".scm"))))
                 (_%file-path224486%_
                  (lambda ()
                    (let* ((_%file224492%_
                            (_%file-name224485%_
                             (##structure-ref
                              _%ctx224483%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224494%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224494%_
                          ((lambda (_%outdir224497%_)
                             (path-expand
                              _%file224492%_
                              (path-expand '"static" _%outdir224497%_)))
                           _%$e224494%_)
                          (path-expand _%file224492%_ '"static"))))))
          (let ((_%path224488%_ (_%file-path224486%_)))
            (let ((__tmp226338
                   (lambda ()
                     (let ((__tmp226339 (path-directory _%path224488%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226339)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226338))
            _%path224488%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224476%_ _%opts224477%_)
        (let ((_%$e224479%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224477%_))))
          (if _%$e224479%_
              _%$e224479%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224476%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224466%_)
        (if (string? _%idstr224466%_)
            (let* ((_%str224469%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224466%_)))
                   (_%strs224471%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224469%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224471%_ '"__"))
            (if (symbol? _%idstr224466%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224466%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224466%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226340
               (let ((__tmp226341 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226341 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226340))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224432%_
               _%stdout-redirection224428224433%_
               _%stderr-redirection224429224434%_
               _%program224435%_
               _%args224436%_)
        (let* ((_%stdout-redirection224438%_
                (if (eq? _%stdout-redirection224428224433%_ absent-value)
                    '#f
                    _%stdout-redirection224428224433%_))
               (_%stderr-redirection224440%_
                (if (eq? _%stderr-redirection224429224434%_ absent-value)
                    '#f
                    _%stderr-redirection224429224434%_)))
          (let ((__tmp226342 (cons _%program224435%_ _%args224436%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226342))
          (let* ((_%proc224442%_
                  (open-process
                   (cons 'path:
                         (cons _%program224435%_
                               (cons 'arguments:
                                     (cons _%args224436%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224438%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224447%_
                  (if (or _%stdout-redirection224438%_
                          _%stderr-redirection224440%_)
                      (read-line _%proc224442%_ '#f)
                      '#f))
                 (_%status224450%_ (process-status _%proc224442%_)))
            (let () (declare (not safe)) (##close-port _%proc224442%_))
            (if (zero? _%status224450%_)
                '#!void
                (begin
                  (display _%output224447%_)
                  (let ((__tmp226343 (cons _%program224435%_ _%args224436%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226343
                     _%status224450%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224455%_ . _%args224456%_)
        (apply gxc#invoke__%
               _%@@keywords224455%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224455%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224455%_
                  'stderr-redirection:
                  absent-value))
               _%args224456%_)))
    (define gxc#invoke
      (lambda _%args224430224462%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224430224462%_)))))
