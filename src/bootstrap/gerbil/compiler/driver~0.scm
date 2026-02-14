(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771030496)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp259189 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp259189))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp259190 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp259190))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path259046%_ _%fun259047%_)
        (with-output-to-file
         (cons 'path: (cons _%path259046%_ gxc#scheme-file-settings))
         _%fun259047%_)))
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
      (lambda (_%gerbil-libdir259041%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir259041%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path259039%_)
        (let ((__tmp259191 (object->string _%path259039%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp259191 '")"))))
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
      (lambda (_%dir259037%_) (delete-file-or-directory _%dir259037%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath258980%_ _%opts258981%_)
        (if (string? _%srcpath258980%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath258980%_)))
        (let* ((_%outdir258983%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts258981%_)))
               (_%invoke-gsc?258985%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts258981%_)))
               (_%target258990%_
                (let ((_%$e258987%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts258981%_))))
                  (if _%$e258987%_ _%$e258987%_ 'C)))
               (_%gsc-options258995%_
                (append (cons '"-target"
                              (cons (symbol->string _%target258990%_) '()))
                        (let ((_%$e258992%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts258981%_))))
                          (if _%$e258992%_ _%$e258992%_ '()))))
               (_%keep-scm?258997%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts258981%_)))
               (_%verbosity258999%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts258981%_)))
               (_%optimize259001%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts258981%_)))
               (_%debug259003%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts258981%_)))
               (_%gen-ssxi259005%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts258981%_)))
               (_%parallel?259007%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts258981%_))))
          (if _%outdir258983%_
              (let ((__tmp259192
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir258983%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259192))
              '#!void)
          (if _%optimize259001%_
              (let ((__tmp259193
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259193))
              '#!void)
          (let ((__tmp259194
                 (lambda ()
                   (let ((__tmp259195
                          (lambda ()
                            (let ((__tmp259196
                                   (lambda ()
                                     (let ((__tmp259197
                                            (lambda ()
                                              (let ((__tmp259198
                                                     (lambda ()
                                                       (let ((__tmp259199
                                                              (lambda ()
                                                                (let ((__tmp259200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259201
                                        (lambda ()
                                          (let ((__tmp259202
                                                 (lambda ()
                                                   (let ((__tmp259204
                                                          (lambda ()
                                                            (let ((__tmp259206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259208
                                    (lambda ()
                                      (let ((__tmp259209
                                             (lambda ()
                                               (let ((__tmp259210
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath258980%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp259211
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath258980%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp259211))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp259210
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp259209
                                         gxc#current-compile-parallel
                                         _%parallel?259007%_))))
                                   (__tmp259207
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259208
                                gxc#current-compile-identifiers
                                __tmp259207))))
                          (__tmp259205
                           (cons (cons 'compile-module
                                       (cons _%srcpath258980%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259206
                       gxc#current-compile-context
                       __tmp259205))))
                 (__tmp259203 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259204
                                                      gxc#current-compile-timestamp
                                                      __tmp259203)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259202
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi259005%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259201
                                    gxc#current-compile-debug
                                    _%debug259003%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259200
                           gxc#current-compile-optimize
                           _%optimize259001%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259199
                  gxc#current-compile-verbose
                  _%verbosity258999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259198
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?258997%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259197
                                        gxc#current-compile-gsc-options
                                        _%gsc-options258995%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259196
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?258985%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259195
                      gx#current-compilation-target
                      _%target258990%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259194
             gxc#current-compile-output-dir
             _%outdir258983%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath259030%_)
        (let ((_%opts259032%_ '()))
          (gxc#compile-module__% _%srcpath259030%_ _%opts259032%_))))
    (define gxc#compile-module
      (lambda _g259212_
        (let ((_g259213_ (let () (declare (not safe)) (##length _g259212_))))
          (cond ((let () (declare (not safe)) (##fx= _g259213_ 1))
                 (apply gxc#compile-module__0 _g259212_))
                ((let () (declare (not safe)) (##fx= _g259213_ 2))
                 (apply gxc#compile-module__% _g259212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g259212_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath258929%_ _%opts258930%_)
        (if (string? _%srcpath258929%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath258929%_)))
        (let* ((_%outdir258932%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts258930%_)))
               (_%invoke-gsc?258934%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts258930%_)))
               (_%target258939%_
                (let ((_%$e258936%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts258930%_))))
                  (if _%$e258936%_ _%$e258936%_ 'C)))
               (_%gsc-options258944%_
                (append (cons '"-target"
                              (cons (symbol->string _%target258939%_) '()))
                        (let ((_%$e258941%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts258930%_))))
                          (if _%$e258941%_ _%$e258941%_ '()))))
               (_%keep-scm?258946%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts258930%_)))
               (_%verbosity258948%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts258930%_)))
               (_%debug258950%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts258930%_)))
               (_%parallel?258952%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts258930%_))))
          (if _%outdir258932%_
              (let ((__tmp259214
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir258932%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259214))
              '#!void)
          (let ((__tmp259215
                 (lambda ()
                   (let ((__tmp259216
                          (lambda ()
                            (let ((__tmp259217
                                   (lambda ()
                                     (let ((__tmp259218
                                            (lambda ()
                                              (let ((__tmp259219
                                                     (lambda ()
                                                       (let ((__tmp259220
                                                              (lambda ()
                                                                (let ((__tmp259221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259223
                                        (lambda ()
                                          (let ((__tmp259225
                                                 (lambda ()
                                                   (let ((__tmp259227
                                                          (lambda ()
                                                            (let ((__tmp259228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259229
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath258929%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp259230
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath258929%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp259230))
                                       _%opts258930%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259229
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259228
                       gxc#current-compile-parallel
                       _%parallel?258952%_))))
                 (__tmp259226
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259227
                                                      gxc#current-compile-identifiers
                                                      __tmp259226))))
                                                (__tmp259224
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath258929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259225
                                             gxc#current-compile-context
                                             __tmp259224))))
                                       (__tmp259222 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259223
                                    gxc#current-compile-timestamp
                                    __tmp259222)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259221
                           gxc#current-compile-debug
                           _%debug258950%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259220
                  gxc#current-compile-verbose
                  _%verbosity258948%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259219
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?258946%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259218
                                        gxc#current-compile-gsc-options
                                        _%gsc-options258944%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259217
                               gx#current-compilation-target
                               _%target258939%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259216
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?258934%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259215
             gxc#current-compile-output-dir
             _%outdir258932%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath258972%_)
        (let ((_%opts258974%_ '()))
          (gxc#compile-exe__% _%srcpath258972%_ _%opts258974%_))))
    (define gxc#compile-exe
      (lambda _g259231_
        (let ((_g259232_ (let () (declare (not safe)) (##length _g259231_))))
          (cond ((let () (declare (not safe)) (##fx= _g259232_ 1))
                 (apply gxc#compile-exe__0 _g259231_))
                ((let () (declare (not safe)) (##fx= _g259232_ 2))
                 (apply gxc#compile-exe__% _g259231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g259231_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx258925%_ _%opts258926%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts258926%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx258925%_
             _%opts258926%_)
            (gxc#compile-executable-module/separate
             _%ctx258925%_
             _%opts258926%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx258651%_ _%opts258652%_)
        (letrec ((_%generate-stub258654%_
                  (lambda (_%builtin-modules258921%_)
                    (let ((_%mod-main258923%_
                           (gxc#find-runtime-symbol _%ctx258651%_ 'main)))
                      (let ((__tmp259233
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules258921%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp259233))
                      (let ((__tmp259234
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main258923%_
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
                        (##write __tmp259234))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts258655%_
                  (lambda (_%gerbil-libdir258919%_)
                    (let ((__tmp259235
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir258919%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp259235 read))))
                 (_%replace-extension258656%_
                  (lambda (_%path258916%_ _%ext258917%_)
                    (string-append
                     (path-strip-extension _%path258916%_)
                     _%ext258917%_)))
                 (_%replace-extension-with-c258657%_
                  (lambda (_%path258914%_)
                    (_%replace-extension258656%_ _%path258914%_ '".c")))
                 (_%replace-extension-with-object258658%_
                  (lambda (_%path258912%_)
                    (_%replace-extension258656%_
                     _%path258912%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?258659%_
                  (lambda (_%ctx258910%_)
                    (if (_%exclude-module?258661%_ _%ctx258910%_)
                        '#f
                        (not (_%libgerbil-module?258660%_ _%ctx258910%_)))))
                 (_%libgerbil-module?258660%_
                  (lambda (_%ctx258903%_)
                    (let ((_%id-str258905%_
                           (symbol->string
                            (##structure-ref
                             _%ctx258903%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?258661%_ _%id-str258905%_)
                          '#f
                          (let ((_%$e258907%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str258905%_))))
                            (if _%$e258907%_
                                _%$e258907%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str258905%_))))))))
                 (_%exclude-module?258661%_
                  (lambda (_%ctx-or-str258899%_)
                    (let ((_%str258901%_
                           (if (string? _%ctx-or-str258899%_)
                               _%ctx-or-str258899%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str258899%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str258901%_))))
                 (_%not-file-empty?258662%_
                  (lambda (_%path258897%_)
                    (not (gxc#file-empty? _%path258897%_))))
                 (_%fold-libgerbil-runtime-scm258663%_
                  (lambda (_%gerbil-staticdir258890%_ _%libgerbil-scm258891%_)
                    (let ((_%gerbil-runtime-scm258895%_
                           (let ((__tmp259236
                                  (lambda (_%rtm258893%_)
                                    (path-expand
                                     (let ((__tmp259237
                                            (let ((__tmp259238
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm258893%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp259238
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp259237 '".scm"))
                                     _%gerbil-staticdir258890%_))))
                             (declare (not safe))
                             (##map __tmp259236 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates258664%_
                       (append _%gerbil-runtime-scm258895%_
                               _%libgerbil-scm258891%_)))))
                 (_%remove-duplicates258664%_
                  (lambda (_%strlst258850%_)
                    (let _%loop258852%_ ((_%rest258854%_ _%strlst258850%_)
                                         (_%result258855%_ '()))
                      (let* ((_%rest258856258864%_ _%rest258854%_)
                             (_%else258858258872%_
                              (lambda () (reverse! _%result258855%_)))
                             (_%K258860258878%_
                              (lambda (_%rest258875%_ _%path258876%_)
                                (if (member _%path258876%_ _%result258855%_)
                                    (_%loop258852%_
                                     _%rest258875%_
                                     _%result258855%_)
                                    (_%loop258852%_
                                     _%rest258875%_
                                     (cons _%path258876%_
                                           _%result258855%_))))))
                        (if (pair? _%rest258856258864%_)
                            (let ((_%hd258861258881%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest258856258864%_)))
                                  (_%tl258862258883%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest258856258864%_))))
                              (let* ((_%path258886%_ _%hd258861258881%_)
                                     (_%rest258888%_ _%tl258862258883%_))
                                (_%K258860258878%_
                                 _%rest258888%_
                                 _%path258886%_)))
                            (_%else258858258872%_))))))
                 (_%compile-stub258665%_
                  (lambda (_%output-scm258672%_ _%output-bin258673%_)
                    (let* ((_%gerbil-home258675%_
                            (let ((__tmp259239
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259239)))
                           (_%gerbil-libdir258677%_
                            (path-expand '"lib" _%gerbil-home258675%_))
                           (_%gerbil-staticdir258679%_
                            (path-expand '"static" _%gerbil-libdir258677%_))
                           (_%deps258681%_
                            (gxc#find-runtime-module-deps _%ctx258651%_))
                           (_%libgerbil-deps258683%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?258660%_
                               _%deps258681%_)))
                           (_%libgerbil-scm258685%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps258683%_)))
                           (_%libgerbil-scm258687%_
                            (_%fold-libgerbil-runtime-scm258663%_
                             _%gerbil-staticdir258679%_
                             _%libgerbil-scm258685%_))
                           (_%libgerbil-c258689%_
                            (map _%replace-extension-with-c258657%_
                                 _%libgerbil-scm258687%_))
                           (_%libgerbil-o258691%_
                            (map _%replace-extension-with-object258658%_
                                 _%libgerbil-scm258687%_))
                           (_%src-deps258693%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?258659%_
                               _%deps258681%_)))
                           (_%src-deps-scm258695%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps258693%_)))
                           (_%src-deps-scm258697%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?258662%_
                               _%src-deps-scm258695%_)))
                           (_%src-deps-scm258699%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm258697%_)))
                           (_%src-deps-c258701%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c258657%_
                                     _%src-deps-scm258699%_)))
                           (_%src-deps-o258703%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object258658%_
                                     _%src-deps-scm258699%_)))
                           (_%src-bin-scm258705%_
                            (gxc#find-static-module-file _%ctx258651%_))
                           (_%src-bin-scm258707%_
                            (path-expand _%src-bin-scm258705%_))
                           (_%src-bin-c258709%_
                            (_%replace-extension-with-c258657%_
                             _%src-bin-scm258707%_))
                           (_%src-bin-o258711%_
                            (_%replace-extension-with-object258658%_
                             _%src-bin-scm258707%_))
                           (_%output-bin258713%_
                            (path-expand _%output-bin258673%_))
                           (_%output-scm258715%_
                            (path-expand _%output-scm258672%_))
                           (_%output-c258717%_
                            (_%replace-extension-with-c258657%_
                             _%output-scm258715%_))
                           (_%output-o258719%_
                            (_%replace-extension-with-object258658%_
                             _%output-scm258715%_))
                           (_%output_-c258721%_
                            (_%replace-extension258656%_
                             _%output-scm258715%_
                             '"_.c"))
                           (_%output_-o258723%_
                            (_%replace-extension258656%_
                             _%output-scm258715%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts258725%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts258727%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts258729%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir258679%_))
                           (_%output-ld-opts258731%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts258733%_
                            (_%get-libgerbil-ld-opts258655%_
                             _%gerbil-libdir258677%_))
                           (_%rpath258735%_
                            (gxc#gerbil-rpath _%gerbil-libdir258677%_))
                           (_%builtin-modules258739%_
                            (_%remove-duplicates258664%_
                             (let ((__tmp259240
                                    (let ((__tmp259242
                                           (lambda (_%mod258737%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod258737%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp259241
                                           (cons _%ctx258651%_
                                                 _%deps258681%_)))
                                      (declare (not safe))
                                      (##map __tmp259242 __tmp259241))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp259240)))))
                      (letrec ((_%compile-obj258742%_
                                (lambda (_%scm-path258749%_ _%c-path258750%_)
                                  (let* ((_%o-path258752%_
                                          (_%replace-extension258656%_
                                           _%c-path258750%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock258754%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path258752%_
                                             '".lock")))
                                         (_%locked258756%_ '#f)
                                         (_%unlock258759%_
                                          (lambda ()
                                            (close-port _%locked258756%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock258754%_)))))
                                    (let _%retry258762%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock258754%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry258762%_))
                                          (begin
                                            (set! _%locked258756%_
                                                  (let* ((_%handler258765%_
                                                          false)
                                                         (_%thunk258769%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock258754%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler258774%_ _%handler258765%_)
                 (_%thunk258830%_ _%thunk258769%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler258774%_
                                                     _%thunk258830%_)))
                                            (if _%locked258756%_
                                                '#!void
                                                (_%retry258762%_)))))
                                    (let ((__tmp259244
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path258752%_)))
                                                     (not _%scm-path258749%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path258749%_
                                                        _%o-path258752%_)))
                                                 (let ((_%gsc-cc-opts258847%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp259245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp259246 (cons _%c-path258750%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259246
                            _%gsc-static-opts258729%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259245 _%gsc-cc-opts258847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp259243
                                           (lambda () (_%unlock258759%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp259244
                                       __tmp259243))))))
                        (let ((__tmp259247
                               (lambda ()
                                 (let ((__tmp259248
                                        (path-directory _%output-bin258713%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp259248)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp259247))
                        (gxc#with-output-to-scheme-file
                         _%output-scm258715%_
                         (lambda ()
                           (_%generate-stub258654%_
                            _%builtin-modules258739%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it258747%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp259249
                                                   (let ((__tmp259250
                                                          (let ((__tmp259251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm258707%_
                               (cons _%output-scm258715%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259251 _%src-deps-scm258699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp259250
                                                      _%libgerbil-c258689%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp259249
                                               _%gsc-link-opts258725%_))))
                                     (for-each
                                      _%compile-obj258742%_
                                      (let ((__tmp259252
                                             (cons _%src-bin-scm258707%_
                                                   (cons _%output-scm258715%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259252
                                         _%src-deps-scm258699%_))
                                      (let ((__tmp259253
                                             (cons _%src-bin-c258709%_
                                                   (cons _%output-c258717%_
                                                         (cons _%output_-c258721%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259253
                                         _%src-deps-c258701%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin258713%_
                                                        (let ((__tmp259254
                                                               (cons _%src-bin-o258711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o258719%_
                                   (cons _%output_-o258723%_
                                         (let ((__tmp259255
                                                (let ((__tmp259256
                                                       (let ((__tmp259258
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir258677%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts258733%_))))
                     (__tmp259257
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath258735%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp259258 __tmp259257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp259256
                                                   _%output-ld-opts258731%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp259255
                                            _%libgerbil-o258691%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp259254 _%src-deps-o258703%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp259259
                                            (cons _%output-c258717%_
                                                  (cons _%output_-c258721%_
                                                        (cons _%output-o258719%_
                                                              (cons _%output_-o258723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp259259)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it258747%_))
                                  (_%compile-it258747%_)))
                            '#!void))))))
          (let* ((_%output-bin258667%_
                  (gxc#compile-exe-output-file _%ctx258651%_ _%opts258652%_))
                 (_%output-scm258669%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin258667%_ '"__exe.scm"))))
            (_%compile-stub258665%_
             _%output-scm258669%_
             _%output-bin258667%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx258473%_ _%opts258474%_)
        (letrec ((_%reset-declare258476%_
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
                 (_%generate-stub258477%_
                  (lambda (_%deps258642%_)
                    (let ((_%mod-main258644%_
                           (gxc#find-runtime-symbol _%ctx258473%_ 'main))
                          (_%reset-decl258645%_ (_%reset-declare258476%_))
                          (_%user-decl258646%_ (_%user-declare258478%_)))
                      (for-each
                       (lambda (_%dep258648%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl258645%_))
                         (newline)
                         (if _%user-decl258646%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl258646%_))
                               (newline))
                             '#!void)
                         (let ((__tmp259260
                                (cons 'include (cons _%dep258648%_ '()))))
                           (declare (not safe))
                           (##write __tmp259260))
                         (newline))
                       _%deps258642%_)
                      (let ((__tmp259261
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main258644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp259261))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare258478%_
                  (lambda ()
                    (let* ((_%gsc-opts258547%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts258474%_)))
                           (_%gsc-prelude258549%_
                            (if _%gsc-opts258547%_
                                (member '"-prelude" _%gsc-opts258547%_)
                                '#f))
                           (_%gsc-prelude258551%_
                            (if _%gsc-prelude258549%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude258549%_)))
                                '#f)))
                      (let _%lp258554%_ ((_%rest258556%_
                                          (cons _%gsc-prelude258551%_ '()))
                                         (_%user-decls258557%_ '()))
                        (let* ((_%rest258558258566%_ _%rest258556%_)
                               (_%else258560258574%_
                                (lambda ()
                                  (if (null? _%user-decls258557%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls258557%_)))))
                               (_%K258562258630%_
                                (lambda (_%rest258577%_ _%expr258578%_)
                                  (let* ((_%expr258579258591%_ _%expr258578%_)
                                         (_%else258582258599%_
                                          (lambda ()
                                            (_%lp258554%_
                                             _%rest258577%_
                                             _%user-decls258557%_))))
                                    (let ((_%K258587258620%_
                                           (lambda (_%decls258618%_)
                                             (_%lp258554%_
                                              _%rest258577%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls258557%_
                                                 _%decls258618%_)))))
                                          (_%K258584258605%_
                                           (lambda (_%exprs258603%_)
                                             (_%lp258554%_
                                              (append _%exprs258603%_
                                                      _%rest258577%_)
                                              _%user-decls258557%_))))
                                      (if (pair? _%expr258579258591%_)
                                          (let ((_%tl258589258625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr258579258591%_)))
                                                (_%hd258588258623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr258579258591%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd258588258623%_
                                                         'declare))
                                                (let ((_%decls258628%_
                                                       _%tl258589258625%_))
                                                  (_%K258587258620%_
                                                   _%decls258628%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd258588258623%_
                                                             'begin))
                                                    (let ((_%exprs258613%_
                                                           _%tl258589258625%_))
                                                      (_%K258584258605%_
                                                       _%exprs258613%_))
                                                    (_%else258582258599%_))))
                                          (_%else258582258599%_)))))))
                          (if (pair? _%rest258558258566%_)
                              (let ((_%hd258563258633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest258558258566%_)))
                                    (_%tl258564258635%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest258558258566%_))))
                                (let* ((_%expr258638%_ _%hd258563258633%_)
                                       (_%rest258640%_ _%tl258564258635%_))
                                  (_%K258562258630%_
                                   _%rest258640%_
                                   _%expr258638%_)))
                              (_%else258560258574%_)))))))
                 (_%compile-stub258479%_
                  (lambda (_%output-scm258486%_ _%output-bin258487%_)
                    (let* ((_%gerbil-home258489%_
                            (let ((__tmp259262
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259262)))
                           (_%gerbil-libdir258491%_
                            (path-expand '"lib" _%gerbil-home258489%_))
                           (_%runtime258493%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp258495%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home258489%_))
                           (_%include-gambit-sharp258497%_
                            (gxc#include-source _%gambit-sharp258495%_))
                           (_%bin-scm258499%_
                            (gxc#find-static-module-file _%ctx258473%_))
                           (_%deps258501%_
                            (gxc#find-runtime-module-deps _%ctx258473%_))
                           (_%deps258503%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps258501%_)))
                           (_%deps258508%_
                            (let ((__tmp259263
                                   (lambda (_%$obj258505%_)
                                     (not (gxc#file-empty? _%$obj258505%_)))))
                              (declare (not safe))
                              (##filter __tmp259263 _%deps258503%_)))
                           (_%deps258512%_
                            (let ((__tmp259264
                                   (lambda (_%f258510%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f258510%_
                                             _%runtime258493%_))))))
                              (declare (not safe))
                              (##filter __tmp259264 _%deps258508%_)))
                           (_%output-base258514%_
                            (let ((__tmp259265
                                   (path-strip-extension
                                    _%output-scm258486%_)))
                              (declare (not safe))
                              (##string-append __tmp259265)))
                           (_%output-c258516%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base258514%_ '".c")))
                           (_%output-o258518%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base258514%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_258520%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base258514%_ '"_.c")))
                           (_%output-o_258522%_
                            (let ((__tmp259266
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base258514%_
                               __tmp259266)))
                           (_%gsc-link-opts258524%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts258526%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts258528%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir258491%_)))
                           (_%output-ld-opts258530%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros258532%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp258497%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp258497%_
                                            '()))))
                           (_%gsc-link-opts258534%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts258524%_
                               _%gsc-gx-macros258532%_)))
                           (_%rpath258536%_
                            (gxc#gerbil-rpath _%gerbil-libdir258491%_))
                           (_%default-ld-options258538%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp259267
                             (lambda ()
                               (let ((__tmp259268
                                      (path-directory _%output-bin258487%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp259268)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp259267))
                      (gxc#with-output-to-scheme-file
                       _%output-scm258486%_
                       (lambda ()
                         (_%generate-stub258477%_
                          (let ((__tmp259269
                                 (let ((__tmp259270
                                        (cons _%bin-scm258499%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp259270
                                    _%deps258512%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp259269 _%runtime258493%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it258544%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_258520%_
                                                      (let ((__tmp259271
                                                             (cons _%output-scm258486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp259271 _%gsc-link-opts258534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp259272
                                                 (let ((__tmp259273
                                                        (cons _%output-c258516%_
                                                              (cons _%output-c_258520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp259273
                                                    _%gsc-static-opts258528%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259272
                                             _%gsc-cc-opts258526%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin258487%_
                                                      (cons _%output-o258518%_
                                                            (cons _%output-o_258522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259274
                                 (let ((__tmp259276
                                        (cons '"-L"
                                              (cons _%gerbil-libdir258491%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options258538%_))))
                                       (__tmp259275
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath258536%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp259276 __tmp259275))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp259274
                             _%output-ld-opts258530%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it258544%_))
                                (_%compile-it258544%_)))
                          '#!void)))))
          (let* ((_%output-bin258481%_
                  (gxc#compile-exe-output-file _%ctx258473%_ _%opts258474%_))
                 (_%output-scm258483%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin258481%_ '"__exe.scm"))))
            (_%compile-stub258479%_
             _%output-scm258483%_
             _%output-bin258481%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx258422%_ _%id258423%_)
        (let ((_%$e258469%_
               (let ((__tmp259278
                      (lambda (_%e258424258426%_)
                        (let* ((_%e258424258428258438%_ _%e258424258426%_)
                               (_%else258430258446%_ (lambda () '#f))
                               (_%K258432258450%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e258424258428258438%_
                                 'gx#module-export::t))
                              (let* ((_%e258433258453%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258424258428258438%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e258434258456%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258424258428258438%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e258435258459%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e258424258428258438%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e258435258459%_ '0))
                                    (let ((_%e258436258462%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e258424258428258438%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g258464258466%_)
                                             (eq? _%g258464258466%_
                                                  _%id258423%_))
                                           _%e258436258462%_)
                                          (_%K258432258450%_)
                                          (_%else258430258446%_)))
                                    (_%else258430258446%_)))
                              (_%else258430258446%_)))))
                     (__tmp259277
                      (##structure-ref
                       _%ctx258422%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp259278 __tmp259277))))
          (if _%$e258469%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e258469%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx258413%_ _%id258414%_)
        (let ((_%$e258416%_
               (gxc#find-export-binding _%ctx258413%_ _%id258414%_)))
          (if _%$e258416%_
              ((lambda (_%bind258419%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind258419%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id258414%_)))
                 (##structure-ref _%bind258419%_ '1 gx#binding::t '#f))
               _%$e258416%_)
              (let ((__tmp259279
                     (##structure-ref
                      _%ctx258413%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp259279
                 _%id258414%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx258279%_)
        (letrec* ((_%ht258281%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template258282%_
                   (lambda (_%in258358%_ _%phi258359%_)
                     (let ((_%iphi258361%_
                            (fx+ _%phi258359%_
                                 (##direct-structure-ref
                                  _%in258358%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports258362%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in258358%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp258364%_ ((_%rest258366%_ _%imports258362%_)
                                          (_%r258367%_ '()))
                         (let* ((_%rest258368258376%_ _%rest258366%_)
                                (_%else258370258384%_ (lambda () _%r258367%_))
                                (_%K258372258401%_
                                 (lambda (_%rest258387%_ _%in258388%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in258388%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi258361%_))
                                           (_%lp258364%_
                                            _%rest258387%_
                                            (cons _%in258388%_ _%r258367%_))
                                           (_%lp258364%_
                                            _%rest258387%_
                                            _%r258367%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in258388%_
                                              'gx#module-import::t))
                                           (let ((_%iphi258392%_
                                                  (fx+ _%phi258359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in258388%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi258392%_))
                                                 (_%lp258364%_
                                                  _%rest258387%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in258388%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r258367%_))
                                                 (_%lp258364%_
                                                  _%rest258387%_
                                                  _%r258367%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in258388%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi258395%_
                                                      (fx+ _%iphi258361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in258388%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi258395%_))
                                                     (_%lp258364%_
                                                      _%rest258387%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in258388%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r258367%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi258395%_))
                                                         (_%lp258364%_
                                                          _%rest258387%_
                                                          (let ((__tmp259280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template258282%_
                          _%in258388%_
                          _%iphi258361%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r258367%_ __tmp259280)))
                 (_%lp258364%_ _%rest258387%_ _%r258367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp258364%_
                                                _%rest258387%_
                                                _%r258367%_)))))))
                           (if (pair? _%rest258368258376%_)
                               (let ((_%hd258373258404%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest258368258376%_)))
                                     (_%tl258374258406%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest258368258376%_))))
                                 (let* ((_%in258409%_ _%hd258373258404%_)
                                        (_%rest258411%_ _%tl258374258406%_))
                                   (_%K258372258401%_
                                    _%rest258411%_
                                    _%in258409%_)))
                               (_%else258370258384%_)))))))
                  (_%find-deps258283%_
                   (lambda (_%rest258291%_ _%deps258292%_)
                     (let* ((_%rest258293258301%_ _%rest258291%_)
                            (_%else258295258309%_ (lambda () _%deps258292%_))
                            (_%K258297258346%_
                             (lambda (_%rest258312%_ _%hd258313%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd258313%_
                                      'gx#module-context::t))
                                   (let ((_%id258316%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258313%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports258317%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258313%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht258281%_
                                            _%id258316%_))
                                         (_%find-deps258283%_
                                          _%rest258312%_
                                          _%deps258292%_)
                                         (let ((_%$e258320%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd258313%_))))
                                           (if _%$e258320%_
                                               ((lambda (_%pre258323%_)
                                                  (let ((_%xdeps258325%_
                                                         (_%find-deps258283%_
                                                          (cons _%pre258323%_
                                                                _%imports258317%_)
                                                          _%deps258292%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht258281%_
                                                       _%id258316%_
                                                       _%hd258313%_))
                                                    (_%find-deps258283%_
                                                     _%rest258312%_
                                                     (cons _%hd258313%_
                                                           _%xdeps258325%_))))
                                                _%$e258320%_)
                                               (let ((_%xdeps258328%_
                                                      (_%find-deps258283%_
                                                       _%imports258317%_
                                                       _%deps258292%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht258281%_
                                                    _%id258316%_
                                                    _%hd258313%_))
                                                 (_%find-deps258283%_
                                                  _%rest258312%_
                                                  (cons _%hd258313%_
                                                        _%xdeps258328%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd258313%_
                                          'gx#prelude-context::t))
                                       (let ((_%id258331%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd258313%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht258281%_
                                                _%id258331%_))
                                             (_%find-deps258283%_
                                              _%rest258312%_
                                              _%deps258292%_)
                                             (let ((_%xdeps258335%_
                                                    (_%find-deps258283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd258313%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps258292%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht258281%_
                                                      _%id258331%_))
                                                   (_%find-deps258283%_
                                                    _%rest258312%_
                                                    _%xdeps258335%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht258281%_
                                                        _%id258331%_
                                                        _%hd258313%_))
                                                     (_%find-deps258283%_
                                                      _%rest258312%_
                                                      (cons _%hd258313%_
                                                            _%xdeps258335%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd258313%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd258313%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps258283%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258313%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258312%_)
                                                _%deps258292%_)
                                               (_%find-deps258283%_
                                                _%rest258312%_
                                                _%deps258292%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd258313%_
                                                  'gx#module-export::t))
                                               (_%find-deps258283%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258313%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258312%_)
                                                _%deps258292%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd258313%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd258313%_ '2 '#f '#f)))
               (_%find-deps258283%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd258313%_ '1 '#f '#f))
                      _%rest258312%_)
                _%deps258292%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd258313%_ '2 '#f '#f)))
                   (let ((_%xdeps258342%_
                          (_%import-set-template258282%_ _%hd258313%_ '0)))
                     (_%find-deps258283%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest258312%_ _%xdeps258342%_))
                      _%deps258292%_))
                   (_%find-deps258283%_ _%rest258312%_ _%deps258292%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd258313%_))))))))))
                       (if (pair? _%rest258293258301%_)
                           (let ((_%hd258298258349%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest258293258301%_)))
                                 (_%tl258299258351%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest258293258301%_))))
                             (let* ((_%hd258354%_ _%hd258298258349%_)
                                    (_%rest258356%_ _%tl258299258351%_))
                               (_%K258297258346%_
                                _%rest258356%_
                                _%hd258354%_)))
                           (_%else258295258309%_))))))
          (let ((__tmp259281
                 (filter gx#expander-context-id
                         (_%find-deps258283%_
                          (let ((_%$e258285%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx258279%_))))
                            (if _%$e258285%_
                                ((lambda (_%pre258288%_)
                                   (cons _%pre258288%_
                                         (##structure-ref
                                          _%ctx258279%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e258285%_)
                                (##structure-ref
                                 _%ctx258279%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp259281)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx258209%_)
        (let* ((_%context-id258211%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx258209%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx258209%_ '1 '#f '#f))
                    (string->symbol _%ctx258209%_)))
               (_%scm258213%_
                (let ((__tmp259282
                       (gxc#static-module-name _%context-id258211%_)))
                  (declare (not safe))
                  (##string-append __tmp259282 '".scm")))
               (_%dirs258215%_ (let () (declare (not safe)) (load-path)))
               (_%dirs258221%_
                (let ((_%user-libpath258217%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath258217%_
                      (let ((_%user-libpath258219%_
                             (path-expand '"lib" _%user-libpath258217%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath258219%_ _%dirs258215%_))
                            _%dirs258215%_
                            (cons _%user-libpath258219%_ _%dirs258215%_)))
                      _%dirs258215%_)))
               (_%dirs258231%_
                (let ((_%$e258223%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e258223%_
                      ((lambda (_%g258225258227%_)
                         (cons _%g258225258227%_ _%dirs258221%_))
                       _%$e258223%_)
                      _%dirs258221%_)))
               (_%dirs258237%_
                (let ((__tmp259283
                       (lambda (_%g258232258234%_)
                         (path-expand '"static" _%g258232258234%_))))
                  (declare (not safe))
                  (##map __tmp259283 _%dirs258231%_))))
          (let _%lp258240%_ ((_%rest258242%_ _%dirs258237%_))
            (let* ((_%rest258243258251%_ _%rest258242%_)
                   (_%else258245258259%_
                    (lambda ()
                      (let ((__tmp259284
                             (##structure-ref
                              _%ctx258209%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp259284
                         _%scm258213%_))))
                   (_%K258247258267%_
                    (lambda (_%rest258262%_ _%dir258263%_)
                      (let ((_%path258265%_
                             (path-expand _%scm258213%_ _%dir258263%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path258265%_))
                            _%path258265%_
                            (_%lp258240%_ _%rest258262%_))))))
              (if (pair? _%rest258243258251%_)
                  (let ((_%hd258248258270%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258243258251%_)))
                        (_%tl258249258272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258243258251%_))))
                    (let* ((_%dir258275%_ _%hd258248258270%_)
                           (_%rest258277%_ _%tl258249258272%_))
                      (_%K258247258267%_ _%rest258277%_ _%dir258275%_)))
                  (_%else258245258259%_)))))))
    (define gxc#file-empty?
      (lambda (_%path258207%_)
        (zero? (let ((__tmp259285 (file-info _%path258207%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp259285)))))
    (define gxc#compile-top-module
      (lambda (_%ctx258198%_)
        (let ((__tmp259286
               (lambda ()
                 (let ((__tmp259287
                        (lambda ()
                          (let ((__tmp259288
                                 (lambda ()
                                   (let ((__tmp259290
                                          (lambda ()
                                            (let ((__tmp259292
                                                   (lambda ()
                                                     (let ((__tmp259294
                                                            (lambda ()
                                                              (let ((__tmp259295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx258198%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp259295))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp259296
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx258198%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp259296))
                          '#!void)
                      (gxc#collect-bindings _%ctx258198%_)
                      (gxc#compile-runtime-code _%ctx258198%_)
                      (gxc#compile-meta-code _%ctx258198%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx258198%_)
                          '#!void)))
                   (__tmp259293
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
                __tmp259294
                gxc#current-compile-runtime-names
                __tmp259293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp259291
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp259292
                                               gxc#current-compile-runtime-sections
                                               __tmp259291))))
                                         (__tmp259289
                                          (let ((__obj259187
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj259187))
                                            __obj259187)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp259290
                                      gxc#current-compile-symbol-table
                                      __tmp259289)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp259288
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp259287
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259286
           gx#current-expander-context
           _%ctx258198%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx258196%_)
        (let ((__tmp259297
               (##structure-ref _%ctx258196%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp259297))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx258141%_)
        (letrec ((_%compile1258143%_
                  (lambda (_%ctx258185%_)
                    (let* ((_%code258187%_
                            (##structure-ref
                             _%ctx258185%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm258191%_
                            (let ((_%idstr258189%_
                                   (let ((__tmp259298
                                          (##structure-ref
                                           _%ctx258185%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp259298))))
                              (declare (not safe))
                              (##string-append _%idstr258189%_ '"~0")))
                           (_%rtc?258193%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code258187%_))))
                      (if _%rtc?258193%_
                          (let ((__tmp259299
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp259299
                             _%ctx258185%_
                             _%rtm258191%_))
                          '#!void)
                      (_%generate-runtime-code258145%_
                       _%ctx258185%_
                       _%code258187%_
                       (if _%rtc?258193%_ _%rtm258191%_ '#f)))))
                 (_%context-timestamp258144%_
                  (lambda (_%ctx258183%_)
                    (let ((__tmp259300
                           (let ((__tmp259301
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx258183%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp259301 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp259300))))
                 (_%generate-runtime-code258145%_
                  (lambda (_%ctx258152%_ _%code258153%_ _%rtm258154%_)
                    (let* ((_%runtime-code?258156%_ (if _%rtm258154%_ '#t '#f))
                           (_%lifts258158%_ (box '()))
                           (_%runtime-code258164%_
                            (if _%runtime-code?258156%_
                                (let ((__tmp259302
                                       (lambda ()
                                         (let ((__tmp259303
                                                (lambda ()
                                                  (let ((__tmp259304
                                                         (lambda ()
                                                           (let ((__tmp259306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code258153%_))))
                         (__tmp259305
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259306
                      gxc#current-compile-marks
                      __tmp259305)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp259304
                                                     gxc#current-compile-lift
                                                     _%lifts258158%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp259303
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp259302
                                   gx#current-expander-context
                                   _%ctx258152%_))
                                '#f))
                           (_%runtime-code258166%_
                            (if _%runtime-code?258156%_
                                (if (null? (unbox _%lifts258158%_))
                                    _%runtime-code258164%_
                                    (cons 'begin
                                          (let ((__tmp259308
                                                 (cons _%runtime-code258164%_
                                                       '()))
                                                (__tmp259307
                                                 (reverse (unbox _%lifts258158%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259308
                                             __tmp259307))))
                                '#f))
                           (_%runtime-code258168%_
                            (if _%runtime-code?258156%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp258144%_
                                                         _%ctx258152%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code258166%_ '())))
                                '#f))
                           (_%loader-code258171%_
                            (let ((__tmp259309
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code258153%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259309
                               gx#current-expander-context
                               _%ctx258152%_)))
                           (_%loader-code258173%_
                            (cons 'begin
                                  (cons _%loader-code258171%_
                                        (cons (if _%runtime-code?258156%_
                                                  (cons 'load-module
                                                        (cons _%rtm258154%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0258175%_
                            (gxc#compile-output-file _%ctx258152%_ '0 '".scm"))
                           (_%scmrt258177%_
                            (gxc#compile-output-file
                             _%ctx258152%_
                             '#f
                             '".scm"))
                           (_%scms258179%_
                            (gxc#compile-static-output-file _%ctx258152%_)))
                      (if _%runtime-code?258156%_
                          (gxc#compile-scm-file__0
                           _%scm0258175%_
                           _%runtime-code258168%_)
                          '#!void)
                      (let ((__tmp259310
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt258177%_
                                _%loader-code258173%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp259310
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms258179%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms258179%_))
                          '#!void)
                      (if _%runtime-code?258156%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0258175%_ _%scms258179%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms258179%_ void)))))))
          (let* ((_%all-modules258147%_
                  (cons _%ctx258141%_ (gxc#lift-nested-modules _%ctx258141%_)))
                 (__tmp259311
                  (lambda (_%ctx258149%_)
                    (let ((__tmp259312
                           (lambda () (_%compile1258143%_ _%ctx258149%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259312
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp259311 _%all-modules258147%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx258040%_)
        (letrec ((_%compile-ssi258042%_
                  (lambda (_%code258109%_)
                    (let* ((_%path258111%_
                            (gxc#compile-output-file
                             _%ctx258040%_
                             '#f
                             '".ssi"))
                           (_%prelude258123%_
                            (let* ((_%super258113%_
                                    (##structure-ref
                                     _%ctx258040%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e258115%_
                                    (##structure-ref
                                     _%super258113%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e258115%_
                                  ((lambda (_%g258117258119%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g258117258119%_)))
                                   _%$e258115%_)
                                  ':<root>)))
                           (_%ns258125%_
                            (##structure-ref
                             _%ctx258040%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr258127%_
                            (symbol->string
                             (##structure-ref
                              _%ctx258040%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg258135%_
                            (let ((_%$e258129%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr258127%_ '#\/))))
                              (if _%$e258129%_
                                  ((lambda (_%x258132%_)
                                     (let ((__tmp259313
                                            (substring
                                             _%idstr258127%_
                                             '0
                                             _%x258132%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp259313)))
                                   _%$e258129%_)
                                  '#f)))
                           (_%rt258137%_
                            (let ((__tmp259314
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp259314 _%ctx258040%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path258111%_))
                      (gxc#with-output-to-scheme-file
                       _%path258111%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude258123%_))
                         (if _%pkg258135%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg258135%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns258125%_))
                         (newline)
                         (pretty-print _%code258109%_)
                         (if _%rt258137%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt258137%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi258043%_
                  (lambda (_%part258048%_)
                    (let* ((_%part258049258062%_ _%part258048%_)
                           (_%E258051258066%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part258049258062%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K258052258078%_
                            (lambda (_%code258069%_
                                     _%n258070%_
                                     _%phi258071%_
                                     _%phi-ctx258072%_)
                              (let ((_%code258076%_
                                     (let ((__tmp259315
                                            (lambda ()
                                              (let ((__tmp259316
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code258069%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259316
                                                 gx#current-expander-phi
                                                 _%phi258071%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259315
                                        gx#current-expander-context
                                        _%phi-ctx258072%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx258040%_
                                  _%n258070%_
                                  '".scm")
                                 _%code258076%_
                                 '#t)))))
                      (if (pair? _%part258049258062%_)
                          (let ((_%hd258053258081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part258049258062%_)))
                                (_%tl258054258083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part258049258062%_))))
                            (let ((_%phi-ctx258086%_ _%hd258053258081%_))
                              (if (pair? _%tl258054258083%_)
                                  (let ((_%hd258055258088%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258054258083%_)))
                                        (_%tl258056258090%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258054258083%_))))
                                    (let ((_%phi258093%_ _%hd258055258088%_))
                                      (if (pair? _%tl258056258090%_)
                                          (let ((_%hd258057258095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl258056258090%_)))
                                                (_%tl258058258097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl258056258090%_))))
                                            (let ((_%n258100%_
                                                   _%hd258057258095%_))
                                              (if (pair? _%tl258058258097%_)
                                                  (let ((_%hd258059258102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl258058258097%_)))
                                                        (_%tl258060258104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl258058258097%_))))
                                                    (let ((_%code258107%_
                                                           _%hd258059258102%_))
                                                      (if (null? _%tl258060258104%_)
                                                          (_%K258052258078%_
                                                           _%code258107%_
                                                           _%n258100%_
                                                           _%phi258093%_
                                                           _%phi-ctx258086%_)
                                                          (_%E258051258066%_))))
                                                  (_%E258051258066%_))))
                                          (_%E258051258066%_))))
                                  (_%E258051258066%_))))
                          (_%E258051258066%_))))))
          (let ((_g259317_ (gxc#generate-meta-code _%ctx258040%_)))
            (begin
              (let ((_g259318_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g259317_)
                           (##values-length _g259317_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g259318_ 2)))
                    (error "Context expects 2 values" _g259318_)))
              (let ((_%ssi-code258045%_
                     (let () (declare (not safe)) (##values-ref _g259317_ 0)))
                    (_%phi-code258046%_
                     (let () (declare (not safe)) (##values-ref _g259317_ 1))))
                (begin
                  (_%compile-ssi258042%_ _%ssi-code258045%_)
                  (for-each _%compile-phi258043%_ _%phi-code258046%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx258022%_)
        (let* ((_%path258024%_
                (gxc#compile-output-file _%ctx258022%_ '#f '".ssxi.ss"))
               (_%code258026%_
                (let ((__tmp259319
                       (##structure-ref
                        _%ctx258022%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp259319)))
               (_%idstr258028%_
                (symbol->string
                 (##structure-ref
                  _%ctx258022%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg258036%_
                (let ((_%$e258030%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr258028%_ '#\/))))
                  (if _%$e258030%_
                      ((lambda (_%x258033%_)
                         (let ((__tmp259320
                                (substring _%idstr258028%_ '0 _%x258033%_)))
                           (declare (not safe))
                           (##string->symbol __tmp259320)))
                       _%$e258030%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path258024%_))
          (gxc#with-output-to-scheme-file
           _%path258024%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg258036%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg258036%_))
                 '#!void)
             (newline)
             (pretty-print _%code258026%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx258015%_)
        (let* ((_%state258017%_
                (let ((__obj259188
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj259188 _%ctx258015%_))
                  __obj259188))
               (_%ssi-code258019%_
                (let ((__tmp259321
                       (##structure-ref
                        _%ctx258015%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state258017%_
                   __tmp259321))))
          (values _%ssi-code258019%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state258017%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx258007%_)
        (let* ((_%lifts258009%_ (box '()))
               (__tmp259322
                (lambda ()
                  (let ((__tmp259324
                         (lambda ()
                           (let ((_%code258013%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx258007%_))))
                             (if (null? (unbox _%lifts258009%_))
                                 _%code258013%_
                                 (cons 'begin
                                       (let ((__tmp259326
                                              (cons _%code258013%_ '()))
                                             (__tmp259325
                                              (reverse (unbox _%lifts258009%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp259326
                                          __tmp259325)))))))
                        (__tmp259323
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp259324
                     gxc#current-compile-marks
                     __tmp259323)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259322
           gxc#current-compile-lift
           _%lifts258009%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx258003%_)
        (let ((_%modules258005%_ (box '())))
          (let ((__tmp259327
                 (##structure-ref _%ctx258003%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules258005%_ __tmp259327))
          (reverse (unbox _%modules258005%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path257983%_ _%code257984%_ _%phi?257985%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path257983%_))
        (gxc#with-output-to-scheme-file
         _%path257983%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp259328
                                           (if _%phi?257985%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp259328)))))))
           (pretty-print _%code257984%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it257989%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path257983%_ _%phi?257985%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp259329
                         (cons 'compile-file (cons _%path257983%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it257989%_ __tmp259329))
                  (_%compile-it257989%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path257994%_ _%code257995%_)
        (let ((_%phi?257997%_ '#f))
          (gxc#compile-scm-file__%
           _%path257994%_
           _%code257995%_
           _%phi?257997%_))))
    (define gxc#compile-scm-file
      (lambda _g259330_
        (let ((_g259331_ (let () (declare (not safe)) (##length _g259330_))))
          (cond ((let () (declare (not safe)) (##fx= _g259331_ 2))
                 (apply gxc#compile-scm-file__0 _g259330_))
                ((let () (declare (not safe)) (##fx= _g259331_ 3))
                 (apply gxc#compile-scm-file__% _g259330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g259330_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?257884%_)
        (let _%lp257886%_ ((_%rest257888%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts257889%_ '()))
          (let* ((_%rest257890257910%_ _%rest257888%_)
                 (_%else257894257918%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts257889%_)))
                        (reverse _%opts257889%_)))))
            (let ((_%K257904257961%_
                   (lambda (_%rest257959%_)
                     (_%lp257886%_ _%rest257959%_ _%opts257889%_)))
                  (_%K257899257943%_
                   (lambda (_%rest257941%_)
                     (_%lp257886%_ _%rest257941%_ _%opts257889%_)))
                  (_%K257896257925%_
                   (lambda (_%rest257922%_ _%opt257923%_)
                     (_%lp257886%_
                      _%rest257922%_
                      (cons _%opt257923%_ _%opts257889%_)))))
              (if (pair? _%rest257890257910%_)
                  (let ((_%tl257906257966%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257890257910%_)))
                        (_%hd257905257964%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257890257910%_))))
                    (if (equal? _%hd257905257964%_ '"-cc-options")
                        (if (pair? _%tl257906257966%_)
                            (let* ((_%tl257908257969%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl257906257966%_)))
                                   (_%rest257972%_ _%tl257908257969%_))
                              (_%K257904257961%_ _%rest257972%_))
                            (let ((_%opt257933%_ _%hd257905257964%_)
                                  (_%rest257935%_ _%tl257906257966%_))
                              (_%K257896257925%_
                               _%rest257935%_
                               _%opt257933%_)))
                        (if (equal? _%hd257905257964%_ '"-ld-options")
                            (if (pair? _%tl257906257966%_)
                                (let* ((_%tl257903257951%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl257906257966%_)))
                                       (_%rest257954%_ _%tl257903257951%_))
                                  (_%K257899257943%_ _%rest257954%_))
                                (let ((_%opt257933%_ _%hd257905257964%_)
                                      (_%rest257935%_ _%tl257906257966%_))
                                  (_%K257896257925%_
                                   _%rest257935%_
                                   _%opt257933%_)))
                            (let ((_%opt257933%_ _%hd257905257964%_)
                                  (_%rest257935%_ _%tl257906257966%_))
                              (_%K257896257925%_
                               _%rest257935%_
                               _%opt257933%_)))))
                  (_%else257894257918%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?257978%_ '#f)) (gxc#gsc-link-options__% _%phi?257978%_))))
    (define gxc#gsc-link-options
      (lambda _g259332_
        (let ((_g259333_ (let () (declare (not safe)) (##length _g259332_))))
          (cond ((let () (declare (not safe)) (##fx= _g259333_ 0))
                 (apply gxc#gsc-link-options__0 _g259332_))
                ((let () (declare (not safe)) (##fx= _g259333_ 1))
                 (apply gxc#gsc-link-options__% _g259332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g259332_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords257734%_ _%static?257730257735%_ _%phi?257736%_)
        (let ((_%static?257738%_
               (if (eq? _%static?257730257735%_ absent-value)
                   '#f
                   _%static?257730257735%_)))
          (if _%phi?257736%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp257740%_ ((_%rest257742%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts257743%_ '()))
                (let* ((_%rest257744257770%_ _%rest257742%_)
                       (_%else257749257778%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts257743%_)))
                              (reverse! _%opts257743%_)))))
                  (let ((_%K257764257841%_
                         (lambda (_%rest257838%_ _%opt257839%_)
                           (if _%static?257738%_
                               (_%lp257740%_
                                _%rest257838%_
                                (cons _%opt257839%_
                                      (cons '"-cc-options" _%opts257743%_)))
                               (_%lp257740%_ _%rest257838%_ _%opts257743%_))))
                        (_%K257759257818%_
                         (lambda (_%rest257815%_ _%opt257816%_)
                           (_%lp257740%_
                            _%rest257815%_
                            (cons _%opt257816%_
                                  (cons '"-cc-options" _%opts257743%_)))))
                        (_%K257754257798%_
                         (lambda (_%rest257796%_)
                           (_%lp257740%_ _%rest257796%_ _%opts257743%_)))
                        (_%K257751257784%_
                         (lambda (_%rest257782%_)
                           (_%lp257740%_ _%rest257782%_ _%opts257743%_))))
                    (if (pair? _%rest257744257770%_)
                        (let ((_%tl257766257846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest257744257770%_)))
                              (_%hd257765257844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest257744257770%_))))
                          (if (equal? _%hd257765257844%_ '"-cc-options")
                              (if (pair? _%tl257766257846%_)
                                  (let ((_%tl257768257851%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl257766257846%_)))
                                        (_%hd257767257849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl257766257846%_))))
                                    (if (equal? _%hd257767257849%_ '"-Bstatic")
                                        (let ((_%opt257854%_
                                               _%hd257767257849%_)
                                              (_%rest257856%_
                                               _%tl257768257851%_))
                                          (_%K257764257841%_
                                           _%rest257856%_
                                           _%opt257854%_))
                                        (let ((_%opt257831%_
                                               _%hd257767257849%_)
                                              (_%rest257833%_
                                               _%tl257768257851%_))
                                          (_%K257759257818%_
                                           _%rest257833%_
                                           _%opt257831%_))))
                                  (let ((_%rest257790%_ _%tl257766257846%_))
                                    (_%K257751257784%_ _%rest257790%_)))
                              (if (equal? _%hd257765257844%_ '"-ld-options")
                                  (if (pair? _%tl257766257846%_)
                                      (let* ((_%tl257758257806%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl257766257846%_)))
                                             (_%rest257809%_
                                              _%tl257758257806%_))
                                        (_%K257754257798%_ _%rest257809%_))
                                      (let ((_%rest257790%_
                                             _%tl257766257846%_))
                                        (_%K257751257784%_ _%rest257790%_)))
                                  (let ((_%rest257790%_ _%tl257766257846%_))
                                    (_%K257751257784%_ _%rest257790%_)))))
                        (_%else257749257778%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords257861%_ _%static?257730257862%_)
        (let ((_%phi?257864%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords257861%_
           _%static?257730257862%_
           _%phi?257864%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g259334_
        (let ((_g259335_ (let () (declare (not safe)) (##length _g259334_))))
          (cond ((let () (declare (not safe)) (##fx= _g259335_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g259334_))
                ((let () (declare (not safe)) (##fx= _g259335_ 3))
                 (apply gxc#gsc-cc-options__%__% _g259334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g259334_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords257873%_ . _%args257874%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords257873%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257873%_
                  'static:
                  absent-value))
               _%args257874%_)))
    (define gxc#gsc-cc-options
      (lambda _%args257731257880%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args257731257880%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords257580%_ _%static?257576257581%_ _%phi?257582%_)
        (let ((_%static?257584%_
               (if (eq? _%static?257576257581%_ absent-value)
                   '#f
                   _%static?257576257581%_)))
          (if _%phi?257582%_
              '()
              (let _%lp257586%_ ((_%rest257588%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts257589%_ '()))
                (let* ((_%rest257590257616%_ _%rest257588%_)
                       (_%else257595257624%_
                        (lambda () (reverse! _%opts257589%_))))
                  (let ((_%K257610257687%_
                         (lambda (_%rest257684%_ _%opt257685%_)
                           (if _%static?257584%_
                               (_%lp257586%_
                                _%rest257684%_
                                (cons _%opt257685%_
                                      (cons '"-ld-options" _%opts257589%_)))
                               (_%lp257586%_ _%rest257684%_ _%opts257589%_))))
                        (_%K257605257664%_
                         (lambda (_%rest257661%_ _%opt257662%_)
                           (_%lp257586%_
                            _%rest257661%_
                            (cons _%opt257662%_
                                  (cons '"-ld-options" _%opts257589%_)))))
                        (_%K257600257644%_
                         (lambda (_%rest257642%_)
                           (_%lp257586%_ _%rest257642%_ _%opts257589%_)))
                        (_%K257597257630%_
                         (lambda (_%rest257628%_)
                           (_%lp257586%_ _%rest257628%_ _%opts257589%_))))
                    (if (pair? _%rest257590257616%_)
                        (let ((_%tl257612257692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest257590257616%_)))
                              (_%hd257611257690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest257590257616%_))))
                          (if (equal? _%hd257611257690%_ '"-ld-options")
                              (if (pair? _%tl257612257692%_)
                                  (let ((_%tl257614257697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl257612257692%_)))
                                        (_%hd257613257695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl257612257692%_))))
                                    (if (equal? _%hd257613257695%_ '"-static")
                                        (let ((_%opt257700%_
                                               _%hd257613257695%_)
                                              (_%rest257702%_
                                               _%tl257614257697%_))
                                          (_%K257610257687%_
                                           _%rest257702%_
                                           _%opt257700%_))
                                        (let ((_%opt257677%_
                                               _%hd257613257695%_)
                                              (_%rest257679%_
                                               _%tl257614257697%_))
                                          (_%K257605257664%_
                                           _%rest257679%_
                                           _%opt257677%_))))
                                  (let ((_%rest257636%_ _%tl257612257692%_))
                                    (_%K257597257630%_ _%rest257636%_)))
                              (if (equal? _%hd257611257690%_ '"-cc-options")
                                  (if (pair? _%tl257612257692%_)
                                      (let* ((_%tl257604257652%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl257612257692%_)))
                                             (_%rest257655%_
                                              _%tl257604257652%_))
                                        (_%K257600257644%_ _%rest257655%_))
                                      (let ((_%rest257636%_
                                             _%tl257612257692%_))
                                        (_%K257597257630%_ _%rest257636%_)))
                                  (let ((_%rest257636%_ _%tl257612257692%_))
                                    (_%K257597257630%_ _%rest257636%_)))))
                        (_%else257595257624%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords257707%_ _%static?257576257708%_)
        (let ((_%phi?257710%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords257707%_
           _%static?257576257708%_
           _%phi?257710%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g259336_
        (let ((_g259337_ (let () (declare (not safe)) (##length _g259336_))))
          (cond ((let () (declare (not safe)) (##fx= _g259337_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g259336_))
                ((let () (declare (not safe)) (##fx= _g259337_ 3))
                 (apply gxc#gsc-ld-options__%__% _g259336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g259336_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords257719%_ . _%args257720%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords257719%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257719%_
                  'static:
                  absent-value))
               _%args257720%_)))
    (define gxc#gsc-ld-options
      (lambda _%args257577257726%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args257577257726%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir257571%_)
        (let ((_%user-staticdir257573%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir257571%_
                       '" -I "
                       _%user-staticdir257573%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp257483%_ ((_%rest257485%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts257486%_ '()))
          (let* ((_%rest257487257507%_ _%rest257485%_)
                 (_%else257491257515%_ (lambda () _%opts257486%_)))
            (let ((_%K257501257558%_
                   (lambda (_%rest257556%_)
                     (_%lp257483%_ _%rest257556%_ _%opts257486%_)))
                  (_%K257496257536%_
                   (lambda (_%rest257533%_ _%opt257534%_)
                     (_%lp257483%_
                      _%rest257533%_
                      (let ((__tmp259338
                             (let ((__tmp259339
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt257534%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp259339))))
                        (declare (not safe))
                        (##append _%opts257486%_ __tmp259338)))))
                  (_%K257493257521%_
                   (lambda (_%rest257519%_)
                     (_%lp257483%_ _%rest257519%_ _%opts257486%_))))
              (if (pair? _%rest257487257507%_)
                  (let ((_%tl257503257563%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257487257507%_)))
                        (_%hd257502257561%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257487257507%_))))
                    (if (equal? _%hd257502257561%_ '"-cc-options")
                        (if (pair? _%tl257503257563%_)
                            (let* ((_%tl257505257566%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl257503257563%_)))
                                   (_%rest257569%_ _%tl257505257566%_))
                              (_%K257501257558%_ _%rest257569%_))
                            (let ((_%rest257527%_ _%tl257503257563%_))
                              (_%K257493257521%_ _%rest257527%_)))
                        (if (equal? _%hd257502257561%_ '"-ld-options")
                            (if (pair? _%tl257503257563%_)
                                (let ((_%tl257500257546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl257503257563%_)))
                                      (_%hd257499257544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl257503257563%_))))
                                  (let ((_%opt257549%_ _%hd257499257544%_)
                                        (_%rest257551%_ _%tl257500257546%_))
                                    (_%K257496257536%_
                                     _%rest257551%_
                                     _%opt257549%_)))
                                (let ((_%rest257527%_ _%tl257503257563%_))
                                  (_%K257493257521%_ _%rest257527%_)))
                            (let ((_%rest257527%_ _%tl257503257563%_))
                              (_%K257493257521%_ _%rest257527%_)))))
                  (_%else257491257515%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str257480%_)
        (not (let () (declare (not safe)) (string-empty? _%str257480%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path257473%_ _%phi?257474%_)
        (let ((_%gsc-link-opts257476%_
               (gxc#gsc-link-options__% _%phi?257474%_))
              (_%gsc-cc-opts257477%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?257474%_))
              (_%gsc-ld-opts257478%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?257474%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp259340
                  (let ((__tmp259341
                         (let ((__tmp259342 (cons _%path257473%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259342
                            _%gsc-link-opts257476%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259341 _%gsc-ld-opts257478%_))))
             (declare (not safe))
             (foldr__0 cons __tmp259340 _%gsc-cc-opts257477%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx257439%_ _%n257440%_ _%ext257441%_)
        (letrec ((_%module-relative-path257443%_
                  (lambda (_%ctx257471%_)
                    (path-strip-directory
                     (let ((__tmp259343
                            (##structure-ref
                             _%ctx257471%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp259343)))))
                 (_%module-source-directory257444%_
                  (lambda (_%ctx257467%_)
                    (path-directory
                     (let ((_%mpath257469%_
                            (##structure-ref
                             _%ctx257467%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath257469%_)
                           _%mpath257469%_
                           (last _%mpath257469%_))))))
                 (_%section-string257445%_
                  (lambda (_%n257461%_)
                    (if (number? _%n257461%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n257461%_))
                        (if (symbol? _%n257461%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n257461%_))
                            (if (string? _%n257461%_)
                                _%n257461%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n257461%_)))))))
                 (_%file-name257446%_
                  (lambda (_%path257459%_)
                    (if _%n257440%_
                        (string-append
                         _%path257459%_
                         '"~"
                         (_%section-string257445%_ _%n257440%_)
                         _%ext257441%_)
                        (string-append _%path257459%_ _%ext257441%_))))
                 (_%file-path257447%_
                  (lambda ()
                    (let ((_%$e257453%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e257453%_
                          ((lambda (_%outdir257456%_)
                             (path-expand
                              (_%file-name257446%_
                               (let ((__tmp259344
                                      (##structure-ref
                                       _%ctx257439%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp259344)))
                              _%outdir257456%_))
                           _%$e257453%_)
                          (path-expand
                           (_%file-name257446%_
                            (_%module-relative-path257443%_ _%ctx257439%_))
                           (_%module-source-directory257444%_
                            _%ctx257439%_)))))))
          (let ((_%path257449%_ (_%file-path257447%_)))
            (let ((__tmp259345
                   (lambda ()
                     (let ((__tmp259346 (path-directory _%path257449%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259346)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259345))
            _%path257449%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx257420%_)
        (letrec ((_%file-name257422%_
                  (lambda (_%id257437%_)
                    (let ((__tmp259347 (gxc#static-module-name _%id257437%_)))
                      (declare (not safe))
                      (##string-append __tmp259347 '".scm"))))
                 (_%file-path257423%_
                  (lambda ()
                    (let* ((_%file257429%_
                            (_%file-name257422%_
                             (##structure-ref
                              _%ctx257420%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e257431%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e257431%_
                          ((lambda (_%outdir257434%_)
                             (path-expand
                              _%file257429%_
                              (path-expand '"static" _%outdir257434%_)))
                           _%$e257431%_)
                          (path-expand _%file257429%_ '"static"))))))
          (let ((_%path257425%_ (_%file-path257423%_)))
            (let ((__tmp259348
                   (lambda ()
                     (let ((__tmp259349 (path-directory _%path257425%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259349)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259348))
            _%path257425%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx257413%_ _%opts257414%_)
        (let ((_%$e257416%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts257414%_))))
          (if _%$e257416%_
              _%$e257416%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx257413%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr257403%_)
        (if (string? _%idstr257403%_)
            (let* ((_%str257406%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr257403%_)))
                   (_%strs257408%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str257406%_ '#\/))))
              (declare (not safe))
              (string-join _%strs257408%_ '"__"))
            (if (symbol? _%idstr257403%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr257403%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr257403%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp259350
               (let ((__tmp259351 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp259351 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp259350))))
    (define gxc#invoke__%
      (lambda (_%@@keywords257369%_
               _%stdout-redirection257365257370%_
               _%stderr-redirection257366257371%_
               _%program257372%_
               _%args257373%_)
        (let* ((_%stdout-redirection257375%_
                (if (eq? _%stdout-redirection257365257370%_ absent-value)
                    '#f
                    _%stdout-redirection257365257370%_))
               (_%stderr-redirection257377%_
                (if (eq? _%stderr-redirection257366257371%_ absent-value)
                    '#f
                    _%stderr-redirection257366257371%_)))
          (let ((__tmp259352 (cons _%program257372%_ _%args257373%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp259352))
          (let* ((_%proc257379%_
                  (open-process
                   (cons 'path:
                         (cons _%program257372%_
                               (cons 'arguments:
                                     (cons _%args257373%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection257375%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection257377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output257384%_
                  (if (or _%stdout-redirection257375%_
                          _%stderr-redirection257377%_)
                      (read-line _%proc257379%_ '#f)
                      '#f))
                 (_%status257387%_ (process-status _%proc257379%_)))
            (let () (declare (not safe)) (##close-port _%proc257379%_))
            (if (zero? _%status257387%_)
                '#!void
                (begin
                  (display _%output257384%_)
                  (let ((__tmp259353 (cons _%program257372%_ _%args257373%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp259353
                     _%status257387%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords257392%_ . _%args257393%_)
        (apply gxc#invoke__%
               _%@@keywords257392%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257392%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257392%_
                  'stderr-redirection:
                  absent-value))
               _%args257393%_)))
    (define gxc#invoke
      (lambda _%args257367257399%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args257367257399%_)))))
