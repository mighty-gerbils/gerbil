(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770342556)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp249176 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp249176))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp249177 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp249177))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path249033%_ _%fun249034%_)
        (with-output-to-file
         (cons 'path: (cons _%path249033%_ gxc#scheme-file-settings))
         _%fun249034%_)))
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
      (lambda (_%gerbil-libdir249028%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir249028%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path249026%_)
        (let ((__tmp249178 (object->string _%path249026%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp249178 '")"))))
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
      (lambda (_%dir249024%_) (delete-file-or-directory _%dir249024%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath248967%_ _%opts248968%_)
        (if (string? _%srcpath248967%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath248967%_)))
        (let* ((_%outdir248970%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts248968%_)))
               (_%invoke-gsc?248972%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts248968%_)))
               (_%target248977%_
                (let ((_%$e248974%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts248968%_))))
                  (if _%$e248974%_ _%$e248974%_ 'C)))
               (_%gsc-options248982%_
                (append (cons '"-target"
                              (cons (symbol->string _%target248977%_) '()))
                        (let ((_%$e248979%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts248968%_))))
                          (if _%$e248979%_ _%$e248979%_ '()))))
               (_%keep-scm?248984%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts248968%_)))
               (_%verbosity248986%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts248968%_)))
               (_%optimize248988%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts248968%_)))
               (_%debug248990%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts248968%_)))
               (_%gen-ssxi248992%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts248968%_)))
               (_%parallel?248994%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts248968%_))))
          (if _%outdir248970%_
              (let ((__tmp249179
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir248970%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp249179))
              '#!void)
          (if _%optimize248988%_
              (let ((__tmp249180
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp249180))
              '#!void)
          (let ((__tmp249181
                 (lambda ()
                   (let ((__tmp249182
                          (lambda ()
                            (let ((__tmp249183
                                   (lambda ()
                                     (let ((__tmp249184
                                            (lambda ()
                                              (let ((__tmp249185
                                                     (lambda ()
                                                       (let ((__tmp249186
                                                              (lambda ()
                                                                (let ((__tmp249187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp249188
                                        (lambda ()
                                          (let ((__tmp249189
                                                 (lambda ()
                                                   (let ((__tmp249191
                                                          (lambda ()
                                                            (let ((__tmp249193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp249195
                                    (lambda ()
                                      (let ((__tmp249196
                                             (lambda ()
                                               (let ((__tmp249197
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath248967%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp249198
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath248967%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp249198))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp249197
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp249196
                                         gxc#current-compile-parallel
                                         _%parallel?248994%_))))
                                   (__tmp249194
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp249195
                                gxc#current-compile-identifiers
                                __tmp249194))))
                          (__tmp249192
                           (cons (cons 'compile-module
                                       (cons _%srcpath248967%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp249193
                       gxc#current-compile-context
                       __tmp249192))))
                 (__tmp249190 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp249191
                                                      gxc#current-compile-timestamp
                                                      __tmp249190)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp249189
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi248992%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp249188
                                    gxc#current-compile-debug
                                    _%debug248990%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp249187
                           gxc#current-compile-optimize
                           _%optimize248988%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp249186
                  gxc#current-compile-verbose
                  _%verbosity248986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp249185
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?248984%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp249184
                                        gxc#current-compile-gsc-options
                                        _%gsc-options248982%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp249183
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?248972%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp249182
                      gx#current-compilation-target
                      _%target248977%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp249181
             gxc#current-compile-output-dir
             _%outdir248970%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath249017%_)
        (let ((_%opts249019%_ '()))
          (gxc#compile-module__% _%srcpath249017%_ _%opts249019%_))))
    (define gxc#compile-module
      (lambda _g249199_
        (let ((_g249200_ (let () (declare (not safe)) (##length _g249199_))))
          (cond ((let () (declare (not safe)) (##fx= _g249200_ 1))
                 (apply gxc#compile-module__0 _g249199_))
                ((let () (declare (not safe)) (##fx= _g249200_ 2))
                 (apply gxc#compile-module__% _g249199_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g249199_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath248916%_ _%opts248917%_)
        (if (string? _%srcpath248916%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath248916%_)))
        (let* ((_%outdir248919%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts248917%_)))
               (_%invoke-gsc?248921%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts248917%_)))
               (_%target248926%_
                (let ((_%$e248923%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts248917%_))))
                  (if _%$e248923%_ _%$e248923%_ 'C)))
               (_%gsc-options248931%_
                (append (cons '"-target"
                              (cons (symbol->string _%target248926%_) '()))
                        (let ((_%$e248928%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts248917%_))))
                          (if _%$e248928%_ _%$e248928%_ '()))))
               (_%keep-scm?248933%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts248917%_)))
               (_%verbosity248935%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts248917%_)))
               (_%debug248937%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts248917%_)))
               (_%parallel?248939%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts248917%_))))
          (if _%outdir248919%_
              (let ((__tmp249201
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir248919%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp249201))
              '#!void)
          (let ((__tmp249202
                 (lambda ()
                   (let ((__tmp249203
                          (lambda ()
                            (let ((__tmp249204
                                   (lambda ()
                                     (let ((__tmp249205
                                            (lambda ()
                                              (let ((__tmp249206
                                                     (lambda ()
                                                       (let ((__tmp249207
                                                              (lambda ()
                                                                (let ((__tmp249208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp249210
                                        (lambda ()
                                          (let ((__tmp249212
                                                 (lambda ()
                                                   (let ((__tmp249214
                                                          (lambda ()
                                                            (let ((__tmp249215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp249216
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath248916%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp249217
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath248916%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp249217))
                                       _%opts248917%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp249216
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp249215
                       gxc#current-compile-parallel
                       _%parallel?248939%_))))
                 (__tmp249213
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp249214
                                                      gxc#current-compile-identifiers
                                                      __tmp249213))))
                                                (__tmp249211
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath248916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp249212
                                             gxc#current-compile-context
                                             __tmp249211))))
                                       (__tmp249209 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp249210
                                    gxc#current-compile-timestamp
                                    __tmp249209)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp249208
                           gxc#current-compile-debug
                           _%debug248937%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp249207
                  gxc#current-compile-verbose
                  _%verbosity248935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp249206
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?248933%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp249205
                                        gxc#current-compile-gsc-options
                                        _%gsc-options248931%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp249204
                               gx#current-compilation-target
                               _%target248926%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp249203
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?248921%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp249202
             gxc#current-compile-output-dir
             _%outdir248919%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath248959%_)
        (let ((_%opts248961%_ '()))
          (gxc#compile-exe__% _%srcpath248959%_ _%opts248961%_))))
    (define gxc#compile-exe
      (lambda _g249218_
        (let ((_g249219_ (let () (declare (not safe)) (##length _g249218_))))
          (cond ((let () (declare (not safe)) (##fx= _g249219_ 1))
                 (apply gxc#compile-exe__0 _g249218_))
                ((let () (declare (not safe)) (##fx= _g249219_ 2))
                 (apply gxc#compile-exe__% _g249218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g249218_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx248912%_ _%opts248913%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts248913%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx248912%_
             _%opts248913%_)
            (gxc#compile-executable-module/separate
             _%ctx248912%_
             _%opts248913%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx248712%_ _%opts248713%_)
        (letrec ((_%generate-stub248715%_
                  (lambda (_%builtin-modules248908%_)
                    (let ((_%mod-main248910%_
                           (gxc#find-runtime-symbol _%ctx248712%_ 'main)))
                      (let ((__tmp249220
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules248908%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp249220))
                      (let ((__tmp249221
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main248910%_
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
                        (##write __tmp249221))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts248716%_
                  (lambda (_%gerbil-libdir248906%_)
                    (let ((__tmp249222
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir248906%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp249222 read))))
                 (_%replace-extension248717%_
                  (lambda (_%path248903%_ _%ext248904%_)
                    (string-append
                     (path-strip-extension _%path248903%_)
                     _%ext248904%_)))
                 (_%replace-extension-with-c248718%_
                  (lambda (_%path248901%_)
                    (_%replace-extension248717%_ _%path248901%_ '".c")))
                 (_%replace-extension-with-object248719%_
                  (lambda (_%path248899%_)
                    (_%replace-extension248717%_
                     _%path248899%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?248720%_
                  (lambda (_%ctx248897%_)
                    (if (_%exclude-module?248722%_ _%ctx248897%_)
                        '#f
                        (not (_%libgerbil-module?248721%_ _%ctx248897%_)))))
                 (_%libgerbil-module?248721%_
                  (lambda (_%ctx248890%_)
                    (let ((_%id-str248892%_
                           (symbol->string
                            (##structure-ref
                             _%ctx248890%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?248722%_ _%id-str248892%_)
                          '#f
                          (let ((_%$e248894%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str248892%_))))
                            (if _%$e248894%_
                                _%$e248894%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str248892%_))))))))
                 (_%exclude-module?248722%_
                  (lambda (_%ctx-or-str248886%_)
                    (let ((_%str248888%_
                           (if (string? _%ctx-or-str248886%_)
                               _%ctx-or-str248886%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str248886%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str248888%_))))
                 (_%not-file-empty?248723%_
                  (lambda (_%path248884%_)
                    (not (gxc#file-empty? _%path248884%_))))
                 (_%fold-libgerbil-runtime-scm248724%_
                  (lambda (_%gerbil-staticdir248877%_ _%libgerbil-scm248878%_)
                    (let ((_%gerbil-runtime-scm248882%_
                           (let ((__tmp249223
                                  (lambda (_%rtm248880%_)
                                    (path-expand
                                     (let ((__tmp249224
                                            (let ((__tmp249225
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm248880%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp249225
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp249224 '".scm"))
                                     _%gerbil-staticdir248877%_))))
                             (declare (not safe))
                             (##map __tmp249223 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates248725%_
                       (append _%gerbil-runtime-scm248882%_
                               _%libgerbil-scm248878%_)))))
                 (_%remove-duplicates248725%_
                  (lambda (_%strlst248837%_)
                    (let _%loop248839%_ ((_%rest248841%_ _%strlst248837%_)
                                         (_%result248842%_ '()))
                      (let* ((_%rest248843248851%_ _%rest248841%_)
                             (_%else248845248859%_
                              (lambda () (reverse! _%result248842%_)))
                             (_%K248847248865%_
                              (lambda (_%rest248862%_ _%path248863%_)
                                (if (member _%path248863%_ _%result248842%_)
                                    (_%loop248839%_
                                     _%rest248862%_
                                     _%result248842%_)
                                    (_%loop248839%_
                                     _%rest248862%_
                                     (cons _%path248863%_
                                           _%result248842%_))))))
                        (if (pair? _%rest248843248851%_)
                            (let ((_%hd248848248868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest248843248851%_)))
                                  (_%tl248849248870%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest248843248851%_))))
                              (let* ((_%path248873%_ _%hd248848248868%_)
                                     (_%rest248875%_ _%tl248849248870%_))
                                (_%K248847248865%_
                                 _%rest248875%_
                                 _%path248873%_)))
                            (_%else248845248859%_))))))
                 (_%compile-stub248726%_
                  (lambda (_%output-scm248733%_ _%output-bin248734%_)
                    (let* ((_%gerbil-home248736%_
                            (let ((__tmp249226
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp249226)))
                           (_%gerbil-libdir248738%_
                            (path-expand '"lib" _%gerbil-home248736%_))
                           (_%gerbil-staticdir248740%_
                            (path-expand '"static" _%gerbil-libdir248738%_))
                           (_%deps248742%_
                            (gxc#find-runtime-module-deps _%ctx248712%_))
                           (_%libgerbil-deps248744%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?248721%_
                               _%deps248742%_)))
                           (_%libgerbil-scm248746%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps248744%_)))
                           (_%libgerbil-scm248748%_
                            (_%fold-libgerbil-runtime-scm248724%_
                             _%gerbil-staticdir248740%_
                             _%libgerbil-scm248746%_))
                           (_%libgerbil-c248750%_
                            (map _%replace-extension-with-c248718%_
                                 _%libgerbil-scm248748%_))
                           (_%libgerbil-o248752%_
                            (map _%replace-extension-with-object248719%_
                                 _%libgerbil-scm248748%_))
                           (_%src-deps248754%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?248720%_
                               _%deps248742%_)))
                           (_%src-deps-scm248756%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps248754%_)))
                           (_%src-deps-scm248758%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?248723%_
                               _%src-deps-scm248756%_)))
                           (_%src-deps-scm248760%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm248758%_)))
                           (_%src-deps-c248762%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c248718%_
                                     _%src-deps-scm248760%_)))
                           (_%src-deps-o248764%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object248719%_
                                     _%src-deps-scm248760%_)))
                           (_%src-bin-scm248766%_
                            (gxc#find-static-module-file _%ctx248712%_))
                           (_%src-bin-scm248768%_
                            (path-expand _%src-bin-scm248766%_))
                           (_%src-bin-c248770%_
                            (_%replace-extension-with-c248718%_
                             _%src-bin-scm248768%_))
                           (_%src-bin-o248772%_
                            (_%replace-extension-with-object248719%_
                             _%src-bin-scm248768%_))
                           (_%output-bin248774%_
                            (path-expand _%output-bin248734%_))
                           (_%output-scm248776%_
                            (path-expand _%output-scm248733%_))
                           (_%output-c248778%_
                            (_%replace-extension-with-c248718%_
                             _%output-scm248776%_))
                           (_%output-o248780%_
                            (_%replace-extension-with-object248719%_
                             _%output-scm248776%_))
                           (_%output_-c248782%_
                            (_%replace-extension248717%_
                             _%output-scm248776%_
                             '"_.c"))
                           (_%output_-o248784%_
                            (_%replace-extension248717%_
                             _%output-scm248776%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts248786%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts248788%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts248790%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir248740%_))
                           (_%output-ld-opts248792%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts248794%_
                            (_%get-libgerbil-ld-opts248716%_
                             _%gerbil-libdir248738%_))
                           (_%rpath248796%_
                            (gxc#gerbil-rpath _%gerbil-libdir248738%_))
                           (_%builtin-modules248800%_
                            (_%remove-duplicates248725%_
                             (let ((__tmp249227
                                    (let ((__tmp249229
                                           (lambda (_%mod248798%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod248798%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp249228
                                           (cons _%ctx248712%_
                                                 _%deps248742%_)))
                                      (declare (not safe))
                                      (##map __tmp249229 __tmp249228))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp249227)))))
                      (letrec ((_%compile-obj248803%_
                                (lambda (_%scm-path248810%_ _%c-path248811%_)
                                  (let* ((_%o-path248813%_
                                          (_%replace-extension248717%_
                                           _%c-path248811%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock248815%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path248813%_
                                             '".lock")))
                                         (_%locked248817%_ '#f)
                                         (_%unlock248820%_
                                          (lambda ()
                                            (close-port _%locked248817%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock248815%_)))))
                                    (let _%retry248823%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock248815%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry248823%_))
                                          (begin
                                            (set! _%locked248817%_
                                                  (let ((__tmp249230
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock248815%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp249230)))
                                            (if _%locked248817%_
                                                '#!void
                                                (_%retry248823%_)))))
                                    (let ((__tmp249232
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path248813%_)))
                                                     (not _%scm-path248810%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path248810%_
                                                        _%o-path248813%_)))
                                                 (let ((_%gsc-cc-opts248834%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp249233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp249234 (cons _%c-path248811%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp249234
                            _%gsc-static-opts248790%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp249233 _%gsc-cc-opts248834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp249231
                                           (lambda () (_%unlock248820%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp249232
                                       __tmp249231))))))
                        (let ((__tmp249235
                               (lambda ()
                                 (let ((__tmp249236
                                        (path-directory _%output-bin248774%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp249236)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp249235))
                        (gxc#with-output-to-scheme-file
                         _%output-scm248776%_
                         (lambda ()
                           (_%generate-stub248715%_
                            _%builtin-modules248800%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it248808%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp249237
                                                   (let ((__tmp249238
                                                          (let ((__tmp249239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm248768%_
                               (cons _%output-scm248776%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp249239 _%src-deps-scm248760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp249238
                                                      _%libgerbil-c248750%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp249237
                                               _%gsc-link-opts248786%_))))
                                     (for-each
                                      _%compile-obj248803%_
                                      (let ((__tmp249240
                                             (cons _%src-bin-scm248768%_
                                                   (cons _%output-scm248776%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp249240
                                         _%src-deps-scm248760%_))
                                      (let ((__tmp249241
                                             (cons _%src-bin-c248770%_
                                                   (cons _%output-c248778%_
                                                         (cons _%output_-c248782%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp249241
                                         _%src-deps-c248762%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin248774%_
                                                        (let ((__tmp249242
                                                               (cons _%src-bin-o248772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o248780%_
                                   (cons _%output_-o248784%_
                                         (let ((__tmp249243
                                                (let ((__tmp249244
                                                       (let ((__tmp249246
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir248738%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts248794%_))))
                     (__tmp249245
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath248796%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp249246 __tmp249245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp249244
                                                   _%output-ld-opts248792%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp249243
                                            _%libgerbil-o248752%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp249242 _%src-deps-o248764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp249247
                                            (cons _%output-c248778%_
                                                  (cons _%output_-c248782%_
                                                        (cons _%output-o248780%_
                                                              (cons _%output_-o248784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp249247)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it248808%_))
                                  (_%compile-it248808%_)))
                            '#!void))))))
          (let* ((_%output-bin248728%_
                  (gxc#compile-exe-output-file _%ctx248712%_ _%opts248713%_))
                 (_%output-scm248730%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin248728%_ '"__exe.scm"))))
            (_%compile-stub248726%_
             _%output-scm248730%_
             _%output-bin248728%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx248534%_ _%opts248535%_)
        (letrec ((_%reset-declare248537%_
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
                 (_%generate-stub248538%_
                  (lambda (_%deps248703%_)
                    (let ((_%mod-main248705%_
                           (gxc#find-runtime-symbol _%ctx248534%_ 'main))
                          (_%reset-decl248706%_ (_%reset-declare248537%_))
                          (_%user-decl248707%_ (_%user-declare248539%_)))
                      (for-each
                       (lambda (_%dep248709%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl248706%_))
                         (newline)
                         (if _%user-decl248707%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl248707%_))
                               (newline))
                             '#!void)
                         (let ((__tmp249248
                                (cons 'include (cons _%dep248709%_ '()))))
                           (declare (not safe))
                           (##write __tmp249248))
                         (newline))
                       _%deps248703%_)
                      (let ((__tmp249249
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main248705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp249249))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare248539%_
                  (lambda ()
                    (let* ((_%gsc-opts248608%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts248535%_)))
                           (_%gsc-prelude248610%_
                            (if _%gsc-opts248608%_
                                (member '"-prelude" _%gsc-opts248608%_)
                                '#f))
                           (_%gsc-prelude248612%_
                            (if _%gsc-prelude248610%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude248610%_)))
                                '#f)))
                      (let _%lp248615%_ ((_%rest248617%_
                                          (cons _%gsc-prelude248612%_ '()))
                                         (_%user-decls248618%_ '()))
                        (let* ((_%rest248619248627%_ _%rest248617%_)
                               (_%else248621248635%_
                                (lambda ()
                                  (if (null? _%user-decls248618%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls248618%_)))))
                               (_%K248623248691%_
                                (lambda (_%rest248638%_ _%expr248639%_)
                                  (let* ((_%expr248640248652%_ _%expr248639%_)
                                         (_%else248643248660%_
                                          (lambda ()
                                            (_%lp248615%_
                                             _%rest248638%_
                                             _%user-decls248618%_))))
                                    (let ((_%K248648248681%_
                                           (lambda (_%decls248679%_)
                                             (_%lp248615%_
                                              _%rest248638%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls248618%_
                                                 _%decls248679%_)))))
                                          (_%K248645248666%_
                                           (lambda (_%exprs248664%_)
                                             (_%lp248615%_
                                              (append _%exprs248664%_
                                                      _%rest248638%_)
                                              _%user-decls248618%_))))
                                      (if (pair? _%expr248640248652%_)
                                          (let ((_%tl248650248686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr248640248652%_)))
                                                (_%hd248649248684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr248640248652%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd248649248684%_
                                                         'declare))
                                                (let ((_%decls248689%_
                                                       _%tl248650248686%_))
                                                  (_%K248648248681%_
                                                   _%decls248689%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd248649248684%_
                                                             'begin))
                                                    (let ((_%exprs248674%_
                                                           _%tl248650248686%_))
                                                      (_%K248645248666%_
                                                       _%exprs248674%_))
                                                    (_%else248643248660%_))))
                                          (_%else248643248660%_)))))))
                          (if (pair? _%rest248619248627%_)
                              (let ((_%hd248624248694%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest248619248627%_)))
                                    (_%tl248625248696%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest248619248627%_))))
                                (let* ((_%expr248699%_ _%hd248624248694%_)
                                       (_%rest248701%_ _%tl248625248696%_))
                                  (_%K248623248691%_
                                   _%rest248701%_
                                   _%expr248699%_)))
                              (_%else248621248635%_)))))))
                 (_%compile-stub248540%_
                  (lambda (_%output-scm248547%_ _%output-bin248548%_)
                    (let* ((_%gerbil-home248550%_
                            (let ((__tmp249250
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp249250)))
                           (_%gerbil-libdir248552%_
                            (path-expand '"lib" _%gerbil-home248550%_))
                           (_%runtime248554%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp248556%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home248550%_))
                           (_%include-gambit-sharp248558%_
                            (gxc#include-source _%gambit-sharp248556%_))
                           (_%bin-scm248560%_
                            (gxc#find-static-module-file _%ctx248534%_))
                           (_%deps248562%_
                            (gxc#find-runtime-module-deps _%ctx248534%_))
                           (_%deps248564%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps248562%_)))
                           (_%deps248569%_
                            (let ((__tmp249251
                                   (lambda (_%$obj248566%_)
                                     (not (gxc#file-empty? _%$obj248566%_)))))
                              (declare (not safe))
                              (##filter __tmp249251 _%deps248564%_)))
                           (_%deps248573%_
                            (let ((__tmp249252
                                   (lambda (_%f248571%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f248571%_
                                             _%runtime248554%_))))))
                              (declare (not safe))
                              (##filter __tmp249252 _%deps248569%_)))
                           (_%output-base248575%_
                            (let ((__tmp249253
                                   (path-strip-extension
                                    _%output-scm248547%_)))
                              (declare (not safe))
                              (##string-append __tmp249253)))
                           (_%output-c248577%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base248575%_ '".c")))
                           (_%output-o248579%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base248575%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_248581%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base248575%_ '"_.c")))
                           (_%output-o_248583%_
                            (let ((__tmp249254
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base248575%_
                               __tmp249254)))
                           (_%gsc-link-opts248585%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts248587%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts248589%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir248552%_)))
                           (_%output-ld-opts248591%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros248593%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp248558%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp248558%_
                                            '()))))
                           (_%gsc-link-opts248595%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts248585%_
                               _%gsc-gx-macros248593%_)))
                           (_%rpath248597%_
                            (gxc#gerbil-rpath _%gerbil-libdir248552%_))
                           (_%default-ld-options248599%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp249255
                             (lambda ()
                               (let ((__tmp249256
                                      (path-directory _%output-bin248548%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp249256)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp249255))
                      (gxc#with-output-to-scheme-file
                       _%output-scm248547%_
                       (lambda ()
                         (_%generate-stub248538%_
                          (let ((__tmp249257
                                 (let ((__tmp249258
                                        (cons _%bin-scm248560%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp249258
                                    _%deps248573%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp249257 _%runtime248554%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it248605%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_248581%_
                                                      (let ((__tmp249259
                                                             (cons _%output-scm248547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp249259 _%gsc-link-opts248595%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp249260
                                                 (let ((__tmp249261
                                                        (cons _%output-c248577%_
                                                              (cons _%output-c_248581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp249261
                                                    _%gsc-static-opts248589%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp249260
                                             _%gsc-cc-opts248587%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin248548%_
                                                      (cons _%output-o248579%_
                                                            (cons _%output-o_248583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp249262
                                 (let ((__tmp249264
                                        (cons '"-L"
                                              (cons _%gerbil-libdir248552%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options248599%_))))
                                       (__tmp249263
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath248597%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp249264 __tmp249263))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp249262
                             _%output-ld-opts248591%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it248605%_))
                                (_%compile-it248605%_)))
                          '#!void)))))
          (let* ((_%output-bin248542%_
                  (gxc#compile-exe-output-file _%ctx248534%_ _%opts248535%_))
                 (_%output-scm248544%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin248542%_ '"__exe.scm"))))
            (_%compile-stub248540%_
             _%output-scm248544%_
             _%output-bin248542%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx248483%_ _%id248484%_)
        (let ((_%$e248530%_
               (let ((__tmp249266
                      (lambda (_%e248485248487%_)
                        (let* ((_%e248485248489248499%_ _%e248485248487%_)
                               (_%else248491248507%_ (lambda () '#f))
                               (_%K248493248511%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e248485248489248499%_
                                 'gx#module-export::t))
                              (let* ((_%e248494248514%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e248485248489248499%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e248495248517%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e248485248489248499%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e248496248520%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e248485248489248499%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e248496248520%_ '0))
                                    (let ((_%e248497248523%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e248485248489248499%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g248525248527%_)
                                             (eq? _%g248525248527%_
                                                  _%id248484%_))
                                           _%e248497248523%_)
                                          (_%K248493248511%_)
                                          (_%else248491248507%_)))
                                    (_%else248491248507%_)))
                              (_%else248491248507%_)))))
                     (__tmp249265
                      (##structure-ref
                       _%ctx248483%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp249266 __tmp249265))))
          (if _%$e248530%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e248530%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx248474%_ _%id248475%_)
        (let ((_%$e248477%_
               (gxc#find-export-binding _%ctx248474%_ _%id248475%_)))
          (if _%$e248477%_
              ((lambda (_%bind248480%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind248480%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id248475%_)))
                 (##structure-ref _%bind248480%_ '1 gx#binding::t '#f))
               _%$e248477%_)
              (let ((__tmp249267
                     (##structure-ref
                      _%ctx248474%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp249267
                 _%id248475%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx248340%_)
        (letrec* ((_%ht248342%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template248343%_
                   (lambda (_%in248419%_ _%phi248420%_)
                     (let ((_%iphi248422%_
                            (fx+ _%phi248420%_
                                 (##direct-structure-ref
                                  _%in248419%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports248423%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in248419%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp248425%_ ((_%rest248427%_ _%imports248423%_)
                                          (_%r248428%_ '()))
                         (let* ((_%rest248429248437%_ _%rest248427%_)
                                (_%else248431248445%_ (lambda () _%r248428%_))
                                (_%K248433248462%_
                                 (lambda (_%rest248448%_ _%in248449%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in248449%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi248422%_))
                                           (_%lp248425%_
                                            _%rest248448%_
                                            (cons _%in248449%_ _%r248428%_))
                                           (_%lp248425%_
                                            _%rest248448%_
                                            _%r248428%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in248449%_
                                              'gx#module-import::t))
                                           (let ((_%iphi248453%_
                                                  (fx+ _%phi248420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in248449%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi248453%_))
                                                 (_%lp248425%_
                                                  _%rest248448%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in248449%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r248428%_))
                                                 (_%lp248425%_
                                                  _%rest248448%_
                                                  _%r248428%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in248449%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi248456%_
                                                      (fx+ _%iphi248422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in248449%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi248456%_))
                                                     (_%lp248425%_
                                                      _%rest248448%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in248449%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r248428%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi248456%_))
                                                         (_%lp248425%_
                                                          _%rest248448%_
                                                          (let ((__tmp249268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template248343%_
                          _%in248449%_
                          _%iphi248422%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r248428%_ __tmp249268)))
                 (_%lp248425%_ _%rest248448%_ _%r248428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp248425%_
                                                _%rest248448%_
                                                _%r248428%_)))))))
                           (if (pair? _%rest248429248437%_)
                               (let ((_%hd248434248465%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest248429248437%_)))
                                     (_%tl248435248467%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest248429248437%_))))
                                 (let* ((_%in248470%_ _%hd248434248465%_)
                                        (_%rest248472%_ _%tl248435248467%_))
                                   (_%K248433248462%_
                                    _%rest248472%_
                                    _%in248470%_)))
                               (_%else248431248445%_)))))))
                  (_%find-deps248344%_
                   (lambda (_%rest248352%_ _%deps248353%_)
                     (let* ((_%rest248354248362%_ _%rest248352%_)
                            (_%else248356248370%_ (lambda () _%deps248353%_))
                            (_%K248358248407%_
                             (lambda (_%rest248373%_ _%hd248374%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd248374%_
                                      'gx#module-context::t))
                                   (let ((_%id248377%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd248374%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports248378%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd248374%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht248342%_
                                            _%id248377%_))
                                         (_%find-deps248344%_
                                          _%rest248373%_
                                          _%deps248353%_)
                                         (let ((_%$e248381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd248374%_))))
                                           (if _%$e248381%_
                                               ((lambda (_%pre248384%_)
                                                  (let ((_%xdeps248386%_
                                                         (_%find-deps248344%_
                                                          (cons _%pre248384%_
                                                                _%imports248378%_)
                                                          _%deps248353%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht248342%_
                                                       _%id248377%_
                                                       _%hd248374%_))
                                                    (_%find-deps248344%_
                                                     _%rest248373%_
                                                     (cons _%hd248374%_
                                                           _%xdeps248386%_))))
                                                _%$e248381%_)
                                               (let ((_%xdeps248389%_
                                                      (_%find-deps248344%_
                                                       _%imports248378%_
                                                       _%deps248353%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht248342%_
                                                    _%id248377%_
                                                    _%hd248374%_))
                                                 (_%find-deps248344%_
                                                  _%rest248373%_
                                                  (cons _%hd248374%_
                                                        _%xdeps248389%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd248374%_
                                          'gx#prelude-context::t))
                                       (let ((_%id248392%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd248374%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht248342%_
                                                _%id248392%_))
                                             (_%find-deps248344%_
                                              _%rest248373%_
                                              _%deps248353%_)
                                             (let ((_%xdeps248396%_
                                                    (_%find-deps248344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd248374%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps248353%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht248342%_
                                                      _%id248392%_))
                                                   (_%find-deps248344%_
                                                    _%rest248373%_
                                                    _%xdeps248396%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht248342%_
                                                        _%id248392%_
                                                        _%hd248374%_))
                                                     (_%find-deps248344%_
                                                      _%rest248373%_
                                                      (cons _%hd248374%_
                                                            _%xdeps248396%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd248374%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd248374%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps248344%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd248374%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest248373%_)
                                                _%deps248353%_)
                                               (_%find-deps248344%_
                                                _%rest248373%_
                                                _%deps248353%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd248374%_
                                                  'gx#module-export::t))
                                               (_%find-deps248344%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd248374%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest248373%_)
                                                _%deps248353%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd248374%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd248374%_ '2 '#f '#f)))
               (_%find-deps248344%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd248374%_ '1 '#f '#f))
                      _%rest248373%_)
                _%deps248353%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd248374%_ '2 '#f '#f)))
                   (let ((_%xdeps248403%_
                          (_%import-set-template248343%_ _%hd248374%_ '0)))
                     (_%find-deps248344%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest248373%_ _%xdeps248403%_))
                      _%deps248353%_))
                   (_%find-deps248344%_ _%rest248373%_ _%deps248353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd248374%_))))))))))
                       (if (pair? _%rest248354248362%_)
                           (let ((_%hd248359248410%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest248354248362%_)))
                                 (_%tl248360248412%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest248354248362%_))))
                             (let* ((_%hd248415%_ _%hd248359248410%_)
                                    (_%rest248417%_ _%tl248360248412%_))
                               (_%K248358248407%_
                                _%rest248417%_
                                _%hd248415%_)))
                           (_%else248356248370%_))))))
          (let ((__tmp249269
                 (filter gx#expander-context-id
                         (_%find-deps248344%_
                          (let ((_%$e248346%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx248340%_))))
                            (if _%$e248346%_
                                ((lambda (_%pre248349%_)
                                   (cons _%pre248349%_
                                         (##structure-ref
                                          _%ctx248340%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e248346%_)
                                (##structure-ref
                                 _%ctx248340%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp249269)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx248270%_)
        (let* ((_%context-id248272%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx248270%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx248270%_ '1 '#f '#f))
                    (string->symbol _%ctx248270%_)))
               (_%scm248274%_
                (let ((__tmp249270
                       (gxc#static-module-name _%context-id248272%_)))
                  (declare (not safe))
                  (##string-append __tmp249270 '".scm")))
               (_%dirs248276%_ (let () (declare (not safe)) (load-path)))
               (_%dirs248282%_
                (let ((_%user-libpath248278%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath248278%_
                      (let ((_%user-libpath248280%_
                             (path-expand '"lib" _%user-libpath248278%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath248280%_ _%dirs248276%_))
                            _%dirs248276%_
                            (cons _%user-libpath248280%_ _%dirs248276%_)))
                      _%dirs248276%_)))
               (_%dirs248292%_
                (let ((_%$e248284%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e248284%_
                      ((lambda (_%g248286248288%_)
                         (cons _%g248286248288%_ _%dirs248282%_))
                       _%$e248284%_)
                      _%dirs248282%_)))
               (_%dirs248298%_
                (let ((__tmp249271
                       (lambda (_%g248293248295%_)
                         (path-expand '"static" _%g248293248295%_))))
                  (declare (not safe))
                  (##map __tmp249271 _%dirs248292%_))))
          (let _%lp248301%_ ((_%rest248303%_ _%dirs248298%_))
            (let* ((_%rest248304248312%_ _%rest248303%_)
                   (_%else248306248320%_
                    (lambda ()
                      (let ((__tmp249272
                             (##structure-ref
                              _%ctx248270%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp249272
                         _%scm248274%_))))
                   (_%K248308248328%_
                    (lambda (_%rest248323%_ _%dir248324%_)
                      (let ((_%path248326%_
                             (path-expand _%scm248274%_ _%dir248324%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path248326%_))
                            _%path248326%_
                            (_%lp248301%_ _%rest248323%_))))))
              (if (pair? _%rest248304248312%_)
                  (let ((_%hd248309248331%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest248304248312%_)))
                        (_%tl248310248333%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest248304248312%_))))
                    (let* ((_%dir248336%_ _%hd248309248331%_)
                           (_%rest248338%_ _%tl248310248333%_))
                      (_%K248308248328%_ _%rest248338%_ _%dir248336%_)))
                  (_%else248306248320%_)))))))
    (define gxc#file-empty?
      (lambda (_%path248268%_)
        (zero? (let ((__tmp249273 (file-info _%path248268%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp249273)))))
    (define gxc#compile-top-module
      (lambda (_%ctx248259%_)
        (let ((__tmp249274
               (lambda ()
                 (let ((__tmp249275
                        (lambda ()
                          (let ((__tmp249276
                                 (lambda ()
                                   (let ((__tmp249278
                                          (lambda ()
                                            (let ((__tmp249280
                                                   (lambda ()
                                                     (let ((__tmp249282
                                                            (lambda ()
                                                              (let ((__tmp249283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx248259%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp249283))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp249284
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx248259%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp249284))
                          '#!void)
                      (gxc#collect-bindings _%ctx248259%_)
                      (gxc#compile-runtime-code _%ctx248259%_)
                      (gxc#compile-meta-code _%ctx248259%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx248259%_)
                          '#!void)))
                   (__tmp249281
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
                __tmp249282
                gxc#current-compile-runtime-names
                __tmp249281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp249279
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp249280
                                               gxc#current-compile-runtime-sections
                                               __tmp249279))))
                                         (__tmp249277
                                          (let ((__obj249174
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj249174))
                                            __obj249174)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp249278
                                      gxc#current-compile-symbol-table
                                      __tmp249277)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp249276
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp249275
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp249274
           gx#current-expander-context
           _%ctx248259%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx248257%_)
        (let ((__tmp249285
               (##structure-ref _%ctx248257%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp249285))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx248202%_)
        (letrec ((_%compile1248204%_
                  (lambda (_%ctx248246%_)
                    (let* ((_%code248248%_
                            (##structure-ref
                             _%ctx248246%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm248252%_
                            (let ((_%idstr248250%_
                                   (let ((__tmp249286
                                          (##structure-ref
                                           _%ctx248246%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp249286))))
                              (declare (not safe))
                              (##string-append _%idstr248250%_ '"~0")))
                           (_%rtc?248254%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code248248%_))))
                      (if _%rtc?248254%_
                          (let ((__tmp249287
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp249287
                             _%ctx248246%_
                             _%rtm248252%_))
                          '#!void)
                      (_%generate-runtime-code248206%_
                       _%ctx248246%_
                       _%code248248%_
                       (if _%rtc?248254%_ _%rtm248252%_ '#f)))))
                 (_%context-timestamp248205%_
                  (lambda (_%ctx248244%_)
                    (let ((__tmp249288
                           (let ((__tmp249289
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx248244%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp249289 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp249288))))
                 (_%generate-runtime-code248206%_
                  (lambda (_%ctx248213%_ _%code248214%_ _%rtm248215%_)
                    (let* ((_%runtime-code?248217%_ (if _%rtm248215%_ '#t '#f))
                           (_%lifts248219%_ (box '()))
                           (_%runtime-code248225%_
                            (if _%runtime-code?248217%_
                                (let ((__tmp249290
                                       (lambda ()
                                         (let ((__tmp249291
                                                (lambda ()
                                                  (let ((__tmp249292
                                                         (lambda ()
                                                           (let ((__tmp249294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code248214%_))))
                         (__tmp249293
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp249294
                      gxc#current-compile-marks
                      __tmp249293)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp249292
                                                     gxc#current-compile-lift
                                                     _%lifts248219%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp249291
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp249290
                                   gx#current-expander-context
                                   _%ctx248213%_))
                                '#f))
                           (_%runtime-code248227%_
                            (if _%runtime-code?248217%_
                                (if (null? (unbox _%lifts248219%_))
                                    _%runtime-code248225%_
                                    (cons 'begin
                                          (let ((__tmp249296
                                                 (cons _%runtime-code248225%_
                                                       '()))
                                                (__tmp249295
                                                 (reverse (unbox _%lifts248219%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp249296
                                             __tmp249295))))
                                '#f))
                           (_%runtime-code248229%_
                            (if _%runtime-code?248217%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp248205%_
                                                         _%ctx248213%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code248227%_ '())))
                                '#f))
                           (_%loader-code248232%_
                            (let ((__tmp249297
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code248214%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp249297
                               gx#current-expander-context
                               _%ctx248213%_)))
                           (_%loader-code248234%_
                            (cons 'begin
                                  (cons _%loader-code248232%_
                                        (cons (if _%runtime-code?248217%_
                                                  (cons 'load-module
                                                        (cons _%rtm248215%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0248236%_
                            (gxc#compile-output-file _%ctx248213%_ '0 '".scm"))
                           (_%scmrt248238%_
                            (gxc#compile-output-file
                             _%ctx248213%_
                             '#f
                             '".scm"))
                           (_%scms248240%_
                            (gxc#compile-static-output-file _%ctx248213%_)))
                      (if _%runtime-code?248217%_
                          (gxc#compile-scm-file__0
                           _%scm0248236%_
                           _%runtime-code248229%_)
                          '#!void)
                      (let ((__tmp249298
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt248238%_
                                _%loader-code248234%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp249298
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms248240%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms248240%_))
                          '#!void)
                      (if _%runtime-code?248217%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0248236%_ _%scms248240%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms248240%_ void)))))))
          (let* ((_%all-modules248208%_
                  (cons _%ctx248202%_ (gxc#lift-nested-modules _%ctx248202%_)))
                 (__tmp249299
                  (lambda (_%ctx248210%_)
                    (let ((__tmp249300
                           (lambda () (_%compile1248204%_ _%ctx248210%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp249300
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp249299 _%all-modules248208%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx248101%_)
        (letrec ((_%compile-ssi248103%_
                  (lambda (_%code248170%_)
                    (let* ((_%path248172%_
                            (gxc#compile-output-file
                             _%ctx248101%_
                             '#f
                             '".ssi"))
                           (_%prelude248184%_
                            (let* ((_%super248174%_
                                    (##structure-ref
                                     _%ctx248101%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e248176%_
                                    (##structure-ref
                                     _%super248174%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e248176%_
                                  ((lambda (_%g248178248180%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g248178248180%_)))
                                   _%$e248176%_)
                                  ':<root>)))
                           (_%ns248186%_
                            (##structure-ref
                             _%ctx248101%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr248188%_
                            (symbol->string
                             (##structure-ref
                              _%ctx248101%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg248196%_
                            (let ((_%$e248190%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr248188%_ '#\/))))
                              (if _%$e248190%_
                                  ((lambda (_%x248193%_)
                                     (let ((__tmp249301
                                            (substring
                                             _%idstr248188%_
                                             '0
                                             _%x248193%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp249301)))
                                   _%$e248190%_)
                                  '#f)))
                           (_%rt248198%_
                            (let ((__tmp249302
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp249302 _%ctx248101%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path248172%_))
                      (gxc#with-output-to-scheme-file
                       _%path248172%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude248184%_))
                         (if _%pkg248196%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg248196%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns248186%_))
                         (newline)
                         (pretty-print _%code248170%_)
                         (if _%rt248198%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt248198%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi248104%_
                  (lambda (_%part248109%_)
                    (let* ((_%part248110248123%_ _%part248109%_)
                           (_%E248112248127%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part248110248123%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K248113248139%_
                            (lambda (_%code248130%_
                                     _%n248131%_
                                     _%phi248132%_
                                     _%phi-ctx248133%_)
                              (let ((_%code248137%_
                                     (let ((__tmp249303
                                            (lambda ()
                                              (let ((__tmp249304
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code248130%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp249304
                                                 gx#current-expander-phi
                                                 _%phi248132%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp249303
                                        gx#current-expander-context
                                        _%phi-ctx248133%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx248101%_
                                  _%n248131%_
                                  '".scm")
                                 _%code248137%_
                                 '#t)))))
                      (if (pair? _%part248110248123%_)
                          (let ((_%hd248114248142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part248110248123%_)))
                                (_%tl248115248144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part248110248123%_))))
                            (let ((_%phi-ctx248147%_ _%hd248114248142%_))
                              (if (pair? _%tl248115248144%_)
                                  (let ((_%hd248116248149%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl248115248144%_)))
                                        (_%tl248117248151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl248115248144%_))))
                                    (let ((_%phi248154%_ _%hd248116248149%_))
                                      (if (pair? _%tl248117248151%_)
                                          (let ((_%hd248118248156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl248117248151%_)))
                                                (_%tl248119248158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl248117248151%_))))
                                            (let ((_%n248161%_
                                                   _%hd248118248156%_))
                                              (if (pair? _%tl248119248158%_)
                                                  (let ((_%hd248120248163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl248119248158%_)))
                                                        (_%tl248121248165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl248119248158%_))))
                                                    (let ((_%code248168%_
                                                           _%hd248120248163%_))
                                                      (if (null? _%tl248121248165%_)
                                                          (_%K248113248139%_
                                                           _%code248168%_
                                                           _%n248161%_
                                                           _%phi248154%_
                                                           _%phi-ctx248147%_)
                                                          (_%E248112248127%_))))
                                                  (_%E248112248127%_))))
                                          (_%E248112248127%_))))
                                  (_%E248112248127%_))))
                          (_%E248112248127%_))))))
          (let ((_g249305_ (gxc#generate-meta-code _%ctx248101%_)))
            (begin
              (let ((_g249306_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g249305_)
                           (##values-length _g249305_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g249306_ 2)))
                    (error "Context expects 2 values" _g249306_)))
              (let ((_%ssi-code248106%_
                     (let () (declare (not safe)) (##values-ref _g249305_ 0)))
                    (_%phi-code248107%_
                     (let () (declare (not safe)) (##values-ref _g249305_ 1))))
                (begin
                  (_%compile-ssi248103%_ _%ssi-code248106%_)
                  (for-each _%compile-phi248104%_ _%phi-code248107%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx248083%_)
        (let* ((_%path248085%_
                (gxc#compile-output-file _%ctx248083%_ '#f '".ssxi.ss"))
               (_%code248087%_
                (let ((__tmp249307
                       (##structure-ref
                        _%ctx248083%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp249307)))
               (_%idstr248089%_
                (symbol->string
                 (##structure-ref
                  _%ctx248083%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg248097%_
                (let ((_%$e248091%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr248089%_ '#\/))))
                  (if _%$e248091%_
                      ((lambda (_%x248094%_)
                         (let ((__tmp249308
                                (substring _%idstr248089%_ '0 _%x248094%_)))
                           (declare (not safe))
                           (##string->symbol __tmp249308)))
                       _%$e248091%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path248085%_))
          (gxc#with-output-to-scheme-file
           _%path248085%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg248097%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg248097%_))
                 '#!void)
             (newline)
             (pretty-print _%code248087%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx248076%_)
        (let* ((_%state248078%_
                (let ((__obj249175
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj249175 _%ctx248076%_))
                  __obj249175))
               (_%ssi-code248080%_
                (let ((__tmp249309
                       (##structure-ref
                        _%ctx248076%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state248078%_
                   __tmp249309))))
          (values _%ssi-code248080%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state248078%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx248068%_)
        (let* ((_%lifts248070%_ (box '()))
               (__tmp249310
                (lambda ()
                  (let ((__tmp249312
                         (lambda ()
                           (let ((_%code248074%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx248068%_))))
                             (if (null? (unbox _%lifts248070%_))
                                 _%code248074%_
                                 (cons 'begin
                                       (let ((__tmp249314
                                              (cons _%code248074%_ '()))
                                             (__tmp249313
                                              (reverse (unbox _%lifts248070%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp249314
                                          __tmp249313)))))))
                        (__tmp249311
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp249312
                     gxc#current-compile-marks
                     __tmp249311)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp249310
           gxc#current-compile-lift
           _%lifts248070%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx248064%_)
        (let ((_%modules248066%_ (box '())))
          (let ((__tmp249315
                 (##structure-ref _%ctx248064%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules248066%_ __tmp249315))
          (reverse (unbox _%modules248066%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path248044%_ _%code248045%_ _%phi?248046%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path248044%_))
        (gxc#with-output-to-scheme-file
         _%path248044%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp249316
                                           (if _%phi?248046%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp249316)))))))
           (pretty-print _%code248045%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it248050%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path248044%_ _%phi?248046%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp249317
                         (cons 'compile-file (cons _%path248044%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it248050%_ __tmp249317))
                  (_%compile-it248050%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path248055%_ _%code248056%_)
        (let ((_%phi?248058%_ '#f))
          (gxc#compile-scm-file__%
           _%path248055%_
           _%code248056%_
           _%phi?248058%_))))
    (define gxc#compile-scm-file
      (lambda _g249318_
        (let ((_g249319_ (let () (declare (not safe)) (##length _g249318_))))
          (cond ((let () (declare (not safe)) (##fx= _g249319_ 2))
                 (apply gxc#compile-scm-file__0 _g249318_))
                ((let () (declare (not safe)) (##fx= _g249319_ 3))
                 (apply gxc#compile-scm-file__% _g249318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g249318_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?247945%_)
        (let _%lp247947%_ ((_%rest247949%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts247950%_ '()))
          (let* ((_%rest247951247971%_ _%rest247949%_)
                 (_%else247955247979%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts247950%_)))
                        (reverse _%opts247950%_)))))
            (let ((_%K247965248022%_
                   (lambda (_%rest248020%_)
                     (_%lp247947%_ _%rest248020%_ _%opts247950%_)))
                  (_%K247960248004%_
                   (lambda (_%rest248002%_)
                     (_%lp247947%_ _%rest248002%_ _%opts247950%_)))
                  (_%K247957247986%_
                   (lambda (_%rest247983%_ _%opt247984%_)
                     (_%lp247947%_
                      _%rest247983%_
                      (cons _%opt247984%_ _%opts247950%_)))))
              (if (pair? _%rest247951247971%_)
                  (let ((_%tl247967248027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest247951247971%_)))
                        (_%hd247966248025%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest247951247971%_))))
                    (if (equal? _%hd247966248025%_ '"-cc-options")
                        (if (pair? _%tl247967248027%_)
                            (let* ((_%tl247969248030%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl247967248027%_)))
                                   (_%rest248033%_ _%tl247969248030%_))
                              (_%K247965248022%_ _%rest248033%_))
                            (let ((_%opt247994%_ _%hd247966248025%_)
                                  (_%rest247996%_ _%tl247967248027%_))
                              (_%K247957247986%_
                               _%rest247996%_
                               _%opt247994%_)))
                        (if (equal? _%hd247966248025%_ '"-ld-options")
                            (if (pair? _%tl247967248027%_)
                                (let* ((_%tl247964248012%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl247967248027%_)))
                                       (_%rest248015%_ _%tl247964248012%_))
                                  (_%K247960248004%_ _%rest248015%_))
                                (let ((_%opt247994%_ _%hd247966248025%_)
                                      (_%rest247996%_ _%tl247967248027%_))
                                  (_%K247957247986%_
                                   _%rest247996%_
                                   _%opt247994%_)))
                            (let ((_%opt247994%_ _%hd247966248025%_)
                                  (_%rest247996%_ _%tl247967248027%_))
                              (_%K247957247986%_
                               _%rest247996%_
                               _%opt247994%_)))))
                  (_%else247955247979%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?248039%_ '#f)) (gxc#gsc-link-options__% _%phi?248039%_))))
    (define gxc#gsc-link-options
      (lambda _g249320_
        (let ((_g249321_ (let () (declare (not safe)) (##length _g249320_))))
          (cond ((let () (declare (not safe)) (##fx= _g249321_ 0))
                 (apply gxc#gsc-link-options__0 _g249320_))
                ((let () (declare (not safe)) (##fx= _g249321_ 1))
                 (apply gxc#gsc-link-options__% _g249320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g249320_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords247795%_ _%static?247791247796%_ _%phi?247797%_)
        (let ((_%static?247799%_
               (if (eq? _%static?247791247796%_ absent-value)
                   '#f
                   _%static?247791247796%_)))
          (if _%phi?247797%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp247801%_ ((_%rest247803%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts247804%_ '()))
                (let* ((_%rest247805247831%_ _%rest247803%_)
                       (_%else247810247839%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts247804%_)))
                              (reverse! _%opts247804%_)))))
                  (let ((_%K247825247902%_
                         (lambda (_%rest247899%_ _%opt247900%_)
                           (if _%static?247799%_
                               (_%lp247801%_
                                _%rest247899%_
                                (cons _%opt247900%_
                                      (cons '"-cc-options" _%opts247804%_)))
                               (_%lp247801%_ _%rest247899%_ _%opts247804%_))))
                        (_%K247820247879%_
                         (lambda (_%rest247876%_ _%opt247877%_)
                           (_%lp247801%_
                            _%rest247876%_
                            (cons _%opt247877%_
                                  (cons '"-cc-options" _%opts247804%_)))))
                        (_%K247815247859%_
                         (lambda (_%rest247857%_)
                           (_%lp247801%_ _%rest247857%_ _%opts247804%_)))
                        (_%K247812247845%_
                         (lambda (_%rest247843%_)
                           (_%lp247801%_ _%rest247843%_ _%opts247804%_))))
                    (if (pair? _%rest247805247831%_)
                        (let ((_%tl247827247907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest247805247831%_)))
                              (_%hd247826247905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest247805247831%_))))
                          (if (equal? _%hd247826247905%_ '"-cc-options")
                              (if (pair? _%tl247827247907%_)
                                  (let ((_%tl247829247912%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl247827247907%_)))
                                        (_%hd247828247910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl247827247907%_))))
                                    (if (equal? _%hd247828247910%_ '"-Bstatic")
                                        (let ((_%opt247915%_
                                               _%hd247828247910%_)
                                              (_%rest247917%_
                                               _%tl247829247912%_))
                                          (_%K247825247902%_
                                           _%rest247917%_
                                           _%opt247915%_))
                                        (let ((_%opt247892%_
                                               _%hd247828247910%_)
                                              (_%rest247894%_
                                               _%tl247829247912%_))
                                          (_%K247820247879%_
                                           _%rest247894%_
                                           _%opt247892%_))))
                                  (let ((_%rest247851%_ _%tl247827247907%_))
                                    (_%K247812247845%_ _%rest247851%_)))
                              (if (equal? _%hd247826247905%_ '"-ld-options")
                                  (if (pair? _%tl247827247907%_)
                                      (let* ((_%tl247819247867%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl247827247907%_)))
                                             (_%rest247870%_
                                              _%tl247819247867%_))
                                        (_%K247815247859%_ _%rest247870%_))
                                      (let ((_%rest247851%_
                                             _%tl247827247907%_))
                                        (_%K247812247845%_ _%rest247851%_)))
                                  (let ((_%rest247851%_ _%tl247827247907%_))
                                    (_%K247812247845%_ _%rest247851%_)))))
                        (_%else247810247839%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords247922%_ _%static?247791247923%_)
        (let ((_%phi?247925%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords247922%_
           _%static?247791247923%_
           _%phi?247925%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g249322_
        (let ((_g249323_ (let () (declare (not safe)) (##length _g249322_))))
          (cond ((let () (declare (not safe)) (##fx= _g249323_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g249322_))
                ((let () (declare (not safe)) (##fx= _g249323_ 3))
                 (apply gxc#gsc-cc-options__%__% _g249322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g249322_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords247934%_ . _%args247935%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords247934%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247934%_
                  'static:
                  absent-value))
               _%args247935%_)))
    (define gxc#gsc-cc-options
      (lambda _%args247792247941%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args247792247941%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords247641%_ _%static?247637247642%_ _%phi?247643%_)
        (let ((_%static?247645%_
               (if (eq? _%static?247637247642%_ absent-value)
                   '#f
                   _%static?247637247642%_)))
          (if _%phi?247643%_
              '()
              (let _%lp247647%_ ((_%rest247649%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts247650%_ '()))
                (let* ((_%rest247651247677%_ _%rest247649%_)
                       (_%else247656247685%_
                        (lambda () (reverse! _%opts247650%_))))
                  (let ((_%K247671247748%_
                         (lambda (_%rest247745%_ _%opt247746%_)
                           (if _%static?247645%_
                               (_%lp247647%_
                                _%rest247745%_
                                (cons _%opt247746%_
                                      (cons '"-ld-options" _%opts247650%_)))
                               (_%lp247647%_ _%rest247745%_ _%opts247650%_))))
                        (_%K247666247725%_
                         (lambda (_%rest247722%_ _%opt247723%_)
                           (_%lp247647%_
                            _%rest247722%_
                            (cons _%opt247723%_
                                  (cons '"-ld-options" _%opts247650%_)))))
                        (_%K247661247705%_
                         (lambda (_%rest247703%_)
                           (_%lp247647%_ _%rest247703%_ _%opts247650%_)))
                        (_%K247658247691%_
                         (lambda (_%rest247689%_)
                           (_%lp247647%_ _%rest247689%_ _%opts247650%_))))
                    (if (pair? _%rest247651247677%_)
                        (let ((_%tl247673247753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest247651247677%_)))
                              (_%hd247672247751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest247651247677%_))))
                          (if (equal? _%hd247672247751%_ '"-ld-options")
                              (if (pair? _%tl247673247753%_)
                                  (let ((_%tl247675247758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl247673247753%_)))
                                        (_%hd247674247756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl247673247753%_))))
                                    (if (equal? _%hd247674247756%_ '"-static")
                                        (let ((_%opt247761%_
                                               _%hd247674247756%_)
                                              (_%rest247763%_
                                               _%tl247675247758%_))
                                          (_%K247671247748%_
                                           _%rest247763%_
                                           _%opt247761%_))
                                        (let ((_%opt247738%_
                                               _%hd247674247756%_)
                                              (_%rest247740%_
                                               _%tl247675247758%_))
                                          (_%K247666247725%_
                                           _%rest247740%_
                                           _%opt247738%_))))
                                  (let ((_%rest247697%_ _%tl247673247753%_))
                                    (_%K247658247691%_ _%rest247697%_)))
                              (if (equal? _%hd247672247751%_ '"-cc-options")
                                  (if (pair? _%tl247673247753%_)
                                      (let* ((_%tl247665247713%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl247673247753%_)))
                                             (_%rest247716%_
                                              _%tl247665247713%_))
                                        (_%K247661247705%_ _%rest247716%_))
                                      (let ((_%rest247697%_
                                             _%tl247673247753%_))
                                        (_%K247658247691%_ _%rest247697%_)))
                                  (let ((_%rest247697%_ _%tl247673247753%_))
                                    (_%K247658247691%_ _%rest247697%_)))))
                        (_%else247656247685%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords247768%_ _%static?247637247769%_)
        (let ((_%phi?247771%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords247768%_
           _%static?247637247769%_
           _%phi?247771%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g249324_
        (let ((_g249325_ (let () (declare (not safe)) (##length _g249324_))))
          (cond ((let () (declare (not safe)) (##fx= _g249325_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g249324_))
                ((let () (declare (not safe)) (##fx= _g249325_ 3))
                 (apply gxc#gsc-ld-options__%__% _g249324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g249324_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords247780%_ . _%args247781%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords247780%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247780%_
                  'static:
                  absent-value))
               _%args247781%_)))
    (define gxc#gsc-ld-options
      (lambda _%args247638247787%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args247638247787%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir247632%_)
        (let ((_%user-staticdir247634%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir247632%_
                       '" -I "
                       _%user-staticdir247634%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp247544%_ ((_%rest247546%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts247547%_ '()))
          (let* ((_%rest247548247568%_ _%rest247546%_)
                 (_%else247552247576%_ (lambda () _%opts247547%_)))
            (let ((_%K247562247619%_
                   (lambda (_%rest247617%_)
                     (_%lp247544%_ _%rest247617%_ _%opts247547%_)))
                  (_%K247557247597%_
                   (lambda (_%rest247594%_ _%opt247595%_)
                     (_%lp247544%_
                      _%rest247594%_
                      (let ((__tmp249326
                             (let ((__tmp249327
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt247595%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp249327))))
                        (declare (not safe))
                        (##append _%opts247547%_ __tmp249326)))))
                  (_%K247554247582%_
                   (lambda (_%rest247580%_)
                     (_%lp247544%_ _%rest247580%_ _%opts247547%_))))
              (if (pair? _%rest247548247568%_)
                  (let ((_%tl247564247624%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest247548247568%_)))
                        (_%hd247563247622%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest247548247568%_))))
                    (if (equal? _%hd247563247622%_ '"-cc-options")
                        (if (pair? _%tl247564247624%_)
                            (let* ((_%tl247566247627%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl247564247624%_)))
                                   (_%rest247630%_ _%tl247566247627%_))
                              (_%K247562247619%_ _%rest247630%_))
                            (let ((_%rest247588%_ _%tl247564247624%_))
                              (_%K247554247582%_ _%rest247588%_)))
                        (if (equal? _%hd247563247622%_ '"-ld-options")
                            (if (pair? _%tl247564247624%_)
                                (let ((_%tl247561247607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl247564247624%_)))
                                      (_%hd247560247605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl247564247624%_))))
                                  (let ((_%opt247610%_ _%hd247560247605%_)
                                        (_%rest247612%_ _%tl247561247607%_))
                                    (_%K247557247597%_
                                     _%rest247612%_
                                     _%opt247610%_)))
                                (let ((_%rest247588%_ _%tl247564247624%_))
                                  (_%K247554247582%_ _%rest247588%_)))
                            (let ((_%rest247588%_ _%tl247564247624%_))
                              (_%K247554247582%_ _%rest247588%_)))))
                  (_%else247552247576%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str247541%_)
        (not (let () (declare (not safe)) (string-empty? _%str247541%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path247534%_ _%phi?247535%_)
        (let ((_%gsc-link-opts247537%_
               (gxc#gsc-link-options__% _%phi?247535%_))
              (_%gsc-cc-opts247538%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?247535%_))
              (_%gsc-ld-opts247539%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?247535%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp249328
                  (let ((__tmp249329
                         (let ((__tmp249330 (cons _%path247534%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp249330
                            _%gsc-link-opts247537%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp249329 _%gsc-ld-opts247539%_))))
             (declare (not safe))
             (__foldr1 cons __tmp249328 _%gsc-cc-opts247538%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx247500%_ _%n247501%_ _%ext247502%_)
        (letrec ((_%module-relative-path247504%_
                  (lambda (_%ctx247532%_)
                    (path-strip-directory
                     (let ((__tmp249331
                            (##structure-ref
                             _%ctx247532%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp249331)))))
                 (_%module-source-directory247505%_
                  (lambda (_%ctx247528%_)
                    (path-directory
                     (let ((_%mpath247530%_
                            (##structure-ref
                             _%ctx247528%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath247530%_)
                           _%mpath247530%_
                           (last _%mpath247530%_))))))
                 (_%section-string247506%_
                  (lambda (_%n247522%_)
                    (if (number? _%n247522%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n247522%_))
                        (if (symbol? _%n247522%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n247522%_))
                            (if (string? _%n247522%_)
                                _%n247522%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n247522%_)))))))
                 (_%file-name247507%_
                  (lambda (_%path247520%_)
                    (if _%n247501%_
                        (string-append
                         _%path247520%_
                         '"~"
                         (_%section-string247506%_ _%n247501%_)
                         _%ext247502%_)
                        (string-append _%path247520%_ _%ext247502%_))))
                 (_%file-path247508%_
                  (lambda ()
                    (let ((_%$e247514%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e247514%_
                          ((lambda (_%outdir247517%_)
                             (path-expand
                              (_%file-name247507%_
                               (let ((__tmp249332
                                      (##structure-ref
                                       _%ctx247500%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp249332)))
                              _%outdir247517%_))
                           _%$e247514%_)
                          (path-expand
                           (_%file-name247507%_
                            (_%module-relative-path247504%_ _%ctx247500%_))
                           (_%module-source-directory247505%_
                            _%ctx247500%_)))))))
          (let ((_%path247510%_ (_%file-path247508%_)))
            (let ((__tmp249333
                   (lambda ()
                     (let ((__tmp249334 (path-directory _%path247510%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp249334)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp249333))
            _%path247510%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx247481%_)
        (letrec ((_%file-name247483%_
                  (lambda (_%id247498%_)
                    (let ((__tmp249335 (gxc#static-module-name _%id247498%_)))
                      (declare (not safe))
                      (##string-append __tmp249335 '".scm"))))
                 (_%file-path247484%_
                  (lambda ()
                    (let* ((_%file247490%_
                            (_%file-name247483%_
                             (##structure-ref
                              _%ctx247481%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e247492%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e247492%_
                          ((lambda (_%outdir247495%_)
                             (path-expand
                              _%file247490%_
                              (path-expand '"static" _%outdir247495%_)))
                           _%$e247492%_)
                          (path-expand _%file247490%_ '"static"))))))
          (let ((_%path247486%_ (_%file-path247484%_)))
            (let ((__tmp249336
                   (lambda ()
                     (let ((__tmp249337 (path-directory _%path247486%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp249337)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp249336))
            _%path247486%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx247474%_ _%opts247475%_)
        (let ((_%$e247477%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts247475%_))))
          (if _%$e247477%_
              _%$e247477%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx247474%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr247464%_)
        (if (string? _%idstr247464%_)
            (let* ((_%str247467%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr247464%_)))
                   (_%strs247469%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str247467%_ '#\/))))
              (declare (not safe))
              (string-join _%strs247469%_ '"__"))
            (if (symbol? _%idstr247464%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr247464%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr247464%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp249338
               (let ((__tmp249339 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp249339 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp249338))))
    (define gxc#invoke__%
      (lambda (_%@@keywords247430%_
               _%stdout-redirection247426247431%_
               _%stderr-redirection247427247432%_
               _%program247433%_
               _%args247434%_)
        (let* ((_%stdout-redirection247436%_
                (if (eq? _%stdout-redirection247426247431%_ absent-value)
                    '#f
                    _%stdout-redirection247426247431%_))
               (_%stderr-redirection247438%_
                (if (eq? _%stderr-redirection247427247432%_ absent-value)
                    '#f
                    _%stderr-redirection247427247432%_)))
          (let ((__tmp249340 (cons _%program247433%_ _%args247434%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp249340))
          (let* ((_%proc247440%_
                  (open-process
                   (cons 'path:
                         (cons _%program247433%_
                               (cons 'arguments:
                                     (cons _%args247434%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection247436%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection247438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output247445%_
                  (if (or _%stdout-redirection247436%_
                          _%stderr-redirection247438%_)
                      (read-line _%proc247440%_ '#f)
                      '#f))
                 (_%status247448%_ (process-status _%proc247440%_)))
            (let () (declare (not safe)) (##close-port _%proc247440%_))
            (if (zero? _%status247448%_)
                '#!void
                (begin
                  (display _%output247445%_)
                  (let ((__tmp249341 (cons _%program247433%_ _%args247434%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp249341
                     _%status247448%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords247453%_ . _%args247454%_)
        (apply gxc#invoke__%
               _%@@keywords247453%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247453%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247453%_
                  'stderr-redirection:
                  absent-value))
               _%args247454%_)))
    (define gxc#invoke
      (lambda _%args247428247460%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args247428247460%_)))))
