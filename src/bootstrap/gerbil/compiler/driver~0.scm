(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770336550)
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
      (lambda (_%srcpath225969%_ _%opts225970%_)
        (if (string? _%srcpath225969%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225969%_)))
        (let* ((_%outdir225972%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225970%_)))
               (_%invoke-gsc?225974%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225970%_)))
               (_%target225979%_
                (let ((_%$e225976%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225970%_))))
                  (if _%$e225976%_ _%$e225976%_ 'C)))
               (_%gsc-options225984%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225979%_) '()))
                        (let ((_%$e225981%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225970%_))))
                          (if _%$e225981%_ _%$e225981%_ '()))))
               (_%keep-scm?225986%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225970%_)))
               (_%verbosity225988%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225970%_)))
               (_%optimize225990%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225970%_)))
               (_%debug225992%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225970%_)))
               (_%gen-ssxi225994%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225970%_)))
               (_%parallel?225996%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225970%_))))
          (if _%outdir225972%_
              (let ((__tmp226181
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225972%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226181))
              '#!void)
          (if _%optimize225990%_
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
                             (let ((__tmp226197
                                    (lambda ()
                                      (let ((__tmp226198
                                             (lambda ()
                                               (let ((__tmp226199
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath225969%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp226200
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath225969%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp226200))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp226199
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226198
                                         gxc#current-compile-parallel
                                         _%parallel?225996%_))))
                                   (__tmp226196
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226197
                                gxc#current-compile-identifiers
                                __tmp226196))))
                          (__tmp226194
                           (cons (cons 'compile-module
                                       (cons _%srcpath225969%_ '()))
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
                                             _%gen-ssxi225994%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226190
                                    gxc#current-compile-debug
                                    _%debug225992%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226189
                           gxc#current-compile-optimize
                           _%optimize225990%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226188
                  gxc#current-compile-verbose
                  _%verbosity225988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226187
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225986%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226186
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225984%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226185
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225974%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226184
                      gx#current-compilation-target
                      _%target225979%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226183
             gxc#current-compile-output-dir
             _%outdir225972%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath226019%_)
        (let ((_%opts226021%_ '()))
          (gxc#compile-module__% _%srcpath226019%_ _%opts226021%_))))
    (define gxc#compile-module
      (lambda _g226201_
        (let ((_g226202_ (let () (declare (not safe)) (##length _g226201_))))
          (cond ((let () (declare (not safe)) (##fx= _g226202_ 1))
                 (apply gxc#compile-module__0 _g226201_))
                ((let () (declare (not safe)) (##fx= _g226202_ 2))
                 (apply gxc#compile-module__% _g226201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226201_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225918%_ _%opts225919%_)
        (if (string? _%srcpath225918%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225918%_)))
        (let* ((_%outdir225921%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225919%_)))
               (_%invoke-gsc?225923%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225919%_)))
               (_%target225928%_
                (let ((_%$e225925%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225919%_))))
                  (if _%$e225925%_ _%$e225925%_ 'C)))
               (_%gsc-options225933%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225928%_) '()))
                        (let ((_%$e225930%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225919%_))))
                          (if _%$e225930%_ _%$e225930%_ '()))))
               (_%keep-scm?225935%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225919%_)))
               (_%verbosity225937%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225919%_)))
               (_%debug225939%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225919%_)))
               (_%parallel?225941%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225919%_))))
          (if _%outdir225921%_
              (let ((__tmp226203
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225921%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226203))
              '#!void)
          (let ((__tmp226204
                 (lambda ()
                   (let ((__tmp226205
                          (lambda ()
                            (let ((__tmp226206
                                   (lambda ()
                                     (let ((__tmp226207
                                            (lambda ()
                                              (let ((__tmp226208
                                                     (lambda ()
                                                       (let ((__tmp226209
                                                              (lambda ()
                                                                (let ((__tmp226210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226212
                                        (lambda ()
                                          (let ((__tmp226214
                                                 (lambda ()
                                                   (let ((__tmp226216
                                                          (lambda ()
                                                            (let ((__tmp226217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226218
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath225918%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp226219
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath225918%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp226219))
                                       _%opts225919%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226218
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226217
                       gxc#current-compile-parallel
                       _%parallel?225941%_))))
                 (__tmp226215
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226216
                                                      gxc#current-compile-identifiers
                                                      __tmp226215))))
                                                (__tmp226213
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226214
                                             gxc#current-compile-context
                                             __tmp226213))))
                                       (__tmp226211 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226212
                                    gxc#current-compile-timestamp
                                    __tmp226211)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226210
                           gxc#current-compile-debug
                           _%debug225939%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226209
                  gxc#current-compile-verbose
                  _%verbosity225937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226208
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225935%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226207
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225933%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226206
                               gx#current-compilation-target
                               _%target225928%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226205
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225923%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226204
             gxc#current-compile-output-dir
             _%outdir225921%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225961%_)
        (let ((_%opts225963%_ '()))
          (gxc#compile-exe__% _%srcpath225961%_ _%opts225963%_))))
    (define gxc#compile-exe
      (lambda _g226220_
        (let ((_g226221_ (let () (declare (not safe)) (##length _g226220_))))
          (cond ((let () (declare (not safe)) (##fx= _g226221_ 1))
                 (apply gxc#compile-exe__0 _g226220_))
                ((let () (declare (not safe)) (##fx= _g226221_ 2))
                 (apply gxc#compile-exe__% _g226220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226220_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225914%_ _%opts225915%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225915%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225914%_
             _%opts225915%_)
            (gxc#compile-executable-module/separate
             _%ctx225914%_
             _%opts225915%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225714%_ _%opts225715%_)
        (letrec ((_%generate-stub225717%_
                  (lambda (_%builtin-modules225910%_)
                    (let ((_%mod-main225912%_
                           (gxc#find-runtime-symbol _%ctx225714%_ 'main)))
                      (let ((__tmp226222
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225910%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226222))
                      (let ((__tmp226223
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225912%_
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
                        (##write __tmp226223))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225718%_
                  (lambda (_%gerbil-libdir225908%_)
                    (let ((__tmp226224
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225908%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226224 read))))
                 (_%replace-extension225719%_
                  (lambda (_%path225905%_ _%ext225906%_)
                    (string-append
                     (path-strip-extension _%path225905%_)
                     _%ext225906%_)))
                 (_%replace-extension-with-c225720%_
                  (lambda (_%path225903%_)
                    (_%replace-extension225719%_ _%path225903%_ '".c")))
                 (_%replace-extension-with-object225721%_
                  (lambda (_%path225901%_)
                    (_%replace-extension225719%_
                     _%path225901%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225722%_
                  (lambda (_%ctx225899%_)
                    (if (_%exclude-module?225724%_ _%ctx225899%_)
                        '#f
                        (not (_%libgerbil-module?225723%_ _%ctx225899%_)))))
                 (_%libgerbil-module?225723%_
                  (lambda (_%ctx225892%_)
                    (let ((_%id-str225894%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225892%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225724%_ _%id-str225894%_)
                          '#f
                          (let ((_%$e225896%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225894%_))))
                            (if _%$e225896%_
                                _%$e225896%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225894%_))))))))
                 (_%exclude-module?225724%_
                  (lambda (_%ctx-or-str225888%_)
                    (let ((_%str225890%_
                           (if (string? _%ctx-or-str225888%_)
                               _%ctx-or-str225888%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225888%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225890%_))))
                 (_%not-file-empty?225725%_
                  (lambda (_%path225886%_)
                    (not (gxc#file-empty? _%path225886%_))))
                 (_%fold-libgerbil-runtime-scm225726%_
                  (lambda (_%gerbil-staticdir225879%_ _%libgerbil-scm225880%_)
                    (let ((_%gerbil-runtime-scm225884%_
                           (let ((__tmp226225
                                  (lambda (_%rtm225882%_)
                                    (path-expand
                                     (let ((__tmp226226
                                            (let ((__tmp226227
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225882%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226227
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226226 '".scm"))
                                     _%gerbil-staticdir225879%_))))
                             (declare (not safe))
                             (##map __tmp226225 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225727%_
                       (append _%gerbil-runtime-scm225884%_
                               _%libgerbil-scm225880%_)))))
                 (_%remove-duplicates225727%_
                  (lambda (_%strlst225839%_)
                    (let _%loop225841%_ ((_%rest225843%_ _%strlst225839%_)
                                         (_%result225844%_ '()))
                      (let* ((_%rest225845225853%_ _%rest225843%_)
                             (_%else225847225861%_
                              (lambda () (reverse! _%result225844%_)))
                             (_%K225849225867%_
                              (lambda (_%rest225864%_ _%path225865%_)
                                (if (member _%path225865%_ _%result225844%_)
                                    (_%loop225841%_
                                     _%rest225864%_
                                     _%result225844%_)
                                    (_%loop225841%_
                                     _%rest225864%_
                                     (cons _%path225865%_
                                           _%result225844%_))))))
                        (if (pair? _%rest225845225853%_)
                            (let ((_%hd225850225870%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225845225853%_)))
                                  (_%tl225851225872%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225845225853%_))))
                              (let* ((_%path225875%_ _%hd225850225870%_)
                                     (_%rest225877%_ _%tl225851225872%_))
                                (_%K225849225867%_
                                 _%rest225877%_
                                 _%path225875%_)))
                            (_%else225847225861%_))))))
                 (_%compile-stub225728%_
                  (lambda (_%output-scm225735%_ _%output-bin225736%_)
                    (let* ((_%gerbil-home225738%_
                            (let ((__tmp226228
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226228)))
                           (_%gerbil-libdir225740%_
                            (path-expand '"lib" _%gerbil-home225738%_))
                           (_%gerbil-staticdir225742%_
                            (path-expand '"static" _%gerbil-libdir225740%_))
                           (_%deps225744%_
                            (gxc#find-runtime-module-deps _%ctx225714%_))
                           (_%libgerbil-deps225746%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225723%_
                               _%deps225744%_)))
                           (_%libgerbil-scm225748%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225746%_)))
                           (_%libgerbil-scm225750%_
                            (_%fold-libgerbil-runtime-scm225726%_
                             _%gerbil-staticdir225742%_
                             _%libgerbil-scm225748%_))
                           (_%libgerbil-c225752%_
                            (map _%replace-extension-with-c225720%_
                                 _%libgerbil-scm225750%_))
                           (_%libgerbil-o225754%_
                            (map _%replace-extension-with-object225721%_
                                 _%libgerbil-scm225750%_))
                           (_%src-deps225756%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225722%_
                               _%deps225744%_)))
                           (_%src-deps-scm225758%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225756%_)))
                           (_%src-deps-scm225760%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225725%_
                               _%src-deps-scm225758%_)))
                           (_%src-deps-scm225762%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225760%_)))
                           (_%src-deps-c225764%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225720%_
                                     _%src-deps-scm225762%_)))
                           (_%src-deps-o225766%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225721%_
                                     _%src-deps-scm225762%_)))
                           (_%src-bin-scm225768%_
                            (gxc#find-static-module-file _%ctx225714%_))
                           (_%src-bin-scm225770%_
                            (path-expand _%src-bin-scm225768%_))
                           (_%src-bin-c225772%_
                            (_%replace-extension-with-c225720%_
                             _%src-bin-scm225770%_))
                           (_%src-bin-o225774%_
                            (_%replace-extension-with-object225721%_
                             _%src-bin-scm225770%_))
                           (_%output-bin225776%_
                            (path-expand _%output-bin225736%_))
                           (_%output-scm225778%_
                            (path-expand _%output-scm225735%_))
                           (_%output-c225780%_
                            (_%replace-extension-with-c225720%_
                             _%output-scm225778%_))
                           (_%output-o225782%_
                            (_%replace-extension-with-object225721%_
                             _%output-scm225778%_))
                           (_%output_-c225784%_
                            (_%replace-extension225719%_
                             _%output-scm225778%_
                             '"_.c"))
                           (_%output_-o225786%_
                            (_%replace-extension225719%_
                             _%output-scm225778%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225788%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225790%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225792%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225742%_))
                           (_%output-ld-opts225794%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225796%_
                            (_%get-libgerbil-ld-opts225718%_
                             _%gerbil-libdir225740%_))
                           (_%rpath225798%_
                            (gxc#gerbil-rpath _%gerbil-libdir225740%_))
                           (_%builtin-modules225802%_
                            (_%remove-duplicates225727%_
                             (let ((__tmp226229
                                    (let ((__tmp226231
                                           (lambda (_%mod225800%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225800%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226230
                                           (cons _%ctx225714%_
                                                 _%deps225744%_)))
                                      (declare (not safe))
                                      (##map __tmp226231 __tmp226230))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226229)))))
                      (letrec ((_%compile-obj225805%_
                                (lambda (_%scm-path225812%_ _%c-path225813%_)
                                  (let* ((_%o-path225815%_
                                          (_%replace-extension225719%_
                                           _%c-path225813%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225817%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225815%_
                                             '".lock")))
                                         (_%locked225819%_ '#f)
                                         (_%unlock225822%_
                                          (lambda ()
                                            (close-port _%locked225819%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225817%_)))))
                                    (let _%retry225825%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225817%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225825%_))
                                          (begin
                                            (set! _%locked225819%_
                                                  (let ((__tmp226232
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225817%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226232)))
                                            (if _%locked225819%_
                                                '#!void
                                                (_%retry225825%_)))))
                                    (let ((__tmp226234
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225815%_)))
                                                     (not _%scm-path225812%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225812%_
                                                        _%o-path225815%_)))
                                                 (let ((_%gsc-cc-opts225836%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226236 (cons _%c-path225813%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226236
                            _%gsc-static-opts225792%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226235 _%gsc-cc-opts225836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226233
                                           (lambda () (_%unlock225822%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226234
                                       __tmp226233))))))
                        (let ((__tmp226237
                               (lambda ()
                                 (let ((__tmp226238
                                        (path-directory _%output-bin225776%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226238)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226237))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225778%_
                         (lambda ()
                           (_%generate-stub225717%_
                            _%builtin-modules225802%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225810%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226239
                                                   (let ((__tmp226240
                                                          (let ((__tmp226241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225770%_
                               (cons _%output-scm225778%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226241 _%src-deps-scm225762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226240
                                                      _%libgerbil-c225752%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226239
                                               _%gsc-link-opts225788%_))))
                                     (for-each
                                      _%compile-obj225805%_
                                      (let ((__tmp226242
                                             (cons _%src-bin-scm225770%_
                                                   (cons _%output-scm225778%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226242
                                         _%src-deps-scm225762%_))
                                      (let ((__tmp226243
                                             (cons _%src-bin-c225772%_
                                                   (cons _%output-c225780%_
                                                         (cons _%output_-c225784%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226243
                                         _%src-deps-c225764%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225776%_
                                                        (let ((__tmp226244
                                                               (cons _%src-bin-o225774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225782%_
                                   (cons _%output_-o225786%_
                                         (let ((__tmp226245
                                                (let ((__tmp226246
                                                       (let ((__tmp226248
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225740%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225796%_))))
                     (__tmp226247
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225798%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226248 __tmp226247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226246
                                                   _%output-ld-opts225794%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226245
                                            _%libgerbil-o225754%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226244 _%src-deps-o225766%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226249
                                            (cons _%output-c225780%_
                                                  (cons _%output_-c225784%_
                                                        (cons _%output-o225782%_
                                                              (cons _%output_-o225786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226249)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225810%_))
                                  (_%compile-it225810%_)))
                            '#!void))))))
          (let* ((_%output-bin225730%_
                  (gxc#compile-exe-output-file _%ctx225714%_ _%opts225715%_))
                 (_%output-scm225732%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225730%_ '"__exe.scm"))))
            (_%compile-stub225728%_
             _%output-scm225732%_
             _%output-bin225730%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225536%_ _%opts225537%_)
        (letrec ((_%reset-declare225539%_
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
                 (_%generate-stub225540%_
                  (lambda (_%deps225705%_)
                    (let ((_%mod-main225707%_
                           (gxc#find-runtime-symbol _%ctx225536%_ 'main))
                          (_%reset-decl225708%_ (_%reset-declare225539%_))
                          (_%user-decl225709%_ (_%user-declare225541%_)))
                      (for-each
                       (lambda (_%dep225711%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225708%_))
                         (newline)
                         (if _%user-decl225709%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225709%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226250
                                (cons 'include (cons _%dep225711%_ '()))))
                           (declare (not safe))
                           (##write __tmp226250))
                         (newline))
                       _%deps225705%_)
                      (let ((__tmp226251
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226251))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225541%_
                  (lambda ()
                    (let* ((_%gsc-opts225610%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225537%_)))
                           (_%gsc-prelude225612%_
                            (if _%gsc-opts225610%_
                                (member '"-prelude" _%gsc-opts225610%_)
                                '#f))
                           (_%gsc-prelude225614%_
                            (if _%gsc-prelude225612%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225612%_)))
                                '#f)))
                      (let _%lp225617%_ ((_%rest225619%_
                                          (cons _%gsc-prelude225614%_ '()))
                                         (_%user-decls225620%_ '()))
                        (let* ((_%rest225621225629%_ _%rest225619%_)
                               (_%else225623225637%_
                                (lambda ()
                                  (if (null? _%user-decls225620%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225620%_)))))
                               (_%K225625225693%_
                                (lambda (_%rest225640%_ _%expr225641%_)
                                  (let* ((_%expr225642225654%_ _%expr225641%_)
                                         (_%else225645225662%_
                                          (lambda ()
                                            (_%lp225617%_
                                             _%rest225640%_
                                             _%user-decls225620%_))))
                                    (let ((_%K225650225683%_
                                           (lambda (_%decls225681%_)
                                             (_%lp225617%_
                                              _%rest225640%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225620%_
                                                 _%decls225681%_)))))
                                          (_%K225647225668%_
                                           (lambda (_%exprs225666%_)
                                             (_%lp225617%_
                                              (append _%exprs225666%_
                                                      _%rest225640%_)
                                              _%user-decls225620%_))))
                                      (if (pair? _%expr225642225654%_)
                                          (let ((_%tl225652225688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225642225654%_)))
                                                (_%hd225651225686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225642225654%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225651225686%_
                                                         'declare))
                                                (let ((_%decls225691%_
                                                       _%tl225652225688%_))
                                                  (_%K225650225683%_
                                                   _%decls225691%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225651225686%_
                                                             'begin))
                                                    (let ((_%exprs225676%_
                                                           _%tl225652225688%_))
                                                      (_%K225647225668%_
                                                       _%exprs225676%_))
                                                    (_%else225645225662%_))))
                                          (_%else225645225662%_)))))))
                          (if (pair? _%rest225621225629%_)
                              (let ((_%hd225626225696%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225621225629%_)))
                                    (_%tl225627225698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225621225629%_))))
                                (let* ((_%expr225701%_ _%hd225626225696%_)
                                       (_%rest225703%_ _%tl225627225698%_))
                                  (_%K225625225693%_
                                   _%rest225703%_
                                   _%expr225701%_)))
                              (_%else225623225637%_)))))))
                 (_%compile-stub225542%_
                  (lambda (_%output-scm225549%_ _%output-bin225550%_)
                    (let* ((_%gerbil-home225552%_
                            (let ((__tmp226252
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226252)))
                           (_%gerbil-libdir225554%_
                            (path-expand '"lib" _%gerbil-home225552%_))
                           (_%runtime225556%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225558%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225552%_))
                           (_%include-gambit-sharp225560%_
                            (gxc#include-source _%gambit-sharp225558%_))
                           (_%bin-scm225562%_
                            (gxc#find-static-module-file _%ctx225536%_))
                           (_%deps225564%_
                            (gxc#find-runtime-module-deps _%ctx225536%_))
                           (_%deps225566%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225564%_)))
                           (_%deps225571%_
                            (let ((__tmp226253
                                   (lambda (_%$obj225568%_)
                                     (not (gxc#file-empty? _%$obj225568%_)))))
                              (declare (not safe))
                              (##filter __tmp226253 _%deps225566%_)))
                           (_%deps225575%_
                            (let ((__tmp226254
                                   (lambda (_%f225573%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225573%_
                                             _%runtime225556%_))))))
                              (declare (not safe))
                              (##filter __tmp226254 _%deps225571%_)))
                           (_%output-base225577%_
                            (let ((__tmp226255
                                   (path-strip-extension
                                    _%output-scm225549%_)))
                              (declare (not safe))
                              (##string-append __tmp226255)))
                           (_%output-c225579%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225577%_ '".c")))
                           (_%output-o225581%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225577%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225583%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225577%_ '"_.c")))
                           (_%output-o_225585%_
                            (let ((__tmp226256
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225577%_
                               __tmp226256)))
                           (_%gsc-link-opts225587%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225589%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225591%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225554%_)))
                           (_%output-ld-opts225593%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225595%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225560%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225560%_
                                            '()))))
                           (_%gsc-link-opts225597%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225587%_
                               _%gsc-gx-macros225595%_)))
                           (_%rpath225599%_
                            (gxc#gerbil-rpath _%gerbil-libdir225554%_))
                           (_%default-ld-options225601%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226257
                             (lambda ()
                               (let ((__tmp226258
                                      (path-directory _%output-bin225550%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226258)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226257))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225549%_
                       (lambda ()
                         (_%generate-stub225540%_
                          (let ((__tmp226259
                                 (let ((__tmp226260
                                        (cons _%bin-scm225562%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226260
                                    _%deps225575%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226259 _%runtime225556%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225607%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225583%_
                                                      (let ((__tmp226261
                                                             (cons _%output-scm225549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226261 _%gsc-link-opts225597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226262
                                                 (let ((__tmp226263
                                                        (cons _%output-c225579%_
                                                              (cons _%output-c_225583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226263
                                                    _%gsc-static-opts225591%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226262
                                             _%gsc-cc-opts225589%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225550%_
                                                      (cons _%output-o225581%_
                                                            (cons _%output-o_225585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226264
                                 (let ((__tmp226266
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225554%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225601%_))))
                                       (__tmp226265
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225599%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226266 __tmp226265))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226264
                             _%output-ld-opts225593%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225607%_))
                                (_%compile-it225607%_)))
                          '#!void)))))
          (let* ((_%output-bin225544%_
                  (gxc#compile-exe-output-file _%ctx225536%_ _%opts225537%_))
                 (_%output-scm225546%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225544%_ '"__exe.scm"))))
            (_%compile-stub225542%_
             _%output-scm225546%_
             _%output-bin225544%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225485%_ _%id225486%_)
        (let ((_%$e225532%_
               (let ((__tmp226268
                      (lambda (_%e225487225489%_)
                        (let* ((_%e225487225491225501%_ _%e225487225489%_)
                               (_%else225493225509%_ (lambda () '#f))
                               (_%K225495225513%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225487225491225501%_
                                 'gx#module-export::t))
                              (let* ((_%e225496225516%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225487225491225501%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225497225519%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225487225491225501%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225498225522%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225487225491225501%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225498225522%_ '0))
                                    (let ((_%e225499225525%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225487225491225501%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225527225529%_)
                                             (eq? _%g225527225529%_
                                                  _%id225486%_))
                                           _%e225499225525%_)
                                          (_%K225495225513%_)
                                          (_%else225493225509%_)))
                                    (_%else225493225509%_)))
                              (_%else225493225509%_)))))
                     (__tmp226267
                      (##structure-ref
                       _%ctx225485%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226268 __tmp226267))))
          (if _%$e225532%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225532%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225476%_ _%id225477%_)
        (let ((_%$e225479%_
               (gxc#find-export-binding _%ctx225476%_ _%id225477%_)))
          (if _%$e225479%_
              ((lambda (_%bind225482%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225482%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225477%_)))
                 (##structure-ref _%bind225482%_ '1 gx#binding::t '#f))
               _%$e225479%_)
              (let ((__tmp226269
                     (##structure-ref
                      _%ctx225476%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226269
                 _%id225477%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225342%_)
        (letrec* ((_%ht225344%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225345%_
                   (lambda (_%in225421%_ _%phi225422%_)
                     (let ((_%iphi225424%_
                            (fx+ _%phi225422%_
                                 (##direct-structure-ref
                                  _%in225421%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225425%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225421%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225427%_ ((_%rest225429%_ _%imports225425%_)
                                          (_%r225430%_ '()))
                         (let* ((_%rest225431225439%_ _%rest225429%_)
                                (_%else225433225447%_ (lambda () _%r225430%_))
                                (_%K225435225464%_
                                 (lambda (_%rest225450%_ _%in225451%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225451%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225424%_))
                                           (_%lp225427%_
                                            _%rest225450%_
                                            (cons _%in225451%_ _%r225430%_))
                                           (_%lp225427%_
                                            _%rest225450%_
                                            _%r225430%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225451%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225455%_
                                                  (fx+ _%phi225422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225451%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225455%_))
                                                 (_%lp225427%_
                                                  _%rest225450%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225451%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225430%_))
                                                 (_%lp225427%_
                                                  _%rest225450%_
                                                  _%r225430%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225451%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225458%_
                                                      (fx+ _%iphi225424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225451%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225458%_))
                                                     (_%lp225427%_
                                                      _%rest225450%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225451%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225430%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225458%_))
                                                         (_%lp225427%_
                                                          _%rest225450%_
                                                          (let ((__tmp226270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225345%_
                          _%in225451%_
                          _%iphi225424%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225430%_ __tmp226270)))
                 (_%lp225427%_ _%rest225450%_ _%r225430%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225427%_
                                                _%rest225450%_
                                                _%r225430%_)))))))
                           (if (pair? _%rest225431225439%_)
                               (let ((_%hd225436225467%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225431225439%_)))
                                     (_%tl225437225469%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225431225439%_))))
                                 (let* ((_%in225472%_ _%hd225436225467%_)
                                        (_%rest225474%_ _%tl225437225469%_))
                                   (_%K225435225464%_
                                    _%rest225474%_
                                    _%in225472%_)))
                               (_%else225433225447%_)))))))
                  (_%find-deps225346%_
                   (lambda (_%rest225354%_ _%deps225355%_)
                     (let* ((_%rest225356225364%_ _%rest225354%_)
                            (_%else225358225372%_ (lambda () _%deps225355%_))
                            (_%K225360225409%_
                             (lambda (_%rest225375%_ _%hd225376%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225376%_
                                      'gx#module-context::t))
                                   (let ((_%id225379%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225376%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225380%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225376%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225344%_
                                            _%id225379%_))
                                         (_%find-deps225346%_
                                          _%rest225375%_
                                          _%deps225355%_)
                                         (let ((_%$e225383%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225376%_))))
                                           (if _%$e225383%_
                                               ((lambda (_%pre225386%_)
                                                  (let ((_%xdeps225388%_
                                                         (_%find-deps225346%_
                                                          (cons _%pre225386%_
                                                                _%imports225380%_)
                                                          _%deps225355%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225344%_
                                                       _%id225379%_
                                                       _%hd225376%_))
                                                    (_%find-deps225346%_
                                                     _%rest225375%_
                                                     (cons _%hd225376%_
                                                           _%xdeps225388%_))))
                                                _%$e225383%_)
                                               (let ((_%xdeps225391%_
                                                      (_%find-deps225346%_
                                                       _%imports225380%_
                                                       _%deps225355%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225344%_
                                                    _%id225379%_
                                                    _%hd225376%_))
                                                 (_%find-deps225346%_
                                                  _%rest225375%_
                                                  (cons _%hd225376%_
                                                        _%xdeps225391%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225376%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225394%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225376%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225344%_
                                                _%id225394%_))
                                             (_%find-deps225346%_
                                              _%rest225375%_
                                              _%deps225355%_)
                                             (let ((_%xdeps225398%_
                                                    (_%find-deps225346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225376%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225355%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225344%_
                                                      _%id225394%_))
                                                   (_%find-deps225346%_
                                                    _%rest225375%_
                                                    _%xdeps225398%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225344%_
                                                        _%id225394%_
                                                        _%hd225376%_))
                                                     (_%find-deps225346%_
                                                      _%rest225375%_
                                                      (cons _%hd225376%_
                                                            _%xdeps225398%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225376%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225376%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225346%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225376%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225375%_)
                                                _%deps225355%_)
                                               (_%find-deps225346%_
                                                _%rest225375%_
                                                _%deps225355%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225376%_
                                                  'gx#module-export::t))
                                               (_%find-deps225346%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225376%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225375%_)
                                                _%deps225355%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225376%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225376%_ '2 '#f '#f)))
               (_%find-deps225346%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225376%_ '1 '#f '#f))
                      _%rest225375%_)
                _%deps225355%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225376%_ '2 '#f '#f)))
                   (let ((_%xdeps225405%_
                          (_%import-set-template225345%_ _%hd225376%_ '0)))
                     (_%find-deps225346%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225375%_ _%xdeps225405%_))
                      _%deps225355%_))
                   (_%find-deps225346%_ _%rest225375%_ _%deps225355%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225376%_))))))))))
                       (if (pair? _%rest225356225364%_)
                           (let ((_%hd225361225412%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225356225364%_)))
                                 (_%tl225362225414%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225356225364%_))))
                             (let* ((_%hd225417%_ _%hd225361225412%_)
                                    (_%rest225419%_ _%tl225362225414%_))
                               (_%K225360225409%_
                                _%rest225419%_
                                _%hd225417%_)))
                           (_%else225358225372%_))))))
          (let ((__tmp226271
                 (filter gx#expander-context-id
                         (_%find-deps225346%_
                          (let ((_%$e225348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225342%_))))
                            (if _%$e225348%_
                                ((lambda (_%pre225351%_)
                                   (cons _%pre225351%_
                                         (##structure-ref
                                          _%ctx225342%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225348%_)
                                (##structure-ref
                                 _%ctx225342%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226271)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225272%_)
        (let* ((_%context-id225274%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225272%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225272%_ '1 '#f '#f))
                    (string->symbol _%ctx225272%_)))
               (_%scm225276%_
                (let ((__tmp226272
                       (gxc#static-module-name _%context-id225274%_)))
                  (declare (not safe))
                  (##string-append __tmp226272 '".scm")))
               (_%dirs225278%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225284%_
                (let ((_%user-libpath225280%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225280%_
                      (let ((_%user-libpath225282%_
                             (path-expand '"lib" _%user-libpath225280%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225282%_ _%dirs225278%_))
                            _%dirs225278%_
                            (cons _%user-libpath225282%_ _%dirs225278%_)))
                      _%dirs225278%_)))
               (_%dirs225294%_
                (let ((_%$e225286%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225286%_
                      ((lambda (_%g225288225290%_)
                         (cons _%g225288225290%_ _%dirs225284%_))
                       _%$e225286%_)
                      _%dirs225284%_)))
               (_%dirs225300%_
                (let ((__tmp226273
                       (lambda (_%g225295225297%_)
                         (path-expand '"static" _%g225295225297%_))))
                  (declare (not safe))
                  (##map __tmp226273 _%dirs225294%_))))
          (let _%lp225303%_ ((_%rest225305%_ _%dirs225300%_))
            (let* ((_%rest225306225314%_ _%rest225305%_)
                   (_%else225308225322%_
                    (lambda ()
                      (let ((__tmp226274
                             (##structure-ref
                              _%ctx225272%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226274
                         _%scm225276%_))))
                   (_%K225310225330%_
                    (lambda (_%rest225325%_ _%dir225326%_)
                      (let ((_%path225328%_
                             (path-expand _%scm225276%_ _%dir225326%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225328%_))
                            _%path225328%_
                            (_%lp225303%_ _%rest225325%_))))))
              (if (pair? _%rest225306225314%_)
                  (let ((_%hd225311225333%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225306225314%_)))
                        (_%tl225312225335%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225306225314%_))))
                    (let* ((_%dir225338%_ _%hd225311225333%_)
                           (_%rest225340%_ _%tl225312225335%_))
                      (_%K225310225330%_ _%rest225340%_ _%dir225338%_)))
                  (_%else225308225322%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225270%_)
        (zero? (let ((__tmp226275 (file-info _%path225270%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226275)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225261%_)
        (let ((__tmp226276
               (lambda ()
                 (let ((__tmp226277
                        (lambda ()
                          (let ((__tmp226278
                                 (lambda ()
                                   (let ((__tmp226280
                                          (lambda ()
                                            (let ((__tmp226282
                                                   (lambda ()
                                                     (let ((__tmp226284
                                                            (lambda ()
                                                              (let ((__tmp226285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225261%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226285))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226286
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225261%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226286))
                          '#!void)
                      (gxc#collect-bindings _%ctx225261%_)
                      (gxc#compile-runtime-code _%ctx225261%_)
                      (gxc#compile-meta-code _%ctx225261%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225261%_)
                          '#!void)))
                   (__tmp226283
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
                __tmp226284
                gxc#current-compile-runtime-names
                __tmp226283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226281
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226282
                                               gxc#current-compile-runtime-sections
                                               __tmp226281))))
                                         (__tmp226279
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
                                      __tmp226280
                                      gxc#current-compile-symbol-table
                                      __tmp226279)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226278
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226277
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226276
           gx#current-expander-context
           _%ctx225261%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225259%_)
        (let ((__tmp226287
               (##structure-ref _%ctx225259%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226287))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225204%_)
        (letrec ((_%compile1225206%_
                  (lambda (_%ctx225248%_)
                    (let* ((_%code225250%_
                            (##structure-ref
                             _%ctx225248%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225254%_
                            (let ((_%idstr225252%_
                                   (let ((__tmp226288
                                          (##structure-ref
                                           _%ctx225248%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226288))))
                              (declare (not safe))
                              (##string-append _%idstr225252%_ '"~0")))
                           (_%rtc?225256%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225250%_))))
                      (if _%rtc?225256%_
                          (let ((__tmp226289
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226289
                             _%ctx225248%_
                             _%rtm225254%_))
                          '#!void)
                      (_%generate-runtime-code225208%_
                       _%ctx225248%_
                       _%code225250%_
                       (if _%rtc?225256%_ _%rtm225254%_ '#f)))))
                 (_%context-timestamp225207%_
                  (lambda (_%ctx225246%_)
                    (let ((__tmp226290
                           (let ((__tmp226291
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225246%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226291 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226290))))
                 (_%generate-runtime-code225208%_
                  (lambda (_%ctx225215%_ _%code225216%_ _%rtm225217%_)
                    (let* ((_%runtime-code?225219%_ (if _%rtm225217%_ '#t '#f))
                           (_%lifts225221%_ (box '()))
                           (_%runtime-code225227%_
                            (if _%runtime-code?225219%_
                                (let ((__tmp226292
                                       (lambda ()
                                         (let ((__tmp226293
                                                (lambda ()
                                                  (let ((__tmp226294
                                                         (lambda ()
                                                           (let ((__tmp226296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code225216%_))))
                         (__tmp226295
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226296
                      gxc#current-compile-marks
                      __tmp226295)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226294
                                                     gxc#current-compile-lift
                                                     _%lifts225221%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226293
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226292
                                   gx#current-expander-context
                                   _%ctx225215%_))
                                '#f))
                           (_%runtime-code225229%_
                            (if _%runtime-code?225219%_
                                (if (null? (unbox _%lifts225221%_))
                                    _%runtime-code225227%_
                                    (cons 'begin
                                          (let ((__tmp226298
                                                 (cons _%runtime-code225227%_
                                                       '()))
                                                (__tmp226297
                                                 (reverse (unbox _%lifts225221%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226298
                                             __tmp226297))))
                                '#f))
                           (_%runtime-code225231%_
                            (if _%runtime-code?225219%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225207%_
                                                         _%ctx225215%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225229%_ '())))
                                '#f))
                           (_%loader-code225234%_
                            (let ((__tmp226299
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225216%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226299
                               gx#current-expander-context
                               _%ctx225215%_)))
                           (_%loader-code225236%_
                            (cons 'begin
                                  (cons _%loader-code225234%_
                                        (cons (if _%runtime-code?225219%_
                                                  (cons 'load-module
                                                        (cons _%rtm225217%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225238%_
                            (gxc#compile-output-file _%ctx225215%_ '0 '".scm"))
                           (_%scmrt225240%_
                            (gxc#compile-output-file
                             _%ctx225215%_
                             '#f
                             '".scm"))
                           (_%scms225242%_
                            (gxc#compile-static-output-file _%ctx225215%_)))
                      (if _%runtime-code?225219%_
                          (gxc#compile-scm-file__0
                           _%scm0225238%_
                           _%runtime-code225231%_)
                          '#!void)
                      (let ((__tmp226300
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225240%_
                                _%loader-code225236%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226300
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225242%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225242%_))
                          '#!void)
                      (if _%runtime-code?225219%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225238%_ _%scms225242%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225242%_ void)))))))
          (let* ((_%all-modules225210%_
                  (cons _%ctx225204%_ (gxc#lift-nested-modules _%ctx225204%_)))
                 (__tmp226301
                  (lambda (_%ctx225212%_)
                    (let ((__tmp226302
                           (lambda () (_%compile1225206%_ _%ctx225212%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226302
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226301 _%all-modules225210%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225103%_)
        (letrec ((_%compile-ssi225105%_
                  (lambda (_%code225172%_)
                    (let* ((_%path225174%_
                            (gxc#compile-output-file
                             _%ctx225103%_
                             '#f
                             '".ssi"))
                           (_%prelude225186%_
                            (let* ((_%super225176%_
                                    (##structure-ref
                                     _%ctx225103%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225178%_
                                    (##structure-ref
                                     _%super225176%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225178%_
                                  ((lambda (_%g225180225182%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225180225182%_)))
                                   _%$e225178%_)
                                  ':<root>)))
                           (_%ns225188%_
                            (##structure-ref
                             _%ctx225103%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225190%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225103%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225198%_
                            (let ((_%$e225192%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225190%_ '#\/))))
                              (if _%$e225192%_
                                  ((lambda (_%x225195%_)
                                     (let ((__tmp226303
                                            (substring
                                             _%idstr225190%_
                                             '0
                                             _%x225195%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226303)))
                                   _%$e225192%_)
                                  '#f)))
                           (_%rt225200%_
                            (let ((__tmp226304
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226304 _%ctx225103%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225174%_))
                      (gxc#with-output-to-scheme-file
                       _%path225174%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225186%_))
                         (if _%pkg225198%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225198%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225188%_))
                         (newline)
                         (pretty-print _%code225172%_)
                         (if _%rt225200%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225200%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225106%_
                  (lambda (_%part225111%_)
                    (let* ((_%part225112225125%_ _%part225111%_)
                           (_%E225114225129%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225112225125%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225115225141%_
                            (lambda (_%code225132%_
                                     _%n225133%_
                                     _%phi225134%_
                                     _%phi-ctx225135%_)
                              (let ((_%code225139%_
                                     (let ((__tmp226305
                                            (lambda ()
                                              (let ((__tmp226306
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225132%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226306
                                                 gx#current-expander-phi
                                                 _%phi225134%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226305
                                        gx#current-expander-context
                                        _%phi-ctx225135%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225103%_
                                  _%n225133%_
                                  '".scm")
                                 _%code225139%_
                                 '#t)))))
                      (if (pair? _%part225112225125%_)
                          (let ((_%hd225116225144%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225112225125%_)))
                                (_%tl225117225146%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225112225125%_))))
                            (let ((_%phi-ctx225149%_ _%hd225116225144%_))
                              (if (pair? _%tl225117225146%_)
                                  (let ((_%hd225118225151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225117225146%_)))
                                        (_%tl225119225153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225117225146%_))))
                                    (let ((_%phi225156%_ _%hd225118225151%_))
                                      (if (pair? _%tl225119225153%_)
                                          (let ((_%hd225120225158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225119225153%_)))
                                                (_%tl225121225160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225119225153%_))))
                                            (let ((_%n225163%_
                                                   _%hd225120225158%_))
                                              (if (pair? _%tl225121225160%_)
                                                  (let ((_%hd225122225165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225121225160%_)))
                                                        (_%tl225123225167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225121225160%_))))
                                                    (let ((_%code225170%_
                                                           _%hd225122225165%_))
                                                      (if (null? _%tl225123225167%_)
                                                          (_%K225115225141%_
                                                           _%code225170%_
                                                           _%n225163%_
                                                           _%phi225156%_
                                                           _%phi-ctx225149%_)
                                                          (_%E225114225129%_))))
                                                  (_%E225114225129%_))))
                                          (_%E225114225129%_))))
                                  (_%E225114225129%_))))
                          (_%E225114225129%_))))))
          (let ((_g226307_ (gxc#generate-meta-code _%ctx225103%_)))
            (begin
              (let ((_g226308_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226307_)
                           (##values-length _g226307_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226308_ 2)))
                    (error "Context expects 2 values" _g226308_)))
              (let ((_%ssi-code225108%_
                     (let () (declare (not safe)) (##values-ref _g226307_ 0)))
                    (_%phi-code225109%_
                     (let () (declare (not safe)) (##values-ref _g226307_ 1))))
                (begin
                  (_%compile-ssi225105%_ _%ssi-code225108%_)
                  (for-each _%compile-phi225106%_ _%phi-code225109%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225085%_)
        (let* ((_%path225087%_
                (gxc#compile-output-file _%ctx225085%_ '#f '".ssxi.ss"))
               (_%code225089%_
                (let ((__tmp226309
                       (##structure-ref
                        _%ctx225085%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226309)))
               (_%idstr225091%_
                (symbol->string
                 (##structure-ref
                  _%ctx225085%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225099%_
                (let ((_%$e225093%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225091%_ '#\/))))
                  (if _%$e225093%_
                      ((lambda (_%x225096%_)
                         (let ((__tmp226310
                                (substring _%idstr225091%_ '0 _%x225096%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226310)))
                       _%$e225093%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225087%_))
          (gxc#with-output-to-scheme-file
           _%path225087%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225099%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225099%_))
                 '#!void)
             (newline)
             (pretty-print _%code225089%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225078%_)
        (let* ((_%state225080%_
                (let ((__obj226177
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226177 _%ctx225078%_))
                  __obj226177))
               (_%ssi-code225082%_
                (let ((__tmp226311
                       (##structure-ref
                        _%ctx225078%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225080%_
                   __tmp226311))))
          (values _%ssi-code225082%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225080%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225070%_)
        (let* ((_%lifts225072%_ (box '()))
               (__tmp226312
                (lambda ()
                  (let ((__tmp226314
                         (lambda ()
                           (let ((_%code225076%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx225070%_))))
                             (if (null? (unbox _%lifts225072%_))
                                 _%code225076%_
                                 (cons 'begin
                                       (let ((__tmp226316
                                              (cons _%code225076%_ '()))
                                             (__tmp226315
                                              (reverse (unbox _%lifts225072%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp226316
                                          __tmp226315)))))))
                        (__tmp226313
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226314
                     gxc#current-compile-marks
                     __tmp226313)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226312
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
