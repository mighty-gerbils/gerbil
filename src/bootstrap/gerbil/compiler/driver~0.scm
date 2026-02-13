(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771022583)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp259185 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp259185))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp259186 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp259186))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path259042%_ _%fun259043%_)
        (with-output-to-file
         (cons 'path: (cons _%path259042%_ gxc#scheme-file-settings))
         _%fun259043%_)))
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
      (lambda (_%gerbil-libdir259037%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir259037%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path259035%_)
        (let ((__tmp259187 (object->string _%path259035%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp259187 '")"))))
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
      (lambda (_%dir259033%_) (delete-file-or-directory _%dir259033%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath258976%_ _%opts258977%_)
        (if (string? _%srcpath258976%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath258976%_)))
        (let* ((_%outdir258979%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts258977%_)))
               (_%invoke-gsc?258981%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts258977%_)))
               (_%target258986%_
                (let ((_%$e258983%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts258977%_))))
                  (if _%$e258983%_ _%$e258983%_ 'C)))
               (_%gsc-options258991%_
                (append (cons '"-target"
                              (cons (symbol->string _%target258986%_) '()))
                        (let ((_%$e258988%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts258977%_))))
                          (if _%$e258988%_ _%$e258988%_ '()))))
               (_%keep-scm?258993%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts258977%_)))
               (_%verbosity258995%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts258977%_)))
               (_%optimize258997%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts258977%_)))
               (_%debug258999%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts258977%_)))
               (_%gen-ssxi259001%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts258977%_)))
               (_%parallel?259003%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts258977%_))))
          (if _%outdir258979%_
              (let ((__tmp259188
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir258979%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259188))
              '#!void)
          (if _%optimize258997%_
              (let ((__tmp259189
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259189))
              '#!void)
          (let ((__tmp259190
                 (lambda ()
                   (let ((__tmp259191
                          (lambda ()
                            (let ((__tmp259192
                                   (lambda ()
                                     (let ((__tmp259193
                                            (lambda ()
                                              (let ((__tmp259194
                                                     (lambda ()
                                                       (let ((__tmp259195
                                                              (lambda ()
                                                                (let ((__tmp259196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259197
                                        (lambda ()
                                          (let ((__tmp259198
                                                 (lambda ()
                                                   (let ((__tmp259200
                                                          (lambda ()
                                                            (let ((__tmp259202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259204
                                    (lambda ()
                                      (let ((__tmp259205
                                             (lambda ()
                                               (let ((__tmp259206
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath258976%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp259207
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath258976%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp259207))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp259206
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp259205
                                         gxc#current-compile-parallel
                                         _%parallel?259003%_))))
                                   (__tmp259203
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259204
                                gxc#current-compile-identifiers
                                __tmp259203))))
                          (__tmp259201
                           (cons (cons 'compile-module
                                       (cons _%srcpath258976%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259202
                       gxc#current-compile-context
                       __tmp259201))))
                 (__tmp259199 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259200
                                                      gxc#current-compile-timestamp
                                                      __tmp259199)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259198
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi259001%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259197
                                    gxc#current-compile-debug
                                    _%debug258999%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259196
                           gxc#current-compile-optimize
                           _%optimize258997%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259195
                  gxc#current-compile-verbose
                  _%verbosity258995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259194
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?258993%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259193
                                        gxc#current-compile-gsc-options
                                        _%gsc-options258991%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259192
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?258981%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259191
                      gx#current-compilation-target
                      _%target258986%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259190
             gxc#current-compile-output-dir
             _%outdir258979%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath259026%_)
        (let ((_%opts259028%_ '()))
          (gxc#compile-module__% _%srcpath259026%_ _%opts259028%_))))
    (define gxc#compile-module
      (lambda _g259208_
        (let ((_g259209_ (let () (declare (not safe)) (##length _g259208_))))
          (cond ((let () (declare (not safe)) (##fx= _g259209_ 1))
                 (apply gxc#compile-module__0 _g259208_))
                ((let () (declare (not safe)) (##fx= _g259209_ 2))
                 (apply gxc#compile-module__% _g259208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g259208_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath258925%_ _%opts258926%_)
        (if (string? _%srcpath258925%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath258925%_)))
        (let* ((_%outdir258928%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts258926%_)))
               (_%invoke-gsc?258930%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts258926%_)))
               (_%target258935%_
                (let ((_%$e258932%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts258926%_))))
                  (if _%$e258932%_ _%$e258932%_ 'C)))
               (_%gsc-options258940%_
                (append (cons '"-target"
                              (cons (symbol->string _%target258935%_) '()))
                        (let ((_%$e258937%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts258926%_))))
                          (if _%$e258937%_ _%$e258937%_ '()))))
               (_%keep-scm?258942%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts258926%_)))
               (_%verbosity258944%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts258926%_)))
               (_%debug258946%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts258926%_)))
               (_%parallel?258948%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts258926%_))))
          (if _%outdir258928%_
              (let ((__tmp259210
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir258928%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259210))
              '#!void)
          (let ((__tmp259211
                 (lambda ()
                   (let ((__tmp259212
                          (lambda ()
                            (let ((__tmp259213
                                   (lambda ()
                                     (let ((__tmp259214
                                            (lambda ()
                                              (let ((__tmp259215
                                                     (lambda ()
                                                       (let ((__tmp259216
                                                              (lambda ()
                                                                (let ((__tmp259217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259219
                                        (lambda ()
                                          (let ((__tmp259221
                                                 (lambda ()
                                                   (let ((__tmp259223
                                                          (lambda ()
                                                            (let ((__tmp259224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259225
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath258925%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp259226
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath258925%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp259226))
                                       _%opts258926%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259225
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259224
                       gxc#current-compile-parallel
                       _%parallel?258948%_))))
                 (__tmp259222
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259223
                                                      gxc#current-compile-identifiers
                                                      __tmp259222))))
                                                (__tmp259220
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath258925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259221
                                             gxc#current-compile-context
                                             __tmp259220))))
                                       (__tmp259218 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259219
                                    gxc#current-compile-timestamp
                                    __tmp259218)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259217
                           gxc#current-compile-debug
                           _%debug258946%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259216
                  gxc#current-compile-verbose
                  _%verbosity258944%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259215
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?258942%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259214
                                        gxc#current-compile-gsc-options
                                        _%gsc-options258940%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259213
                               gx#current-compilation-target
                               _%target258935%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259212
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?258930%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259211
             gxc#current-compile-output-dir
             _%outdir258928%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath258968%_)
        (let ((_%opts258970%_ '()))
          (gxc#compile-exe__% _%srcpath258968%_ _%opts258970%_))))
    (define gxc#compile-exe
      (lambda _g259227_
        (let ((_g259228_ (let () (declare (not safe)) (##length _g259227_))))
          (cond ((let () (declare (not safe)) (##fx= _g259228_ 1))
                 (apply gxc#compile-exe__0 _g259227_))
                ((let () (declare (not safe)) (##fx= _g259228_ 2))
                 (apply gxc#compile-exe__% _g259227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g259227_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx258921%_ _%opts258922%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts258922%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx258921%_
             _%opts258922%_)
            (gxc#compile-executable-module/separate
             _%ctx258921%_
             _%opts258922%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx258647%_ _%opts258648%_)
        (letrec ((_%generate-stub258650%_
                  (lambda (_%builtin-modules258917%_)
                    (let ((_%mod-main258919%_
                           (gxc#find-runtime-symbol _%ctx258647%_ 'main)))
                      (let ((__tmp259229
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules258917%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp259229))
                      (let ((__tmp259230
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main258919%_
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
                        (##write __tmp259230))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts258651%_
                  (lambda (_%gerbil-libdir258915%_)
                    (let ((__tmp259231
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir258915%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp259231 read))))
                 (_%replace-extension258652%_
                  (lambda (_%path258912%_ _%ext258913%_)
                    (string-append
                     (path-strip-extension _%path258912%_)
                     _%ext258913%_)))
                 (_%replace-extension-with-c258653%_
                  (lambda (_%path258910%_)
                    (_%replace-extension258652%_ _%path258910%_ '".c")))
                 (_%replace-extension-with-object258654%_
                  (lambda (_%path258908%_)
                    (_%replace-extension258652%_
                     _%path258908%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?258655%_
                  (lambda (_%ctx258906%_)
                    (if (_%exclude-module?258657%_ _%ctx258906%_)
                        '#f
                        (not (_%libgerbil-module?258656%_ _%ctx258906%_)))))
                 (_%libgerbil-module?258656%_
                  (lambda (_%ctx258899%_)
                    (let ((_%id-str258901%_
                           (symbol->string
                            (##structure-ref
                             _%ctx258899%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?258657%_ _%id-str258901%_)
                          '#f
                          (let ((_%$e258903%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str258901%_))))
                            (if _%$e258903%_
                                _%$e258903%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str258901%_))))))))
                 (_%exclude-module?258657%_
                  (lambda (_%ctx-or-str258895%_)
                    (let ((_%str258897%_
                           (if (string? _%ctx-or-str258895%_)
                               _%ctx-or-str258895%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str258895%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str258897%_))))
                 (_%not-file-empty?258658%_
                  (lambda (_%path258893%_)
                    (not (gxc#file-empty? _%path258893%_))))
                 (_%fold-libgerbil-runtime-scm258659%_
                  (lambda (_%gerbil-staticdir258886%_ _%libgerbil-scm258887%_)
                    (let ((_%gerbil-runtime-scm258891%_
                           (let ((__tmp259232
                                  (lambda (_%rtm258889%_)
                                    (path-expand
                                     (let ((__tmp259233
                                            (let ((__tmp259234
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm258889%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp259234
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp259233 '".scm"))
                                     _%gerbil-staticdir258886%_))))
                             (declare (not safe))
                             (##map __tmp259232 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates258660%_
                       (append _%gerbil-runtime-scm258891%_
                               _%libgerbil-scm258887%_)))))
                 (_%remove-duplicates258660%_
                  (lambda (_%strlst258846%_)
                    (let _%loop258848%_ ((_%rest258850%_ _%strlst258846%_)
                                         (_%result258851%_ '()))
                      (let* ((_%rest258852258860%_ _%rest258850%_)
                             (_%else258854258868%_
                              (lambda () (reverse! _%result258851%_)))
                             (_%K258856258874%_
                              (lambda (_%rest258871%_ _%path258872%_)
                                (if (member _%path258872%_ _%result258851%_)
                                    (_%loop258848%_
                                     _%rest258871%_
                                     _%result258851%_)
                                    (_%loop258848%_
                                     _%rest258871%_
                                     (cons _%path258872%_
                                           _%result258851%_))))))
                        (if (pair? _%rest258852258860%_)
                            (let ((_%hd258857258877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest258852258860%_)))
                                  (_%tl258858258879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest258852258860%_))))
                              (let* ((_%path258882%_ _%hd258857258877%_)
                                     (_%rest258884%_ _%tl258858258879%_))
                                (_%K258856258874%_
                                 _%rest258884%_
                                 _%path258882%_)))
                            (_%else258854258868%_))))))
                 (_%compile-stub258661%_
                  (lambda (_%output-scm258668%_ _%output-bin258669%_)
                    (let* ((_%gerbil-home258671%_
                            (let ((__tmp259235
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259235)))
                           (_%gerbil-libdir258673%_
                            (path-expand '"lib" _%gerbil-home258671%_))
                           (_%gerbil-staticdir258675%_
                            (path-expand '"static" _%gerbil-libdir258673%_))
                           (_%deps258677%_
                            (gxc#find-runtime-module-deps _%ctx258647%_))
                           (_%libgerbil-deps258679%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?258656%_
                               _%deps258677%_)))
                           (_%libgerbil-scm258681%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps258679%_)))
                           (_%libgerbil-scm258683%_
                            (_%fold-libgerbil-runtime-scm258659%_
                             _%gerbil-staticdir258675%_
                             _%libgerbil-scm258681%_))
                           (_%libgerbil-c258685%_
                            (map _%replace-extension-with-c258653%_
                                 _%libgerbil-scm258683%_))
                           (_%libgerbil-o258687%_
                            (map _%replace-extension-with-object258654%_
                                 _%libgerbil-scm258683%_))
                           (_%src-deps258689%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?258655%_
                               _%deps258677%_)))
                           (_%src-deps-scm258691%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps258689%_)))
                           (_%src-deps-scm258693%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?258658%_
                               _%src-deps-scm258691%_)))
                           (_%src-deps-scm258695%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm258693%_)))
                           (_%src-deps-c258697%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c258653%_
                                     _%src-deps-scm258695%_)))
                           (_%src-deps-o258699%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object258654%_
                                     _%src-deps-scm258695%_)))
                           (_%src-bin-scm258701%_
                            (gxc#find-static-module-file _%ctx258647%_))
                           (_%src-bin-scm258703%_
                            (path-expand _%src-bin-scm258701%_))
                           (_%src-bin-c258705%_
                            (_%replace-extension-with-c258653%_
                             _%src-bin-scm258703%_))
                           (_%src-bin-o258707%_
                            (_%replace-extension-with-object258654%_
                             _%src-bin-scm258703%_))
                           (_%output-bin258709%_
                            (path-expand _%output-bin258669%_))
                           (_%output-scm258711%_
                            (path-expand _%output-scm258668%_))
                           (_%output-c258713%_
                            (_%replace-extension-with-c258653%_
                             _%output-scm258711%_))
                           (_%output-o258715%_
                            (_%replace-extension-with-object258654%_
                             _%output-scm258711%_))
                           (_%output_-c258717%_
                            (_%replace-extension258652%_
                             _%output-scm258711%_
                             '"_.c"))
                           (_%output_-o258719%_
                            (_%replace-extension258652%_
                             _%output-scm258711%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts258721%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts258723%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts258725%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir258675%_))
                           (_%output-ld-opts258727%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts258729%_
                            (_%get-libgerbil-ld-opts258651%_
                             _%gerbil-libdir258673%_))
                           (_%rpath258731%_
                            (gxc#gerbil-rpath _%gerbil-libdir258673%_))
                           (_%builtin-modules258735%_
                            (_%remove-duplicates258660%_
                             (let ((__tmp259236
                                    (let ((__tmp259238
                                           (lambda (_%mod258733%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod258733%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp259237
                                           (cons _%ctx258647%_
                                                 _%deps258677%_)))
                                      (declare (not safe))
                                      (##map __tmp259238 __tmp259237))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp259236)))))
                      (letrec ((_%compile-obj258738%_
                                (lambda (_%scm-path258745%_ _%c-path258746%_)
                                  (let* ((_%o-path258748%_
                                          (_%replace-extension258652%_
                                           _%c-path258746%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock258750%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path258748%_
                                             '".lock")))
                                         (_%locked258752%_ '#f)
                                         (_%unlock258755%_
                                          (lambda ()
                                            (close-port _%locked258752%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock258750%_)))))
                                    (let _%retry258758%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock258750%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry258758%_))
                                          (begin
                                            (set! _%locked258752%_
                                                  (let* ((_%handler258761%_
                                                          false)
                                                         (_%thunk258765%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock258750%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler258770%_ _%handler258761%_)
                 (_%thunk258826%_ _%thunk258765%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler258770%_
                                                     _%thunk258826%_)))
                                            (if _%locked258752%_
                                                '#!void
                                                (_%retry258758%_)))))
                                    (let ((__tmp259240
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path258748%_)))
                                                     (not _%scm-path258745%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path258745%_
                                                        _%o-path258748%_)))
                                                 (let ((_%gsc-cc-opts258843%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp259241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp259242 (cons _%c-path258746%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259242
                            _%gsc-static-opts258725%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259241 _%gsc-cc-opts258843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp259239
                                           (lambda () (_%unlock258755%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp259240
                                       __tmp259239))))))
                        (let ((__tmp259243
                               (lambda ()
                                 (let ((__tmp259244
                                        (path-directory _%output-bin258709%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp259244)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp259243))
                        (gxc#with-output-to-scheme-file
                         _%output-scm258711%_
                         (lambda ()
                           (_%generate-stub258650%_
                            _%builtin-modules258735%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it258743%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp259245
                                                   (let ((__tmp259246
                                                          (let ((__tmp259247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm258703%_
                               (cons _%output-scm258711%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259247 _%src-deps-scm258695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp259246
                                                      _%libgerbil-c258685%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp259245
                                               _%gsc-link-opts258721%_))))
                                     (for-each
                                      _%compile-obj258738%_
                                      (let ((__tmp259248
                                             (cons _%src-bin-scm258703%_
                                                   (cons _%output-scm258711%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259248
                                         _%src-deps-scm258695%_))
                                      (let ((__tmp259249
                                             (cons _%src-bin-c258705%_
                                                   (cons _%output-c258713%_
                                                         (cons _%output_-c258717%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259249
                                         _%src-deps-c258697%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin258709%_
                                                        (let ((__tmp259250
                                                               (cons _%src-bin-o258707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o258715%_
                                   (cons _%output_-o258719%_
                                         (let ((__tmp259251
                                                (let ((__tmp259252
                                                       (let ((__tmp259254
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir258673%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts258729%_))))
                     (__tmp259253
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath258731%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp259254 __tmp259253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp259252
                                                   _%output-ld-opts258727%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp259251
                                            _%libgerbil-o258687%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp259250 _%src-deps-o258699%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp259255
                                            (cons _%output-c258713%_
                                                  (cons _%output_-c258717%_
                                                        (cons _%output-o258715%_
                                                              (cons _%output_-o258719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp259255)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it258743%_))
                                  (_%compile-it258743%_)))
                            '#!void))))))
          (let* ((_%output-bin258663%_
                  (gxc#compile-exe-output-file _%ctx258647%_ _%opts258648%_))
                 (_%output-scm258665%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin258663%_ '"__exe.scm"))))
            (_%compile-stub258661%_
             _%output-scm258665%_
             _%output-bin258663%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx258469%_ _%opts258470%_)
        (letrec ((_%reset-declare258472%_
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
                 (_%generate-stub258473%_
                  (lambda (_%deps258638%_)
                    (let ((_%mod-main258640%_
                           (gxc#find-runtime-symbol _%ctx258469%_ 'main))
                          (_%reset-decl258641%_ (_%reset-declare258472%_))
                          (_%user-decl258642%_ (_%user-declare258474%_)))
                      (for-each
                       (lambda (_%dep258644%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl258641%_))
                         (newline)
                         (if _%user-decl258642%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl258642%_))
                               (newline))
                             '#!void)
                         (let ((__tmp259256
                                (cons 'include (cons _%dep258644%_ '()))))
                           (declare (not safe))
                           (##write __tmp259256))
                         (newline))
                       _%deps258638%_)
                      (let ((__tmp259257
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main258640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp259257))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare258474%_
                  (lambda ()
                    (let* ((_%gsc-opts258543%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts258470%_)))
                           (_%gsc-prelude258545%_
                            (if _%gsc-opts258543%_
                                (member '"-prelude" _%gsc-opts258543%_)
                                '#f))
                           (_%gsc-prelude258547%_
                            (if _%gsc-prelude258545%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude258545%_)))
                                '#f)))
                      (let _%lp258550%_ ((_%rest258552%_
                                          (cons _%gsc-prelude258547%_ '()))
                                         (_%user-decls258553%_ '()))
                        (let* ((_%rest258554258562%_ _%rest258552%_)
                               (_%else258556258570%_
                                (lambda ()
                                  (if (null? _%user-decls258553%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls258553%_)))))
                               (_%K258558258626%_
                                (lambda (_%rest258573%_ _%expr258574%_)
                                  (let* ((_%expr258575258587%_ _%expr258574%_)
                                         (_%else258578258595%_
                                          (lambda ()
                                            (_%lp258550%_
                                             _%rest258573%_
                                             _%user-decls258553%_))))
                                    (let ((_%K258583258616%_
                                           (lambda (_%decls258614%_)
                                             (_%lp258550%_
                                              _%rest258573%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls258553%_
                                                 _%decls258614%_)))))
                                          (_%K258580258601%_
                                           (lambda (_%exprs258599%_)
                                             (_%lp258550%_
                                              (append _%exprs258599%_
                                                      _%rest258573%_)
                                              _%user-decls258553%_))))
                                      (if (pair? _%expr258575258587%_)
                                          (let ((_%tl258585258621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr258575258587%_)))
                                                (_%hd258584258619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr258575258587%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd258584258619%_
                                                         'declare))
                                                (let ((_%decls258624%_
                                                       _%tl258585258621%_))
                                                  (_%K258583258616%_
                                                   _%decls258624%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd258584258619%_
                                                             'begin))
                                                    (let ((_%exprs258609%_
                                                           _%tl258585258621%_))
                                                      (_%K258580258601%_
                                                       _%exprs258609%_))
                                                    (_%else258578258595%_))))
                                          (_%else258578258595%_)))))))
                          (if (pair? _%rest258554258562%_)
                              (let ((_%hd258559258629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest258554258562%_)))
                                    (_%tl258560258631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest258554258562%_))))
                                (let* ((_%expr258634%_ _%hd258559258629%_)
                                       (_%rest258636%_ _%tl258560258631%_))
                                  (_%K258558258626%_
                                   _%rest258636%_
                                   _%expr258634%_)))
                              (_%else258556258570%_)))))))
                 (_%compile-stub258475%_
                  (lambda (_%output-scm258482%_ _%output-bin258483%_)
                    (let* ((_%gerbil-home258485%_
                            (let ((__tmp259258
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259258)))
                           (_%gerbil-libdir258487%_
                            (path-expand '"lib" _%gerbil-home258485%_))
                           (_%runtime258489%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp258491%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home258485%_))
                           (_%include-gambit-sharp258493%_
                            (gxc#include-source _%gambit-sharp258491%_))
                           (_%bin-scm258495%_
                            (gxc#find-static-module-file _%ctx258469%_))
                           (_%deps258497%_
                            (gxc#find-runtime-module-deps _%ctx258469%_))
                           (_%deps258499%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps258497%_)))
                           (_%deps258504%_
                            (let ((__tmp259259
                                   (lambda (_%$obj258501%_)
                                     (not (gxc#file-empty? _%$obj258501%_)))))
                              (declare (not safe))
                              (##filter __tmp259259 _%deps258499%_)))
                           (_%deps258508%_
                            (let ((__tmp259260
                                   (lambda (_%f258506%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f258506%_
                                             _%runtime258489%_))))))
                              (declare (not safe))
                              (##filter __tmp259260 _%deps258504%_)))
                           (_%output-base258510%_
                            (let ((__tmp259261
                                   (path-strip-extension
                                    _%output-scm258482%_)))
                              (declare (not safe))
                              (##string-append __tmp259261)))
                           (_%output-c258512%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base258510%_ '".c")))
                           (_%output-o258514%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base258510%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_258516%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base258510%_ '"_.c")))
                           (_%output-o_258518%_
                            (let ((__tmp259262
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base258510%_
                               __tmp259262)))
                           (_%gsc-link-opts258520%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts258522%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts258524%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir258487%_)))
                           (_%output-ld-opts258526%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros258528%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp258493%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp258493%_
                                            '()))))
                           (_%gsc-link-opts258530%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts258520%_
                               _%gsc-gx-macros258528%_)))
                           (_%rpath258532%_
                            (gxc#gerbil-rpath _%gerbil-libdir258487%_))
                           (_%default-ld-options258534%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp259263
                             (lambda ()
                               (let ((__tmp259264
                                      (path-directory _%output-bin258483%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp259264)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp259263))
                      (gxc#with-output-to-scheme-file
                       _%output-scm258482%_
                       (lambda ()
                         (_%generate-stub258473%_
                          (let ((__tmp259265
                                 (let ((__tmp259266
                                        (cons _%bin-scm258495%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp259266
                                    _%deps258508%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp259265 _%runtime258489%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it258540%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_258516%_
                                                      (let ((__tmp259267
                                                             (cons _%output-scm258482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp259267 _%gsc-link-opts258530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp259268
                                                 (let ((__tmp259269
                                                        (cons _%output-c258512%_
                                                              (cons _%output-c_258516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp259269
                                                    _%gsc-static-opts258524%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259268
                                             _%gsc-cc-opts258522%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin258483%_
                                                      (cons _%output-o258514%_
                                                            (cons _%output-o_258518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259270
                                 (let ((__tmp259272
                                        (cons '"-L"
                                              (cons _%gerbil-libdir258487%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options258534%_))))
                                       (__tmp259271
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath258532%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp259272 __tmp259271))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp259270
                             _%output-ld-opts258526%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it258540%_))
                                (_%compile-it258540%_)))
                          '#!void)))))
          (let* ((_%output-bin258477%_
                  (gxc#compile-exe-output-file _%ctx258469%_ _%opts258470%_))
                 (_%output-scm258479%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin258477%_ '"__exe.scm"))))
            (_%compile-stub258475%_
             _%output-scm258479%_
             _%output-bin258477%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx258418%_ _%id258419%_)
        (let ((_%$e258465%_
               (let ((__tmp259274
                      (lambda (_%e258420258422%_)
                        (let* ((_%e258420258424258434%_ _%e258420258422%_)
                               (_%else258426258442%_ (lambda () '#f))
                               (_%K258428258446%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e258420258424258434%_
                                 'gx#module-export::t))
                              (let* ((_%e258429258449%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258420258424258434%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e258430258452%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258420258424258434%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e258431258455%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258420258424258434%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e258431258455%_ '0))
                                    (let ((_%e258432258458%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e258420258424258434%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g258460258462%_)
                                             (eq? _%g258460258462%_
                                                  _%id258419%_))
                                           _%e258432258458%_)
                                          (_%K258428258446%_)
                                          (_%else258426258442%_)))
                                    (_%else258426258442%_)))
                              (_%else258426258442%_)))))
                     (__tmp259273
                      (##structure-ref
                       _%ctx258418%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp259274 __tmp259273))))
          (if _%$e258465%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e258465%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx258409%_ _%id258410%_)
        (let ((_%$e258412%_
               (gxc#find-export-binding _%ctx258409%_ _%id258410%_)))
          (if _%$e258412%_
              ((lambda (_%bind258415%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind258415%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id258410%_)))
                 (##structure-ref _%bind258415%_ '1 gx#binding::t '#f))
               _%$e258412%_)
              (let ((__tmp259275
                     (##structure-ref
                      _%ctx258409%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp259275
                 _%id258410%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx258275%_)
        (letrec* ((_%ht258277%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template258278%_
                   (lambda (_%in258354%_ _%phi258355%_)
                     (let ((_%iphi258357%_
                            (fx+ _%phi258355%_
                                 (##direct-structure-ref
                                  _%in258354%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports258358%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in258354%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp258360%_ ((_%rest258362%_ _%imports258358%_)
                                          (_%r258363%_ '()))
                         (let* ((_%rest258364258372%_ _%rest258362%_)
                                (_%else258366258380%_ (lambda () _%r258363%_))
                                (_%K258368258397%_
                                 (lambda (_%rest258383%_ _%in258384%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in258384%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi258357%_))
                                           (_%lp258360%_
                                            _%rest258383%_
                                            (cons _%in258384%_ _%r258363%_))
                                           (_%lp258360%_
                                            _%rest258383%_
                                            _%r258363%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in258384%_
                                              'gx#module-import::t))
                                           (let ((_%iphi258388%_
                                                  (fx+ _%phi258355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in258384%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi258388%_))
                                                 (_%lp258360%_
                                                  _%rest258383%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in258384%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r258363%_))
                                                 (_%lp258360%_
                                                  _%rest258383%_
                                                  _%r258363%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in258384%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi258391%_
                                                      (fx+ _%iphi258357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in258384%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi258391%_))
                                                     (_%lp258360%_
                                                      _%rest258383%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in258384%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r258363%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi258391%_))
                                                         (_%lp258360%_
                                                          _%rest258383%_
                                                          (let ((__tmp259276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template258278%_
                          _%in258384%_
                          _%iphi258357%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r258363%_ __tmp259276)))
                 (_%lp258360%_ _%rest258383%_ _%r258363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp258360%_
                                                _%rest258383%_
                                                _%r258363%_)))))))
                           (if (pair? _%rest258364258372%_)
                               (let ((_%hd258369258400%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest258364258372%_)))
                                     (_%tl258370258402%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest258364258372%_))))
                                 (let* ((_%in258405%_ _%hd258369258400%_)
                                        (_%rest258407%_ _%tl258370258402%_))
                                   (_%K258368258397%_
                                    _%rest258407%_
                                    _%in258405%_)))
                               (_%else258366258380%_)))))))
                  (_%find-deps258279%_
                   (lambda (_%rest258287%_ _%deps258288%_)
                     (let* ((_%rest258289258297%_ _%rest258287%_)
                            (_%else258291258305%_ (lambda () _%deps258288%_))
                            (_%K258293258342%_
                             (lambda (_%rest258308%_ _%hd258309%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd258309%_
                                      'gx#module-context::t))
                                   (let ((_%id258312%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258309%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports258313%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258309%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht258277%_
                                            _%id258312%_))
                                         (_%find-deps258279%_
                                          _%rest258308%_
                                          _%deps258288%_)
                                         (let ((_%$e258316%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd258309%_))))
                                           (if _%$e258316%_
                                               ((lambda (_%pre258319%_)
                                                  (let ((_%xdeps258321%_
                                                         (_%find-deps258279%_
                                                          (cons _%pre258319%_
                                                                _%imports258313%_)
                                                          _%deps258288%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht258277%_
                                                       _%id258312%_
                                                       _%hd258309%_))
                                                    (_%find-deps258279%_
                                                     _%rest258308%_
                                                     (cons _%hd258309%_
                                                           _%xdeps258321%_))))
                                                _%$e258316%_)
                                               (let ((_%xdeps258324%_
                                                      (_%find-deps258279%_
                                                       _%imports258313%_
                                                       _%deps258288%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht258277%_
                                                    _%id258312%_
                                                    _%hd258309%_))
                                                 (_%find-deps258279%_
                                                  _%rest258308%_
                                                  (cons _%hd258309%_
                                                        _%xdeps258324%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd258309%_
                                          'gx#prelude-context::t))
                                       (let ((_%id258327%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd258309%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht258277%_
                                                _%id258327%_))
                                             (_%find-deps258279%_
                                              _%rest258308%_
                                              _%deps258288%_)
                                             (let ((_%xdeps258331%_
                                                    (_%find-deps258279%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd258309%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps258288%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht258277%_
                                                      _%id258327%_))
                                                   (_%find-deps258279%_
                                                    _%rest258308%_
                                                    _%xdeps258331%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht258277%_
                                                        _%id258327%_
                                                        _%hd258309%_))
                                                     (_%find-deps258279%_
                                                      _%rest258308%_
                                                      (cons _%hd258309%_
                                                            _%xdeps258331%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd258309%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd258309%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps258279%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258309%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258308%_)
                                                _%deps258288%_)
                                               (_%find-deps258279%_
                                                _%rest258308%_
                                                _%deps258288%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd258309%_
                                                  'gx#module-export::t))
                                               (_%find-deps258279%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258309%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258308%_)
                                                _%deps258288%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd258309%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd258309%_ '2 '#f '#f)))
               (_%find-deps258279%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd258309%_ '1 '#f '#f))
                      _%rest258308%_)
                _%deps258288%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd258309%_ '2 '#f '#f)))
                   (let ((_%xdeps258338%_
                          (_%import-set-template258278%_ _%hd258309%_ '0)))
                     (_%find-deps258279%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest258308%_ _%xdeps258338%_))
                      _%deps258288%_))
                   (_%find-deps258279%_ _%rest258308%_ _%deps258288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd258309%_))))))))))
                       (if (pair? _%rest258289258297%_)
                           (let ((_%hd258294258345%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest258289258297%_)))
                                 (_%tl258295258347%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest258289258297%_))))
                             (let* ((_%hd258350%_ _%hd258294258345%_)
                                    (_%rest258352%_ _%tl258295258347%_))
                               (_%K258293258342%_
                                _%rest258352%_
                                _%hd258350%_)))
                           (_%else258291258305%_))))))
          (let ((__tmp259277
                 (filter gx#expander-context-id
                         (_%find-deps258279%_
                          (let ((_%$e258281%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx258275%_))))
                            (if _%$e258281%_
                                ((lambda (_%pre258284%_)
                                   (cons _%pre258284%_
                                         (##structure-ref
                                          _%ctx258275%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e258281%_)
                                (##structure-ref
                                 _%ctx258275%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp259277)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx258205%_)
        (let* ((_%context-id258207%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx258205%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx258205%_ '1 '#f '#f))
                    (string->symbol _%ctx258205%_)))
               (_%scm258209%_
                (let ((__tmp259278
                       (gxc#static-module-name _%context-id258207%_)))
                  (declare (not safe))
                  (##string-append __tmp259278 '".scm")))
               (_%dirs258211%_ (let () (declare (not safe)) (load-path)))
               (_%dirs258217%_
                (let ((_%user-libpath258213%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath258213%_
                      (let ((_%user-libpath258215%_
                             (path-expand '"lib" _%user-libpath258213%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath258215%_ _%dirs258211%_))
                            _%dirs258211%_
                            (cons _%user-libpath258215%_ _%dirs258211%_)))
                      _%dirs258211%_)))
               (_%dirs258227%_
                (let ((_%$e258219%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e258219%_
                      ((lambda (_%g258221258223%_)
                         (cons _%g258221258223%_ _%dirs258217%_))
                       _%$e258219%_)
                      _%dirs258217%_)))
               (_%dirs258233%_
                (let ((__tmp259279
                       (lambda (_%g258228258230%_)
                         (path-expand '"static" _%g258228258230%_))))
                  (declare (not safe))
                  (##map __tmp259279 _%dirs258227%_))))
          (let _%lp258236%_ ((_%rest258238%_ _%dirs258233%_))
            (let* ((_%rest258239258247%_ _%rest258238%_)
                   (_%else258241258255%_
                    (lambda ()
                      (let ((__tmp259280
                             (##structure-ref
                              _%ctx258205%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp259280
                         _%scm258209%_))))
                   (_%K258243258263%_
                    (lambda (_%rest258258%_ _%dir258259%_)
                      (let ((_%path258261%_
                             (path-expand _%scm258209%_ _%dir258259%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path258261%_))
                            _%path258261%_
                            (_%lp258236%_ _%rest258258%_))))))
              (if (pair? _%rest258239258247%_)
                  (let ((_%hd258244258266%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258239258247%_)))
                        (_%tl258245258268%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258239258247%_))))
                    (let* ((_%dir258271%_ _%hd258244258266%_)
                           (_%rest258273%_ _%tl258245258268%_))
                      (_%K258243258263%_ _%rest258273%_ _%dir258271%_)))
                  (_%else258241258255%_)))))))
    (define gxc#file-empty?
      (lambda (_%path258203%_)
        (zero? (let ((__tmp259281 (file-info _%path258203%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp259281)))))
    (define gxc#compile-top-module
      (lambda (_%ctx258194%_)
        (let ((__tmp259282
               (lambda ()
                 (let ((__tmp259283
                        (lambda ()
                          (let ((__tmp259284
                                 (lambda ()
                                   (let ((__tmp259286
                                          (lambda ()
                                            (let ((__tmp259288
                                                   (lambda ()
                                                     (let ((__tmp259290
                                                            (lambda ()
                                                              (let ((__tmp259291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx258194%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp259291))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp259292
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx258194%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp259292))
                          '#!void)
                      (gxc#collect-bindings _%ctx258194%_)
                      (gxc#compile-runtime-code _%ctx258194%_)
                      (gxc#compile-meta-code _%ctx258194%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx258194%_)
                          '#!void)))
                   (__tmp259289
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
                __tmp259290
                gxc#current-compile-runtime-names
                __tmp259289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp259287
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp259288
                                               gxc#current-compile-runtime-sections
                                               __tmp259287))))
                                         (__tmp259285
                                          (let ((__obj259183
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj259183))
                                            __obj259183)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp259286
                                      gxc#current-compile-symbol-table
                                      __tmp259285)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp259284
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp259283
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259282
           gx#current-expander-context
           _%ctx258194%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx258192%_)
        (let ((__tmp259293
               (##structure-ref _%ctx258192%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp259293))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx258137%_)
        (letrec ((_%compile1258139%_
                  (lambda (_%ctx258181%_)
                    (let* ((_%code258183%_
                            (##structure-ref
                             _%ctx258181%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm258187%_
                            (let ((_%idstr258185%_
                                   (let ((__tmp259294
                                          (##structure-ref
                                           _%ctx258181%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp259294))))
                              (declare (not safe))
                              (##string-append _%idstr258185%_ '"~0")))
                           (_%rtc?258189%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code258183%_))))
                      (if _%rtc?258189%_
                          (let ((__tmp259295
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp259295
                             _%ctx258181%_
                             _%rtm258187%_))
                          '#!void)
                      (_%generate-runtime-code258141%_
                       _%ctx258181%_
                       _%code258183%_
                       (if _%rtc?258189%_ _%rtm258187%_ '#f)))))
                 (_%context-timestamp258140%_
                  (lambda (_%ctx258179%_)
                    (let ((__tmp259296
                           (let ((__tmp259297
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx258179%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp259297 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp259296))))
                 (_%generate-runtime-code258141%_
                  (lambda (_%ctx258148%_ _%code258149%_ _%rtm258150%_)
                    (let* ((_%runtime-code?258152%_ (if _%rtm258150%_ '#t '#f))
                           (_%lifts258154%_ (box '()))
                           (_%runtime-code258160%_
                            (if _%runtime-code?258152%_
                                (let ((__tmp259298
                                       (lambda ()
                                         (let ((__tmp259299
                                                (lambda ()
                                                  (let ((__tmp259300
                                                         (lambda ()
                                                           (let ((__tmp259302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code258149%_))))
                         (__tmp259301
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259302
                      gxc#current-compile-marks
                      __tmp259301)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp259300
                                                     gxc#current-compile-lift
                                                     _%lifts258154%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp259299
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp259298
                                   gx#current-expander-context
                                   _%ctx258148%_))
                                '#f))
                           (_%runtime-code258162%_
                            (if _%runtime-code?258152%_
                                (if (null? (unbox _%lifts258154%_))
                                    _%runtime-code258160%_
                                    (cons 'begin
                                          (let ((__tmp259304
                                                 (cons _%runtime-code258160%_
                                                       '()))
                                                (__tmp259303
                                                 (reverse (unbox _%lifts258154%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259304
                                             __tmp259303))))
                                '#f))
                           (_%runtime-code258164%_
                            (if _%runtime-code?258152%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp258140%_
                                                         _%ctx258148%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code258162%_ '())))
                                '#f))
                           (_%loader-code258167%_
                            (let ((__tmp259305
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code258149%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259305
                               gx#current-expander-context
                               _%ctx258148%_)))
                           (_%loader-code258169%_
                            (cons 'begin
                                  (cons _%loader-code258167%_
                                        (cons (if _%runtime-code?258152%_
                                                  (cons 'load-module
                                                        (cons _%rtm258150%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0258171%_
                            (gxc#compile-output-file _%ctx258148%_ '0 '".scm"))
                           (_%scmrt258173%_
                            (gxc#compile-output-file
                             _%ctx258148%_
                             '#f
                             '".scm"))
                           (_%scms258175%_
                            (gxc#compile-static-output-file _%ctx258148%_)))
                      (if _%runtime-code?258152%_
                          (gxc#compile-scm-file__0
                           _%scm0258171%_
                           _%runtime-code258164%_)
                          '#!void)
                      (let ((__tmp259306
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt258173%_
                                _%loader-code258169%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp259306
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms258175%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms258175%_))
                          '#!void)
                      (if _%runtime-code?258152%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0258171%_ _%scms258175%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms258175%_ void)))))))
          (let* ((_%all-modules258143%_
                  (cons _%ctx258137%_ (gxc#lift-nested-modules _%ctx258137%_)))
                 (__tmp259307
                  (lambda (_%ctx258145%_)
                    (let ((__tmp259308
                           (lambda () (_%compile1258139%_ _%ctx258145%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259308
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp259307 _%all-modules258143%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx258036%_)
        (letrec ((_%compile-ssi258038%_
                  (lambda (_%code258105%_)
                    (let* ((_%path258107%_
                            (gxc#compile-output-file
                             _%ctx258036%_
                             '#f
                             '".ssi"))
                           (_%prelude258119%_
                            (let* ((_%super258109%_
                                    (##structure-ref
                                     _%ctx258036%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e258111%_
                                    (##structure-ref
                                     _%super258109%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e258111%_
                                  ((lambda (_%g258113258115%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g258113258115%_)))
                                   _%$e258111%_)
                                  ':<root>)))
                           (_%ns258121%_
                            (##structure-ref
                             _%ctx258036%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr258123%_
                            (symbol->string
                             (##structure-ref
                              _%ctx258036%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg258131%_
                            (let ((_%$e258125%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr258123%_ '#\/))))
                              (if _%$e258125%_
                                  ((lambda (_%x258128%_)
                                     (let ((__tmp259309
                                            (substring
                                             _%idstr258123%_
                                             '0
                                             _%x258128%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp259309)))
                                   _%$e258125%_)
                                  '#f)))
                           (_%rt258133%_
                            (let ((__tmp259310
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp259310 _%ctx258036%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path258107%_))
                      (gxc#with-output-to-scheme-file
                       _%path258107%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude258119%_))
                         (if _%pkg258131%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg258131%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns258121%_))
                         (newline)
                         (pretty-print _%code258105%_)
                         (if _%rt258133%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt258133%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi258039%_
                  (lambda (_%part258044%_)
                    (let* ((_%part258045258058%_ _%part258044%_)
                           (_%E258047258062%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part258045258058%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K258048258074%_
                            (lambda (_%code258065%_
                                     _%n258066%_
                                     _%phi258067%_
                                     _%phi-ctx258068%_)
                              (let ((_%code258072%_
                                     (let ((__tmp259311
                                            (lambda ()
                                              (let ((__tmp259312
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code258065%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259312
                                                 gx#current-expander-phi
                                                 _%phi258067%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259311
                                        gx#current-expander-context
                                        _%phi-ctx258068%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx258036%_
                                  _%n258066%_
                                  '".scm")
                                 _%code258072%_
                                 '#t)))))
                      (if (pair? _%part258045258058%_)
                          (let ((_%hd258049258077%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part258045258058%_)))
                                (_%tl258050258079%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part258045258058%_))))
                            (let ((_%phi-ctx258082%_ _%hd258049258077%_))
                              (if (pair? _%tl258050258079%_)
                                  (let ((_%hd258051258084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258050258079%_)))
                                        (_%tl258052258086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258050258079%_))))
                                    (let ((_%phi258089%_ _%hd258051258084%_))
                                      (if (pair? _%tl258052258086%_)
                                          (let ((_%hd258053258091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl258052258086%_)))
                                                (_%tl258054258093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl258052258086%_))))
                                            (let ((_%n258096%_
                                                   _%hd258053258091%_))
                                              (if (pair? _%tl258054258093%_)
                                                  (let ((_%hd258055258098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl258054258093%_)))
                                                        (_%tl258056258100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl258054258093%_))))
                                                    (let ((_%code258103%_
                                                           _%hd258055258098%_))
                                                      (if (null? _%tl258056258100%_)
                                                          (_%K258048258074%_
                                                           _%code258103%_
                                                           _%n258096%_
                                                           _%phi258089%_
                                                           _%phi-ctx258082%_)
                                                          (_%E258047258062%_))))
                                                  (_%E258047258062%_))))
                                          (_%E258047258062%_))))
                                  (_%E258047258062%_))))
                          (_%E258047258062%_))))))
          (let ((_g259313_ (gxc#generate-meta-code _%ctx258036%_)))
            (begin
              (let ((_g259314_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g259313_)
                           (##values-length _g259313_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g259314_ 2)))
                    (error "Context expects 2 values" _g259314_)))
              (let ((_%ssi-code258041%_
                     (let () (declare (not safe)) (##values-ref _g259313_ 0)))
                    (_%phi-code258042%_
                     (let () (declare (not safe)) (##values-ref _g259313_ 1))))
                (begin
                  (_%compile-ssi258038%_ _%ssi-code258041%_)
                  (for-each _%compile-phi258039%_ _%phi-code258042%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx258018%_)
        (let* ((_%path258020%_
                (gxc#compile-output-file _%ctx258018%_ '#f '".ssxi.ss"))
               (_%code258022%_
                (let ((__tmp259315
                       (##structure-ref
                        _%ctx258018%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp259315)))
               (_%idstr258024%_
                (symbol->string
                 (##structure-ref
                  _%ctx258018%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg258032%_
                (let ((_%$e258026%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr258024%_ '#\/))))
                  (if _%$e258026%_
                      ((lambda (_%x258029%_)
                         (let ((__tmp259316
                                (substring _%idstr258024%_ '0 _%x258029%_)))
                           (declare (not safe))
                           (##string->symbol __tmp259316)))
                       _%$e258026%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path258020%_))
          (gxc#with-output-to-scheme-file
           _%path258020%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg258032%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg258032%_))
                 '#!void)
             (newline)
             (pretty-print _%code258022%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx258011%_)
        (let* ((_%state258013%_
                (let ((__obj259184
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj259184 _%ctx258011%_))
                  __obj259184))
               (_%ssi-code258015%_
                (let ((__tmp259317
                       (##structure-ref
                        _%ctx258011%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state258013%_
                   __tmp259317))))
          (values _%ssi-code258015%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state258013%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx258003%_)
        (let* ((_%lifts258005%_ (box '()))
               (__tmp259318
                (lambda ()
                  (let ((__tmp259320
                         (lambda ()
                           (let ((_%code258009%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx258003%_))))
                             (if (null? (unbox _%lifts258005%_))
                                 _%code258009%_
                                 (cons 'begin
                                       (let ((__tmp259322
                                              (cons _%code258009%_ '()))
                                             (__tmp259321
                                              (reverse (unbox _%lifts258005%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp259322
                                          __tmp259321)))))))
                        (__tmp259319
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp259320
                     gxc#current-compile-marks
                     __tmp259319)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259318
           gxc#current-compile-lift
           _%lifts258005%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx257999%_)
        (let ((_%modules258001%_ (box '())))
          (let ((__tmp259323
                 (##structure-ref _%ctx257999%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules258001%_ __tmp259323))
          (reverse (unbox _%modules258001%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path257979%_ _%code257980%_ _%phi?257981%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path257979%_))
        (gxc#with-output-to-scheme-file
         _%path257979%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp259324
                                           (if _%phi?257981%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp259324)))))))
           (pretty-print _%code257980%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it257985%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path257979%_ _%phi?257981%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp259325
                         (cons 'compile-file (cons _%path257979%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it257985%_ __tmp259325))
                  (_%compile-it257985%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path257990%_ _%code257991%_)
        (let ((_%phi?257993%_ '#f))
          (gxc#compile-scm-file__%
           _%path257990%_
           _%code257991%_
           _%phi?257993%_))))
    (define gxc#compile-scm-file
      (lambda _g259326_
        (let ((_g259327_ (let () (declare (not safe)) (##length _g259326_))))
          (cond ((let () (declare (not safe)) (##fx= _g259327_ 2))
                 (apply gxc#compile-scm-file__0 _g259326_))
                ((let () (declare (not safe)) (##fx= _g259327_ 3))
                 (apply gxc#compile-scm-file__% _g259326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g259326_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?257880%_)
        (let _%lp257882%_ ((_%rest257884%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts257885%_ '()))
          (let* ((_%rest257886257906%_ _%rest257884%_)
                 (_%else257890257914%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts257885%_)))
                        (reverse _%opts257885%_)))))
            (let ((_%K257900257957%_
                   (lambda (_%rest257955%_)
                     (_%lp257882%_ _%rest257955%_ _%opts257885%_)))
                  (_%K257895257939%_
                   (lambda (_%rest257937%_)
                     (_%lp257882%_ _%rest257937%_ _%opts257885%_)))
                  (_%K257892257921%_
                   (lambda (_%rest257918%_ _%opt257919%_)
                     (_%lp257882%_
                      _%rest257918%_
                      (cons _%opt257919%_ _%opts257885%_)))))
              (if (pair? _%rest257886257906%_)
                  (let ((_%tl257902257962%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257886257906%_)))
                        (_%hd257901257960%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257886257906%_))))
                    (if (equal? _%hd257901257960%_ '"-cc-options")
                        (if (pair? _%tl257902257962%_)
                            (let* ((_%tl257904257965%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl257902257962%_)))
                                   (_%rest257968%_ _%tl257904257965%_))
                              (_%K257900257957%_ _%rest257968%_))
                            (let ((_%opt257929%_ _%hd257901257960%_)
                                  (_%rest257931%_ _%tl257902257962%_))
                              (_%K257892257921%_
                               _%rest257931%_
                               _%opt257929%_)))
                        (if (equal? _%hd257901257960%_ '"-ld-options")
                            (if (pair? _%tl257902257962%_)
                                (let* ((_%tl257899257947%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl257902257962%_)))
                                       (_%rest257950%_ _%tl257899257947%_))
                                  (_%K257895257939%_ _%rest257950%_))
                                (let ((_%opt257929%_ _%hd257901257960%_)
                                      (_%rest257931%_ _%tl257902257962%_))
                                  (_%K257892257921%_
                                   _%rest257931%_
                                   _%opt257929%_)))
                            (let ((_%opt257929%_ _%hd257901257960%_)
                                  (_%rest257931%_ _%tl257902257962%_))
                              (_%K257892257921%_
                               _%rest257931%_
                               _%opt257929%_)))))
                  (_%else257890257914%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?257974%_ '#f)) (gxc#gsc-link-options__% _%phi?257974%_))))
    (define gxc#gsc-link-options
      (lambda _g259328_
        (let ((_g259329_ (let () (declare (not safe)) (##length _g259328_))))
          (cond ((let () (declare (not safe)) (##fx= _g259329_ 0))
                 (apply gxc#gsc-link-options__0 _g259328_))
                ((let () (declare (not safe)) (##fx= _g259329_ 1))
                 (apply gxc#gsc-link-options__% _g259328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g259328_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords257730%_ _%static?257726257731%_ _%phi?257732%_)
        (let ((_%static?257734%_
               (if (eq? _%static?257726257731%_ absent-value)
                   '#f
                   _%static?257726257731%_)))
          (if _%phi?257732%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp257736%_ ((_%rest257738%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts257739%_ '()))
                (let* ((_%rest257740257766%_ _%rest257738%_)
                       (_%else257745257774%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts257739%_)))
                              (reverse! _%opts257739%_)))))
                  (let ((_%K257760257837%_
                         (lambda (_%rest257834%_ _%opt257835%_)
                           (if _%static?257734%_
                               (_%lp257736%_
                                _%rest257834%_
                                (cons _%opt257835%_
                                      (cons '"-cc-options" _%opts257739%_)))
                               (_%lp257736%_ _%rest257834%_ _%opts257739%_))))
                        (_%K257755257814%_
                         (lambda (_%rest257811%_ _%opt257812%_)
                           (_%lp257736%_
                            _%rest257811%_
                            (cons _%opt257812%_
                                  (cons '"-cc-options" _%opts257739%_)))))
                        (_%K257750257794%_
                         (lambda (_%rest257792%_)
                           (_%lp257736%_ _%rest257792%_ _%opts257739%_)))
                        (_%K257747257780%_
                         (lambda (_%rest257778%_)
                           (_%lp257736%_ _%rest257778%_ _%opts257739%_))))
                    (if (pair? _%rest257740257766%_)
                        (let ((_%tl257762257842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest257740257766%_)))
                              (_%hd257761257840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest257740257766%_))))
                          (if (equal? _%hd257761257840%_ '"-cc-options")
                              (if (pair? _%tl257762257842%_)
                                  (let ((_%tl257764257847%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl257762257842%_)))
                                        (_%hd257763257845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl257762257842%_))))
                                    (if (equal? _%hd257763257845%_ '"-Bstatic")
                                        (let ((_%opt257850%_
                                               _%hd257763257845%_)
                                              (_%rest257852%_
                                               _%tl257764257847%_))
                                          (_%K257760257837%_
                                           _%rest257852%_
                                           _%opt257850%_))
                                        (let ((_%opt257827%_
                                               _%hd257763257845%_)
                                              (_%rest257829%_
                                               _%tl257764257847%_))
                                          (_%K257755257814%_
                                           _%rest257829%_
                                           _%opt257827%_))))
                                  (let ((_%rest257786%_ _%tl257762257842%_))
                                    (_%K257747257780%_ _%rest257786%_)))
                              (if (equal? _%hd257761257840%_ '"-ld-options")
                                  (if (pair? _%tl257762257842%_)
                                      (let* ((_%tl257754257802%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl257762257842%_)))
                                             (_%rest257805%_
                                              _%tl257754257802%_))
                                        (_%K257750257794%_ _%rest257805%_))
                                      (let ((_%rest257786%_
                                             _%tl257762257842%_))
                                        (_%K257747257780%_ _%rest257786%_)))
                                  (let ((_%rest257786%_ _%tl257762257842%_))
                                    (_%K257747257780%_ _%rest257786%_)))))
                        (_%else257745257774%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords257857%_ _%static?257726257858%_)
        (let ((_%phi?257860%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords257857%_
           _%static?257726257858%_
           _%phi?257860%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g259330_
        (let ((_g259331_ (let () (declare (not safe)) (##length _g259330_))))
          (cond ((let () (declare (not safe)) (##fx= _g259331_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g259330_))
                ((let () (declare (not safe)) (##fx= _g259331_ 3))
                 (apply gxc#gsc-cc-options__%__% _g259330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g259330_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords257869%_ . _%args257870%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords257869%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257869%_
                  'static:
                  absent-value))
               _%args257870%_)))
    (define gxc#gsc-cc-options
      (lambda _%args257727257876%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args257727257876%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords257576%_ _%static?257572257577%_ _%phi?257578%_)
        (let ((_%static?257580%_
               (if (eq? _%static?257572257577%_ absent-value)
                   '#f
                   _%static?257572257577%_)))
          (if _%phi?257578%_
              '()
              (let _%lp257582%_ ((_%rest257584%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts257585%_ '()))
                (let* ((_%rest257586257612%_ _%rest257584%_)
                       (_%else257591257620%_
                        (lambda () (reverse! _%opts257585%_))))
                  (let ((_%K257606257683%_
                         (lambda (_%rest257680%_ _%opt257681%_)
                           (if _%static?257580%_
                               (_%lp257582%_
                                _%rest257680%_
                                (cons _%opt257681%_
                                      (cons '"-ld-options" _%opts257585%_)))
                               (_%lp257582%_ _%rest257680%_ _%opts257585%_))))
                        (_%K257601257660%_
                         (lambda (_%rest257657%_ _%opt257658%_)
                           (_%lp257582%_
                            _%rest257657%_
                            (cons _%opt257658%_
                                  (cons '"-ld-options" _%opts257585%_)))))
                        (_%K257596257640%_
                         (lambda (_%rest257638%_)
                           (_%lp257582%_ _%rest257638%_ _%opts257585%_)))
                        (_%K257593257626%_
                         (lambda (_%rest257624%_)
                           (_%lp257582%_ _%rest257624%_ _%opts257585%_))))
                    (if (pair? _%rest257586257612%_)
                        (let ((_%tl257608257688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest257586257612%_)))
                              (_%hd257607257686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest257586257612%_))))
                          (if (equal? _%hd257607257686%_ '"-ld-options")
                              (if (pair? _%tl257608257688%_)
                                  (let ((_%tl257610257693%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl257608257688%_)))
                                        (_%hd257609257691%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl257608257688%_))))
                                    (if (equal? _%hd257609257691%_ '"-static")
                                        (let ((_%opt257696%_
                                               _%hd257609257691%_)
                                              (_%rest257698%_
                                               _%tl257610257693%_))
                                          (_%K257606257683%_
                                           _%rest257698%_
                                           _%opt257696%_))
                                        (let ((_%opt257673%_
                                               _%hd257609257691%_)
                                              (_%rest257675%_
                                               _%tl257610257693%_))
                                          (_%K257601257660%_
                                           _%rest257675%_
                                           _%opt257673%_))))
                                  (let ((_%rest257632%_ _%tl257608257688%_))
                                    (_%K257593257626%_ _%rest257632%_)))
                              (if (equal? _%hd257607257686%_ '"-cc-options")
                                  (if (pair? _%tl257608257688%_)
                                      (let* ((_%tl257600257648%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl257608257688%_)))
                                             (_%rest257651%_
                                              _%tl257600257648%_))
                                        (_%K257596257640%_ _%rest257651%_))
                                      (let ((_%rest257632%_
                                             _%tl257608257688%_))
                                        (_%K257593257626%_ _%rest257632%_)))
                                  (let ((_%rest257632%_ _%tl257608257688%_))
                                    (_%K257593257626%_ _%rest257632%_)))))
                        (_%else257591257620%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords257703%_ _%static?257572257704%_)
        (let ((_%phi?257706%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords257703%_
           _%static?257572257704%_
           _%phi?257706%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g259332_
        (let ((_g259333_ (let () (declare (not safe)) (##length _g259332_))))
          (cond ((let () (declare (not safe)) (##fx= _g259333_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g259332_))
                ((let () (declare (not safe)) (##fx= _g259333_ 3))
                 (apply gxc#gsc-ld-options__%__% _g259332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g259332_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords257715%_ . _%args257716%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords257715%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257715%_
                  'static:
                  absent-value))
               _%args257716%_)))
    (define gxc#gsc-ld-options
      (lambda _%args257573257722%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args257573257722%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir257567%_)
        (let ((_%user-staticdir257569%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir257567%_
                       '" -I "
                       _%user-staticdir257569%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp257479%_ ((_%rest257481%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts257482%_ '()))
          (let* ((_%rest257483257503%_ _%rest257481%_)
                 (_%else257487257511%_ (lambda () _%opts257482%_)))
            (let ((_%K257497257554%_
                   (lambda (_%rest257552%_)
                     (_%lp257479%_ _%rest257552%_ _%opts257482%_)))
                  (_%K257492257532%_
                   (lambda (_%rest257529%_ _%opt257530%_)
                     (_%lp257479%_
                      _%rest257529%_
                      (let ((__tmp259334
                             (let ((__tmp259335
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt257530%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp259335))))
                        (declare (not safe))
                        (##append _%opts257482%_ __tmp259334)))))
                  (_%K257489257517%_
                   (lambda (_%rest257515%_)
                     (_%lp257479%_ _%rest257515%_ _%opts257482%_))))
              (if (pair? _%rest257483257503%_)
                  (let ((_%tl257499257559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257483257503%_)))
                        (_%hd257498257557%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257483257503%_))))
                    (if (equal? _%hd257498257557%_ '"-cc-options")
                        (if (pair? _%tl257499257559%_)
                            (let* ((_%tl257501257562%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl257499257559%_)))
                                   (_%rest257565%_ _%tl257501257562%_))
                              (_%K257497257554%_ _%rest257565%_))
                            (let ((_%rest257523%_ _%tl257499257559%_))
                              (_%K257489257517%_ _%rest257523%_)))
                        (if (equal? _%hd257498257557%_ '"-ld-options")
                            (if (pair? _%tl257499257559%_)
                                (let ((_%tl257496257542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl257499257559%_)))
                                      (_%hd257495257540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl257499257559%_))))
                                  (let ((_%opt257545%_ _%hd257495257540%_)
                                        (_%rest257547%_ _%tl257496257542%_))
                                    (_%K257492257532%_
                                     _%rest257547%_
                                     _%opt257545%_)))
                                (let ((_%rest257523%_ _%tl257499257559%_))
                                  (_%K257489257517%_ _%rest257523%_)))
                            (let ((_%rest257523%_ _%tl257499257559%_))
                              (_%K257489257517%_ _%rest257523%_)))))
                  (_%else257487257511%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str257476%_)
        (not (let () (declare (not safe)) (string-empty? _%str257476%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path257469%_ _%phi?257470%_)
        (let ((_%gsc-link-opts257472%_
               (gxc#gsc-link-options__% _%phi?257470%_))
              (_%gsc-cc-opts257473%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?257470%_))
              (_%gsc-ld-opts257474%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?257470%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp259336
                  (let ((__tmp259337
                         (let ((__tmp259338 (cons _%path257469%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259338
                            _%gsc-link-opts257472%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259337 _%gsc-ld-opts257474%_))))
             (declare (not safe))
             (foldr__0 cons __tmp259336 _%gsc-cc-opts257473%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx257435%_ _%n257436%_ _%ext257437%_)
        (letrec ((_%module-relative-path257439%_
                  (lambda (_%ctx257467%_)
                    (path-strip-directory
                     (let ((__tmp259339
                            (##structure-ref
                             _%ctx257467%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp259339)))))
                 (_%module-source-directory257440%_
                  (lambda (_%ctx257463%_)
                    (path-directory
                     (let ((_%mpath257465%_
                            (##structure-ref
                             _%ctx257463%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath257465%_)
                           _%mpath257465%_
                           (last _%mpath257465%_))))))
                 (_%section-string257441%_
                  (lambda (_%n257457%_)
                    (if (number? _%n257457%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n257457%_))
                        (if (symbol? _%n257457%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n257457%_))
                            (if (string? _%n257457%_)
                                _%n257457%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n257457%_)))))))
                 (_%file-name257442%_
                  (lambda (_%path257455%_)
                    (if _%n257436%_
                        (string-append
                         _%path257455%_
                         '"~"
                         (_%section-string257441%_ _%n257436%_)
                         _%ext257437%_)
                        (string-append _%path257455%_ _%ext257437%_))))
                 (_%file-path257443%_
                  (lambda ()
                    (let ((_%$e257449%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e257449%_
                          ((lambda (_%outdir257452%_)
                             (path-expand
                              (_%file-name257442%_
                               (let ((__tmp259340
                                      (##structure-ref
                                       _%ctx257435%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp259340)))
                              _%outdir257452%_))
                           _%$e257449%_)
                          (path-expand
                           (_%file-name257442%_
                            (_%module-relative-path257439%_ _%ctx257435%_))
                           (_%module-source-directory257440%_
                            _%ctx257435%_)))))))
          (let ((_%path257445%_ (_%file-path257443%_)))
            (let ((__tmp259341
                   (lambda ()
                     (let ((__tmp259342 (path-directory _%path257445%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259342)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259341))
            _%path257445%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx257416%_)
        (letrec ((_%file-name257418%_
                  (lambda (_%id257433%_)
                    (let ((__tmp259343 (gxc#static-module-name _%id257433%_)))
                      (declare (not safe))
                      (##string-append __tmp259343 '".scm"))))
                 (_%file-path257419%_
                  (lambda ()
                    (let* ((_%file257425%_
                            (_%file-name257418%_
                             (##structure-ref
                              _%ctx257416%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e257427%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e257427%_
                          ((lambda (_%outdir257430%_)
                             (path-expand
                              _%file257425%_
                              (path-expand '"static" _%outdir257430%_)))
                           _%$e257427%_)
                          (path-expand _%file257425%_ '"static"))))))
          (let ((_%path257421%_ (_%file-path257419%_)))
            (let ((__tmp259344
                   (lambda ()
                     (let ((__tmp259345 (path-directory _%path257421%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259345)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259344))
            _%path257421%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx257409%_ _%opts257410%_)
        (let ((_%$e257412%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts257410%_))))
          (if _%$e257412%_
              _%$e257412%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx257409%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr257399%_)
        (if (string? _%idstr257399%_)
            (let* ((_%str257402%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr257399%_)))
                   (_%strs257404%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str257402%_ '#\/))))
              (declare (not safe))
              (string-join _%strs257404%_ '"__"))
            (if (symbol? _%idstr257399%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr257399%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr257399%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp259346
               (let ((__tmp259347 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp259347 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp259346))))
    (define gxc#invoke__%
      (lambda (_%@@keywords257365%_
               _%stdout-redirection257361257366%_
               _%stderr-redirection257362257367%_
               _%program257368%_
               _%args257369%_)
        (let* ((_%stdout-redirection257371%_
                (if (eq? _%stdout-redirection257361257366%_ absent-value)
                    '#f
                    _%stdout-redirection257361257366%_))
               (_%stderr-redirection257373%_
                (if (eq? _%stderr-redirection257362257367%_ absent-value)
                    '#f
                    _%stderr-redirection257362257367%_)))
          (let ((__tmp259348 (cons _%program257368%_ _%args257369%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp259348))
          (let* ((_%proc257375%_
                  (open-process
                   (cons 'path:
                         (cons _%program257368%_
                               (cons 'arguments:
                                     (cons _%args257369%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection257371%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection257373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output257380%_
                  (if (or _%stdout-redirection257371%_
                          _%stderr-redirection257373%_)
                      (read-line _%proc257375%_ '#f)
                      '#f))
                 (_%status257383%_ (process-status _%proc257375%_)))
            (let () (declare (not safe)) (##close-port _%proc257375%_))
            (if (zero? _%status257383%_)
                '#!void
                (begin
                  (display _%output257380%_)
                  (let ((__tmp259349 (cons _%program257368%_ _%args257369%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp259349
                     _%status257383%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords257388%_ . _%args257389%_)
        (apply gxc#invoke__%
               _%@@keywords257388%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257388%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257388%_
                  'stderr-redirection:
                  absent-value))
               _%args257389%_)))
    (define gxc#invoke
      (lambda _%args257363257395%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args257363257395%_)))))
