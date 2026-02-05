(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770326762)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp226034 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp226034))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp226035 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp226035))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path225891%_ _%fun225892%_)
        (with-output-to-file
         (cons 'path: (cons _%path225891%_ gxc#scheme-file-settings))
         _%fun225892%_)))
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
      (lambda (_%gerbil-libdir225886%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir225886%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path225884%_)
        (let ((__tmp226036 (object->string _%path225884%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp226036 '")"))))
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
      (lambda (_%dir225882%_) (delete-file-or-directory _%dir225882%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225826%_ _%opts225827%_)
        (if (string? _%srcpath225826%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225826%_)))
        (let* ((_%outdir225829%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225827%_)))
               (_%invoke-gsc?225831%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225827%_)))
               (_%target225836%_
                (let ((_%$e225833%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225827%_))))
                  (if _%$e225833%_ _%$e225833%_ 'C)))
               (_%gsc-options225841%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225836%_) '()))
                        (let ((_%$e225838%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225827%_))))
                          (if _%$e225838%_ _%$e225838%_ '()))))
               (_%keep-scm?225843%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225827%_)))
               (_%verbosity225845%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225827%_)))
               (_%optimize225847%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225827%_)))
               (_%debug225849%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225827%_)))
               (_%gen-ssxi225851%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225827%_)))
               (_%parallel?225853%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225827%_))))
          (if _%outdir225829%_
              (let ((__tmp226037
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225829%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226037))
              '#!void)
          (if _%optimize225847%_
              (let ((__tmp226038
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226038))
              '#!void)
          (let ((__tmp226039
                 (lambda ()
                   (let ((__tmp226040
                          (lambda ()
                            (let ((__tmp226041
                                   (lambda ()
                                     (let ((__tmp226042
                                            (lambda ()
                                              (let ((__tmp226043
                                                     (lambda ()
                                                       (let ((__tmp226044
                                                              (lambda ()
                                                                (let ((__tmp226045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226046
                                        (lambda ()
                                          (let ((__tmp226047
                                                 (lambda ()
                                                   (let ((__tmp226049
                                                          (lambda ()
                                                            (let ((__tmp226051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226052
                                    (lambda ()
                                      (let ((__tmp226053
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225826%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226054
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225826%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226054))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226053
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226052
                                gxc#current-compile-parallel
                                _%parallel?225853%_))))
                          (__tmp226050
                           (cons (cons 'compile-module
                                       (cons _%srcpath225826%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226051
                       gxc#current-compile-context
                       __tmp226050))))
                 (__tmp226048 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226049
                                                      gxc#current-compile-timestamp
                                                      __tmp226048)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226047
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225851%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226046
                                    gxc#current-compile-debug
                                    _%debug225849%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226045
                           gxc#current-compile-optimize
                           _%optimize225847%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226044
                  gxc#current-compile-verbose
                  _%verbosity225845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226043
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225843%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226042
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225841%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226041
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225831%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226040
                      gx#current-compilation-target
                      _%target225836%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226039
             gxc#current-compile-output-dir
             _%outdir225829%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath225875%_)
        (let ((_%opts225877%_ '()))
          (gxc#compile-module__% _%srcpath225875%_ _%opts225877%_))))
    (define gxc#compile-module
      (lambda _g226055_
        (let ((_g226056_ (let () (declare (not safe)) (##length _g226055_))))
          (cond ((let () (declare (not safe)) (##fx= _g226056_ 1))
                 (apply gxc#compile-module__0 _g226055_))
                ((let () (declare (not safe)) (##fx= _g226056_ 2))
                 (apply gxc#compile-module__% _g226055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226055_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225776%_ _%opts225777%_)
        (if (string? _%srcpath225776%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225776%_)))
        (let* ((_%outdir225779%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225777%_)))
               (_%invoke-gsc?225781%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225777%_)))
               (_%target225786%_
                (let ((_%$e225783%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225777%_))))
                  (if _%$e225783%_ _%$e225783%_ 'C)))
               (_%gsc-options225791%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225786%_) '()))
                        (let ((_%$e225788%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225777%_))))
                          (if _%$e225788%_ _%$e225788%_ '()))))
               (_%keep-scm?225793%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225777%_)))
               (_%verbosity225795%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225777%_)))
               (_%debug225797%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225777%_)))
               (_%parallel?225799%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225777%_))))
          (if _%outdir225779%_
              (let ((__tmp226057
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225779%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226057))
              '#!void)
          (let ((__tmp226058
                 (lambda ()
                   (let ((__tmp226059
                          (lambda ()
                            (let ((__tmp226060
                                   (lambda ()
                                     (let ((__tmp226061
                                            (lambda ()
                                              (let ((__tmp226062
                                                     (lambda ()
                                                       (let ((__tmp226063
                                                              (lambda ()
                                                                (let ((__tmp226064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226066
                                        (lambda ()
                                          (let ((__tmp226068
                                                 (lambda ()
                                                   (let ((__tmp226069
                                                          (lambda ()
                                                            (let ((__tmp226070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225776%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226071
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225776%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226071))
                              _%opts225777%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226070
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226069
                                                      gxc#current-compile-parallel
                                                      _%parallel?225799%_))))
                                                (__tmp226067
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226068
                                             gxc#current-compile-context
                                             __tmp226067))))
                                       (__tmp226065 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226066
                                    gxc#current-compile-timestamp
                                    __tmp226065)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226064
                           gxc#current-compile-debug
                           _%debug225797%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226063
                  gxc#current-compile-verbose
                  _%verbosity225795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226062
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225793%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226061
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225791%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226060
                               gx#current-compilation-target
                               _%target225786%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226059
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225781%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226058
             gxc#current-compile-output-dir
             _%outdir225779%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225818%_)
        (let ((_%opts225820%_ '()))
          (gxc#compile-exe__% _%srcpath225818%_ _%opts225820%_))))
    (define gxc#compile-exe
      (lambda _g226072_
        (let ((_g226073_ (let () (declare (not safe)) (##length _g226072_))))
          (cond ((let () (declare (not safe)) (##fx= _g226073_ 1))
                 (apply gxc#compile-exe__0 _g226072_))
                ((let () (declare (not safe)) (##fx= _g226073_ 2))
                 (apply gxc#compile-exe__% _g226072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226072_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225772%_ _%opts225773%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225773%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225772%_
             _%opts225773%_)
            (gxc#compile-executable-module/separate
             _%ctx225772%_
             _%opts225773%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225572%_ _%opts225573%_)
        (letrec ((_%generate-stub225575%_
                  (lambda (_%builtin-modules225768%_)
                    (let ((_%mod-main225770%_
                           (gxc#find-runtime-symbol _%ctx225572%_ 'main)))
                      (let ((__tmp226074
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225768%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226074))
                      (let ((__tmp226075
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225770%_
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
                        (##write __tmp226075))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225576%_
                  (lambda (_%gerbil-libdir225766%_)
                    (let ((__tmp226076
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225766%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226076 read))))
                 (_%replace-extension225577%_
                  (lambda (_%path225763%_ _%ext225764%_)
                    (string-append
                     (path-strip-extension _%path225763%_)
                     _%ext225764%_)))
                 (_%replace-extension-with-c225578%_
                  (lambda (_%path225761%_)
                    (_%replace-extension225577%_ _%path225761%_ '".c")))
                 (_%replace-extension-with-object225579%_
                  (lambda (_%path225759%_)
                    (_%replace-extension225577%_
                     _%path225759%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225580%_
                  (lambda (_%ctx225757%_)
                    (if (_%exclude-module?225582%_ _%ctx225757%_)
                        '#f
                        (not (_%libgerbil-module?225581%_ _%ctx225757%_)))))
                 (_%libgerbil-module?225581%_
                  (lambda (_%ctx225750%_)
                    (let ((_%id-str225752%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225750%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225582%_ _%id-str225752%_)
                          '#f
                          (let ((_%$e225754%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225752%_))))
                            (if _%$e225754%_
                                _%$e225754%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225752%_))))))))
                 (_%exclude-module?225582%_
                  (lambda (_%ctx-or-str225746%_)
                    (let ((_%str225748%_
                           (if (string? _%ctx-or-str225746%_)
                               _%ctx-or-str225746%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225746%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225748%_))))
                 (_%not-file-empty?225583%_
                  (lambda (_%path225744%_)
                    (not (gxc#file-empty? _%path225744%_))))
                 (_%fold-libgerbil-runtime-scm225584%_
                  (lambda (_%gerbil-staticdir225737%_ _%libgerbil-scm225738%_)
                    (let ((_%gerbil-runtime-scm225742%_
                           (let ((__tmp226077
                                  (lambda (_%rtm225740%_)
                                    (path-expand
                                     (let ((__tmp226078
                                            (let ((__tmp226079
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225740%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226079
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226078 '".scm"))
                                     _%gerbil-staticdir225737%_))))
                             (declare (not safe))
                             (##map __tmp226077 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225585%_
                       (append _%gerbil-runtime-scm225742%_
                               _%libgerbil-scm225738%_)))))
                 (_%remove-duplicates225585%_
                  (lambda (_%strlst225697%_)
                    (let _%loop225699%_ ((_%rest225701%_ _%strlst225697%_)
                                         (_%result225702%_ '()))
                      (let* ((_%rest225703225711%_ _%rest225701%_)
                             (_%else225705225719%_
                              (lambda () (reverse! _%result225702%_)))
                             (_%K225707225725%_
                              (lambda (_%rest225722%_ _%path225723%_)
                                (if (member _%path225723%_ _%result225702%_)
                                    (_%loop225699%_
                                     _%rest225722%_
                                     _%result225702%_)
                                    (_%loop225699%_
                                     _%rest225722%_
                                     (cons _%path225723%_
                                           _%result225702%_))))))
                        (if (pair? _%rest225703225711%_)
                            (let ((_%hd225708225728%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225703225711%_)))
                                  (_%tl225709225730%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225703225711%_))))
                              (let* ((_%path225733%_ _%hd225708225728%_)
                                     (_%rest225735%_ _%tl225709225730%_))
                                (_%K225707225725%_
                                 _%rest225735%_
                                 _%path225733%_)))
                            (_%else225705225719%_))))))
                 (_%compile-stub225586%_
                  (lambda (_%output-scm225593%_ _%output-bin225594%_)
                    (let* ((_%gerbil-home225596%_
                            (let ((__tmp226080
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226080)))
                           (_%gerbil-libdir225598%_
                            (path-expand '"lib" _%gerbil-home225596%_))
                           (_%gerbil-staticdir225600%_
                            (path-expand '"static" _%gerbil-libdir225598%_))
                           (_%deps225602%_
                            (gxc#find-runtime-module-deps _%ctx225572%_))
                           (_%libgerbil-deps225604%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225581%_
                               _%deps225602%_)))
                           (_%libgerbil-scm225606%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225604%_)))
                           (_%libgerbil-scm225608%_
                            (_%fold-libgerbil-runtime-scm225584%_
                             _%gerbil-staticdir225600%_
                             _%libgerbil-scm225606%_))
                           (_%libgerbil-c225610%_
                            (map _%replace-extension-with-c225578%_
                                 _%libgerbil-scm225608%_))
                           (_%libgerbil-o225612%_
                            (map _%replace-extension-with-object225579%_
                                 _%libgerbil-scm225608%_))
                           (_%src-deps225614%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225580%_
                               _%deps225602%_)))
                           (_%src-deps-scm225616%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225614%_)))
                           (_%src-deps-scm225618%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225583%_
                               _%src-deps-scm225616%_)))
                           (_%src-deps-scm225620%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225618%_)))
                           (_%src-deps-c225622%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225578%_
                                     _%src-deps-scm225620%_)))
                           (_%src-deps-o225624%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225579%_
                                     _%src-deps-scm225620%_)))
                           (_%src-bin-scm225626%_
                            (gxc#find-static-module-file _%ctx225572%_))
                           (_%src-bin-scm225628%_
                            (path-expand _%src-bin-scm225626%_))
                           (_%src-bin-c225630%_
                            (_%replace-extension-with-c225578%_
                             _%src-bin-scm225628%_))
                           (_%src-bin-o225632%_
                            (_%replace-extension-with-object225579%_
                             _%src-bin-scm225628%_))
                           (_%output-bin225634%_
                            (path-expand _%output-bin225594%_))
                           (_%output-scm225636%_
                            (path-expand _%output-scm225593%_))
                           (_%output-c225638%_
                            (_%replace-extension-with-c225578%_
                             _%output-scm225636%_))
                           (_%output-o225640%_
                            (_%replace-extension-with-object225579%_
                             _%output-scm225636%_))
                           (_%output_-c225642%_
                            (_%replace-extension225577%_
                             _%output-scm225636%_
                             '"_.c"))
                           (_%output_-o225644%_
                            (_%replace-extension225577%_
                             _%output-scm225636%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225646%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225648%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225650%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225600%_))
                           (_%output-ld-opts225652%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225654%_
                            (_%get-libgerbil-ld-opts225576%_
                             _%gerbil-libdir225598%_))
                           (_%rpath225656%_
                            (gxc#gerbil-rpath _%gerbil-libdir225598%_))
                           (_%builtin-modules225660%_
                            (_%remove-duplicates225585%_
                             (let ((__tmp226081
                                    (let ((__tmp226083
                                           (lambda (_%mod225658%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225658%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226082
                                           (cons _%ctx225572%_
                                                 _%deps225602%_)))
                                      (declare (not safe))
                                      (##map __tmp226083 __tmp226082))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226081)))))
                      (letrec ((_%compile-obj225663%_
                                (lambda (_%scm-path225670%_ _%c-path225671%_)
                                  (let* ((_%o-path225673%_
                                          (_%replace-extension225577%_
                                           _%c-path225671%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225675%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225673%_
                                             '".lock")))
                                         (_%locked225677%_ '#f)
                                         (_%unlock225680%_
                                          (lambda ()
                                            (close-port _%locked225677%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225675%_)))))
                                    (let _%retry225683%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225675%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225683%_))
                                          (begin
                                            (set! _%locked225677%_
                                                  (let ((__tmp226084
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225675%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226084)))
                                            (if _%locked225677%_
                                                '#!void
                                                (_%retry225683%_)))))
                                    (let ((__tmp226086
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225673%_)))
                                                     (not _%scm-path225670%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225670%_
                                                        _%o-path225673%_)))
                                                 (let ((_%gsc-cc-opts225694%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226088 (cons _%c-path225671%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226088
                            _%gsc-static-opts225650%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226087 _%gsc-cc-opts225694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226085
                                           (lambda () (_%unlock225680%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226086
                                       __tmp226085))))))
                        (let ((__tmp226089
                               (lambda ()
                                 (let ((__tmp226090
                                        (path-directory _%output-bin225634%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226090)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226089))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225636%_
                         (lambda ()
                           (_%generate-stub225575%_
                            _%builtin-modules225660%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225668%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226091
                                                   (let ((__tmp226092
                                                          (let ((__tmp226093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225628%_
                               (cons _%output-scm225636%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226093 _%src-deps-scm225620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226092
                                                      _%libgerbil-c225610%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226091
                                               _%gsc-link-opts225646%_))))
                                     (for-each
                                      _%compile-obj225663%_
                                      (let ((__tmp226094
                                             (cons _%src-bin-scm225628%_
                                                   (cons _%output-scm225636%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226094
                                         _%src-deps-scm225620%_))
                                      (let ((__tmp226095
                                             (cons _%src-bin-c225630%_
                                                   (cons _%output-c225638%_
                                                         (cons _%output_-c225642%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226095
                                         _%src-deps-c225622%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225634%_
                                                        (let ((__tmp226096
                                                               (cons _%src-bin-o225632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225640%_
                                   (cons _%output_-o225644%_
                                         (let ((__tmp226097
                                                (let ((__tmp226098
                                                       (let ((__tmp226100
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225598%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225654%_))))
                     (__tmp226099
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225656%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226100 __tmp226099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226098
                                                   _%output-ld-opts225652%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226097
                                            _%libgerbil-o225612%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226096 _%src-deps-o225624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226101
                                            (cons _%output-c225638%_
                                                  (cons _%output_-c225642%_
                                                        (cons _%output-o225640%_
                                                              (cons _%output_-o225644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226101)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225668%_))
                                  (_%compile-it225668%_)))
                            '#!void))))))
          (let* ((_%output-bin225588%_
                  (gxc#compile-exe-output-file _%ctx225572%_ _%opts225573%_))
                 (_%output-scm225590%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225588%_ '"__exe.scm"))))
            (_%compile-stub225586%_
             _%output-scm225590%_
             _%output-bin225588%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225394%_ _%opts225395%_)
        (letrec ((_%reset-declare225397%_
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
                 (_%generate-stub225398%_
                  (lambda (_%deps225563%_)
                    (let ((_%mod-main225565%_
                           (gxc#find-runtime-symbol _%ctx225394%_ 'main))
                          (_%reset-decl225566%_ (_%reset-declare225397%_))
                          (_%user-decl225567%_ (_%user-declare225399%_)))
                      (for-each
                       (lambda (_%dep225569%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225566%_))
                         (newline)
                         (if _%user-decl225567%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225567%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226102
                                (cons 'include (cons _%dep225569%_ '()))))
                           (declare (not safe))
                           (##write __tmp226102))
                         (newline))
                       _%deps225563%_)
                      (let ((__tmp226103
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226103))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225399%_
                  (lambda ()
                    (let* ((_%gsc-opts225468%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225395%_)))
                           (_%gsc-prelude225470%_
                            (if _%gsc-opts225468%_
                                (member '"-prelude" _%gsc-opts225468%_)
                                '#f))
                           (_%gsc-prelude225472%_
                            (if _%gsc-prelude225470%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225470%_)))
                                '#f)))
                      (let _%lp225475%_ ((_%rest225477%_
                                          (cons _%gsc-prelude225472%_ '()))
                                         (_%user-decls225478%_ '()))
                        (let* ((_%rest225479225487%_ _%rest225477%_)
                               (_%else225481225495%_
                                (lambda ()
                                  (if (null? _%user-decls225478%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225478%_)))))
                               (_%K225483225551%_
                                (lambda (_%rest225498%_ _%expr225499%_)
                                  (let* ((_%expr225500225512%_ _%expr225499%_)
                                         (_%else225503225520%_
                                          (lambda ()
                                            (_%lp225475%_
                                             _%rest225498%_
                                             _%user-decls225478%_))))
                                    (let ((_%K225508225541%_
                                           (lambda (_%decls225539%_)
                                             (_%lp225475%_
                                              _%rest225498%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225478%_
                                                 _%decls225539%_)))))
                                          (_%K225505225526%_
                                           (lambda (_%exprs225524%_)
                                             (_%lp225475%_
                                              (append _%exprs225524%_
                                                      _%rest225498%_)
                                              _%user-decls225478%_))))
                                      (if (pair? _%expr225500225512%_)
                                          (let ((_%tl225510225546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225500225512%_)))
                                                (_%hd225509225544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225500225512%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225509225544%_
                                                         'declare))
                                                (let ((_%decls225549%_
                                                       _%tl225510225546%_))
                                                  (_%K225508225541%_
                                                   _%decls225549%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225509225544%_
                                                             'begin))
                                                    (let ((_%exprs225534%_
                                                           _%tl225510225546%_))
                                                      (_%K225505225526%_
                                                       _%exprs225534%_))
                                                    (_%else225503225520%_))))
                                          (_%else225503225520%_)))))))
                          (if (pair? _%rest225479225487%_)
                              (let ((_%hd225484225554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225479225487%_)))
                                    (_%tl225485225556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225479225487%_))))
                                (let* ((_%expr225559%_ _%hd225484225554%_)
                                       (_%rest225561%_ _%tl225485225556%_))
                                  (_%K225483225551%_
                                   _%rest225561%_
                                   _%expr225559%_)))
                              (_%else225481225495%_)))))))
                 (_%compile-stub225400%_
                  (lambda (_%output-scm225407%_ _%output-bin225408%_)
                    (let* ((_%gerbil-home225410%_
                            (let ((__tmp226104
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226104)))
                           (_%gerbil-libdir225412%_
                            (path-expand '"lib" _%gerbil-home225410%_))
                           (_%runtime225414%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225416%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225410%_))
                           (_%include-gambit-sharp225418%_
                            (gxc#include-source _%gambit-sharp225416%_))
                           (_%bin-scm225420%_
                            (gxc#find-static-module-file _%ctx225394%_))
                           (_%deps225422%_
                            (gxc#find-runtime-module-deps _%ctx225394%_))
                           (_%deps225424%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225422%_)))
                           (_%deps225429%_
                            (let ((__tmp226105
                                   (lambda (_%$obj225426%_)
                                     (not (gxc#file-empty? _%$obj225426%_)))))
                              (declare (not safe))
                              (##filter __tmp226105 _%deps225424%_)))
                           (_%deps225433%_
                            (let ((__tmp226106
                                   (lambda (_%f225431%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225431%_
                                             _%runtime225414%_))))))
                              (declare (not safe))
                              (##filter __tmp226106 _%deps225429%_)))
                           (_%output-base225435%_
                            (let ((__tmp226107
                                   (path-strip-extension
                                    _%output-scm225407%_)))
                              (declare (not safe))
                              (##string-append __tmp226107)))
                           (_%output-c225437%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225435%_ '".c")))
                           (_%output-o225439%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225435%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225441%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225435%_ '"_.c")))
                           (_%output-o_225443%_
                            (let ((__tmp226108
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225435%_
                               __tmp226108)))
                           (_%gsc-link-opts225445%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225447%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225449%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225412%_)))
                           (_%output-ld-opts225451%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225453%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225418%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225418%_
                                            '()))))
                           (_%gsc-link-opts225455%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225445%_
                               _%gsc-gx-macros225453%_)))
                           (_%rpath225457%_
                            (gxc#gerbil-rpath _%gerbil-libdir225412%_))
                           (_%default-ld-options225459%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226109
                             (lambda ()
                               (let ((__tmp226110
                                      (path-directory _%output-bin225408%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226110)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226109))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225407%_
                       (lambda ()
                         (_%generate-stub225398%_
                          (let ((__tmp226111
                                 (let ((__tmp226112
                                        (cons _%bin-scm225420%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226112
                                    _%deps225433%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226111 _%runtime225414%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225465%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225441%_
                                                      (let ((__tmp226113
                                                             (cons _%output-scm225407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226113 _%gsc-link-opts225455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226114
                                                 (let ((__tmp226115
                                                        (cons _%output-c225437%_
                                                              (cons _%output-c_225441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226115
                                                    _%gsc-static-opts225449%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226114
                                             _%gsc-cc-opts225447%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225408%_
                                                      (cons _%output-o225439%_
                                                            (cons _%output-o_225443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226116
                                 (let ((__tmp226118
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225412%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225459%_))))
                                       (__tmp226117
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225457%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226118 __tmp226117))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226116
                             _%output-ld-opts225451%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225465%_))
                                (_%compile-it225465%_)))
                          '#!void)))))
          (let* ((_%output-bin225402%_
                  (gxc#compile-exe-output-file _%ctx225394%_ _%opts225395%_))
                 (_%output-scm225404%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225402%_ '"__exe.scm"))))
            (_%compile-stub225400%_
             _%output-scm225404%_
             _%output-bin225402%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225343%_ _%id225344%_)
        (let ((_%$e225390%_
               (let ((__tmp226120
                      (lambda (_%e225345225347%_)
                        (let* ((_%e225345225349225359%_ _%e225345225347%_)
                               (_%else225351225367%_ (lambda () '#f))
                               (_%K225353225371%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225345225349225359%_
                                 'gx#module-export::t))
                              (let* ((_%e225354225374%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225345225349225359%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225355225377%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225345225349225359%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225356225380%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225345225349225359%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225356225380%_ '0))
                                    (let ((_%e225357225383%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225345225349225359%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225385225387%_)
                                             (eq? _%g225385225387%_
                                                  _%id225344%_))
                                           _%e225357225383%_)
                                          (_%K225353225371%_)
                                          (_%else225351225367%_)))
                                    (_%else225351225367%_)))
                              (_%else225351225367%_)))))
                     (__tmp226119
                      (##structure-ref
                       _%ctx225343%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226120 __tmp226119))))
          (if _%$e225390%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225390%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225334%_ _%id225335%_)
        (let ((_%$e225337%_
               (gxc#find-export-binding _%ctx225334%_ _%id225335%_)))
          (if _%$e225337%_
              ((lambda (_%bind225340%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225340%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225335%_)))
                 (##structure-ref _%bind225340%_ '1 gx#binding::t '#f))
               _%$e225337%_)
              (let ((__tmp226121
                     (##structure-ref
                      _%ctx225334%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226121
                 _%id225335%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225200%_)
        (letrec* ((_%ht225202%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225203%_
                   (lambda (_%in225279%_ _%phi225280%_)
                     (let ((_%iphi225282%_
                            (fx+ _%phi225280%_
                                 (##direct-structure-ref
                                  _%in225279%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225283%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225279%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225285%_ ((_%rest225287%_ _%imports225283%_)
                                          (_%r225288%_ '()))
                         (let* ((_%rest225289225297%_ _%rest225287%_)
                                (_%else225291225305%_ (lambda () _%r225288%_))
                                (_%K225293225322%_
                                 (lambda (_%rest225308%_ _%in225309%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225309%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225282%_))
                                           (_%lp225285%_
                                            _%rest225308%_
                                            (cons _%in225309%_ _%r225288%_))
                                           (_%lp225285%_
                                            _%rest225308%_
                                            _%r225288%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225309%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225313%_
                                                  (fx+ _%phi225280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225309%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225313%_))
                                                 (_%lp225285%_
                                                  _%rest225308%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225309%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225288%_))
                                                 (_%lp225285%_
                                                  _%rest225308%_
                                                  _%r225288%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225309%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225316%_
                                                      (fx+ _%iphi225282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225309%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225316%_))
                                                     (_%lp225285%_
                                                      _%rest225308%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225309%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225288%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225316%_))
                                                         (_%lp225285%_
                                                          _%rest225308%_
                                                          (let ((__tmp226122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225203%_
                          _%in225309%_
                          _%iphi225282%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225288%_ __tmp226122)))
                 (_%lp225285%_ _%rest225308%_ _%r225288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225285%_
                                                _%rest225308%_
                                                _%r225288%_)))))))
                           (if (pair? _%rest225289225297%_)
                               (let ((_%hd225294225325%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225289225297%_)))
                                     (_%tl225295225327%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225289225297%_))))
                                 (let* ((_%in225330%_ _%hd225294225325%_)
                                        (_%rest225332%_ _%tl225295225327%_))
                                   (_%K225293225322%_
                                    _%rest225332%_
                                    _%in225330%_)))
                               (_%else225291225305%_)))))))
                  (_%find-deps225204%_
                   (lambda (_%rest225212%_ _%deps225213%_)
                     (let* ((_%rest225214225222%_ _%rest225212%_)
                            (_%else225216225230%_ (lambda () _%deps225213%_))
                            (_%K225218225267%_
                             (lambda (_%rest225233%_ _%hd225234%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225234%_
                                      'gx#module-context::t))
                                   (let ((_%id225237%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225234%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225238%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225234%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225202%_
                                            _%id225237%_))
                                         (_%find-deps225204%_
                                          _%rest225233%_
                                          _%deps225213%_)
                                         (let ((_%$e225241%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225234%_))))
                                           (if _%$e225241%_
                                               ((lambda (_%pre225244%_)
                                                  (let ((_%xdeps225246%_
                                                         (_%find-deps225204%_
                                                          (cons _%pre225244%_
                                                                _%imports225238%_)
                                                          _%deps225213%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225202%_
                                                       _%id225237%_
                                                       _%hd225234%_))
                                                    (_%find-deps225204%_
                                                     _%rest225233%_
                                                     (cons _%hd225234%_
                                                           _%xdeps225246%_))))
                                                _%$e225241%_)
                                               (let ((_%xdeps225249%_
                                                      (_%find-deps225204%_
                                                       _%imports225238%_
                                                       _%deps225213%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225202%_
                                                    _%id225237%_
                                                    _%hd225234%_))
                                                 (_%find-deps225204%_
                                                  _%rest225233%_
                                                  (cons _%hd225234%_
                                                        _%xdeps225249%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225234%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225252%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225234%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225202%_
                                                _%id225252%_))
                                             (_%find-deps225204%_
                                              _%rest225233%_
                                              _%deps225213%_)
                                             (let ((_%xdeps225256%_
                                                    (_%find-deps225204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225234%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225213%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225202%_
                                                      _%id225252%_))
                                                   (_%find-deps225204%_
                                                    _%rest225233%_
                                                    _%xdeps225256%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225202%_
                                                        _%id225252%_
                                                        _%hd225234%_))
                                                     (_%find-deps225204%_
                                                      _%rest225233%_
                                                      (cons _%hd225234%_
                                                            _%xdeps225256%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225234%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225234%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225204%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225234%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225233%_)
                                                _%deps225213%_)
                                               (_%find-deps225204%_
                                                _%rest225233%_
                                                _%deps225213%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225234%_
                                                  'gx#module-export::t))
                                               (_%find-deps225204%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225234%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225233%_)
                                                _%deps225213%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225234%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225234%_ '2 '#f '#f)))
               (_%find-deps225204%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225234%_ '1 '#f '#f))
                      _%rest225233%_)
                _%deps225213%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225234%_ '2 '#f '#f)))
                   (let ((_%xdeps225263%_
                          (_%import-set-template225203%_ _%hd225234%_ '0)))
                     (_%find-deps225204%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225233%_ _%xdeps225263%_))
                      _%deps225213%_))
                   (_%find-deps225204%_ _%rest225233%_ _%deps225213%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225234%_))))))))))
                       (if (pair? _%rest225214225222%_)
                           (let ((_%hd225219225270%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225214225222%_)))
                                 (_%tl225220225272%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225214225222%_))))
                             (let* ((_%hd225275%_ _%hd225219225270%_)
                                    (_%rest225277%_ _%tl225220225272%_))
                               (_%K225218225267%_
                                _%rest225277%_
                                _%hd225275%_)))
                           (_%else225216225230%_))))))
          (let ((__tmp226123
                 (filter gx#expander-context-id
                         (_%find-deps225204%_
                          (let ((_%$e225206%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225200%_))))
                            (if _%$e225206%_
                                ((lambda (_%pre225209%_)
                                   (cons _%pre225209%_
                                         (##structure-ref
                                          _%ctx225200%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225206%_)
                                (##structure-ref
                                 _%ctx225200%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226123)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225130%_)
        (let* ((_%context-id225132%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225130%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225130%_ '1 '#f '#f))
                    (string->symbol _%ctx225130%_)))
               (_%scm225134%_
                (let ((__tmp226124
                       (gxc#static-module-name _%context-id225132%_)))
                  (declare (not safe))
                  (##string-append __tmp226124 '".scm")))
               (_%dirs225136%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225142%_
                (let ((_%user-libpath225138%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225138%_
                      (let ((_%user-libpath225140%_
                             (path-expand '"lib" _%user-libpath225138%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225140%_ _%dirs225136%_))
                            _%dirs225136%_
                            (cons _%user-libpath225140%_ _%dirs225136%_)))
                      _%dirs225136%_)))
               (_%dirs225152%_
                (let ((_%$e225144%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225144%_
                      ((lambda (_%g225146225148%_)
                         (cons _%g225146225148%_ _%dirs225142%_))
                       _%$e225144%_)
                      _%dirs225142%_)))
               (_%dirs225158%_
                (let ((__tmp226125
                       (lambda (_%g225153225155%_)
                         (path-expand '"static" _%g225153225155%_))))
                  (declare (not safe))
                  (##map __tmp226125 _%dirs225152%_))))
          (let _%lp225161%_ ((_%rest225163%_ _%dirs225158%_))
            (let* ((_%rest225164225172%_ _%rest225163%_)
                   (_%else225166225180%_
                    (lambda ()
                      (let ((__tmp226126
                             (##structure-ref
                              _%ctx225130%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226126
                         _%scm225134%_))))
                   (_%K225168225188%_
                    (lambda (_%rest225183%_ _%dir225184%_)
                      (let ((_%path225186%_
                             (path-expand _%scm225134%_ _%dir225184%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225186%_))
                            _%path225186%_
                            (_%lp225161%_ _%rest225183%_))))))
              (if (pair? _%rest225164225172%_)
                  (let ((_%hd225169225191%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225164225172%_)))
                        (_%tl225170225193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225164225172%_))))
                    (let* ((_%dir225196%_ _%hd225169225191%_)
                           (_%rest225198%_ _%tl225170225193%_))
                      (_%K225168225188%_ _%rest225198%_ _%dir225196%_)))
                  (_%else225166225180%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225128%_)
        (zero? (let ((__tmp226127 (file-info _%path225128%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226127)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225119%_)
        (let ((__tmp226128
               (lambda ()
                 (let ((__tmp226129
                        (lambda ()
                          (let ((__tmp226130
                                 (lambda ()
                                   (let ((__tmp226132
                                          (lambda ()
                                            (let ((__tmp226134
                                                   (lambda ()
                                                     (let ((__tmp226136
                                                            (lambda ()
                                                              (let ((__tmp226137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225119%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226137))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226138
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225119%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226138))
                          '#!void)
                      (gxc#collect-bindings _%ctx225119%_)
                      (gxc#compile-runtime-code _%ctx225119%_)
                      (gxc#compile-meta-code _%ctx225119%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225119%_)
                          '#!void)))
                   (__tmp226135
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
                __tmp226136
                gxc#current-compile-runtime-names
                __tmp226135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226133
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226134
                                               gxc#current-compile-runtime-sections
                                               __tmp226133))))
                                         (__tmp226131
                                          (let ((__obj226032
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj226032))
                                            __obj226032)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226132
                                      gxc#current-compile-symbol-table
                                      __tmp226131)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226130
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226129
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226128
           gx#current-expander-context
           _%ctx225119%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225117%_)
        (let ((__tmp226139
               (##structure-ref _%ctx225117%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226139))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225061%_)
        (letrec ((_%compile1225063%_
                  (lambda (_%ctx225106%_)
                    (let* ((_%code225108%_
                            (##structure-ref
                             _%ctx225106%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225112%_
                            (let ((_%idstr225110%_
                                   (let ((__tmp226140
                                          (##structure-ref
                                           _%ctx225106%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226140))))
                              (declare (not safe))
                              (##string-append _%idstr225110%_ '"~0")))
                           (_%rtc?225114%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225108%_))))
                      (if _%rtc?225114%_
                          (let ((__tmp226141
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226141
                             _%ctx225106%_
                             _%rtm225112%_))
                          '#!void)
                      (_%generate-runtime-code225065%_
                       _%ctx225106%_
                       _%code225108%_
                       (if _%rtc?225114%_ _%rtm225112%_ '#f)))))
                 (_%context-timestamp225064%_
                  (lambda (_%ctx225104%_)
                    (let ((__tmp226142
                           (let ((__tmp226143
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225104%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226143 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226142))))
                 (_%generate-runtime-code225065%_
                  (lambda (_%ctx225072%_ _%code225073%_ _%rtm225074%_)
                    (let* ((_%runtime-code?225076%_ (if _%rtm225074%_ '#t '#f))
                           (_%lifts225078%_ (box '()))
                           (_%runtime-code225085%_
                            (if _%runtime-code?225076%_
                                (let ((__tmp226144
                                       (lambda ()
                                         (let ((__tmp226145
                                                (lambda ()
                                                  (let ((__tmp226146
                                                         (lambda ()
                                                           (let ((__tmp226148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226150
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225073%_))))
                                  (__tmp226149
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226150
                               gxc#current-compile-identifiers
                               __tmp226149))))
                         (__tmp226147
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226148
                      gxc#current-compile-marks
                      __tmp226147)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226146
                                                     gxc#current-compile-lift
                                                     _%lifts225078%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226145
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226144
                                   gx#current-expander-context
                                   _%ctx225072%_))
                                '#f))
                           (_%runtime-code225087%_
                            (if _%runtime-code?225076%_
                                (if (null? (unbox _%lifts225078%_))
                                    _%runtime-code225085%_
                                    (cons 'begin
                                          (let ((__tmp226152
                                                 (cons _%runtime-code225085%_
                                                       '()))
                                                (__tmp226151
                                                 (reverse (unbox _%lifts225078%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226152
                                             __tmp226151))))
                                '#f))
                           (_%runtime-code225089%_
                            (if _%runtime-code?225076%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225064%_
                                                         _%ctx225072%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225087%_ '())))
                                '#f))
                           (_%loader-code225092%_
                            (let ((__tmp226153
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225073%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226153
                               gx#current-expander-context
                               _%ctx225072%_)))
                           (_%loader-code225094%_
                            (cons 'begin
                                  (cons _%loader-code225092%_
                                        (cons (if _%runtime-code?225076%_
                                                  (cons 'load-module
                                                        (cons _%rtm225074%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225096%_
                            (gxc#compile-output-file _%ctx225072%_ '0 '".scm"))
                           (_%scmrt225098%_
                            (gxc#compile-output-file
                             _%ctx225072%_
                             '#f
                             '".scm"))
                           (_%scms225100%_
                            (gxc#compile-static-output-file _%ctx225072%_)))
                      (if _%runtime-code?225076%_
                          (gxc#compile-scm-file__0
                           _%scm0225096%_
                           _%runtime-code225089%_)
                          '#!void)
                      (let ((__tmp226154
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225098%_
                                _%loader-code225094%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226154
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225100%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225100%_))
                          '#!void)
                      (if _%runtime-code?225076%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225096%_ _%scms225100%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225100%_ void)))))))
          (let* ((_%all-modules225067%_
                  (cons _%ctx225061%_ (gxc#lift-nested-modules _%ctx225061%_)))
                 (__tmp226155
                  (lambda (_%ctx225069%_)
                    (let ((__tmp226156
                           (lambda () (_%compile1225063%_ _%ctx225069%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226156
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226155 _%all-modules225067%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx224960%_)
        (letrec ((_%compile-ssi224962%_
                  (lambda (_%code225029%_)
                    (let* ((_%path225031%_
                            (gxc#compile-output-file
                             _%ctx224960%_
                             '#f
                             '".ssi"))
                           (_%prelude225043%_
                            (let* ((_%super225033%_
                                    (##structure-ref
                                     _%ctx224960%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e225035%_
                                    (##structure-ref
                                     _%super225033%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e225035%_
                                  ((lambda (_%g225037225039%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g225037225039%_)))
                                   _%$e225035%_)
                                  ':<root>)))
                           (_%ns225045%_
                            (##structure-ref
                             _%ctx224960%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225047%_
                            (symbol->string
                             (##structure-ref
                              _%ctx224960%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225055%_
                            (let ((_%$e225049%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225047%_ '#\/))))
                              (if _%$e225049%_
                                  ((lambda (_%x225052%_)
                                     (let ((__tmp226157
                                            (substring
                                             _%idstr225047%_
                                             '0
                                             _%x225052%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226157)))
                                   _%$e225049%_)
                                  '#f)))
                           (_%rt225057%_
                            (let ((__tmp226158
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226158 _%ctx224960%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path225031%_))
                      (gxc#with-output-to-scheme-file
                       _%path225031%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude225043%_))
                         (if _%pkg225055%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225055%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225045%_))
                         (newline)
                         (pretty-print _%code225029%_)
                         (if _%rt225057%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225057%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi224963%_
                  (lambda (_%part224968%_)
                    (let* ((_%part224969224982%_ _%part224968%_)
                           (_%E224971224986%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part224969224982%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K224972224998%_
                            (lambda (_%code224989%_
                                     _%n224990%_
                                     _%phi224991%_
                                     _%phi-ctx224992%_)
                              (let ((_%code224996%_
                                     (let ((__tmp226159
                                            (lambda ()
                                              (let ((__tmp226160
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code224989%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226160
                                                 gx#current-expander-phi
                                                 _%phi224991%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226159
                                        gx#current-expander-context
                                        _%phi-ctx224992%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx224960%_
                                  _%n224990%_
                                  '".scm")
                                 _%code224996%_
                                 '#t)))))
                      (if (pair? _%part224969224982%_)
                          (let ((_%hd224973225001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part224969224982%_)))
                                (_%tl224974225003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part224969224982%_))))
                            (let ((_%phi-ctx225006%_ _%hd224973225001%_))
                              (if (pair? _%tl224974225003%_)
                                  (let ((_%hd224975225008%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224974225003%_)))
                                        (_%tl224976225010%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224974225003%_))))
                                    (let ((_%phi225013%_ _%hd224975225008%_))
                                      (if (pair? _%tl224976225010%_)
                                          (let ((_%hd224977225015%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl224976225010%_)))
                                                (_%tl224978225017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl224976225010%_))))
                                            (let ((_%n225020%_
                                                   _%hd224977225015%_))
                                              (if (pair? _%tl224978225017%_)
                                                  (let ((_%hd224979225022%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl224978225017%_)))
                                                        (_%tl224980225024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl224978225017%_))))
                                                    (let ((_%code225027%_
                                                           _%hd224979225022%_))
                                                      (if (null? _%tl224980225024%_)
                                                          (_%K224972224998%_
                                                           _%code225027%_
                                                           _%n225020%_
                                                           _%phi225013%_
                                                           _%phi-ctx225006%_)
                                                          (_%E224971224986%_))))
                                                  (_%E224971224986%_))))
                                          (_%E224971224986%_))))
                                  (_%E224971224986%_))))
                          (_%E224971224986%_))))))
          (let ((_g226161_ (gxc#generate-meta-code _%ctx224960%_)))
            (begin
              (let ((_g226162_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226161_)
                           (##values-length _g226161_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226162_ 2)))
                    (error "Context expects 2 values" _g226162_)))
              (let ((_%ssi-code224965%_
                     (let () (declare (not safe)) (##values-ref _g226161_ 0)))
                    (_%phi-code224966%_
                     (let () (declare (not safe)) (##values-ref _g226161_ 1))))
                (begin
                  (_%compile-ssi224962%_ _%ssi-code224965%_)
                  (for-each _%compile-phi224963%_ _%phi-code224966%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx224942%_)
        (let* ((_%path224944%_
                (gxc#compile-output-file _%ctx224942%_ '#f '".ssxi.ss"))
               (_%code224946%_
                (let ((__tmp226163
                       (##structure-ref
                        _%ctx224942%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226163)))
               (_%idstr224948%_
                (symbol->string
                 (##structure-ref
                  _%ctx224942%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg224956%_
                (let ((_%$e224950%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr224948%_ '#\/))))
                  (if _%$e224950%_
                      ((lambda (_%x224953%_)
                         (let ((__tmp226164
                                (substring _%idstr224948%_ '0 _%x224953%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226164)))
                       _%$e224950%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path224944%_))
          (gxc#with-output-to-scheme-file
           _%path224944%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg224956%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg224956%_))
                 '#!void)
             (newline)
             (pretty-print _%code224946%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx224935%_)
        (let* ((_%state224937%_
                (let ((__obj226033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj226033 _%ctx224935%_))
                  __obj226033))
               (_%ssi-code224939%_
                (let ((__tmp226165
                       (##structure-ref
                        _%ctx224935%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state224937%_
                   __tmp226165))))
          (values _%ssi-code224939%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state224937%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx224926%_)
        (let* ((_%lifts224928%_ (box '()))
               (__tmp226166
                (lambda ()
                  (let ((__tmp226168
                         (lambda ()
                           (let ((__tmp226170
                                  (lambda ()
                                    (let ((_%code224933%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx224926%_))))
                                      (if (null? (unbox _%lifts224928%_))
                                          _%code224933%_
                                          (cons 'begin
                                                (let ((__tmp226172
                                                       (cons _%code224933%_
                                                             '()))
                                                      (__tmp226171
                                                       (reverse (unbox _%lifts224928%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226172
                                                   __tmp226171)))))))
                                 (__tmp226169
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226170
                              gxc#current-compile-identifiers
                              __tmp226169))))
                        (__tmp226167
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226168
                     gxc#current-compile-marks
                     __tmp226167)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226166
           gxc#current-compile-lift
           _%lifts224928%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx224922%_)
        (let ((_%modules224924%_ (box '())))
          (let ((__tmp226173
                 (##structure-ref _%ctx224922%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules224924%_ __tmp226173))
          (reverse (unbox _%modules224924%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path224902%_ _%code224903%_ _%phi?224904%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path224902%_))
        (gxc#with-output-to-scheme-file
         _%path224902%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226174
                                           (if _%phi?224904%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226174)))))))
           (pretty-print _%code224903%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it224908%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path224902%_ _%phi?224904%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226175
                         (cons 'compile-file (cons _%path224902%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it224908%_ __tmp226175))
                  (_%compile-it224908%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path224913%_ _%code224914%_)
        (let ((_%phi?224916%_ '#f))
          (gxc#compile-scm-file__%
           _%path224913%_
           _%code224914%_
           _%phi?224916%_))))
    (define gxc#compile-scm-file
      (lambda _g226176_
        (let ((_g226177_ (let () (declare (not safe)) (##length _g226176_))))
          (cond ((let () (declare (not safe)) (##fx= _g226177_ 2))
                 (apply gxc#compile-scm-file__0 _g226176_))
                ((let () (declare (not safe)) (##fx= _g226177_ 3))
                 (apply gxc#compile-scm-file__% _g226176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226176_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224803%_)
        (let _%lp224805%_ ((_%rest224807%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224808%_ '()))
          (let* ((_%rest224809224829%_ _%rest224807%_)
                 (_%else224813224837%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224808%_)))
                        (reverse _%opts224808%_)))))
            (let ((_%K224823224880%_
                   (lambda (_%rest224878%_)
                     (_%lp224805%_ _%rest224878%_ _%opts224808%_)))
                  (_%K224818224862%_
                   (lambda (_%rest224860%_)
                     (_%lp224805%_ _%rest224860%_ _%opts224808%_)))
                  (_%K224815224844%_
                   (lambda (_%rest224841%_ _%opt224842%_)
                     (_%lp224805%_
                      _%rest224841%_
                      (cons _%opt224842%_ _%opts224808%_)))))
              (if (pair? _%rest224809224829%_)
                  (let ((_%tl224825224885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224809224829%_)))
                        (_%hd224824224883%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224809224829%_))))
                    (if (equal? _%hd224824224883%_ '"-cc-options")
                        (if (pair? _%tl224825224885%_)
                            (let* ((_%tl224827224888%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224825224885%_)))
                                   (_%rest224891%_ _%tl224827224888%_))
                              (_%K224823224880%_ _%rest224891%_))
                            (let ((_%opt224852%_ _%hd224824224883%_)
                                  (_%rest224854%_ _%tl224825224885%_))
                              (_%K224815224844%_
                               _%rest224854%_
                               _%opt224852%_)))
                        (if (equal? _%hd224824224883%_ '"-ld-options")
                            (if (pair? _%tl224825224885%_)
                                (let* ((_%tl224822224870%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224825224885%_)))
                                       (_%rest224873%_ _%tl224822224870%_))
                                  (_%K224818224862%_ _%rest224873%_))
                                (let ((_%opt224852%_ _%hd224824224883%_)
                                      (_%rest224854%_ _%tl224825224885%_))
                                  (_%K224815224844%_
                                   _%rest224854%_
                                   _%opt224852%_)))
                            (let ((_%opt224852%_ _%hd224824224883%_)
                                  (_%rest224854%_ _%tl224825224885%_))
                              (_%K224815224844%_
                               _%rest224854%_
                               _%opt224852%_)))))
                  (_%else224813224837%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?224897%_ '#f)) (gxc#gsc-link-options__% _%phi?224897%_))))
    (define gxc#gsc-link-options
      (lambda _g226178_
        (let ((_g226179_ (let () (declare (not safe)) (##length _g226178_))))
          (cond ((let () (declare (not safe)) (##fx= _g226179_ 0))
                 (apply gxc#gsc-link-options__0 _g226178_))
                ((let () (declare (not safe)) (##fx= _g226179_ 1))
                 (apply gxc#gsc-link-options__% _g226178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226178_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224653%_ _%static?224649224654%_ _%phi?224655%_)
        (let ((_%static?224657%_
               (if (eq? _%static?224649224654%_ absent-value)
                   '#f
                   _%static?224649224654%_)))
          (if _%phi?224655%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224659%_ ((_%rest224661%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224662%_ '()))
                (let* ((_%rest224663224689%_ _%rest224661%_)
                       (_%else224668224697%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224662%_)))
                              (reverse! _%opts224662%_)))))
                  (let ((_%K224683224760%_
                         (lambda (_%rest224757%_ _%opt224758%_)
                           (if _%static?224657%_
                               (_%lp224659%_
                                _%rest224757%_
                                (cons _%opt224758%_
                                      (cons '"-cc-options" _%opts224662%_)))
                               (_%lp224659%_ _%rest224757%_ _%opts224662%_))))
                        (_%K224678224737%_
                         (lambda (_%rest224734%_ _%opt224735%_)
                           (_%lp224659%_
                            _%rest224734%_
                            (cons _%opt224735%_
                                  (cons '"-cc-options" _%opts224662%_)))))
                        (_%K224673224717%_
                         (lambda (_%rest224715%_)
                           (_%lp224659%_ _%rest224715%_ _%opts224662%_)))
                        (_%K224670224703%_
                         (lambda (_%rest224701%_)
                           (_%lp224659%_ _%rest224701%_ _%opts224662%_))))
                    (if (pair? _%rest224663224689%_)
                        (let ((_%tl224685224765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224663224689%_)))
                              (_%hd224684224763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224663224689%_))))
                          (if (equal? _%hd224684224763%_ '"-cc-options")
                              (if (pair? _%tl224685224765%_)
                                  (let ((_%tl224687224770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224685224765%_)))
                                        (_%hd224686224768%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224685224765%_))))
                                    (if (equal? _%hd224686224768%_ '"-Bstatic")
                                        (let ((_%opt224773%_
                                               _%hd224686224768%_)
                                              (_%rest224775%_
                                               _%tl224687224770%_))
                                          (_%K224683224760%_
                                           _%rest224775%_
                                           _%opt224773%_))
                                        (let ((_%opt224750%_
                                               _%hd224686224768%_)
                                              (_%rest224752%_
                                               _%tl224687224770%_))
                                          (_%K224678224737%_
                                           _%rest224752%_
                                           _%opt224750%_))))
                                  (let ((_%rest224709%_ _%tl224685224765%_))
                                    (_%K224670224703%_ _%rest224709%_)))
                              (if (equal? _%hd224684224763%_ '"-ld-options")
                                  (if (pair? _%tl224685224765%_)
                                      (let* ((_%tl224677224725%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224685224765%_)))
                                             (_%rest224728%_
                                              _%tl224677224725%_))
                                        (_%K224673224717%_ _%rest224728%_))
                                      (let ((_%rest224709%_
                                             _%tl224685224765%_))
                                        (_%K224670224703%_ _%rest224709%_)))
                                  (let ((_%rest224709%_ _%tl224685224765%_))
                                    (_%K224670224703%_ _%rest224709%_)))))
                        (_%else224668224697%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224780%_ _%static?224649224781%_)
        (let ((_%phi?224783%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224780%_
           _%static?224649224781%_
           _%phi?224783%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226180_
        (let ((_g226181_ (let () (declare (not safe)) (##length _g226180_))))
          (cond ((let () (declare (not safe)) (##fx= _g226181_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226180_))
                ((let () (declare (not safe)) (##fx= _g226181_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226180_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224792%_ . _%args224793%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224792%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224792%_
                  'static:
                  absent-value))
               _%args224793%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224650224799%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224650224799%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224499%_ _%static?224495224500%_ _%phi?224501%_)
        (let ((_%static?224503%_
               (if (eq? _%static?224495224500%_ absent-value)
                   '#f
                   _%static?224495224500%_)))
          (if _%phi?224501%_
              '()
              (let _%lp224505%_ ((_%rest224507%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224508%_ '()))
                (let* ((_%rest224509224535%_ _%rest224507%_)
                       (_%else224514224543%_
                        (lambda () (reverse! _%opts224508%_))))
                  (let ((_%K224529224606%_
                         (lambda (_%rest224603%_ _%opt224604%_)
                           (if _%static?224503%_
                               (_%lp224505%_
                                _%rest224603%_
                                (cons _%opt224604%_
                                      (cons '"-ld-options" _%opts224508%_)))
                               (_%lp224505%_ _%rest224603%_ _%opts224508%_))))
                        (_%K224524224583%_
                         (lambda (_%rest224580%_ _%opt224581%_)
                           (_%lp224505%_
                            _%rest224580%_
                            (cons _%opt224581%_
                                  (cons '"-ld-options" _%opts224508%_)))))
                        (_%K224519224563%_
                         (lambda (_%rest224561%_)
                           (_%lp224505%_ _%rest224561%_ _%opts224508%_)))
                        (_%K224516224549%_
                         (lambda (_%rest224547%_)
                           (_%lp224505%_ _%rest224547%_ _%opts224508%_))))
                    (if (pair? _%rest224509224535%_)
                        (let ((_%tl224531224611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224509224535%_)))
                              (_%hd224530224609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224509224535%_))))
                          (if (equal? _%hd224530224609%_ '"-ld-options")
                              (if (pair? _%tl224531224611%_)
                                  (let ((_%tl224533224616%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224531224611%_)))
                                        (_%hd224532224614%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224531224611%_))))
                                    (if (equal? _%hd224532224614%_ '"-static")
                                        (let ((_%opt224619%_
                                               _%hd224532224614%_)
                                              (_%rest224621%_
                                               _%tl224533224616%_))
                                          (_%K224529224606%_
                                           _%rest224621%_
                                           _%opt224619%_))
                                        (let ((_%opt224596%_
                                               _%hd224532224614%_)
                                              (_%rest224598%_
                                               _%tl224533224616%_))
                                          (_%K224524224583%_
                                           _%rest224598%_
                                           _%opt224596%_))))
                                  (let ((_%rest224555%_ _%tl224531224611%_))
                                    (_%K224516224549%_ _%rest224555%_)))
                              (if (equal? _%hd224530224609%_ '"-cc-options")
                                  (if (pair? _%tl224531224611%_)
                                      (let* ((_%tl224523224571%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224531224611%_)))
                                             (_%rest224574%_
                                              _%tl224523224571%_))
                                        (_%K224519224563%_ _%rest224574%_))
                                      (let ((_%rest224555%_
                                             _%tl224531224611%_))
                                        (_%K224516224549%_ _%rest224555%_)))
                                  (let ((_%rest224555%_ _%tl224531224611%_))
                                    (_%K224516224549%_ _%rest224555%_)))))
                        (_%else224514224543%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224626%_ _%static?224495224627%_)
        (let ((_%phi?224629%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224626%_
           _%static?224495224627%_
           _%phi?224629%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226182_
        (let ((_g226183_ (let () (declare (not safe)) (##length _g226182_))))
          (cond ((let () (declare (not safe)) (##fx= _g226183_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226182_))
                ((let () (declare (not safe)) (##fx= _g226183_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226182_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224638%_ . _%args224639%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224638%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224638%_
                  'static:
                  absent-value))
               _%args224639%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224496224645%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224496224645%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224490%_)
        (let ((_%user-staticdir224492%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224490%_
                       '" -I "
                       _%user-staticdir224492%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224402%_ ((_%rest224404%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224405%_ '()))
          (let* ((_%rest224406224426%_ _%rest224404%_)
                 (_%else224410224434%_ (lambda () _%opts224405%_)))
            (let ((_%K224420224477%_
                   (lambda (_%rest224475%_)
                     (_%lp224402%_ _%rest224475%_ _%opts224405%_)))
                  (_%K224415224455%_
                   (lambda (_%rest224452%_ _%opt224453%_)
                     (_%lp224402%_
                      _%rest224452%_
                      (let ((__tmp226184
                             (let ((__tmp226185
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224453%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226185))))
                        (declare (not safe))
                        (##append _%opts224405%_ __tmp226184)))))
                  (_%K224412224440%_
                   (lambda (_%rest224438%_)
                     (_%lp224402%_ _%rest224438%_ _%opts224405%_))))
              (if (pair? _%rest224406224426%_)
                  (let ((_%tl224422224482%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224406224426%_)))
                        (_%hd224421224480%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224406224426%_))))
                    (if (equal? _%hd224421224480%_ '"-cc-options")
                        (if (pair? _%tl224422224482%_)
                            (let* ((_%tl224424224485%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224422224482%_)))
                                   (_%rest224488%_ _%tl224424224485%_))
                              (_%K224420224477%_ _%rest224488%_))
                            (let ((_%rest224446%_ _%tl224422224482%_))
                              (_%K224412224440%_ _%rest224446%_)))
                        (if (equal? _%hd224421224480%_ '"-ld-options")
                            (if (pair? _%tl224422224482%_)
                                (let ((_%tl224419224465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224422224482%_)))
                                      (_%hd224418224463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224422224482%_))))
                                  (let ((_%opt224468%_ _%hd224418224463%_)
                                        (_%rest224470%_ _%tl224419224465%_))
                                    (_%K224415224455%_
                                     _%rest224470%_
                                     _%opt224468%_)))
                                (let ((_%rest224446%_ _%tl224422224482%_))
                                  (_%K224412224440%_ _%rest224446%_)))
                            (let ((_%rest224446%_ _%tl224422224482%_))
                              (_%K224412224440%_ _%rest224446%_)))))
                  (_%else224410224434%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224399%_)
        (not (let () (declare (not safe)) (string-empty? _%str224399%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224392%_ _%phi?224393%_)
        (let ((_%gsc-link-opts224395%_
               (gxc#gsc-link-options__% _%phi?224393%_))
              (_%gsc-cc-opts224396%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224393%_))
              (_%gsc-ld-opts224397%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224393%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226186
                  (let ((__tmp226187
                         (let ((__tmp226188 (cons _%path224392%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226188
                            _%gsc-link-opts224395%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226187 _%gsc-ld-opts224397%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226186 _%gsc-cc-opts224396%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224358%_ _%n224359%_ _%ext224360%_)
        (letrec ((_%module-relative-path224362%_
                  (lambda (_%ctx224390%_)
                    (path-strip-directory
                     (let ((__tmp226189
                            (##structure-ref
                             _%ctx224390%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226189)))))
                 (_%module-source-directory224363%_
                  (lambda (_%ctx224386%_)
                    (path-directory
                     (let ((_%mpath224388%_
                            (##structure-ref
                             _%ctx224386%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224388%_)
                           _%mpath224388%_
                           (last _%mpath224388%_))))))
                 (_%section-string224364%_
                  (lambda (_%n224380%_)
                    (if (number? _%n224380%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224380%_))
                        (if (symbol? _%n224380%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224380%_))
                            (if (string? _%n224380%_)
                                _%n224380%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224380%_)))))))
                 (_%file-name224365%_
                  (lambda (_%path224378%_)
                    (if _%n224359%_
                        (string-append
                         _%path224378%_
                         '"~"
                         (_%section-string224364%_ _%n224359%_)
                         _%ext224360%_)
                        (string-append _%path224378%_ _%ext224360%_))))
                 (_%file-path224366%_
                  (lambda ()
                    (let ((_%$e224372%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224372%_
                          ((lambda (_%outdir224375%_)
                             (path-expand
                              (_%file-name224365%_
                               (let ((__tmp226190
                                      (##structure-ref
                                       _%ctx224358%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226190)))
                              _%outdir224375%_))
                           _%$e224372%_)
                          (path-expand
                           (_%file-name224365%_
                            (_%module-relative-path224362%_ _%ctx224358%_))
                           (_%module-source-directory224363%_
                            _%ctx224358%_)))))))
          (let ((_%path224368%_ (_%file-path224366%_)))
            (let ((__tmp226191
                   (lambda ()
                     (let ((__tmp226192 (path-directory _%path224368%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226192)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226191))
            _%path224368%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224339%_)
        (letrec ((_%file-name224341%_
                  (lambda (_%id224356%_)
                    (let ((__tmp226193 (gxc#static-module-name _%id224356%_)))
                      (declare (not safe))
                      (##string-append __tmp226193 '".scm"))))
                 (_%file-path224342%_
                  (lambda ()
                    (let* ((_%file224348%_
                            (_%file-name224341%_
                             (##structure-ref
                              _%ctx224339%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224350%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224350%_
                          ((lambda (_%outdir224353%_)
                             (path-expand
                              _%file224348%_
                              (path-expand '"static" _%outdir224353%_)))
                           _%$e224350%_)
                          (path-expand _%file224348%_ '"static"))))))
          (let ((_%path224344%_ (_%file-path224342%_)))
            (let ((__tmp226194
                   (lambda ()
                     (let ((__tmp226195 (path-directory _%path224344%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226195)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226194))
            _%path224344%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224332%_ _%opts224333%_)
        (let ((_%$e224335%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224333%_))))
          (if _%$e224335%_
              _%$e224335%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224332%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224322%_)
        (if (string? _%idstr224322%_)
            (let* ((_%str224325%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224322%_)))
                   (_%strs224327%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224325%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224327%_ '"__"))
            (if (symbol? _%idstr224322%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224322%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224322%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226196
               (let ((__tmp226197 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226197 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226196))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224288%_
               _%stdout-redirection224284224289%_
               _%stderr-redirection224285224290%_
               _%program224291%_
               _%args224292%_)
        (let* ((_%stdout-redirection224294%_
                (if (eq? _%stdout-redirection224284224289%_ absent-value)
                    '#f
                    _%stdout-redirection224284224289%_))
               (_%stderr-redirection224296%_
                (if (eq? _%stderr-redirection224285224290%_ absent-value)
                    '#f
                    _%stderr-redirection224285224290%_)))
          (let ((__tmp226198 (cons _%program224291%_ _%args224292%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226198))
          (let* ((_%proc224298%_
                  (open-process
                   (cons 'path:
                         (cons _%program224291%_
                               (cons 'arguments:
                                     (cons _%args224292%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224294%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224303%_
                  (if (or _%stdout-redirection224294%_
                          _%stderr-redirection224296%_)
                      (read-line _%proc224298%_ '#f)
                      '#f))
                 (_%status224306%_ (process-status _%proc224298%_)))
            (let () (declare (not safe)) (##close-port _%proc224298%_))
            (if (zero? _%status224306%_)
                '#!void
                (begin
                  (display _%output224303%_)
                  (let ((__tmp226199 (cons _%program224291%_ _%args224292%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226199
                     _%status224306%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224311%_ . _%args224312%_)
        (apply gxc#invoke__%
               _%@@keywords224311%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224311%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224311%_
                  'stderr-redirection:
                  absent-value))
               _%args224312%_)))
    (define gxc#invoke
      (lambda _%args224286224318%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224286224318%_)))))
