(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770248986)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp225990 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp225990))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp225991 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp225991))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path225847%_ _%fun225848%_)
        (with-output-to-file
         (cons 'path: (cons _%path225847%_ gxc#scheme-file-settings))
         _%fun225848%_)))
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
      (lambda (_%gerbil-libdir225842%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir225842%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path225840%_)
        (let ((__tmp225992 (object->string _%path225840%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp225992 '")"))))
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
      (lambda (_%dir225838%_) (delete-file-or-directory _%dir225838%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath225782%_ _%opts225783%_)
        (if (string? _%srcpath225782%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225782%_)))
        (let* ((_%outdir225785%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225783%_)))
               (_%invoke-gsc?225787%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225783%_)))
               (_%target225792%_
                (let ((_%$e225789%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225783%_))))
                  (if _%$e225789%_ _%$e225789%_ 'C)))
               (_%gsc-options225797%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225792%_) '()))
                        (let ((_%$e225794%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225783%_))))
                          (if _%$e225794%_ _%$e225794%_ '()))))
               (_%keep-scm?225799%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225783%_)))
               (_%verbosity225801%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225783%_)))
               (_%optimize225803%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts225783%_)))
               (_%debug225805%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225783%_)))
               (_%gen-ssxi225807%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts225783%_)))
               (_%parallel?225809%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225783%_))))
          (if _%outdir225785%_
              (let ((__tmp225993
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225785%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp225993))
              '#!void)
          (if _%optimize225803%_
              (let ((__tmp225994
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp225994))
              '#!void)
          (let ((__tmp225995
                 (lambda ()
                   (let ((__tmp225996
                          (lambda ()
                            (let ((__tmp225997
                                   (lambda ()
                                     (let ((__tmp225998
                                            (lambda ()
                                              (let ((__tmp225999
                                                     (lambda ()
                                                       (let ((__tmp226000
                                                              (lambda ()
                                                                (let ((__tmp226001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226002
                                        (lambda ()
                                          (let ((__tmp226003
                                                 (lambda ()
                                                   (let ((__tmp226005
                                                          (lambda ()
                                                            (let ((__tmp226007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp226008
                                    (lambda ()
                                      (let ((__tmp226009
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath225782%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp226010
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath225782%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp226010))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp226009
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp226008
                                gxc#current-compile-parallel
                                _%parallel?225809%_))))
                          (__tmp226006
                           (cons (cons 'compile-module
                                       (cons _%srcpath225782%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226007
                       gxc#current-compile-context
                       __tmp226006))))
                 (__tmp226004 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226005
                                                      gxc#current-compile-timestamp
                                                      __tmp226004)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226003
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi225807%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226002
                                    gxc#current-compile-debug
                                    _%debug225805%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226001
                           gxc#current-compile-optimize
                           _%optimize225803%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226000
                  gxc#current-compile-verbose
                  _%verbosity225801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp225999
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225799%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp225998
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225797%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp225997
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?225787%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp225996
                      gx#current-compilation-target
                      _%target225792%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp225995
             gxc#current-compile-output-dir
             _%outdir225785%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath225831%_)
        (let ((_%opts225833%_ '()))
          (gxc#compile-module__% _%srcpath225831%_ _%opts225833%_))))
    (define gxc#compile-module
      (lambda _g226011_
        (let ((_g226012_ (let () (declare (not safe)) (##length _g226011_))))
          (cond ((let () (declare (not safe)) (##fx= _g226012_ 1))
                 (apply gxc#compile-module__0 _g226011_))
                ((let () (declare (not safe)) (##fx= _g226012_ 2))
                 (apply gxc#compile-module__% _g226011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g226011_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath225732%_ _%opts225733%_)
        (if (string? _%srcpath225732%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath225732%_)))
        (let* ((_%outdir225735%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts225733%_)))
               (_%invoke-gsc?225737%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts225733%_)))
               (_%target225742%_
                (let ((_%$e225739%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts225733%_))))
                  (if _%$e225739%_ _%$e225739%_ 'C)))
               (_%gsc-options225747%_
                (append (cons '"-target"
                              (cons (symbol->string _%target225742%_) '()))
                        (let ((_%$e225744%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts225733%_))))
                          (if _%$e225744%_ _%$e225744%_ '()))))
               (_%keep-scm?225749%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts225733%_)))
               (_%verbosity225751%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts225733%_)))
               (_%debug225753%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts225733%_)))
               (_%parallel?225755%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts225733%_))))
          (if _%outdir225735%_
              (let ((__tmp226013
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir225735%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp226013))
              '#!void)
          (let ((__tmp226014
                 (lambda ()
                   (let ((__tmp226015
                          (lambda ()
                            (let ((__tmp226016
                                   (lambda ()
                                     (let ((__tmp226017
                                            (lambda ()
                                              (let ((__tmp226018
                                                     (lambda ()
                                                       (let ((__tmp226019
                                                              (lambda ()
                                                                (let ((__tmp226020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp226022
                                        (lambda ()
                                          (let ((__tmp226024
                                                 (lambda ()
                                                   (let ((__tmp226025
                                                          (lambda ()
                                                            (let ((__tmp226026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath225732%_))
                             (gxc#compile-executable-module
                              (let ((__tmp226027
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath225732%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp226027))
                              _%opts225733%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226026
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp226025
                                                      gxc#current-compile-parallel
                                                      _%parallel?225755%_))))
                                                (__tmp226023
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath225732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp226024
                                             gxc#current-compile-context
                                             __tmp226023))))
                                       (__tmp226021 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp226022
                                    gxc#current-compile-timestamp
                                    __tmp226021)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp226020
                           gxc#current-compile-debug
                           _%debug225753%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp226019
                  gxc#current-compile-verbose
                  _%verbosity225751%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226018
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?225749%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226017
                                        gxc#current-compile-gsc-options
                                        _%gsc-options225747%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226016
                               gx#current-compilation-target
                               _%target225742%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226015
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?225737%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp226014
             gxc#current-compile-output-dir
             _%outdir225735%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath225774%_)
        (let ((_%opts225776%_ '()))
          (gxc#compile-exe__% _%srcpath225774%_ _%opts225776%_))))
    (define gxc#compile-exe
      (lambda _g226028_
        (let ((_g226029_ (let () (declare (not safe)) (##length _g226028_))))
          (cond ((let () (declare (not safe)) (##fx= _g226029_ 1))
                 (apply gxc#compile-exe__0 _g226028_))
                ((let () (declare (not safe)) (##fx= _g226029_ 2))
                 (apply gxc#compile-exe__% _g226028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g226028_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx225728%_ _%opts225729%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts225729%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx225728%_
             _%opts225729%_)
            (gxc#compile-executable-module/separate
             _%ctx225728%_
             _%opts225729%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx225528%_ _%opts225529%_)
        (letrec ((_%generate-stub225531%_
                  (lambda (_%builtin-modules225724%_)
                    (let ((_%mod-main225726%_
                           (gxc#find-runtime-symbol _%ctx225528%_ 'main)))
                      (let ((__tmp226030
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules225724%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp226030))
                      (let ((__tmp226031
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main225726%_
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
                        (##write __tmp226031))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts225532%_
                  (lambda (_%gerbil-libdir225722%_)
                    (let ((__tmp226032
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir225722%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp226032 read))))
                 (_%replace-extension225533%_
                  (lambda (_%path225719%_ _%ext225720%_)
                    (string-append
                     (path-strip-extension _%path225719%_)
                     _%ext225720%_)))
                 (_%replace-extension-with-c225534%_
                  (lambda (_%path225717%_)
                    (_%replace-extension225533%_ _%path225717%_ '".c")))
                 (_%replace-extension-with-object225535%_
                  (lambda (_%path225715%_)
                    (_%replace-extension225533%_
                     _%path225715%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?225536%_
                  (lambda (_%ctx225713%_)
                    (if (_%exclude-module?225538%_ _%ctx225713%_)
                        '#f
                        (not (_%libgerbil-module?225537%_ _%ctx225713%_)))))
                 (_%libgerbil-module?225537%_
                  (lambda (_%ctx225706%_)
                    (let ((_%id-str225708%_
                           (symbol->string
                            (##structure-ref
                             _%ctx225706%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?225538%_ _%id-str225708%_)
                          '#f
                          (let ((_%$e225710%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str225708%_))))
                            (if _%$e225710%_
                                _%$e225710%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str225708%_))))))))
                 (_%exclude-module?225538%_
                  (lambda (_%ctx-or-str225702%_)
                    (let ((_%str225704%_
                           (if (string? _%ctx-or-str225702%_)
                               _%ctx-or-str225702%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str225702%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str225704%_))))
                 (_%not-file-empty?225539%_
                  (lambda (_%path225700%_)
                    (not (gxc#file-empty? _%path225700%_))))
                 (_%fold-libgerbil-runtime-scm225540%_
                  (lambda (_%gerbil-staticdir225693%_ _%libgerbil-scm225694%_)
                    (let ((_%gerbil-runtime-scm225698%_
                           (let ((__tmp226033
                                  (lambda (_%rtm225696%_)
                                    (path-expand
                                     (let ((__tmp226034
                                            (let ((__tmp226035
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm225696%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp226035
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp226034 '".scm"))
                                     _%gerbil-staticdir225693%_))))
                             (declare (not safe))
                             (##map __tmp226033 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates225541%_
                       (append _%gerbil-runtime-scm225698%_
                               _%libgerbil-scm225694%_)))))
                 (_%remove-duplicates225541%_
                  (lambda (_%strlst225653%_)
                    (let _%loop225655%_ ((_%rest225657%_ _%strlst225653%_)
                                         (_%result225658%_ '()))
                      (let* ((_%rest225659225667%_ _%rest225657%_)
                             (_%else225661225675%_
                              (lambda () (reverse! _%result225658%_)))
                             (_%K225663225681%_
                              (lambda (_%rest225678%_ _%path225679%_)
                                (if (member _%path225679%_ _%result225658%_)
                                    (_%loop225655%_
                                     _%rest225678%_
                                     _%result225658%_)
                                    (_%loop225655%_
                                     _%rest225678%_
                                     (cons _%path225679%_
                                           _%result225658%_))))))
                        (if (pair? _%rest225659225667%_)
                            (let ((_%hd225664225684%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest225659225667%_)))
                                  (_%tl225665225686%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest225659225667%_))))
                              (let* ((_%path225689%_ _%hd225664225684%_)
                                     (_%rest225691%_ _%tl225665225686%_))
                                (_%K225663225681%_
                                 _%rest225691%_
                                 _%path225689%_)))
                            (_%else225661225675%_))))))
                 (_%compile-stub225542%_
                  (lambda (_%output-scm225549%_ _%output-bin225550%_)
                    (let* ((_%gerbil-home225552%_
                            (let ((__tmp226036
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226036)))
                           (_%gerbil-libdir225554%_
                            (path-expand '"lib" _%gerbil-home225552%_))
                           (_%gerbil-staticdir225556%_
                            (path-expand '"static" _%gerbil-libdir225554%_))
                           (_%deps225558%_
                            (gxc#find-runtime-module-deps _%ctx225528%_))
                           (_%libgerbil-deps225560%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?225537%_
                               _%deps225558%_)))
                           (_%libgerbil-scm225562%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps225560%_)))
                           (_%libgerbil-scm225564%_
                            (_%fold-libgerbil-runtime-scm225540%_
                             _%gerbil-staticdir225556%_
                             _%libgerbil-scm225562%_))
                           (_%libgerbil-c225566%_
                            (map _%replace-extension-with-c225534%_
                                 _%libgerbil-scm225564%_))
                           (_%libgerbil-o225568%_
                            (map _%replace-extension-with-object225535%_
                                 _%libgerbil-scm225564%_))
                           (_%src-deps225570%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?225536%_
                               _%deps225558%_)))
                           (_%src-deps-scm225572%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps225570%_)))
                           (_%src-deps-scm225574%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?225539%_
                               _%src-deps-scm225572%_)))
                           (_%src-deps-scm225576%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm225574%_)))
                           (_%src-deps-c225578%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c225534%_
                                     _%src-deps-scm225576%_)))
                           (_%src-deps-o225580%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object225535%_
                                     _%src-deps-scm225576%_)))
                           (_%src-bin-scm225582%_
                            (gxc#find-static-module-file _%ctx225528%_))
                           (_%src-bin-scm225584%_
                            (path-expand _%src-bin-scm225582%_))
                           (_%src-bin-c225586%_
                            (_%replace-extension-with-c225534%_
                             _%src-bin-scm225584%_))
                           (_%src-bin-o225588%_
                            (_%replace-extension-with-object225535%_
                             _%src-bin-scm225584%_))
                           (_%output-bin225590%_
                            (path-expand _%output-bin225550%_))
                           (_%output-scm225592%_
                            (path-expand _%output-scm225549%_))
                           (_%output-c225594%_
                            (_%replace-extension-with-c225534%_
                             _%output-scm225592%_))
                           (_%output-o225596%_
                            (_%replace-extension-with-object225535%_
                             _%output-scm225592%_))
                           (_%output_-c225598%_
                            (_%replace-extension225533%_
                             _%output-scm225592%_
                             '"_.c"))
                           (_%output_-o225600%_
                            (_%replace-extension225533%_
                             _%output-scm225592%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts225602%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225604%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225606%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir225556%_))
                           (_%output-ld-opts225608%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts225610%_
                            (_%get-libgerbil-ld-opts225532%_
                             _%gerbil-libdir225554%_))
                           (_%rpath225612%_
                            (gxc#gerbil-rpath _%gerbil-libdir225554%_))
                           (_%builtin-modules225616%_
                            (_%remove-duplicates225541%_
                             (let ((__tmp226037
                                    (let ((__tmp226039
                                           (lambda (_%mod225614%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod225614%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp226038
                                           (cons _%ctx225528%_
                                                 _%deps225558%_)))
                                      (declare (not safe))
                                      (##map __tmp226039 __tmp226038))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp226037)))))
                      (letrec ((_%compile-obj225619%_
                                (lambda (_%scm-path225626%_ _%c-path225627%_)
                                  (let* ((_%o-path225629%_
                                          (_%replace-extension225533%_
                                           _%c-path225627%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock225631%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path225629%_
                                             '".lock")))
                                         (_%locked225633%_ '#f)
                                         (_%unlock225636%_
                                          (lambda ()
                                            (close-port _%locked225633%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock225631%_)))))
                                    (let _%retry225639%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock225631%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry225639%_))
                                          (begin
                                            (set! _%locked225633%_
                                                  (let ((__tmp226040
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock225631%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp226040)))
                                            (if _%locked225633%_
                                                '#!void
                                                (_%retry225639%_)))))
                                    (let ((__tmp226042
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path225629%_)))
                                                     (not _%scm-path225626%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path225626%_
                                                        _%o-path225629%_)))
                                                 (let ((_%gsc-cc-opts225650%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp226043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp226044 (cons _%c-path225627%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226044
                            _%gsc-static-opts225606%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226043 _%gsc-cc-opts225650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp226041
                                           (lambda () (_%unlock225636%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp226042
                                       __tmp226041))))))
                        (let ((__tmp226045
                               (lambda ()
                                 (let ((__tmp226046
                                        (path-directory _%output-bin225590%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp226046)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp226045))
                        (gxc#with-output-to-scheme-file
                         _%output-scm225592%_
                         (lambda ()
                           (_%generate-stub225531%_
                            _%builtin-modules225616%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it225624%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp226047
                                                   (let ((__tmp226048
                                                          (let ((__tmp226049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm225584%_
                               (cons _%output-scm225592%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226049 _%src-deps-scm225576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp226048
                                                      _%libgerbil-c225566%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp226047
                                               _%gsc-link-opts225602%_))))
                                     (for-each
                                      _%compile-obj225619%_
                                      (let ((__tmp226050
                                             (cons _%src-bin-scm225584%_
                                                   (cons _%output-scm225592%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226050
                                         _%src-deps-scm225576%_))
                                      (let ((__tmp226051
                                             (cons _%src-bin-c225586%_
                                                   (cons _%output-c225594%_
                                                         (cons _%output_-c225598%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp226051
                                         _%src-deps-c225578%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin225590%_
                                                        (let ((__tmp226052
                                                               (cons _%src-bin-o225588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o225596%_
                                   (cons _%output_-o225600%_
                                         (let ((__tmp226053
                                                (let ((__tmp226054
                                                       (let ((__tmp226056
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir225554%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts225610%_))))
                     (__tmp226055
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath225612%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp226056 __tmp226055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226054
                                                   _%output-ld-opts225608%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp226053
                                            _%libgerbil-o225568%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp226052 _%src-deps-o225580%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp226057
                                            (cons _%output-c225594%_
                                                  (cons _%output_-c225598%_
                                                        (cons _%output-o225596%_
                                                              (cons _%output_-o225600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp226057)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it225624%_))
                                  (_%compile-it225624%_)))
                            '#!void))))))
          (let* ((_%output-bin225544%_
                  (gxc#compile-exe-output-file _%ctx225528%_ _%opts225529%_))
                 (_%output-scm225546%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225544%_ '"__exe.scm"))))
            (_%compile-stub225542%_
             _%output-scm225546%_
             _%output-bin225544%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx225350%_ _%opts225351%_)
        (letrec ((_%reset-declare225353%_
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
                 (_%generate-stub225354%_
                  (lambda (_%deps225519%_)
                    (let ((_%mod-main225521%_
                           (gxc#find-runtime-symbol _%ctx225350%_ 'main))
                          (_%reset-decl225522%_ (_%reset-declare225353%_))
                          (_%user-decl225523%_ (_%user-declare225355%_)))
                      (for-each
                       (lambda (_%dep225525%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl225522%_))
                         (newline)
                         (if _%user-decl225523%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl225523%_))
                               (newline))
                             '#!void)
                         (let ((__tmp226058
                                (cons 'include (cons _%dep225525%_ '()))))
                           (declare (not safe))
                           (##write __tmp226058))
                         (newline))
                       _%deps225519%_)
                      (let ((__tmp226059
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main225521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp226059))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare225355%_
                  (lambda ()
                    (let* ((_%gsc-opts225424%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts225351%_)))
                           (_%gsc-prelude225426%_
                            (if _%gsc-opts225424%_
                                (member '"-prelude" _%gsc-opts225424%_)
                                '#f))
                           (_%gsc-prelude225428%_
                            (if _%gsc-prelude225426%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude225426%_)))
                                '#f)))
                      (let _%lp225431%_ ((_%rest225433%_
                                          (cons _%gsc-prelude225428%_ '()))
                                         (_%user-decls225434%_ '()))
                        (let* ((_%rest225435225443%_ _%rest225433%_)
                               (_%else225437225451%_
                                (lambda ()
                                  (if (null? _%user-decls225434%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls225434%_)))))
                               (_%K225439225507%_
                                (lambda (_%rest225454%_ _%expr225455%_)
                                  (let* ((_%expr225456225468%_ _%expr225455%_)
                                         (_%else225459225476%_
                                          (lambda ()
                                            (_%lp225431%_
                                             _%rest225454%_
                                             _%user-decls225434%_))))
                                    (let ((_%K225464225497%_
                                           (lambda (_%decls225495%_)
                                             (_%lp225431%_
                                              _%rest225454%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls225434%_
                                                 _%decls225495%_)))))
                                          (_%K225461225482%_
                                           (lambda (_%exprs225480%_)
                                             (_%lp225431%_
                                              (append _%exprs225480%_
                                                      _%rest225454%_)
                                              _%user-decls225434%_))))
                                      (if (pair? _%expr225456225468%_)
                                          (let ((_%tl225466225502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr225456225468%_)))
                                                (_%hd225465225500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr225456225468%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd225465225500%_
                                                         'declare))
                                                (let ((_%decls225505%_
                                                       _%tl225466225502%_))
                                                  (_%K225464225497%_
                                                   _%decls225505%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd225465225500%_
                                                             'begin))
                                                    (let ((_%exprs225490%_
                                                           _%tl225466225502%_))
                                                      (_%K225461225482%_
                                                       _%exprs225490%_))
                                                    (_%else225459225476%_))))
                                          (_%else225459225476%_)))))))
                          (if (pair? _%rest225435225443%_)
                              (let ((_%hd225440225510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest225435225443%_)))
                                    (_%tl225441225512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest225435225443%_))))
                                (let* ((_%expr225515%_ _%hd225440225510%_)
                                       (_%rest225517%_ _%tl225441225512%_))
                                  (_%K225439225507%_
                                   _%rest225517%_
                                   _%expr225515%_)))
                              (_%else225437225451%_)))))))
                 (_%compile-stub225356%_
                  (lambda (_%output-scm225363%_ _%output-bin225364%_)
                    (let* ((_%gerbil-home225366%_
                            (let ((__tmp226060
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp226060)))
                           (_%gerbil-libdir225368%_
                            (path-expand '"lib" _%gerbil-home225366%_))
                           (_%runtime225370%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp225372%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home225366%_))
                           (_%include-gambit-sharp225374%_
                            (gxc#include-source _%gambit-sharp225372%_))
                           (_%bin-scm225376%_
                            (gxc#find-static-module-file _%ctx225350%_))
                           (_%deps225378%_
                            (gxc#find-runtime-module-deps _%ctx225350%_))
                           (_%deps225380%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps225378%_)))
                           (_%deps225385%_
                            (let ((__tmp226061
                                   (lambda (_%$obj225382%_)
                                     (not (gxc#file-empty? _%$obj225382%_)))))
                              (declare (not safe))
                              (##filter __tmp226061 _%deps225380%_)))
                           (_%deps225389%_
                            (let ((__tmp226062
                                   (lambda (_%f225387%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f225387%_
                                             _%runtime225370%_))))))
                              (declare (not safe))
                              (##filter __tmp226062 _%deps225385%_)))
                           (_%output-base225391%_
                            (let ((__tmp226063
                                   (path-strip-extension
                                    _%output-scm225363%_)))
                              (declare (not safe))
                              (##string-append __tmp226063)))
                           (_%output-c225393%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225391%_ '".c")))
                           (_%output-o225395%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base225391%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_225397%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base225391%_ '"_.c")))
                           (_%output-o_225399%_
                            (let ((__tmp226064
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base225391%_
                               __tmp226064)))
                           (_%gsc-link-opts225401%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts225403%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts225405%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir225368%_)))
                           (_%output-ld-opts225407%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros225409%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp225374%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp225374%_
                                            '()))))
                           (_%gsc-link-opts225411%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts225401%_
                               _%gsc-gx-macros225409%_)))
                           (_%rpath225413%_
                            (gxc#gerbil-rpath _%gerbil-libdir225368%_))
                           (_%default-ld-options225415%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp226065
                             (lambda ()
                               (let ((__tmp226066
                                      (path-directory _%output-bin225364%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp226066)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp226065))
                      (gxc#with-output-to-scheme-file
                       _%output-scm225363%_
                       (lambda ()
                         (_%generate-stub225354%_
                          (let ((__tmp226067
                                 (let ((__tmp226068
                                        (cons _%bin-scm225376%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp226068
                                    _%deps225389%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp226067 _%runtime225370%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it225421%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_225397%_
                                                      (let ((__tmp226069
                                                             (cons _%output-scm225363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp226069 _%gsc-link-opts225411%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp226070
                                                 (let ((__tmp226071
                                                        (cons _%output-c225393%_
                                                              (cons _%output-c_225397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp226071
                                                    _%gsc-static-opts225405%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226070
                                             _%gsc-cc-opts225403%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin225364%_
                                                      (cons _%output-o225395%_
                                                            (cons _%output-o_225399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp226072
                                 (let ((__tmp226074
                                        (cons '"-L"
                                              (cons _%gerbil-libdir225368%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options225415%_))))
                                       (__tmp226073
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath225413%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp226074 __tmp226073))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp226072
                             _%output-ld-opts225407%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it225421%_))
                                (_%compile-it225421%_)))
                          '#!void)))))
          (let* ((_%output-bin225358%_
                  (gxc#compile-exe-output-file _%ctx225350%_ _%opts225351%_))
                 (_%output-scm225360%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin225358%_ '"__exe.scm"))))
            (_%compile-stub225356%_
             _%output-scm225360%_
             _%output-bin225358%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx225299%_ _%id225300%_)
        (let ((_%$e225346%_
               (let ((__tmp226076
                      (lambda (_%e225301225303%_)
                        (let* ((_%e225301225305225315%_ _%e225301225303%_)
                               (_%else225307225323%_ (lambda () '#f))
                               (_%K225309225327%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e225301225305225315%_
                                 'gx#module-export::t))
                              (let* ((_%e225310225330%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225301225305225315%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e225311225333%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225301225305225315%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e225312225336%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e225301225305225315%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e225312225336%_ '0))
                                    (let ((_%e225313225339%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e225301225305225315%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g225341225343%_)
                                             (eq? _%g225341225343%_
                                                  _%id225300%_))
                                           _%e225313225339%_)
                                          (_%K225309225327%_)
                                          (_%else225307225323%_)))
                                    (_%else225307225323%_)))
                              (_%else225307225323%_)))))
                     (__tmp226075
                      (##structure-ref
                       _%ctx225299%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp226076 __tmp226075))))
          (if _%$e225346%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e225346%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx225290%_ _%id225291%_)
        (let ((_%$e225293%_
               (gxc#find-export-binding _%ctx225290%_ _%id225291%_)))
          (if _%$e225293%_
              ((lambda (_%bind225296%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind225296%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id225291%_)))
                 (##structure-ref _%bind225296%_ '1 gx#binding::t '#f))
               _%$e225293%_)
              (let ((__tmp226077
                     (##structure-ref
                      _%ctx225290%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp226077
                 _%id225291%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx225156%_)
        (letrec* ((_%ht225158%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template225159%_
                   (lambda (_%in225235%_ _%phi225236%_)
                     (let ((_%iphi225238%_
                            (fx+ _%phi225236%_
                                 (##direct-structure-ref
                                  _%in225235%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports225239%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in225235%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp225241%_ ((_%rest225243%_ _%imports225239%_)
                                          (_%r225244%_ '()))
                         (let* ((_%rest225245225253%_ _%rest225243%_)
                                (_%else225247225261%_ (lambda () _%r225244%_))
                                (_%K225249225278%_
                                 (lambda (_%rest225264%_ _%in225265%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in225265%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi225238%_))
                                           (_%lp225241%_
                                            _%rest225264%_
                                            (cons _%in225265%_ _%r225244%_))
                                           (_%lp225241%_
                                            _%rest225264%_
                                            _%r225244%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in225265%_
                                              'gx#module-import::t))
                                           (let ((_%iphi225269%_
                                                  (fx+ _%phi225236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in225265%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi225269%_))
                                                 (_%lp225241%_
                                                  _%rest225264%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in225265%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r225244%_))
                                                 (_%lp225241%_
                                                  _%rest225264%_
                                                  _%r225244%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in225265%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi225272%_
                                                      (fx+ _%iphi225238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in225265%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi225272%_))
                                                     (_%lp225241%_
                                                      _%rest225264%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in225265%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r225244%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi225272%_))
                                                         (_%lp225241%_
                                                          _%rest225264%_
                                                          (let ((__tmp226078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template225159%_
                          _%in225265%_
                          _%iphi225238%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r225244%_ __tmp226078)))
                 (_%lp225241%_ _%rest225264%_ _%r225244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp225241%_
                                                _%rest225264%_
                                                _%r225244%_)))))))
                           (if (pair? _%rest225245225253%_)
                               (let ((_%hd225250225281%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest225245225253%_)))
                                     (_%tl225251225283%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest225245225253%_))))
                                 (let* ((_%in225286%_ _%hd225250225281%_)
                                        (_%rest225288%_ _%tl225251225283%_))
                                   (_%K225249225278%_
                                    _%rest225288%_
                                    _%in225286%_)))
                               (_%else225247225261%_)))))))
                  (_%find-deps225160%_
                   (lambda (_%rest225168%_ _%deps225169%_)
                     (let* ((_%rest225170225178%_ _%rest225168%_)
                            (_%else225172225186%_ (lambda () _%deps225169%_))
                            (_%K225174225223%_
                             (lambda (_%rest225189%_ _%hd225190%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd225190%_
                                      'gx#module-context::t))
                                   (let ((_%id225193%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225190%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports225194%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd225190%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht225158%_
                                            _%id225193%_))
                                         (_%find-deps225160%_
                                          _%rest225189%_
                                          _%deps225169%_)
                                         (let ((_%$e225197%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd225190%_))))
                                           (if _%$e225197%_
                                               ((lambda (_%pre225200%_)
                                                  (let ((_%xdeps225202%_
                                                         (_%find-deps225160%_
                                                          (cons _%pre225200%_
                                                                _%imports225194%_)
                                                          _%deps225169%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht225158%_
                                                       _%id225193%_
                                                       _%hd225190%_))
                                                    (_%find-deps225160%_
                                                     _%rest225189%_
                                                     (cons _%hd225190%_
                                                           _%xdeps225202%_))))
                                                _%$e225197%_)
                                               (let ((_%xdeps225205%_
                                                      (_%find-deps225160%_
                                                       _%imports225194%_
                                                       _%deps225169%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht225158%_
                                                    _%id225193%_
                                                    _%hd225190%_))
                                                 (_%find-deps225160%_
                                                  _%rest225189%_
                                                  (cons _%hd225190%_
                                                        _%xdeps225205%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd225190%_
                                          'gx#prelude-context::t))
                                       (let ((_%id225208%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd225190%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht225158%_
                                                _%id225208%_))
                                             (_%find-deps225160%_
                                              _%rest225189%_
                                              _%deps225169%_)
                                             (let ((_%xdeps225212%_
                                                    (_%find-deps225160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd225190%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps225169%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht225158%_
                                                      _%id225208%_))
                                                   (_%find-deps225160%_
                                                    _%rest225189%_
                                                    _%xdeps225212%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht225158%_
                                                        _%id225208%_
                                                        _%hd225190%_))
                                                     (_%find-deps225160%_
                                                      _%rest225189%_
                                                      (cons _%hd225190%_
                                                            _%xdeps225212%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd225190%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd225190%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps225160%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225190%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225189%_)
                                                _%deps225169%_)
                                               (_%find-deps225160%_
                                                _%rest225189%_
                                                _%deps225169%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd225190%_
                                                  'gx#module-export::t))
                                               (_%find-deps225160%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd225190%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest225189%_)
                                                _%deps225169%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd225190%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd225190%_ '2 '#f '#f)))
               (_%find-deps225160%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd225190%_ '1 '#f '#f))
                      _%rest225189%_)
                _%deps225169%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd225190%_ '2 '#f '#f)))
                   (let ((_%xdeps225219%_
                          (_%import-set-template225159%_ _%hd225190%_ '0)))
                     (_%find-deps225160%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest225189%_ _%xdeps225219%_))
                      _%deps225169%_))
                   (_%find-deps225160%_ _%rest225189%_ _%deps225169%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd225190%_))))))))))
                       (if (pair? _%rest225170225178%_)
                           (let ((_%hd225175225226%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest225170225178%_)))
                                 (_%tl225176225228%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest225170225178%_))))
                             (let* ((_%hd225231%_ _%hd225175225226%_)
                                    (_%rest225233%_ _%tl225176225228%_))
                               (_%K225174225223%_
                                _%rest225233%_
                                _%hd225231%_)))
                           (_%else225172225186%_))))))
          (let ((__tmp226079
                 (filter gx#expander-context-id
                         (_%find-deps225160%_
                          (let ((_%$e225162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx225156%_))))
                            (if _%$e225162%_
                                ((lambda (_%pre225165%_)
                                   (cons _%pre225165%_
                                         (##structure-ref
                                          _%ctx225156%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e225162%_)
                                (##structure-ref
                                 _%ctx225156%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp226079)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx225086%_)
        (let* ((_%context-id225088%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx225086%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx225086%_ '1 '#f '#f))
                    (string->symbol _%ctx225086%_)))
               (_%scm225090%_
                (let ((__tmp226080
                       (gxc#static-module-name _%context-id225088%_)))
                  (declare (not safe))
                  (##string-append __tmp226080 '".scm")))
               (_%dirs225092%_ (let () (declare (not safe)) (load-path)))
               (_%dirs225098%_
                (let ((_%user-libpath225094%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath225094%_
                      (let ((_%user-libpath225096%_
                             (path-expand '"lib" _%user-libpath225094%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath225096%_ _%dirs225092%_))
                            _%dirs225092%_
                            (cons _%user-libpath225096%_ _%dirs225092%_)))
                      _%dirs225092%_)))
               (_%dirs225108%_
                (let ((_%$e225100%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e225100%_
                      ((lambda (_%g225102225104%_)
                         (cons _%g225102225104%_ _%dirs225098%_))
                       _%$e225100%_)
                      _%dirs225098%_)))
               (_%dirs225114%_
                (let ((__tmp226081
                       (lambda (_%g225109225111%_)
                         (path-expand '"static" _%g225109225111%_))))
                  (declare (not safe))
                  (##map __tmp226081 _%dirs225108%_))))
          (let _%lp225117%_ ((_%rest225119%_ _%dirs225114%_))
            (let* ((_%rest225120225128%_ _%rest225119%_)
                   (_%else225122225136%_
                    (lambda ()
                      (let ((__tmp226082
                             (##structure-ref
                              _%ctx225086%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp226082
                         _%scm225090%_))))
                   (_%K225124225144%_
                    (lambda (_%rest225139%_ _%dir225140%_)
                      (let ((_%path225142%_
                             (path-expand _%scm225090%_ _%dir225140%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path225142%_))
                            _%path225142%_
                            (_%lp225117%_ _%rest225139%_))))))
              (if (pair? _%rest225120225128%_)
                  (let ((_%hd225125225147%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest225120225128%_)))
                        (_%tl225126225149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest225120225128%_))))
                    (let* ((_%dir225152%_ _%hd225125225147%_)
                           (_%rest225154%_ _%tl225126225149%_))
                      (_%K225124225144%_ _%rest225154%_ _%dir225152%_)))
                  (_%else225122225136%_)))))))
    (define gxc#file-empty?
      (lambda (_%path225084%_)
        (zero? (let ((__tmp226083 (file-info _%path225084%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp226083)))))
    (define gxc#compile-top-module
      (lambda (_%ctx225075%_)
        (let ((__tmp226084
               (lambda ()
                 (let ((__tmp226085
                        (lambda ()
                          (let ((__tmp226086
                                 (lambda ()
                                   (let ((__tmp226088
                                          (lambda ()
                                            (let ((__tmp226090
                                                   (lambda ()
                                                     (let ((__tmp226092
                                                            (lambda ()
                                                              (let ((__tmp226093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx225075%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp226093))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp226094
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx225075%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp226094))
                          '#!void)
                      (gxc#collect-bindings _%ctx225075%_)
                      (gxc#compile-runtime-code _%ctx225075%_)
                      (gxc#compile-meta-code _%ctx225075%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx225075%_)
                          '#!void)))
                   (__tmp226091
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
                __tmp226092
                gxc#current-compile-runtime-names
                __tmp226091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp226089
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp226090
                                               gxc#current-compile-runtime-sections
                                               __tmp226089))))
                                         (__tmp226087
                                          (let ((__obj225988
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj225988))
                                            __obj225988)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp226088
                                      gxc#current-compile-symbol-table
                                      __tmp226087)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp226086
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp226085
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226084
           gx#current-expander-context
           _%ctx225075%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx225073%_)
        (let ((__tmp226095
               (##structure-ref _%ctx225073%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp226095))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx225017%_)
        (letrec ((_%compile1225019%_
                  (lambda (_%ctx225062%_)
                    (let* ((_%code225064%_
                            (##structure-ref
                             _%ctx225062%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm225068%_
                            (let ((_%idstr225066%_
                                   (let ((__tmp226096
                                          (##structure-ref
                                           _%ctx225062%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp226096))))
                              (declare (not safe))
                              (##string-append _%idstr225066%_ '"~0")))
                           (_%rtc?225070%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code225064%_))))
                      (if _%rtc?225070%_
                          (let ((__tmp226097
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp226097
                             _%ctx225062%_
                             _%rtm225068%_))
                          '#!void)
                      (_%generate-runtime-code225021%_
                       _%ctx225062%_
                       _%code225064%_
                       (if _%rtc?225070%_ _%rtm225068%_ '#f)))))
                 (_%context-timestamp225020%_
                  (lambda (_%ctx225060%_)
                    (let ((__tmp226098
                           (let ((__tmp226099
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx225060%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp226099 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp226098))))
                 (_%generate-runtime-code225021%_
                  (lambda (_%ctx225028%_ _%code225029%_ _%rtm225030%_)
                    (let* ((_%runtime-code?225032%_ (if _%rtm225030%_ '#t '#f))
                           (_%lifts225034%_ (box '()))
                           (_%runtime-code225041%_
                            (if _%runtime-code?225032%_
                                (let ((__tmp226100
                                       (lambda ()
                                         (let ((__tmp226101
                                                (lambda ()
                                                  (let ((__tmp226102
                                                         (lambda ()
                                                           (let ((__tmp226104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp226106
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code225029%_))))
                                  (__tmp226105
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226106
                               gxc#current-compile-identifiers
                               __tmp226105))))
                         (__tmp226103
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp226104
                      gxc#current-compile-marks
                      __tmp226103)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp226102
                                                     gxc#current-compile-lift
                                                     _%lifts225034%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp226101
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp226100
                                   gx#current-expander-context
                                   _%ctx225028%_))
                                '#f))
                           (_%runtime-code225043%_
                            (if _%runtime-code?225032%_
                                (if (null? (unbox _%lifts225034%_))
                                    _%runtime-code225041%_
                                    (cons 'begin
                                          (let ((__tmp226108
                                                 (cons _%runtime-code225041%_
                                                       '()))
                                                (__tmp226107
                                                 (reverse (unbox _%lifts225034%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp226108
                                             __tmp226107))))
                                '#f))
                           (_%runtime-code225045%_
                            (if _%runtime-code?225032%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp225020%_
                                                         _%ctx225028%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code225043%_ '())))
                                '#f))
                           (_%loader-code225048%_
                            (let ((__tmp226109
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code225029%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp226109
                               gx#current-expander-context
                               _%ctx225028%_)))
                           (_%loader-code225050%_
                            (cons 'begin
                                  (cons _%loader-code225048%_
                                        (cons (if _%runtime-code?225032%_
                                                  (cons 'load-module
                                                        (cons _%rtm225030%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0225052%_
                            (gxc#compile-output-file _%ctx225028%_ '0 '".scm"))
                           (_%scmrt225054%_
                            (gxc#compile-output-file
                             _%ctx225028%_
                             '#f
                             '".scm"))
                           (_%scms225056%_
                            (gxc#compile-static-output-file _%ctx225028%_)))
                      (if _%runtime-code?225032%_
                          (gxc#compile-scm-file__0
                           _%scm0225052%_
                           _%runtime-code225045%_)
                          '#!void)
                      (let ((__tmp226110
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt225054%_
                                _%loader-code225050%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp226110
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms225056%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms225056%_))
                          '#!void)
                      (if _%runtime-code?225032%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0225052%_ _%scms225056%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms225056%_ void)))))))
          (let* ((_%all-modules225023%_
                  (cons _%ctx225017%_ (gxc#lift-nested-modules _%ctx225017%_)))
                 (__tmp226111
                  (lambda (_%ctx225025%_)
                    (let ((__tmp226112
                           (lambda () (_%compile1225019%_ _%ctx225025%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp226112
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp226111 _%all-modules225023%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx224916%_)
        (letrec ((_%compile-ssi224918%_
                  (lambda (_%code224985%_)
                    (let* ((_%path224987%_
                            (gxc#compile-output-file
                             _%ctx224916%_
                             '#f
                             '".ssi"))
                           (_%prelude224999%_
                            (let* ((_%super224989%_
                                    (##structure-ref
                                     _%ctx224916%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e224991%_
                                    (##structure-ref
                                     _%super224989%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e224991%_
                                  ((lambda (_%g224993224995%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g224993224995%_)))
                                   _%$e224991%_)
                                  ':<root>)))
                           (_%ns225001%_
                            (##structure-ref
                             _%ctx224916%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr225003%_
                            (symbol->string
                             (##structure-ref
                              _%ctx224916%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg225011%_
                            (let ((_%$e225005%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr225003%_ '#\/))))
                              (if _%$e225005%_
                                  ((lambda (_%x225008%_)
                                     (let ((__tmp226113
                                            (substring
                                             _%idstr225003%_
                                             '0
                                             _%x225008%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp226113)))
                                   _%$e225005%_)
                                  '#f)))
                           (_%rt225013%_
                            (let ((__tmp226114
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp226114 _%ctx224916%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path224987%_))
                      (gxc#with-output-to-scheme-file
                       _%path224987%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude224999%_))
                         (if _%pkg225011%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg225011%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns225001%_))
                         (newline)
                         (pretty-print _%code224985%_)
                         (if _%rt225013%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt225013%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi224919%_
                  (lambda (_%part224924%_)
                    (let* ((_%part224925224938%_ _%part224924%_)
                           (_%E224927224942%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part224925224938%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K224928224954%_
                            (lambda (_%code224945%_
                                     _%n224946%_
                                     _%phi224947%_
                                     _%phi-ctx224948%_)
                              (let ((_%code224952%_
                                     (let ((__tmp226115
                                            (lambda ()
                                              (let ((__tmp226116
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code224945%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp226116
                                                 gx#current-expander-phi
                                                 _%phi224947%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp226115
                                        gx#current-expander-context
                                        _%phi-ctx224948%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx224916%_
                                  _%n224946%_
                                  '".scm")
                                 _%code224952%_
                                 '#t)))))
                      (if (pair? _%part224925224938%_)
                          (let ((_%hd224929224957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part224925224938%_)))
                                (_%tl224930224959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part224925224938%_))))
                            (let ((_%phi-ctx224962%_ _%hd224929224957%_))
                              (if (pair? _%tl224930224959%_)
                                  (let ((_%hd224931224964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224930224959%_)))
                                        (_%tl224932224966%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224930224959%_))))
                                    (let ((_%phi224969%_ _%hd224931224964%_))
                                      (if (pair? _%tl224932224966%_)
                                          (let ((_%hd224933224971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl224932224966%_)))
                                                (_%tl224934224973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl224932224966%_))))
                                            (let ((_%n224976%_
                                                   _%hd224933224971%_))
                                              (if (pair? _%tl224934224973%_)
                                                  (let ((_%hd224935224978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl224934224973%_)))
                                                        (_%tl224936224980%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl224934224973%_))))
                                                    (let ((_%code224983%_
                                                           _%hd224935224978%_))
                                                      (if (null? _%tl224936224980%_)
                                                          (_%K224928224954%_
                                                           _%code224983%_
                                                           _%n224976%_
                                                           _%phi224969%_
                                                           _%phi-ctx224962%_)
                                                          (_%E224927224942%_))))
                                                  (_%E224927224942%_))))
                                          (_%E224927224942%_))))
                                  (_%E224927224942%_))))
                          (_%E224927224942%_))))))
          (let ((_g226117_ (gxc#generate-meta-code _%ctx224916%_)))
            (begin
              (let ((_g226118_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g226117_)
                           (##values-length _g226117_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g226118_ 2)))
                    (error "Context expects 2 values" _g226118_)))
              (let ((_%ssi-code224921%_
                     (let () (declare (not safe)) (##values-ref _g226117_ 0)))
                    (_%phi-code224922%_
                     (let () (declare (not safe)) (##values-ref _g226117_ 1))))
                (begin
                  (_%compile-ssi224918%_ _%ssi-code224921%_)
                  (for-each _%compile-phi224919%_ _%phi-code224922%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx224898%_)
        (let* ((_%path224900%_
                (gxc#compile-output-file _%ctx224898%_ '#f '".ssxi.ss"))
               (_%code224902%_
                (let ((__tmp226119
                       (##structure-ref
                        _%ctx224898%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp226119)))
               (_%idstr224904%_
                (symbol->string
                 (##structure-ref
                  _%ctx224898%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg224912%_
                (let ((_%$e224906%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr224904%_ '#\/))))
                  (if _%$e224906%_
                      ((lambda (_%x224909%_)
                         (let ((__tmp226120
                                (substring _%idstr224904%_ '0 _%x224909%_)))
                           (declare (not safe))
                           (##string->symbol __tmp226120)))
                       _%$e224906%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path224900%_))
          (gxc#with-output-to-scheme-file
           _%path224900%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg224912%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg224912%_))
                 '#!void)
             (newline)
             (pretty-print _%code224902%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx224891%_)
        (let* ((_%state224893%_
                (let ((__obj225989
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj225989 _%ctx224891%_))
                  __obj225989))
               (_%ssi-code224895%_
                (let ((__tmp226121
                       (##structure-ref
                        _%ctx224891%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state224893%_
                   __tmp226121))))
          (values _%ssi-code224895%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state224893%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx224882%_)
        (let* ((_%lifts224884%_ (box '()))
               (__tmp226122
                (lambda ()
                  (let ((__tmp226124
                         (lambda ()
                           (let ((__tmp226126
                                  (lambda ()
                                    (let ((_%code224889%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx224882%_))))
                                      (if (null? (unbox _%lifts224884%_))
                                          _%code224889%_
                                          (cons 'begin
                                                (let ((__tmp226128
                                                       (cons _%code224889%_
                                                             '()))
                                                      (__tmp226127
                                                       (reverse (unbox _%lifts224884%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp226128
                                                   __tmp226127)))))))
                                 (__tmp226125
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp226126
                              gxc#current-compile-identifiers
                              __tmp226125))))
                        (__tmp226123
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp226124
                     gxc#current-compile-marks
                     __tmp226123)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp226122
           gxc#current-compile-lift
           _%lifts224884%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx224878%_)
        (let ((_%modules224880%_ (box '())))
          (let ((__tmp226129
                 (##structure-ref _%ctx224878%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules224880%_ __tmp226129))
          (reverse (unbox _%modules224880%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path224858%_ _%code224859%_ _%phi?224860%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path224858%_))
        (gxc#with-output-to-scheme-file
         _%path224858%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp226130
                                           (if _%phi?224860%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp226130)))))))
           (pretty-print _%code224859%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it224864%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path224858%_ _%phi?224860%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp226131
                         (cons 'compile-file (cons _%path224858%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it224864%_ __tmp226131))
                  (_%compile-it224864%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path224869%_ _%code224870%_)
        (let ((_%phi?224872%_ '#f))
          (gxc#compile-scm-file__%
           _%path224869%_
           _%code224870%_
           _%phi?224872%_))))
    (define gxc#compile-scm-file
      (lambda _g226132_
        (let ((_g226133_ (let () (declare (not safe)) (##length _g226132_))))
          (cond ((let () (declare (not safe)) (##fx= _g226133_ 2))
                 (apply gxc#compile-scm-file__0 _g226132_))
                ((let () (declare (not safe)) (##fx= _g226133_ 3))
                 (apply gxc#compile-scm-file__% _g226132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g226132_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?224759%_)
        (let _%lp224761%_ ((_%rest224763%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224764%_ '()))
          (let* ((_%rest224765224785%_ _%rest224763%_)
                 (_%else224769224793%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts224764%_)))
                        (reverse _%opts224764%_)))))
            (let ((_%K224779224836%_
                   (lambda (_%rest224834%_)
                     (_%lp224761%_ _%rest224834%_ _%opts224764%_)))
                  (_%K224774224818%_
                   (lambda (_%rest224816%_)
                     (_%lp224761%_ _%rest224816%_ _%opts224764%_)))
                  (_%K224771224800%_
                   (lambda (_%rest224797%_ _%opt224798%_)
                     (_%lp224761%_
                      _%rest224797%_
                      (cons _%opt224798%_ _%opts224764%_)))))
              (if (pair? _%rest224765224785%_)
                  (let ((_%tl224781224841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224765224785%_)))
                        (_%hd224780224839%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224765224785%_))))
                    (if (equal? _%hd224780224839%_ '"-cc-options")
                        (if (pair? _%tl224781224841%_)
                            (let* ((_%tl224783224844%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224781224841%_)))
                                   (_%rest224847%_ _%tl224783224844%_))
                              (_%K224779224836%_ _%rest224847%_))
                            (let ((_%opt224808%_ _%hd224780224839%_)
                                  (_%rest224810%_ _%tl224781224841%_))
                              (_%K224771224800%_
                               _%rest224810%_
                               _%opt224808%_)))
                        (if (equal? _%hd224780224839%_ '"-ld-options")
                            (if (pair? _%tl224781224841%_)
                                (let* ((_%tl224778224826%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl224781224841%_)))
                                       (_%rest224829%_ _%tl224778224826%_))
                                  (_%K224774224818%_ _%rest224829%_))
                                (let ((_%opt224808%_ _%hd224780224839%_)
                                      (_%rest224810%_ _%tl224781224841%_))
                                  (_%K224771224800%_
                                   _%rest224810%_
                                   _%opt224808%_)))
                            (let ((_%opt224808%_ _%hd224780224839%_)
                                  (_%rest224810%_ _%tl224781224841%_))
                              (_%K224771224800%_
                               _%rest224810%_
                               _%opt224808%_)))))
                  (_%else224769224793%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?224853%_ '#f)) (gxc#gsc-link-options__% _%phi?224853%_))))
    (define gxc#gsc-link-options
      (lambda _g226134_
        (let ((_g226135_ (let () (declare (not safe)) (##length _g226134_))))
          (cond ((let () (declare (not safe)) (##fx= _g226135_ 0))
                 (apply gxc#gsc-link-options__0 _g226134_))
                ((let () (declare (not safe)) (##fx= _g226135_ 1))
                 (apply gxc#gsc-link-options__% _g226134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g226134_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords224609%_ _%static?224605224610%_ _%phi?224611%_)
        (let ((_%static?224613%_
               (if (eq? _%static?224605224610%_ absent-value)
                   '#f
                   _%static?224605224610%_)))
          (if _%phi?224611%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp224615%_ ((_%rest224617%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224618%_ '()))
                (let* ((_%rest224619224645%_ _%rest224617%_)
                       (_%else224624224653%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts224618%_)))
                              (reverse! _%opts224618%_)))))
                  (let ((_%K224639224716%_
                         (lambda (_%rest224713%_ _%opt224714%_)
                           (if _%static?224613%_
                               (_%lp224615%_
                                _%rest224713%_
                                (cons _%opt224714%_
                                      (cons '"-cc-options" _%opts224618%_)))
                               (_%lp224615%_ _%rest224713%_ _%opts224618%_))))
                        (_%K224634224693%_
                         (lambda (_%rest224690%_ _%opt224691%_)
                           (_%lp224615%_
                            _%rest224690%_
                            (cons _%opt224691%_
                                  (cons '"-cc-options" _%opts224618%_)))))
                        (_%K224629224673%_
                         (lambda (_%rest224671%_)
                           (_%lp224615%_ _%rest224671%_ _%opts224618%_)))
                        (_%K224626224659%_
                         (lambda (_%rest224657%_)
                           (_%lp224615%_ _%rest224657%_ _%opts224618%_))))
                    (if (pair? _%rest224619224645%_)
                        (let ((_%tl224641224721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224619224645%_)))
                              (_%hd224640224719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224619224645%_))))
                          (if (equal? _%hd224640224719%_ '"-cc-options")
                              (if (pair? _%tl224641224721%_)
                                  (let ((_%tl224643224726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224641224721%_)))
                                        (_%hd224642224724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224641224721%_))))
                                    (if (equal? _%hd224642224724%_ '"-Bstatic")
                                        (let ((_%opt224729%_
                                               _%hd224642224724%_)
                                              (_%rest224731%_
                                               _%tl224643224726%_))
                                          (_%K224639224716%_
                                           _%rest224731%_
                                           _%opt224729%_))
                                        (let ((_%opt224706%_
                                               _%hd224642224724%_)
                                              (_%rest224708%_
                                               _%tl224643224726%_))
                                          (_%K224634224693%_
                                           _%rest224708%_
                                           _%opt224706%_))))
                                  (let ((_%rest224665%_ _%tl224641224721%_))
                                    (_%K224626224659%_ _%rest224665%_)))
                              (if (equal? _%hd224640224719%_ '"-ld-options")
                                  (if (pair? _%tl224641224721%_)
                                      (let* ((_%tl224633224681%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224641224721%_)))
                                             (_%rest224684%_
                                              _%tl224633224681%_))
                                        (_%K224629224673%_ _%rest224684%_))
                                      (let ((_%rest224665%_
                                             _%tl224641224721%_))
                                        (_%K224626224659%_ _%rest224665%_)))
                                  (let ((_%rest224665%_ _%tl224641224721%_))
                                    (_%K224626224659%_ _%rest224665%_)))))
                        (_%else224624224653%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords224736%_ _%static?224605224737%_)
        (let ((_%phi?224739%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords224736%_
           _%static?224605224737%_
           _%phi?224739%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g226136_
        (let ((_g226137_ (let () (declare (not safe)) (##length _g226136_))))
          (cond ((let () (declare (not safe)) (##fx= _g226137_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g226136_))
                ((let () (declare (not safe)) (##fx= _g226137_ 3))
                 (apply gxc#gsc-cc-options__%__% _g226136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g226136_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords224748%_ . _%args224749%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords224748%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224748%_
                  'static:
                  absent-value))
               _%args224749%_)))
    (define gxc#gsc-cc-options
      (lambda _%args224606224755%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args224606224755%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords224455%_ _%static?224451224456%_ _%phi?224457%_)
        (let ((_%static?224459%_
               (if (eq? _%static?224451224456%_ absent-value)
                   '#f
                   _%static?224451224456%_)))
          (if _%phi?224457%_
              '()
              (let _%lp224461%_ ((_%rest224463%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts224464%_ '()))
                (let* ((_%rest224465224491%_ _%rest224463%_)
                       (_%else224470224499%_
                        (lambda () (reverse! _%opts224464%_))))
                  (let ((_%K224485224562%_
                         (lambda (_%rest224559%_ _%opt224560%_)
                           (if _%static?224459%_
                               (_%lp224461%_
                                _%rest224559%_
                                (cons _%opt224560%_
                                      (cons '"-ld-options" _%opts224464%_)))
                               (_%lp224461%_ _%rest224559%_ _%opts224464%_))))
                        (_%K224480224539%_
                         (lambda (_%rest224536%_ _%opt224537%_)
                           (_%lp224461%_
                            _%rest224536%_
                            (cons _%opt224537%_
                                  (cons '"-ld-options" _%opts224464%_)))))
                        (_%K224475224519%_
                         (lambda (_%rest224517%_)
                           (_%lp224461%_ _%rest224517%_ _%opts224464%_)))
                        (_%K224472224505%_
                         (lambda (_%rest224503%_)
                           (_%lp224461%_ _%rest224503%_ _%opts224464%_))))
                    (if (pair? _%rest224465224491%_)
                        (let ((_%tl224487224567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest224465224491%_)))
                              (_%hd224486224565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest224465224491%_))))
                          (if (equal? _%hd224486224565%_ '"-ld-options")
                              (if (pair? _%tl224487224567%_)
                                  (let ((_%tl224489224572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl224487224567%_)))
                                        (_%hd224488224570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl224487224567%_))))
                                    (if (equal? _%hd224488224570%_ '"-static")
                                        (let ((_%opt224575%_
                                               _%hd224488224570%_)
                                              (_%rest224577%_
                                               _%tl224489224572%_))
                                          (_%K224485224562%_
                                           _%rest224577%_
                                           _%opt224575%_))
                                        (let ((_%opt224552%_
                                               _%hd224488224570%_)
                                              (_%rest224554%_
                                               _%tl224489224572%_))
                                          (_%K224480224539%_
                                           _%rest224554%_
                                           _%opt224552%_))))
                                  (let ((_%rest224511%_ _%tl224487224567%_))
                                    (_%K224472224505%_ _%rest224511%_)))
                              (if (equal? _%hd224486224565%_ '"-cc-options")
                                  (if (pair? _%tl224487224567%_)
                                      (let* ((_%tl224479224527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl224487224567%_)))
                                             (_%rest224530%_
                                              _%tl224479224527%_))
                                        (_%K224475224519%_ _%rest224530%_))
                                      (let ((_%rest224511%_
                                             _%tl224487224567%_))
                                        (_%K224472224505%_ _%rest224511%_)))
                                  (let ((_%rest224511%_ _%tl224487224567%_))
                                    (_%K224472224505%_ _%rest224511%_)))))
                        (_%else224470224499%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords224582%_ _%static?224451224583%_)
        (let ((_%phi?224585%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords224582%_
           _%static?224451224583%_
           _%phi?224585%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g226138_
        (let ((_g226139_ (let () (declare (not safe)) (##length _g226138_))))
          (cond ((let () (declare (not safe)) (##fx= _g226139_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g226138_))
                ((let () (declare (not safe)) (##fx= _g226139_ 3))
                 (apply gxc#gsc-ld-options__%__% _g226138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g226138_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords224594%_ . _%args224595%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords224594%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224594%_
                  'static:
                  absent-value))
               _%args224595%_)))
    (define gxc#gsc-ld-options
      (lambda _%args224452224601%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args224452224601%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir224446%_)
        (let ((_%user-staticdir224448%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir224446%_
                       '" -I "
                       _%user-staticdir224448%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp224358%_ ((_%rest224360%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts224361%_ '()))
          (let* ((_%rest224362224382%_ _%rest224360%_)
                 (_%else224366224390%_ (lambda () _%opts224361%_)))
            (let ((_%K224376224433%_
                   (lambda (_%rest224431%_)
                     (_%lp224358%_ _%rest224431%_ _%opts224361%_)))
                  (_%K224371224411%_
                   (lambda (_%rest224408%_ _%opt224409%_)
                     (_%lp224358%_
                      _%rest224408%_
                      (let ((__tmp226140
                             (let ((__tmp226141
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt224409%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp226141))))
                        (declare (not safe))
                        (##append _%opts224361%_ __tmp226140)))))
                  (_%K224368224396%_
                   (lambda (_%rest224394%_)
                     (_%lp224358%_ _%rest224394%_ _%opts224361%_))))
              (if (pair? _%rest224362224382%_)
                  (let ((_%tl224378224438%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest224362224382%_)))
                        (_%hd224377224436%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest224362224382%_))))
                    (if (equal? _%hd224377224436%_ '"-cc-options")
                        (if (pair? _%tl224378224438%_)
                            (let* ((_%tl224380224441%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl224378224438%_)))
                                   (_%rest224444%_ _%tl224380224441%_))
                              (_%K224376224433%_ _%rest224444%_))
                            (let ((_%rest224402%_ _%tl224378224438%_))
                              (_%K224368224396%_ _%rest224402%_)))
                        (if (equal? _%hd224377224436%_ '"-ld-options")
                            (if (pair? _%tl224378224438%_)
                                (let ((_%tl224375224421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl224378224438%_)))
                                      (_%hd224374224419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl224378224438%_))))
                                  (let ((_%opt224424%_ _%hd224374224419%_)
                                        (_%rest224426%_ _%tl224375224421%_))
                                    (_%K224371224411%_
                                     _%rest224426%_
                                     _%opt224424%_)))
                                (let ((_%rest224402%_ _%tl224378224438%_))
                                  (_%K224368224396%_ _%rest224402%_)))
                            (let ((_%rest224402%_ _%tl224378224438%_))
                              (_%K224368224396%_ _%rest224402%_)))))
                  (_%else224366224390%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str224355%_)
        (not (let () (declare (not safe)) (string-empty? _%str224355%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path224348%_ _%phi?224349%_)
        (let ((_%gsc-link-opts224351%_
               (gxc#gsc-link-options__% _%phi?224349%_))
              (_%gsc-cc-opts224352%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?224349%_))
              (_%gsc-ld-opts224353%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?224349%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp226142
                  (let ((__tmp226143
                         (let ((__tmp226144 (cons _%path224348%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp226144
                            _%gsc-link-opts224351%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp226143 _%gsc-ld-opts224353%_))))
             (declare (not safe))
             (__foldr1 cons __tmp226142 _%gsc-cc-opts224352%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx224314%_ _%n224315%_ _%ext224316%_)
        (letrec ((_%module-relative-path224318%_
                  (lambda (_%ctx224346%_)
                    (path-strip-directory
                     (let ((__tmp226145
                            (##structure-ref
                             _%ctx224346%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp226145)))))
                 (_%module-source-directory224319%_
                  (lambda (_%ctx224342%_)
                    (path-directory
                     (let ((_%mpath224344%_
                            (##structure-ref
                             _%ctx224342%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath224344%_)
                           _%mpath224344%_
                           (last _%mpath224344%_))))))
                 (_%section-string224320%_
                  (lambda (_%n224336%_)
                    (if (number? _%n224336%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n224336%_))
                        (if (symbol? _%n224336%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n224336%_))
                            (if (string? _%n224336%_)
                                _%n224336%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n224336%_)))))))
                 (_%file-name224321%_
                  (lambda (_%path224334%_)
                    (if _%n224315%_
                        (string-append
                         _%path224334%_
                         '"~"
                         (_%section-string224320%_ _%n224315%_)
                         _%ext224316%_)
                        (string-append _%path224334%_ _%ext224316%_))))
                 (_%file-path224322%_
                  (lambda ()
                    (let ((_%$e224328%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e224328%_
                          ((lambda (_%outdir224331%_)
                             (path-expand
                              (_%file-name224321%_
                               (let ((__tmp226146
                                      (##structure-ref
                                       _%ctx224314%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp226146)))
                              _%outdir224331%_))
                           _%$e224328%_)
                          (path-expand
                           (_%file-name224321%_
                            (_%module-relative-path224318%_ _%ctx224314%_))
                           (_%module-source-directory224319%_
                            _%ctx224314%_)))))))
          (let ((_%path224324%_ (_%file-path224322%_)))
            (let ((__tmp226147
                   (lambda ()
                     (let ((__tmp226148 (path-directory _%path224324%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226148)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226147))
            _%path224324%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx224295%_)
        (letrec ((_%file-name224297%_
                  (lambda (_%id224312%_)
                    (let ((__tmp226149 (gxc#static-module-name _%id224312%_)))
                      (declare (not safe))
                      (##string-append __tmp226149 '".scm"))))
                 (_%file-path224298%_
                  (lambda ()
                    (let* ((_%file224304%_
                            (_%file-name224297%_
                             (##structure-ref
                              _%ctx224295%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e224306%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e224306%_
                          ((lambda (_%outdir224309%_)
                             (path-expand
                              _%file224304%_
                              (path-expand '"static" _%outdir224309%_)))
                           _%$e224306%_)
                          (path-expand _%file224304%_ '"static"))))))
          (let ((_%path224300%_ (_%file-path224298%_)))
            (let ((__tmp226150
                   (lambda ()
                     (let ((__tmp226151 (path-directory _%path224300%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp226151)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp226150))
            _%path224300%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx224288%_ _%opts224289%_)
        (let ((_%$e224291%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts224289%_))))
          (if _%$e224291%_
              _%$e224291%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx224288%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr224278%_)
        (if (string? _%idstr224278%_)
            (let* ((_%str224281%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr224278%_)))
                   (_%strs224283%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str224281%_ '#\/))))
              (declare (not safe))
              (string-join _%strs224283%_ '"__"))
            (if (symbol? _%idstr224278%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr224278%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr224278%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp226152
               (let ((__tmp226153 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp226153 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp226152))))
    (define gxc#invoke__%
      (lambda (_%@@keywords224244%_
               _%stdout-redirection224240224245%_
               _%stderr-redirection224241224246%_
               _%program224247%_
               _%args224248%_)
        (let* ((_%stdout-redirection224250%_
                (if (eq? _%stdout-redirection224240224245%_ absent-value)
                    '#f
                    _%stdout-redirection224240224245%_))
               (_%stderr-redirection224252%_
                (if (eq? _%stderr-redirection224241224246%_ absent-value)
                    '#f
                    _%stderr-redirection224241224246%_)))
          (let ((__tmp226154 (cons _%program224247%_ _%args224248%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp226154))
          (let* ((_%proc224254%_
                  (open-process
                   (cons 'path:
                         (cons _%program224247%_
                               (cons 'arguments:
                                     (cons _%args224248%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection224250%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection224252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output224259%_
                  (if (or _%stdout-redirection224250%_
                          _%stderr-redirection224252%_)
                      (read-line _%proc224254%_ '#f)
                      '#f))
                 (_%status224262%_ (process-status _%proc224254%_)))
            (let () (declare (not safe)) (##close-port _%proc224254%_))
            (if (zero? _%status224262%_)
                '#!void
                (begin
                  (display _%output224259%_)
                  (let ((__tmp226155 (cons _%program224247%_ _%args224248%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp226155
                     _%status224262%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords224267%_ . _%args224268%_)
        (apply gxc#invoke__%
               _%@@keywords224267%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224267%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords224267%_
                  'stderr-redirection:
                  absent-value))
               _%args224268%_)))
    (define gxc#invoke
      (lambda _%args224242224274%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args224242224274%_)))))
