(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770333069)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226175 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226175))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226176 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226176))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path226032%_ _%fun226033%_)
        (with-output-to-file
         (cons 'path: (cons _%path226032%_ gxc#scheme-file-settings))
         _%fun226033%_)))
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
      (lambda (_%gerbil-libdir226027%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir226027%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path226025%_)
        (let ((__tmp226177 (object->string _%path226025%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226177 '")"))))
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
      (lambda (_%dir226023%_) (delete-file-or-directory _%dir226023%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225967%_ _%opts225968%_)
        (if (string? _%srcpath225967%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225967%_)))
        (let* ((_%outdir225970%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225968%_)))
               (_%invoke-gsc?225972%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225968%_)))
               (_%target225977%_
                (let ((_%$e225974%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225968%_))))
                  (if _%$e225974%_ _%$e225974%_ 'C)))
               (_%gsc-options225982%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225977%_) '()))
                        (let ((_%$e225979%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225968%_))))
                          (if _%$e225979%_ _%$e225979%_ '()))))
               (_%keep-scm?225984%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225968%_)))
               (_%verbosity225986%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225968%_)))
               (_%optimize225988%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225968%_)))
               (_%debug225990%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225968%_)))
               (_%gen-ssxi225992%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225968%_)))
               (_%parallel?225994%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225968%_))))
          (if _%outdir225970%_
              (let ((__tmp226178
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225970%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226178))
              '#!void)
          (if _%optimize225988%_
              (let ((__tmp226179
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226179))
              '#!void)
          (let ((__tmp226180
                 (lambda ()
                   (let ((__tmp226181
                          (lambda ()
                            (let ((__tmp226182
                                   (lambda ()
                                     (let ((__tmp226183
                                            (lambda ()
                                              (let ((__tmp226184
                                                     (lambda ()
                                                       (let ((__tmp226185
                                                              (lambda ()
                                                                (let ((__tmp226186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226187
                                        (lambda ()
                                          (let ((__tmp226188
                                                 (lambda ()
                                                   (let ((__tmp226190
                                                          (lambda ()
                                                            (let ((__tmp226192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226193
                                    (lambda ()
                                      (let ((__tmp226194
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225967%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226195
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225967%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226195))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226194
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226193
                                gxc#current-compile-parallel
                                _%parallel?225994%_))))
                          (__tmp226191
                           (cons (cons 'compile-module
                                       (cons _%srcpath225967%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226192
                       gxc#current-compile-context
                       __tmp226191))))
                 (__tmp226189 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226190
                                                      gxc#current-compile-timestamp
                                                      __tmp226189)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226188
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225992%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226187
                                    gxc#current-compile-debug
                                    _%debug225990%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226186
                           gxc#current-compile-optimize
                           _%optimize225988%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226185
                  gxc#current-compile-verbose
                  _%verbosity225986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226184
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225984%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226183
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225982%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226182
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225972%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226181
                      gx#current-compilation-target
                      _%target225977%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226180
             gxc#current-compile-output-dir
             _%outdir225970%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath226016%_)
        (let ((_%opts226018%_ '()))
          (gxc#compile-module__% _%srcpath226016%_ _%opts226018%_))))
    (define gxc#compile-module
      (lambda _g226196_
        (let ((_g226197_ (let () (declare (not safe)) (##length _g226196_))))
          (cond ((let () (declare (not safe)) (##fx= _g226197_ 1))
                 (apply gxc#compile-module__0 _g226196_))
                ((let () (declare (not safe)) (##fx= _g226197_ 2))
                 (apply gxc#compile-module__% _g226196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226196_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225917%_ _%opts225918%_)
        (if (string? _%srcpath225917%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225917%_)))
        (let* ((_%outdir225920%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225918%_)))
               (_%invoke-gsc?225922%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225918%_)))
               (_%target225927%_
                (let ((_%$e225924%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225918%_))))
                  (if _%$e225924%_ _%$e225924%_ 'C)))
               (_%gsc-options225932%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225927%_) '()))
                        (let ((_%$e225929%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225918%_))))
                          (if _%$e225929%_ _%$e225929%_ '()))))
               (_%keep-scm?225934%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225918%_)))
               (_%verbosity225936%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225918%_)))
               (_%debug225938%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225918%_)))
               (_%parallel?225940%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225918%_))))
          (if _%outdir225920%_
              (let ((__tmp226198
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225920%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226198))
              '#!void)
          (let ((__tmp226199
                 (lambda ()
                   (let ((__tmp226200
                          (lambda ()
                            (let ((__tmp226201
                                   (lambda ()
                                     (let ((__tmp226202
                                            (lambda ()
                                              (let ((__tmp226203
                                                     (lambda ()
                                                       (let ((__tmp226204
                                                              (lambda ()
                                                                (let ((__tmp226205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226207
                                        (lambda ()
                                          (let ((__tmp226209
                                                 (lambda ()
                                                   (let ((__tmp226210
                                                          (lambda ()
                                                            (let ((__tmp226211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225917%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226212
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225917%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226212))
                              _%opts225918%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226211
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226210
                                                      gxc#current-compile-parallel
                                                      _%parallel?225940%_))))
                                                (__tmp226208
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226209
                                             gxc#current-compile-context
                                             __tmp226208))))
                                       (__tmp226206 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226207
                                    gxc#current-compile-timestamp
                                    __tmp226206)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226205
                           gxc#current-compile-debug
                           _%debug225938%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226204
                  gxc#current-compile-verbose
                  _%verbosity225936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226203
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225934%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226202
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225932%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226201
                               gx#current-compilation-target
                               _%target225927%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226200
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225922%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226199
             gxc#current-compile-output-dir
             _%outdir225920%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225959%_)
        (let ((_%opts225961%_ '()))
          (gxc#compile-exe__% _%srcpath225959%_ _%opts225961%_))))
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
      (lambda (_%ctx225913%_ _%opts225914%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225914%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225913%_
             _%opts225914%_)
            (gxc#compile-executable-module/separate
             _%ctx225913%_
             _%opts225914%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225713%_ _%opts225714%_)
        (letrec ((_%generate-stub225716%_
                  (lambda (_%builtin-modules225909%_)
                    (let ((_%mod-main225911%_
                           (gxc#find-runtime-symbol _%ctx225713%_ 'main)))
                      (let ((__tmp226215
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225909%_
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
                                                 (cons _%mod-main225911%_
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
                 (_%get-libgerbil-ld-opts225717%_
                  (lambda (_%gerbil-libdir225907%_)
                    (let ((__tmp226217
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225907%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226217 read))))
                 (_%replace-extension225718%_
                  (lambda (_%path225904%_ _%ext225905%_)
                    (string-append
                     (path-strip-extension _%path225904%_)
                     _%ext225905%_)))
                 (_%replace-extension-with-c225719%_
                  (lambda (_%path225902%_)
                    (_%replace-extension225718%_ _%path225902%_ '".c")))
                 (_%replace-extension-with-object225720%_
                  (lambda (_%path225900%_)
                    (_%replace-extension225718%_
                     _%path225900%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225721%_
                  (lambda (_%ctx225898%_)
                    (if (_%exclude-module?225723%_ _%ctx225898%_)
                        '#f
                        (not (_%libgerbil-module?225722%_ _%ctx225898%_)))))
                 (_%libgerbil-module?225722%_
                  (lambda (_%ctx225891%_)
                    (let ((_%id-str225893%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225891%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225723%_ _%id-str225893%_)
                          '#f
                          (let ((_%$e225895%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225893%_))))
                            (if _%$e225895%_
                                _%$e225895%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225893%_))))))))
                 (_%exclude-module?225723%_
                  (lambda (_%ctx-or-str225887%_)
                    (let ((_%str225889%_
                           (if (string? _%ctx-or-str225887%_)
                               _%ctx-or-str225887%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225887%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225889%_))))
                 (_%not-file-empty?225724%_
                  (lambda (_%path225885%_)
                    (not (gxc#file-empty? _%path225885%_))))
                 (_%fold-libgerbil-runtime-scm225725%_
                  (lambda (_%gerbil-staticdir225878%_ _%libgerbil-scm225879%_)
                    (let ((_%gerbil-runtime-scm225883%_
                           (let ((__tmp226218
                                  (lambda (_%rtm225881%_)
                                    (path-expand
                                     (let ((__tmp226219
                                            (let ((__tmp226220
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225881%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226220
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226219 '".scm"))
                                     _%gerbil-staticdir225878%_))))
                             (declare (not safe))
                             (##map __tmp226218 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225726%_
                       (append _%gerbil-runtime-scm225883%_
                               _%libgerbil-scm225879%_)))))
                 (_%remove-duplicates225726%_
                  (lambda (_%strlst225838%_)
                    (let _%loop225840%_ ((_%rest225842%_ _%strlst225838%_)
                                         (_%result225843%_ '()))
                      (let* ((_%rest225844225852%_ _%rest225842%_)
                             (_%else225846225860%_
                              (lambda () (reverse! _%result225843%_)))
                             (_%K225848225866%_
                              (lambda (_%rest225863%_ _%path225864%_)
                                (if (member _%path225864%_ _%result225843%_)
                                    (_%loop225840%_
                                     _%rest225863%_
                                     _%result225843%_)
                                    (_%loop225840%_
                                     _%rest225863%_
                                     (cons _%path225864%_
                                           _%result225843%_))))))
                        (if (pair? _%rest225844225852%_)
                            (let ((_%hd225849225869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225844225852%_)))
                                  (_%tl225850225871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225844225852%_))))
                              (let* ((_%path225874%_ _%hd225849225869%_)
                                     (_%rest225876%_ _%tl225850225871%_))
                                (_%K225848225866%_
                                 _%rest225876%_
                                 _%path225874%_)))
                            (_%else225846225860%_))))))
                 (_%compile-stub225727%_
                  (lambda (_%output-scm225734%_ _%output-bin225735%_)
                    (let* ((_%gerbil-home225737%_
                            (let ((__tmp226221
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226221)))
                           (_%gerbil-libdir225739%_
                            (path-expand '"lib" _%gerbil-home225737%_))
                           (_%gerbil-staticdir225741%_
                            (path-expand '"static" _%gerbil-libdir225739%_))
                           (_%deps225743%_
                            (gxc#find-runtime-module-deps _%ctx225713%_))
                           (_%libgerbil-deps225745%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225722%_
                               _%deps225743%_)))
                           (_%libgerbil-scm225747%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225745%_)))
                           (_%libgerbil-scm225749%_
                            (_%fold-libgerbil-runtime-scm225725%_
                             _%gerbil-staticdir225741%_
                             _%libgerbil-scm225747%_))
                           (_%libgerbil-c225751%_
                            (map _%replace-extension-with-c225719%_
                                 _%libgerbil-scm225749%_))
                           (_%libgerbil-o225753%_
                            (map _%replace-extension-with-object225720%_
                                 _%libgerbil-scm225749%_))
                           (_%src-deps225755%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225721%_
                               _%deps225743%_)))
                           (_%src-deps-scm225757%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225755%_)))
                           (_%src-deps-scm225759%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225724%_
                               _%src-deps-scm225757%_)))
                           (_%src-deps-scm225761%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225759%_)))
                           (_%src-deps-c225763%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225719%_
                                     _%src-deps-scm225761%_)))
                           (_%src-deps-o225765%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225720%_
                                     _%src-deps-scm225761%_)))
                           (_%src-bin-scm225767%_
                            (gxc#find-static-module-file _%ctx225713%_))
                           (_%src-bin-scm225769%_
                            (path-expand _%src-bin-scm225767%_))
                           (_%src-bin-c225771%_
                            (_%replace-extension-with-c225719%_
                             _%src-bin-scm225769%_))
                           (_%src-bin-o225773%_
                            (_%replace-extension-with-object225720%_
                             _%src-bin-scm225769%_))
                           (_%output-bin225775%_
                            (path-expand _%output-bin225735%_))
                           (_%output-scm225777%_
                            (path-expand _%output-scm225734%_))
                           (_%output-c225779%_
                            (_%replace-extension-with-c225719%_
                             _%output-scm225777%_))
                           (_%output-o225781%_
                            (_%replace-extension-with-object225720%_
                             _%output-scm225777%_))
                           (_%output_-c225783%_
                            (_%replace-extension225718%_
                             _%output-scm225777%_
                             '"_.c"))
                           (_%output_-o225785%_
                            (_%replace-extension225718%_
                             _%output-scm225777%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225787%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225789%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225791%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225741%_))
                           (_%output-ld-opts225793%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225795%_
                            (_%get-libgerbil-ld-opts225717%_
                             _%gerbil-libdir225739%_))
                           (_%rpath225797%_
                            (gxc#gerbil-rpath _%gerbil-libdir225739%_))
                           (_%builtin-modules225801%_
                            (_%remove-duplicates225726%_
                             (let ((__tmp226222
                                    (let ((__tmp226224
                                           (lambda (_%mod225799%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225799%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226223
                                           (cons _%ctx225713%_
                                                 _%deps225743%_)))
                                      (declare (not safe))
                                      (##map __tmp226224 __tmp226223))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226222)))))
                      (letrec ((_%compile-obj225804%_
                                (lambda (_%scm-path225811%_ _%c-path225812%_)
                                  (let* ((_%o-path225814%_
                                          (_%replace-extension225718%_
                                           _%c-path225812%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225816%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225814%_
                                             '".lock")))
                                         (_%locked225818%_ '#f)
                                         (_%unlock225821%_
                                          (lambda ()
                                            (close-port _%locked225818%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225816%_)))))
                                    (let _%retry225824%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225816%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225824%_))
                                          (begin
                                            (set! _%locked225818%_
                                                  (let ((__tmp226225
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225816%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226225)))
                                            (if _%locked225818%_
                                                '#!void
                                                (_%retry225824%_)))))
                                    (let ((__tmp226227
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225814%_)))
                                                     (not _%scm-path225811%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225811%_
                                                        _%o-path225814%_)))
                                                 (let ((_%gsc-cc-opts225835%_
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
                         (let ((__tmp226229 (cons _%c-path225812%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226229
                            _%gsc-static-opts225791%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226228 _%gsc-cc-opts225835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226226
                                           (lambda () (_%unlock225821%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226227
                                       __tmp226226))))))
                        (let ((__tmp226230
                               (lambda ()
                                 (let ((__tmp226231
                                        (path-directory _%output-bin225775%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226231)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226230))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225777%_
                         (lambda ()
                           (_%generate-stub225716%_
                            _%builtin-modules225801%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225809%_
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
                         (cons _%src-bin-scm225769%_
                               (cons _%output-scm225777%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226234 _%src-deps-scm225761%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226233
                                                      _%libgerbil-c225751%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226232
                                               _%gsc-link-opts225787%_))))
                                     (for-each
                                      _%compile-obj225804%_
                                      (let ((__tmp226235
                                             (cons _%src-bin-scm225769%_
                                                   (cons _%output-scm225777%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226235
                                         _%src-deps-scm225761%_))
                                      (let ((__tmp226236
                                             (cons _%src-bin-c225771%_
                                                   (cons _%output-c225779%_
                                                         (cons _%output_-c225783%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226236
                                         _%src-deps-c225763%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225775%_
                                                        (let ((__tmp226237
                                                               (cons _%src-bin-o225773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225781%_
                                   (cons _%output_-o225785%_
                                         (let ((__tmp226238
                                                (let ((__tmp226239
                                                       (let ((__tmp226241
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225739%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225795%_))))
                     (__tmp226240
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225797%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226241 __tmp226240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226239
                                                   _%output-ld-opts225793%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226238
                                            _%libgerbil-o225753%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226237 _%src-deps-o225765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226242
                                            (cons _%output-c225779%_
                                                  (cons _%output_-c225783%_
                                                        (cons _%output-o225781%_
                                                              (cons _%output_-o225785%_
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
                                     _%compile-it225809%_))
                                  (_%compile-it225809%_)))
                            '#!void))))))
          (let* ((_%output-bin225729%_
                  (gxc#compile-exe-output-file _%ctx225713%_ _%opts225714%_))
                 (_%output-scm225731%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225729%_ '"__exe.scm"))))
            (_%compile-stub225727%_
             _%output-scm225731%_
             _%output-bin225729%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225535%_ _%opts225536%_)
        (letrec ((_%reset-declare225538%_
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
                 (_%generate-stub225539%_
                  (lambda (_%deps225704%_)
                    (let ((_%mod-main225706%_
                           (gxc#find-runtime-symbol _%ctx225535%_ 'main))
                          (_%reset-decl225707%_ (_%reset-declare225538%_))
                          (_%user-decl225708%_ (_%user-declare225540%_)))
                      (for-each
                       (lambda (_%dep225710%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225707%_))
                         (newline)
                         (if _%user-decl225708%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225708%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226243
                                (cons 'include (cons _%dep225710%_ '()))))
                           (declare (not safe))
                           (##write __tmp226243))
                         (newline))
                       _%deps225704%_)
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
                                                           (cons _%mod-main225706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226244))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225540%_
                  (lambda ()
                    (let* ((_%gsc-opts225609%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225536%_)))
                           (_%gsc-prelude225611%_
                            (if _%gsc-opts225609%_
                                (member '"-prelude" _%gsc-opts225609%_)
                                '#f))
                           (_%gsc-prelude225613%_
                            (if _%gsc-prelude225611%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225611%_)))
                                '#f)))
                      (let _%lp225616%_ ((_%rest225618%_
                                          (cons _%gsc-prelude225613%_ '()))
                                         (_%user-decls225619%_ '()))
                        (let* ((_%rest225620225628%_ _%rest225618%_)
                               (_%else225622225636%_
                                (lambda ()
                                  (if (null? _%user-decls225619%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225619%_)))))
                               (_%K225624225692%_
                                (lambda (_%rest225639%_ _%expr225640%_)
                                  (let* ((_%expr225641225653%_ _%expr225640%_)
                                         (_%else225644225661%_
                                          (lambda ()
                                            (_%lp225616%_
                                             _%rest225639%_
                                             _%user-decls225619%_))))
                                    (let ((_%K225649225682%_
                                           (lambda (_%decls225680%_)
                                             (_%lp225616%_
                                              _%rest225639%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225619%_
                                                 _%decls225680%_)))))
                                          (_%K225646225667%_
                                           (lambda (_%exprs225665%_)
                                             (_%lp225616%_
                                              (append _%exprs225665%_
                                                      _%rest225639%_)
                                              _%user-decls225619%_))))
                                      (if (pair? _%expr225641225653%_)
                                          (let ((_%tl225651225687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225641225653%_)))
                                                (_%hd225650225685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225641225653%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225650225685%_
                                                         'declare))
                                                (let ((_%decls225690%_
                                                       _%tl225651225687%_))
                                                  (_%K225649225682%_
                                                   _%decls225690%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225650225685%_
                                                             'begin))
                                                    (let ((_%exprs225675%_
                                                           _%tl225651225687%_))
                                                      (_%K225646225667%_
                                                       _%exprs225675%_))
                                                    (_%else225644225661%_))))
                                          (_%else225644225661%_)))))))
                          (if (pair? _%rest225620225628%_)
                              (let ((_%hd225625225695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225620225628%_)))
                                    (_%tl225626225697%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225620225628%_))))
                                (let* ((_%expr225700%_ _%hd225625225695%_)
                                       (_%rest225702%_ _%tl225626225697%_))
                                  (_%K225624225692%_
                                   _%rest225702%_
                                   _%expr225700%_)))
                              (_%else225622225636%_)))))))
                 (_%compile-stub225541%_
                  (lambda (_%output-scm225548%_ _%output-bin225549%_)
                    (let* ((_%gerbil-home225551%_
                            (let ((__tmp226245
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226245)))
                           (_%gerbil-libdir225553%_
                            (path-expand '"lib" _%gerbil-home225551%_))
                           (_%runtime225555%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225557%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225551%_))
                           (_%include-gambit-sharp225559%_
                            (gxc#include-source _%gambit-sharp225557%_))
                           (_%bin-scm225561%_
                            (gxc#find-static-module-file _%ctx225535%_))
                           (_%deps225563%_
                            (gxc#find-runtime-module-deps _%ctx225535%_))
                           (_%deps225565%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225563%_)))
                           (_%deps225570%_
                            (let ((__tmp226246
                                   (lambda (_%$obj225567%_)
                                     (not (gxc#file-empty? _%$obj225567%_)))))
                              (declare (not safe))
                              (##filter __tmp226246 _%deps225565%_)))
                           (_%deps225574%_
                            (let ((__tmp226247
                                   (lambda (_%f225572%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225572%_
                                             _%runtime225555%_))))))
                              (declare (not safe))
                              (##filter __tmp226247 _%deps225570%_)))
                           (_%output-base225576%_
                            (let ((__tmp226248
                                   (path-strip-extension
                                    _%output-scm225548%_)))
                              (declare (not safe))
                              (##string-append __tmp226248)))
                           (_%output-c225578%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225576%_ '".c")))
                           (_%output-o225580%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225576%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225582%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225576%_ '"_.c")))
                           (_%output-o_225584%_
                            (let ((__tmp226249
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225576%_
                               __tmp226249)))
                           (_%gsc-link-opts225586%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225588%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225590%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225553%_)))
                           (_%output-ld-opts225592%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225594%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225559%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225559%_
                                            '()))))
                           (_%gsc-link-opts225596%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225586%_
                               _%gsc-gx-macros225594%_)))
                           (_%rpath225598%_
                            (gxc#gerbil-rpath _%gerbil-libdir225553%_))
                           (_%default-ld-options225600%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226250
                             (lambda ()
                               (let ((__tmp226251
                                      (path-directory _%output-bin225549%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226251)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226250))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225548%_
                       (lambda ()
                         (_%generate-stub225539%_
                          (let ((__tmp226252
                                 (let ((__tmp226253
                                        (cons _%bin-scm225561%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226253
                                    _%deps225574%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226252 _%runtime225555%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225606%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225582%_
                                                      (let ((__tmp226254
                                                             (cons _%output-scm225548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226254 _%gsc-link-opts225596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226255
                                                 (let ((__tmp226256
                                                        (cons _%output-c225578%_
                                                              (cons _%output-c_225582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226256
                                                    _%gsc-static-opts225590%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226255
                                             _%gsc-cc-opts225588%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225549%_
                                                      (cons _%output-o225580%_
                                                            (cons _%output-o_225584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226257
                                 (let ((__tmp226259
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225553%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225600%_))))
                                       (__tmp226258
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225598%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226259 __tmp226258))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226257
                             _%output-ld-opts225592%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225606%_))
                                (_%compile-it225606%_)))
                          '#!void)))))
          (let* ((_%output-bin225543%_
                  (gxc#compile-exe-output-file _%ctx225535%_ _%opts225536%_))
                 (_%output-scm225545%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225543%_ '"__exe.scm"))))
            (_%compile-stub225541%_
             _%output-scm225545%_
             _%output-bin225543%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225484%_ _%id225485%_)
        (let ((_%$e225531%_
               (let ((__tmp226261
                      (lambda (_%e225486225488%_)
                        (let* ((_%e225486225490225500%_ _%e225486225488%_)
                               (_%else225492225508%_ (lambda () '#f))
                               (_%K225494225512%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225486225490225500%_
                                 'gx#module-export::t))
                              (let* ((_%e225495225515%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225486225490225500%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225496225518%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225486225490225500%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225497225521%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225486225490225500%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225497225521%_ '0))
                                    (let ((_%e225498225524%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225486225490225500%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225526225528%_)
                                             (eq? _%g225526225528%_
                                                  _%id225485%_))
                                           _%e225498225524%_)
                                          (_%K225494225512%_)
                                          (_%else225492225508%_)))
                                    (_%else225492225508%_)))
                              (_%else225492225508%_)))))
                     (__tmp226260
                      (##structure-ref
                       _%ctx225484%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226261 __tmp226260))))
          (if _%$e225531%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225531%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225475%_ _%id225476%_)
        (let ((_%$e225478%_
               (gxc#find-export-binding _%ctx225475%_ _%id225476%_)))
          (if _%$e225478%_
              ((lambda (_%bind225481%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225481%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225476%_)))
                 (##structure-ref _%bind225481%_ '1 gx#binding::t '#f))
               _%$e225478%_)
              (let ((__tmp226262
                     (##structure-ref
                      _%ctx225475%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226262
                 _%id225476%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225341%_)
        (letrec* ((_%ht225343%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225344%_
                   (lambda (_%in225420%_ _%phi225421%_)
                     (let ((_%iphi225423%_
                            (fx+ _%phi225421%_
                                 (##direct-structure-ref
                                  _%in225420%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225424%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225420%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225426%_ ((_%rest225428%_ _%imports225424%_)
                                          (_%r225429%_ '()))
                         (let* ((_%rest225430225438%_ _%rest225428%_)
                                (_%else225432225446%_ (lambda () _%r225429%_))
                                (_%K225434225463%_
                                 (lambda (_%rest225449%_ _%in225450%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225450%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225423%_))
                                           (_%lp225426%_
                                            _%rest225449%_
                                            (cons _%in225450%_ _%r225429%_))
                                           (_%lp225426%_
                                            _%rest225449%_
                                            _%r225429%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225450%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225454%_
                                                  (fx+ _%phi225421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225450%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225454%_))
                                                 (_%lp225426%_
                                                  _%rest225449%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225450%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225429%_))
                                                 (_%lp225426%_
                                                  _%rest225449%_
                                                  _%r225429%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225450%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225457%_
                                                      (fx+ _%iphi225423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225450%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225457%_))
                                                     (_%lp225426%_
                                                      _%rest225449%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225450%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225429%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225457%_))
                                                         (_%lp225426%_
                                                          _%rest225449%_
                                                          (let ((__tmp226263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225344%_
                          _%in225450%_
                          _%iphi225423%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225429%_ __tmp226263)))
                 (_%lp225426%_ _%rest225449%_ _%r225429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225426%_
                                                _%rest225449%_
                                                _%r225429%_)))))))
                           (if (pair? _%rest225430225438%_)
                               (let ((_%hd225435225466%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225430225438%_)))
                                     (_%tl225436225468%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225430225438%_))))
                                 (let* ((_%in225471%_ _%hd225435225466%_)
                                        (_%rest225473%_ _%tl225436225468%_))
                                   (_%K225434225463%_
                                    _%rest225473%_
                                    _%in225471%_)))
                               (_%else225432225446%_)))))))
                  (_%find-deps225345%_
                   (lambda (_%rest225353%_ _%deps225354%_)
                     (let* ((_%rest225355225363%_ _%rest225353%_)
                            (_%else225357225371%_ (lambda () _%deps225354%_))
                            (_%K225359225408%_
                             (lambda (_%rest225374%_ _%hd225375%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225375%_
                                      'gx#module-context::t))
                                   (let ((_%id225378%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225375%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225379%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225375%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225343%_
                                            _%id225378%_))
                                         (_%find-deps225345%_
                                          _%rest225374%_
                                          _%deps225354%_)
                                         (let ((_%$e225382%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225375%_))))
                                           (if _%$e225382%_
                                               ((lambda (_%pre225385%_)
                                                  (let ((_%xdeps225387%_
                                                         (_%find-deps225345%_
                                                          (cons _%pre225385%_
                                                                _%imports225379%_)
                                                          _%deps225354%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225343%_
                                                       _%id225378%_
                                                       _%hd225375%_))
                                                    (_%find-deps225345%_
                                                     _%rest225374%_
                                                     (cons _%hd225375%_
                                                           _%xdeps225387%_))))
                                                _%$e225382%_)
                                               (let ((_%xdeps225390%_
                                                      (_%find-deps225345%_
                                                       _%imports225379%_
                                                       _%deps225354%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225343%_
                                                    _%id225378%_
                                                    _%hd225375%_))
                                                 (_%find-deps225345%_
                                                  _%rest225374%_
                                                  (cons _%hd225375%_
                                                        _%xdeps225390%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225375%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225393%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225375%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225343%_
                                                _%id225393%_))
                                             (_%find-deps225345%_
                                              _%rest225374%_
                                              _%deps225354%_)
                                             (let ((_%xdeps225397%_
                                                    (_%find-deps225345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225375%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225354%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225343%_
                                                      _%id225393%_))
                                                   (_%find-deps225345%_
                                                    _%rest225374%_
                                                    _%xdeps225397%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225343%_
                                                        _%id225393%_
                                                        _%hd225375%_))
                                                     (_%find-deps225345%_
                                                      _%rest225374%_
                                                      (cons _%hd225375%_
                                                            _%xdeps225397%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225375%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225375%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225345%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225375%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225374%_)
                                                _%deps225354%_)
                                               (_%find-deps225345%_
                                                _%rest225374%_
                                                _%deps225354%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225375%_
                                                  'gx#module-export::t))
                                               (_%find-deps225345%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225375%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225374%_)
                                                _%deps225354%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225375%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225375%_ '2 '#f '#f)))
               (_%find-deps225345%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225375%_ '1 '#f '#f))
                      _%rest225374%_)
                _%deps225354%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225375%_ '2 '#f '#f)))
                   (let ((_%xdeps225404%_
                          (_%import-set-template225344%_ _%hd225375%_ '0)))
                     (_%find-deps225345%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225374%_ _%xdeps225404%_))
                      _%deps225354%_))
                   (_%find-deps225345%_ _%rest225374%_ _%deps225354%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225375%_))))))))))
                       (if (pair? _%rest225355225363%_)
                           (let ((_%hd225360225411%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225355225363%_)))
                                 (_%tl225361225413%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225355225363%_))))
                             (let* ((_%hd225416%_ _%hd225360225411%_)
                                    (_%rest225418%_ _%tl225361225413%_))
                               (_%K225359225408%_
                                _%rest225418%_
                                _%hd225416%_)))
                           (_%else225357225371%_))))))
          (let ((__tmp226264
                 (filter gx#expander-context-id
                         (_%find-deps225345%_
                          (let ((_%$e225347%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225341%_))))
                            (if _%$e225347%_
                                ((lambda (_%pre225350%_)
                                   (cons _%pre225350%_
                                         (##structure-ref
                                          _%ctx225341%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225347%_)
                                (##structure-ref
                                 _%ctx225341%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226264)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225271%_)
        (let* ((_%context-id225273%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225271%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225271%_ '1 '#f '#f))
                    (string->symbol _%ctx225271%_)))
               (_%scm225275%_
                (let ((__tmp226265
                       (gxc#static-module-name _%context-id225273%_)))
                  (declare (not safe))
                  (##string-append __tmp226265 '".scm")))
               (_%dirs225277%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225283%_
                (let ((_%user-libpath225279%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225279%_
                      (let ((_%user-libpath225281%_
                             (path-expand '"lib" _%user-libpath225279%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225281%_ _%dirs225277%_))
                            _%dirs225277%_
                            (cons _%user-libpath225281%_ _%dirs225277%_)))
                      _%dirs225277%_)))
               (_%dirs225293%_
                (let ((_%$e225285%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225285%_
                      ((lambda (_%g225287225289%_)
                         (cons _%g225287225289%_ _%dirs225283%_))
                       _%$e225285%_)
                      _%dirs225283%_)))
               (_%dirs225299%_
                (let ((__tmp226266
                       (lambda (_%g225294225296%_)
                         (path-expand '"static" _%g225294225296%_))))
                  (declare (not safe))
                  (##map __tmp226266 _%dirs225293%_))))
          (let _%lp225302%_ ((_%rest225304%_ _%dirs225299%_))
            (let* ((_%rest225305225313%_ _%rest225304%_)
                   (_%else225307225321%_
                    (lambda ()
                      (let ((__tmp226267
                             (##structure-ref
                              _%ctx225271%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226267
                         _%scm225275%_))))
                   (_%K225309225329%_
                    (lambda (_%rest225324%_ _%dir225325%_)
                      (let ((_%path225327%_
                             (path-expand _%scm225275%_ _%dir225325%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225327%_))
                            _%path225327%_
                            (_%lp225302%_ _%rest225324%_))))))
              (if (pair? _%rest225305225313%_)
                  (let ((_%hd225310225332%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225305225313%_)))
                        (_%tl225311225334%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225305225313%_))))
                    (let* ((_%dir225337%_ _%hd225310225332%_)
                           (_%rest225339%_ _%tl225311225334%_))
                      (_%K225309225329%_ _%rest225339%_ _%dir225337%_)))
                  (_%else225307225321%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225269%_)
        (zero? (let ((__tmp226268 (file-info _%path225269%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226268)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225260%_)
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
                              _%ctx225260%_
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
                                     (gxc#optimize! _%ctx225260%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226279))
                          '#!void)
                      (gxc#collect-bindings _%ctx225260%_)
                      (gxc#compile-runtime-code _%ctx225260%_)
                      (gxc#compile-meta-code _%ctx225260%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225260%_)
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
                                          (let ((__obj226173
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226173))
                                            __obj226173)))
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
           _%ctx225260%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225258%_)
        (let ((__tmp226280
               (##structure-ref _%ctx225258%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226280))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225202%_)
        (letrec ((_%compile1225204%_
                  (lambda (_%ctx225247%_)
                    (let* ((_%code225249%_
                            (##structure-ref
                             _%ctx225247%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225253%_
                            (let ((_%idstr225251%_
                                   (let ((__tmp226281
                                          (##structure-ref
                                           _%ctx225247%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226281))))
                              (declare (not safe))
                              (##string-append _%idstr225251%_ '"~0")))
                           (_%rtc?225255%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225249%_))))
                      (if _%rtc?225255%_
                          (let ((__tmp226282
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226282
                             _%ctx225247%_
                             _%rtm225253%_))
                          '#!void)
                      (_%generate-runtime-code225206%_
                       _%ctx225247%_
                       _%code225249%_
                       (if _%rtc?225255%_ _%rtm225253%_ '#f)))))
                 (_%context-timestamp225205%_
                  (lambda (_%ctx225245%_)
                    (let ((__tmp226283
                           (let ((__tmp226284
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225245%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226284 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226283))))
                 (_%generate-runtime-code225206%_
                  (lambda (_%ctx225213%_ _%code225214%_ _%rtm225215%_)
                    (let* ((_%runtime-code?225217%_ (if _%rtm225215%_ '#t '#f))
                           (_%lifts225219%_ (box '()))
                           (_%runtime-code225226%_
                            (if _%runtime-code?225217%_
                                (let ((__tmp226285
                                       (lambda ()
                                         (let ((__tmp226286
                                                (lambda ()
                                                  (let ((__tmp226287
                                                         (lambda ()
                                                           (let ((__tmp226289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226291
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225214%_))))
                                  (__tmp226290
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226291
                               gxc#current-compile-identifiers
                               __tmp226290))))
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
                                                     _%lifts225219%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226286
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226285
                                   gx#current-expander-context
                                   _%ctx225213%_))
                                '#f))
                           (_%runtime-code225228%_
                            (if _%runtime-code?225217%_
                                (if (null? (unbox _%lifts225219%_))
                                    _%runtime-code225226%_
                                    (cons 'begin
                                          (let ((__tmp226293
                                                 (cons _%runtime-code225226%_
                                                       '()))
                                                (__tmp226292
                                                 (reverse (unbox _%lifts225219%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226293
                                             __tmp226292))))
                                '#f))
                           (_%runtime-code225230%_
                            (if _%runtime-code?225217%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225205%_
                                                         _%ctx225213%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225228%_ '())))
                                '#f))
                           (_%loader-code225233%_
                            (let ((__tmp226294
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225214%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226294
                               gx#current-expander-context
                               _%ctx225213%_)))
                           (_%loader-code225235%_
                            (cons 'begin
                                  (cons _%loader-code225233%_
                                        (cons (if _%runtime-code?225217%_
                                                  (cons 'load-module
                                                        (cons _%rtm225215%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225237%_
                            (gxc#compile-output-file _%ctx225213%_ '0 '".scm"))
                           (_%scmrt225239%_
                            (gxc#compile-output-file
                             _%ctx225213%_
                             '#f
                             '".scm"))
                           (_%scms225241%_
                            (gxc#compile-static-output-file _%ctx225213%_)))
                      (if _%runtime-code?225217%_
                          (gxc#compile-scm-file__0
                           _%scm0225237%_
                           _%runtime-code225230%_)
                          '#!void)
                      (let ((__tmp226295
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225239%_
                                _%loader-code225235%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226295
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225241%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225241%_))
                          '#!void)
                      (if _%runtime-code?225217%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225237%_ _%scms225241%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225241%_ void)))))))
          (let* ((_%all-modules225208%_
                  (cons _%ctx225202%_ (gxc#lift-nested-modules _%ctx225202%_)))
                 (__tmp226296
                  (lambda (_%ctx225210%_)
                    (let ((__tmp226297
                           (lambda () (_%compile1225204%_ _%ctx225210%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226297
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226296 _%all-modules225208%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx225101%_)
        (letrec ((_%compile-ssi225103%_
                  (lambda (_%code225170%_)
                    (let* ((_%path225172%_
                            (gxc#compile-output-file
                             _%ctx225101%_
                             '#f
                             '".ssi"))
                           (_%prelude225184%_
                            (let* ((_%super225174%_
                                    (##structure-ref
                                     _%ctx225101%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225176%_
                                    (##structure-ref
                                     _%super225174%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225176%_
                                  ((lambda (_%g225178225180%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225178225180%_)))
                                   _%$e225176%_)
                                  ':<root>)))
                           (_%ns225186%_
                            (##structure-ref
                             _%ctx225101%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225188%_
                            (symbol->string
                             (##structure-ref
                              _%ctx225101%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225196%_
                            (let ((_%$e225190%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225188%_ '#\/))))
                              (if _%$e225190%_
                                  ((lambda (_%x225193%_)
                                     (let ((__tmp226298
                                            (substring
                                             _%idstr225188%_
                                             '0
                                             _%x225193%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226298)))
                                   _%$e225190%_)
                                  '#f)))
                           (_%rt225198%_
                            (let ((__tmp226299
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226299 _%ctx225101%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225172%_))
                      (gxc#with-output-to-scheme-file
                       _%path225172%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225184%_))
                         (if _%pkg225196%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225196%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225186%_))
                         (newline)
                         (pretty-print _%code225170%_)
                         (if _%rt225198%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225198%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi225104%_
                  (lambda (_%part225109%_)
                    (let* ((_%part225110225123%_ _%part225109%_)
                           (_%E225112225127%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part225110225123%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K225113225139%_
                            (lambda (_%code225130%_
                                     _%n225131%_
                                     _%phi225132%_
                                     _%phi-ctx225133%_)
                              (let ((_%code225137%_
                                     (let ((__tmp226300
                                            (lambda ()
                                              (let ((__tmp226301
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code225130%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226301
                                                 gx#current-expander-phi
                                                 _%phi225132%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226300
                                        gx#current-expander-context
                                        _%phi-ctx225133%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx225101%_
                                  _%n225131%_
                                  '".scm")
                                 _%code225137%_
                                 '#t)))))
                      (if (pair? _%part225110225123%_)
                          (let ((_%hd225114225142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part225110225123%_)))
                                (_%tl225115225144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part225110225123%_))))
                            (let ((_%phi-ctx225147%_ _%hd225114225142%_))
                              (if (pair? _%tl225115225144%_)
                                  (let ((_%hd225116225149%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl225115225144%_)))
                                        (_%tl225117225151%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl225115225144%_))))
                                    (let ((_%phi225154%_ _%hd225116225149%_))
                                      (if (pair? _%tl225117225151%_)
                                          (let ((_%hd225118225156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl225117225151%_)))
                                                (_%tl225119225158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl225117225151%_))))
                                            (let ((_%n225161%_
                                                   _%hd225118225156%_))
                                              (if (pair? _%tl225119225158%_)
                                                  (let ((_%hd225120225163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl225119225158%_)))
                                                        (_%tl225121225165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl225119225158%_))))
                                                    (let ((_%code225168%_
                                                           _%hd225120225163%_))
                                                      (if (null? _%tl225121225165%_)
                                                          (_%K225113225139%_
                                                           _%code225168%_
                                                           _%n225161%_
                                                           _%phi225154%_
                                                           _%phi-ctx225147%_)
                                                          (_%E225112225127%_))))
                                                  (_%E225112225127%_))))
                                          (_%E225112225127%_))))
                                  (_%E225112225127%_))))
                          (_%E225112225127%_))))))
          (let ((_g226302_ (gxc#generate-meta-code _%ctx225101%_)))
            (begin
              (let ((_g226303_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226302_)
                           (##values-length _g226302_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226303_ 2)))
                    (error "Context expects 2 values" _g226303_)))
              (let ((_%ssi-code225106%_
                     (let () (declare (not safe)) (##values-ref _g226302_ 0)))
                    (_%phi-code225107%_
                     (let () (declare (not safe)) (##values-ref _g226302_ 1))))
                (begin
                  (_%compile-ssi225103%_ _%ssi-code225106%_)
                  (for-each _%compile-phi225104%_ _%phi-code225107%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx225083%_)
        (let* ((_%path225085%_
                (gxc#compile-output-file _%ctx225083%_ '#f '".ssxi.ss"))
               (_%code225087%_
                (let ((__tmp226304
                       (##structure-ref
                        _%ctx225083%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226304)))
               (_%idstr225089%_
                (symbol->string
                 (##structure-ref
                  _%ctx225083%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg225097%_
                (let ((_%$e225091%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr225089%_ '#\/))))
                  (if _%$e225091%_
                      ((lambda (_%x225094%_)
                         (let ((__tmp226305
                                (substring _%idstr225089%_ '0 _%x225094%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226305)))
                       _%$e225091%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path225085%_))
          (gxc#with-output-to-scheme-file
           _%path225085%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg225097%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg225097%_))
                 '#!void)
             (newline)
             (pretty-print _%code225087%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx225076%_)
        (let* ((_%state225078%_
                (let ((__obj226174
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226174 _%ctx225076%_))
                  __obj226174))
               (_%ssi-code225080%_
                (let ((__tmp226306
                       (##structure-ref
                        _%ctx225076%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state225078%_
                   __tmp226306))))
          (values _%ssi-code225080%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state225078%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx225067%_)
        (let* ((_%lifts225069%_ (box '()))
               (__tmp226307
                (lambda ()
                  (let ((__tmp226309
                         (lambda ()
                           (let ((__tmp226311
                                  (lambda ()
                                    (let ((_%code225074%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx225067%_))))
                                      (if (null? (unbox _%lifts225069%_))
                                          _%code225074%_
                                          (cons 'begin
                                                (let ((__tmp226313
                                                       (cons _%code225074%_
                                                             '()))
                                                      (__tmp226312
                                                       (reverse (unbox _%lifts225069%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226313
                                                   __tmp226312)))))))
                                 (__tmp226310
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226311
                              gxc#current-compile-identifiers
                              __tmp226310))))
                        (__tmp226308
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226309
                     gxc#current-compile-marks
                     __tmp226308)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226307
           gxc#current-compile-lift
           _%lifts225069%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx225063%_)
        (let ((_%modules225065%_ (box '())))
          (let ((__tmp226314
                 (##structure-ref _%ctx225063%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules225065%_ __tmp226314))
          (reverse (unbox _%modules225065%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path225043%_ _%code225044%_ _%phi?225045%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path225043%_))
        (gxc#with-output-to-scheme-file
         _%path225043%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226315
                                           (if _%phi?225045%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226315)))))))
           (pretty-print _%code225044%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it225049%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path225043%_ _%phi?225045%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226316
                         (cons 'compile-file (cons _%path225043%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it225049%_ __tmp226316))
                  (_%compile-it225049%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path225054%_ _%code225055%_)
        (let ((_%phi?225057%_ '#f))
          (gxc#compile-scm-file__%
           _%path225054%_
           _%code225055%_
           _%phi?225057%_))))
    (define gxc#compile-scm-file
      (lambda _g226317_
        (let ((_g226318_ (let () (declare (not safe)) (##length _g226317_))))
          (cond ((let () (declare (not safe)) (##fx= _g226318_ 2))
                 (apply gxc#compile-scm-file__0 _g226317_))
                ((let () (declare (not safe)) (##fx= _g226318_ 3))
                 (apply gxc#compile-scm-file__% _g226317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226317_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224944%_)
        (let _%lp224946%_ ((_%rest224948%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224949%_ '()))
          (let* ((_%rest224950224970%_ _%rest224948%_)
                 (_%else224954224978%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224949%_)))
                        (reverse _%opts224949%_)))))
            (let ((_%K224964225021%_
                   (lambda (_%rest225019%_)
                     (_%lp224946%_ _%rest225019%_ _%opts224949%_)))
                  (_%K224959225003%_
                   (lambda (_%rest225001%_)
                     (_%lp224946%_ _%rest225001%_ _%opts224949%_)))
                  (_%K224956224985%_
                   (lambda (_%rest224982%_ _%opt224983%_)
                     (_%lp224946%_
                      _%rest224982%_
                      (cons _%opt224983%_ _%opts224949%_)))))
              (if (pair? _%rest224950224970%_)
                  (let ((_%tl224966225026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224950224970%_)))
                        (_%hd224965225024%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224950224970%_))))
                    (if (equal? _%hd224965225024%_ '"-cc-options")
                        (if (pair? _%tl224966225026%_)
                            (let* ((_%tl224968225029%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224966225026%_)))
                                   (_%rest225032%_ _%tl224968225029%_))
                              (_%K224964225021%_ _%rest225032%_))
                            (let ((_%opt224993%_ _%hd224965225024%_)
                                  (_%rest224995%_ _%tl224966225026%_))
                              (_%K224956224985%_
                               _%rest224995%_
                               _%opt224993%_)))
                        (if (equal? _%hd224965225024%_ '"-ld-options")
                            (if (pair? _%tl224966225026%_)
                                (let* ((_%tl224963225011%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224966225026%_)))
                                       (_%rest225014%_ _%tl224963225011%_))
                                  (_%K224959225003%_ _%rest225014%_))
                                (let ((_%opt224993%_ _%hd224965225024%_)
                                      (_%rest224995%_ _%tl224966225026%_))
                                  (_%K224956224985%_
                                   _%rest224995%_
                                   _%opt224993%_)))
                            (let ((_%opt224993%_ _%hd224965225024%_)
                                  (_%rest224995%_ _%tl224966225026%_))
                              (_%K224956224985%_
                               _%rest224995%_
                               _%opt224993%_)))))
                  (_%else224954224978%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?225038%_ '#f)) (gxc#gsc-link-options__% _%phi?225038%_))))
    (define gxc#gsc-link-options
      (lambda _g226319_
        (let ((_g226320_ (let () (declare (not safe)) (##length _g226319_))))
          (cond ((let () (declare (not safe)) (##fx= _g226320_ 0))
                 (apply gxc#gsc-link-options__0 _g226319_))
                ((let () (declare (not safe)) (##fx= _g226320_ 1))
                 (apply gxc#gsc-link-options__% _g226319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226319_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224794%_ _%static?224790224795%_ _%phi?224796%_)
        (let ((_%static?224798%_
               (if (eq? _%static?224790224795%_ absent-value)
                   '#f
                   _%static?224790224795%_)))
          (if _%phi?224796%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224800%_ ((_%rest224802%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224803%_ '()))
                (let* ((_%rest224804224830%_ _%rest224802%_)
                       (_%else224809224838%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224803%_)))
                              (reverse! _%opts224803%_)))))
                  (let ((_%K224824224901%_
                         (lambda (_%rest224898%_ _%opt224899%_)
                           (if _%static?224798%_
                               (_%lp224800%_
                                _%rest224898%_
                                (cons _%opt224899%_
                                      (cons '"-cc-options" _%opts224803%_)))
                               (_%lp224800%_ _%rest224898%_ _%opts224803%_))))
                        (_%K224819224878%_
                         (lambda (_%rest224875%_ _%opt224876%_)
                           (_%lp224800%_
                            _%rest224875%_
                            (cons _%opt224876%_
                                  (cons '"-cc-options" _%opts224803%_)))))
                        (_%K224814224858%_
                         (lambda (_%rest224856%_)
                           (_%lp224800%_ _%rest224856%_ _%opts224803%_)))
                        (_%K224811224844%_
                         (lambda (_%rest224842%_)
                           (_%lp224800%_ _%rest224842%_ _%opts224803%_))))
                    (if (pair? _%rest224804224830%_)
                        (let ((_%tl224826224906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224804224830%_)))
                              (_%hd224825224904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224804224830%_))))
                          (if (equal? _%hd224825224904%_ '"-cc-options")
                              (if (pair? _%tl224826224906%_)
                                  (let ((_%tl224828224911%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224826224906%_)))
                                        (_%hd224827224909%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224826224906%_))))
                                    (if (equal? _%hd224827224909%_ '"-Bstatic")
                                        (let ((_%opt224914%_
                                               _%hd224827224909%_)
                                              (_%rest224916%_
                                               _%tl224828224911%_))
                                          (_%K224824224901%_
                                           _%rest224916%_
                                           _%opt224914%_))
                                        (let ((_%opt224891%_
                                               _%hd224827224909%_)
                                              (_%rest224893%_
                                               _%tl224828224911%_))
                                          (_%K224819224878%_
                                           _%rest224893%_
                                           _%opt224891%_))))
                                  (let ((_%rest224850%_ _%tl224826224906%_))
                                    (_%K224811224844%_ _%rest224850%_)))
                              (if (equal? _%hd224825224904%_ '"-ld-options")
                                  (if (pair? _%tl224826224906%_)
                                      (let* ((_%tl224818224866%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224826224906%_)))
                                             (_%rest224869%_
                                              _%tl224818224866%_))
                                        (_%K224814224858%_ _%rest224869%_))
                                      (let ((_%rest224850%_
                                             _%tl224826224906%_))
                                        (_%K224811224844%_ _%rest224850%_)))
                                  (let ((_%rest224850%_ _%tl224826224906%_))
                                    (_%K224811224844%_ _%rest224850%_)))))
                        (_%else224809224838%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224921%_ _%static?224790224922%_)
        (let ((_%phi?224924%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224921%_
           _%static?224790224922%_
           _%phi?224924%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226321_
        (let ((_g226322_ (let () (declare (not safe)) (##length _g226321_))))
          (cond ((let () (declare (not safe)) (##fx= _g226322_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226321_))
                ((let () (declare (not safe)) (##fx= _g226322_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226321_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224933%_ . _%args224934%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224933%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224933%_
                  'static:
                  absent-value))
               _%args224934%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224791224940%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224791224940%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224640%_ _%static?224636224641%_ _%phi?224642%_)
        (let ((_%static?224644%_
               (if (eq? _%static?224636224641%_ absent-value)
                   '#f
                   _%static?224636224641%_)))
          (if _%phi?224642%_
              '()
              (let _%lp224646%_ ((_%rest224648%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224649%_ '()))
                (let* ((_%rest224650224676%_ _%rest224648%_)
                       (_%else224655224684%_
                        (lambda () (reverse! _%opts224649%_))))
                  (let ((_%K224670224747%_
                         (lambda (_%rest224744%_ _%opt224745%_)
                           (if _%static?224644%_
                               (_%lp224646%_
                                _%rest224744%_
                                (cons _%opt224745%_
                                      (cons '"-ld-options" _%opts224649%_)))
                               (_%lp224646%_ _%rest224744%_ _%opts224649%_))))
                        (_%K224665224724%_
                         (lambda (_%rest224721%_ _%opt224722%_)
                           (_%lp224646%_
                            _%rest224721%_
                            (cons _%opt224722%_
                                  (cons '"-ld-options" _%opts224649%_)))))
                        (_%K224660224704%_
                         (lambda (_%rest224702%_)
                           (_%lp224646%_ _%rest224702%_ _%opts224649%_)))
                        (_%K224657224690%_
                         (lambda (_%rest224688%_)
                           (_%lp224646%_ _%rest224688%_ _%opts224649%_))))
                    (if (pair? _%rest224650224676%_)
                        (let ((_%tl224672224752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224650224676%_)))
                              (_%hd224671224750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224650224676%_))))
                          (if (equal? _%hd224671224750%_ '"-ld-options")
                              (if (pair? _%tl224672224752%_)
                                  (let ((_%tl224674224757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224672224752%_)))
                                        (_%hd224673224755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224672224752%_))))
                                    (if (equal? _%hd224673224755%_ '"-static")
                                        (let ((_%opt224760%_
                                               _%hd224673224755%_)
                                              (_%rest224762%_
                                               _%tl224674224757%_))
                                          (_%K224670224747%_
                                           _%rest224762%_
                                           _%opt224760%_))
                                        (let ((_%opt224737%_
                                               _%hd224673224755%_)
                                              (_%rest224739%_
                                               _%tl224674224757%_))
                                          (_%K224665224724%_
                                           _%rest224739%_
                                           _%opt224737%_))))
                                  (let ((_%rest224696%_ _%tl224672224752%_))
                                    (_%K224657224690%_ _%rest224696%_)))
                              (if (equal? _%hd224671224750%_ '"-cc-options")
                                  (if (pair? _%tl224672224752%_)
                                      (let* ((_%tl224664224712%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224672224752%_)))
                                             (_%rest224715%_
                                              _%tl224664224712%_))
                                        (_%K224660224704%_ _%rest224715%_))
                                      (let ((_%rest224696%_
                                             _%tl224672224752%_))
                                        (_%K224657224690%_ _%rest224696%_)))
                                  (let ((_%rest224696%_ _%tl224672224752%_))
                                    (_%K224657224690%_ _%rest224696%_)))))
                        (_%else224655224684%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224767%_ _%static?224636224768%_)
        (let ((_%phi?224770%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224767%_
           _%static?224636224768%_
           _%phi?224770%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226323_
        (let ((_g226324_ (let () (declare (not safe)) (##length _g226323_))))
          (cond ((let () (declare (not safe)) (##fx= _g226324_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226323_))
                ((let () (declare (not safe)) (##fx= _g226324_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226323_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224779%_ . _%args224780%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224779%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224779%_
                  'static:
                  absent-value))
               _%args224780%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224637224786%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224637224786%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224631%_)
        (let ((_%user-staticdir224633%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224631%_
                       '" -I "
                       _%user-staticdir224633%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224543%_ ((_%rest224545%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224546%_ '()))
          (let* ((_%rest224547224567%_ _%rest224545%_)
                 (_%else224551224575%_ (lambda () _%opts224546%_)))
            (let ((_%K224561224618%_
                   (lambda (_%rest224616%_)
                     (_%lp224543%_ _%rest224616%_ _%opts224546%_)))
                  (_%K224556224596%_
                   (lambda (_%rest224593%_ _%opt224594%_)
                     (_%lp224543%_
                      _%rest224593%_
                      (let ((__tmp226325
                             (let ((__tmp226326
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224594%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226326))))
                        (declare (not safe))
                        (##append _%opts224546%_ __tmp226325)))))
                  (_%K224553224581%_
                   (lambda (_%rest224579%_)
                     (_%lp224543%_ _%rest224579%_ _%opts224546%_))))
              (if (pair? _%rest224547224567%_)
                  (let ((_%tl224563224623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224547224567%_)))
                        (_%hd224562224621%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224547224567%_))))
                    (if (equal? _%hd224562224621%_ '"-cc-options")
                        (if (pair? _%tl224563224623%_)
                            (let* ((_%tl224565224626%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224563224623%_)))
                                   (_%rest224629%_ _%tl224565224626%_))
                              (_%K224561224618%_ _%rest224629%_))
                            (let ((_%rest224587%_ _%tl224563224623%_))
                              (_%K224553224581%_ _%rest224587%_)))
                        (if (equal? _%hd224562224621%_ '"-ld-options")
                            (if (pair? _%tl224563224623%_)
                                (let ((_%tl224560224606%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224563224623%_)))
                                      (_%hd224559224604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224563224623%_))))
                                  (let ((_%opt224609%_ _%hd224559224604%_)
                                        (_%rest224611%_ _%tl224560224606%_))
                                    (_%K224556224596%_
                                     _%rest224611%_
                                     _%opt224609%_)))
                                (let ((_%rest224587%_ _%tl224563224623%_))
                                  (_%K224553224581%_ _%rest224587%_)))
                            (let ((_%rest224587%_ _%tl224563224623%_))
                              (_%K224553224581%_ _%rest224587%_)))))
                  (_%else224551224575%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224540%_)
        (not (let () (declare (not safe)) (string-empty? _%str224540%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224533%_ _%phi?224534%_)
        (let ((_%gsc-link-opts224536%_
               (gxc#gsc-link-options__% _%phi?224534%_))
              (_%gsc-cc-opts224537%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224534%_))
              (_%gsc-ld-opts224538%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224534%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226327
                  (let ((__tmp226328
                         (let ((__tmp226329 (cons _%path224533%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226329
                            _%gsc-link-opts224536%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226328 _%gsc-ld-opts224538%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226327 _%gsc-cc-opts224537%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224499%_ _%n224500%_ _%ext224501%_)
        (letrec ((_%module-relative-path224503%_
                  (lambda (_%ctx224531%_)
                    (path-strip-directory
                     (let ((__tmp226330
                            (##structure-ref
                             _%ctx224531%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226330)))))
                 (_%module-source-directory224504%_
                  (lambda (_%ctx224527%_)
                    (path-directory
                     (let ((_%mpath224529%_
                            (##structure-ref
                             _%ctx224527%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224529%_)
                           _%mpath224529%_
                           (last _%mpath224529%_))))))
                 (_%section-string224505%_
                  (lambda (_%n224521%_)
                    (if (number? _%n224521%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224521%_))
                        (if (symbol? _%n224521%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224521%_))
                            (if (string? _%n224521%_)
                                _%n224521%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224521%_)))))))
                 (_%file-name224506%_
                  (lambda (_%path224519%_)
                    (if _%n224500%_
                        (string-append
                         _%path224519%_
                         '"~"
                         (_%section-string224505%_ _%n224500%_)
                         _%ext224501%_)
                        (string-append _%path224519%_ _%ext224501%_))))
                 (_%file-path224507%_
                  (lambda ()
                    (let ((_%$e224513%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224513%_
                          ((lambda (_%outdir224516%_)
                             (path-expand
                              (_%file-name224506%_
                               (let ((__tmp226331
                                      (##structure-ref
                                       _%ctx224499%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226331)))
                              _%outdir224516%_))
                           _%$e224513%_)
                          (path-expand
                           (_%file-name224506%_
                            (_%module-relative-path224503%_ _%ctx224499%_))
                           (_%module-source-directory224504%_
                            _%ctx224499%_)))))))
          (let ((_%path224509%_ (_%file-path224507%_)))
            (let ((__tmp226332
                   (lambda ()
                     (let ((__tmp226333 (path-directory _%path224509%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226333)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226332))
            _%path224509%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224480%_)
        (letrec ((_%file-name224482%_
                  (lambda (_%id224497%_)
                    (let ((__tmp226334 (gxc#static-module-name _%id224497%_)))
                      (declare (not safe))
                      (##string-append __tmp226334 '".scm"))))
                 (_%file-path224483%_
                  (lambda ()
                    (let* ((_%file224489%_
                            (_%file-name224482%_
                             (##structure-ref
                              _%ctx224480%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224491%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224491%_
                          ((lambda (_%outdir224494%_)
                             (path-expand
                              _%file224489%_
                              (path-expand '"static" _%outdir224494%_)))
                           _%$e224491%_)
                          (path-expand _%file224489%_ '"static"))))))
          (let ((_%path224485%_ (_%file-path224483%_)))
            (let ((__tmp226335
                   (lambda ()
                     (let ((__tmp226336 (path-directory _%path224485%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226336)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226335))
            _%path224485%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224473%_ _%opts224474%_)
        (let ((_%$e224476%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224474%_))))
          (if _%$e224476%_
              _%$e224476%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224473%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224463%_)
        (if (string? _%idstr224463%_)
            (let* ((_%str224466%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224463%_)))
                   (_%strs224468%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224466%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224468%_ '"__"))
            (if (symbol? _%idstr224463%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224463%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224463%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226337
               (let ((__tmp226338 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226338 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226337))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224429%_
               _%stdout-redirection224425224430%_
               _%stderr-redirection224426224431%_
               _%program224432%_
               _%args224433%_)
        (let* ((_%stdout-redirection224435%_
                (if (eq? _%stdout-redirection224425224430%_ absent-value)
                    '#f
                    _%stdout-redirection224425224430%_))
               (_%stderr-redirection224437%_
                (if (eq? _%stderr-redirection224426224431%_ absent-value)
                    '#f
                    _%stderr-redirection224426224431%_)))
          (let ((__tmp226339 (cons _%program224432%_ _%args224433%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226339))
          (let* ((_%proc224439%_
                  (open-process
                   (cons 'path:
                         (cons _%program224432%_
                               (cons 'arguments:
                                     (cons _%args224433%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224435%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224444%_
                  (if (or _%stdout-redirection224435%_
                          _%stderr-redirection224437%_)
                      (read-line _%proc224439%_ '#f)
                      '#f))
                 (_%status224447%_ (process-status _%proc224439%_)))
            (let () (declare (not safe)) (##close-port _%proc224439%_))
            (if (zero? _%status224447%_)
                '#!void
                (begin
                  (display _%output224444%_)
                  (let ((__tmp226340 (cons _%program224432%_ _%args224433%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226340
                     _%status224447%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224452%_ . _%args224453%_)
        (apply gxc#invoke__%
               _%@@keywords224452%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224452%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224452%_
                  'stderr-redirection:
                  absent-value))
               _%args224453%_)))
    (define gxc#invoke
      (lambda _%args224427224459%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224427224459%_)))))
