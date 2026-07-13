(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1783939358)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp268049 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp268049))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp268050 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp268050))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path267906%_ _%fun267907%_)
        (with-output-to-file
         (cons 'path: (cons _%path267906%_ gxc#scheme-file-settings))
         _%fun267907%_)))
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
      (lambda (_%gerbil-libdir267901%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir267901%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path267899%_)
        (let ((__tmp268051 (object->string _%path267899%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp268051 '")"))))
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
      (lambda (_%dir267897%_) (delete-file-or-directory _%dir267897%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath267840%_ _%opts267841%_)
        (if (string? _%srcpath267840%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath267840%_)))
        (let* ((_%outdir267843%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts267841%_)))
               (_%invoke-gsc?267845%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts267841%_)))
               (_%target267850%_
                (let ((_%$e267847%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts267841%_))))
                  (if _%$e267847%_ _%$e267847%_ 'C)))
               (_%gsc-options267855%_
                (append (cons '"-target"
                              (cons (symbol->string _%target267850%_) '()))
                        (let ((_%$e267852%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts267841%_))))
                          (if _%$e267852%_ _%$e267852%_ '()))))
               (_%keep-scm?267857%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts267841%_)))
               (_%verbosity267859%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts267841%_)))
               (_%optimize267861%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts267841%_)))
               (_%debug267863%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts267841%_)))
               (_%gen-ssxi267865%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts267841%_)))
               (_%parallel?267867%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts267841%_))))
          (if _%outdir267843%_
              (let ((__tmp268052
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir267843%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268052))
              '#!void)
          (if _%optimize267861%_
              (let ((__tmp268053
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268053))
              '#!void)
          (let ((__tmp268054
                 (lambda ()
                   (let ((__tmp268055
                          (lambda ()
                            (let ((__tmp268056
                                   (lambda ()
                                     (let ((__tmp268057
                                            (lambda ()
                                              (let ((__tmp268058
                                                     (lambda ()
                                                       (let ((__tmp268059
                                                              (lambda ()
                                                                (let ((__tmp268060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp268061
                                        (lambda ()
                                          (let ((__tmp268063
                                                 (lambda ()
                                                   (let ((__tmp268065
                                                          (lambda ()
                                                            (let ((__tmp268067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp268068
                                    (lambda ()
                                      (let ((__tmp268069
                                             (lambda ()
                                               (let ((__tmp268070
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath267840%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp268071
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath267840%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp268071))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp268070
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp268069
                                         gx#current-compilation-target
                                         _%target267850%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp268068
                                gxc#current-compile-parallel
                                _%parallel?267867%_))))
                          (__tmp268066
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268067
                       gxc#current-compile-identifiers
                       __tmp268066))))
                 (__tmp268064
                  (cons (cons 'compile-module (cons _%srcpath267840%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp268065
                                                      gxc#current-compile-context
                                                      __tmp268064))))
                                                (__tmp268062
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp268063
                                             gxc#current-compile-timestamp
                                             __tmp268062)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp268061
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi267865%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp268060
                           gxc#current-compile-debug
                           _%debug267863%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp268059
                  gxc#current-compile-optimize
                  _%optimize267861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268058
                                                 gxc#current-compile-verbose
                                                 _%verbosity267859%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268057
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?267857%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268056
                               gxc#current-compile-gsc-options
                               _%gsc-options267855%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268055
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?267845%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp268054
             gxc#current-compile-output-dir
             _%outdir267843%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath267890%_)
        (let ((_%opts267892%_ '()))
          (gxc#compile-module__% _%srcpath267890%_ _%opts267892%_))))
    (define gxc#compile-module
      (lambda _g268072_
        (let ((_g268073_ (let () (declare (not safe)) (##length _g268072_))))
          (cond ((let () (declare (not safe)) (##fx= _g268073_ 1))
                 (apply gxc#compile-module__0 _g268072_))
                ((let () (declare (not safe)) (##fx= _g268073_ 2))
                 (apply gxc#compile-module__% _g268072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g268072_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath267789%_ _%opts267790%_)
        (if (string? _%srcpath267789%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath267789%_)))
        (let* ((_%outdir267792%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts267790%_)))
               (_%invoke-gsc?267794%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts267790%_)))
               (_%target267799%_
                (let ((_%$e267796%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts267790%_))))
                  (if _%$e267796%_ _%$e267796%_ 'C)))
               (_%gsc-options267804%_
                (append (cons '"-target"
                              (cons (symbol->string _%target267799%_) '()))
                        (let ((_%$e267801%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts267790%_))))
                          (if _%$e267801%_ _%$e267801%_ '()))))
               (_%keep-scm?267806%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts267790%_)))
               (_%verbosity267808%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts267790%_)))
               (_%debug267810%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts267790%_)))
               (_%parallel?267812%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts267790%_))))
          (if _%outdir267792%_
              (let ((__tmp268074
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir267792%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp268074))
              '#!void)
          (let ((__tmp268075
                 (lambda ()
                   (let ((__tmp268076
                          (lambda ()
                            (let ((__tmp268077
                                   (lambda ()
                                     (let ((__tmp268078
                                            (lambda ()
                                              (let ((__tmp268079
                                                     (lambda ()
                                                       (let ((__tmp268080
                                                              (lambda ()
                                                                (let ((__tmp268081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp268083
                                        (lambda ()
                                          (let ((__tmp268085
                                                 (lambda ()
                                                   (let ((__tmp268087
                                                          (lambda ()
                                                            (let ((__tmp268088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp268089
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath267789%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp268090
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath267789%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp268090))
                                       _%opts267790%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp268089
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268088
                       gxc#current-compile-parallel
                       _%parallel?267812%_))))
                 (__tmp268086
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp268087
                                                      gxc#current-compile-identifiers
                                                      __tmp268086))))
                                                (__tmp268084
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath267789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp268085
                                             gxc#current-compile-context
                                             __tmp268084))))
                                       (__tmp268082 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp268083
                                    gxc#current-compile-timestamp
                                    __tmp268082)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp268081
                           gxc#current-compile-debug
                           _%debug267810%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp268080
                  gxc#current-compile-verbose
                  _%verbosity267808%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268079
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?267806%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268078
                                        gxc#current-compile-gsc-options
                                        _%gsc-options267804%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268077
                               gx#current-compilation-target
                               _%target267799%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268076
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?267794%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp268075
             gxc#current-compile-output-dir
             _%outdir267792%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath267832%_)
        (let ((_%opts267834%_ '()))
          (gxc#compile-exe__% _%srcpath267832%_ _%opts267834%_))))
    (define gxc#compile-exe
      (lambda _g268091_
        (let ((_g268092_ (let () (declare (not safe)) (##length _g268091_))))
          (cond ((let () (declare (not safe)) (##fx= _g268092_ 1))
                 (apply gxc#compile-exe__0 _g268091_))
                ((let () (declare (not safe)) (##fx= _g268092_ 2))
                 (apply gxc#compile-exe__% _g268091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g268091_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx267785%_ _%opts267786%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts267786%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx267785%_
             _%opts267786%_)
            (gxc#compile-executable-module/separate
             _%ctx267785%_
             _%opts267786%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx267511%_ _%opts267512%_)
        (letrec ((_%generate-stub267514%_
                  (lambda (_%builtin-modules267781%_)
                    (let ((_%mod-main267783%_
                           (gxc#find-runtime-symbol _%ctx267511%_ 'main)))
                      (let ((__tmp268093
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules267781%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp268093))
                      (let ((__tmp268094
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main267783%_
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
                        (##write __tmp268094))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts267515%_
                  (lambda (_%gerbil-libdir267779%_)
                    (let ((__tmp268095
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir267779%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp268095 read))))
                 (_%replace-extension267516%_
                  (lambda (_%path267776%_ _%ext267777%_)
                    (string-append
                     (path-strip-extension _%path267776%_)
                     _%ext267777%_)))
                 (_%replace-extension-with-c267517%_
                  (lambda (_%path267774%_)
                    (_%replace-extension267516%_ _%path267774%_ '".c")))
                 (_%replace-extension-with-object267518%_
                  (lambda (_%path267772%_)
                    (_%replace-extension267516%_
                     _%path267772%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?267519%_
                  (lambda (_%ctx267770%_)
                    (if (_%exclude-module?267521%_ _%ctx267770%_)
                        '#f
                        (not (_%libgerbil-module?267520%_ _%ctx267770%_)))))
                 (_%libgerbil-module?267520%_
                  (lambda (_%ctx267763%_)
                    (let ((_%id-str267765%_
                           (symbol->string
                            (##structure-ref
                             _%ctx267763%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?267521%_ _%id-str267765%_)
                          '#f
                          (let ((_%$e267767%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str267765%_))))
                            (if _%$e267767%_
                                _%$e267767%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str267765%_))))))))
                 (_%exclude-module?267521%_
                  (lambda (_%ctx-or-str267759%_)
                    (let ((_%str267761%_
                           (if (string? _%ctx-or-str267759%_)
                               _%ctx-or-str267759%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str267759%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str267761%_))))
                 (_%not-file-empty?267522%_
                  (lambda (_%path267757%_)
                    (not (gxc#file-empty? _%path267757%_))))
                 (_%fold-libgerbil-runtime-scm267523%_
                  (lambda (_%gerbil-staticdir267750%_ _%libgerbil-scm267751%_)
                    (let ((_%gerbil-runtime-scm267755%_
                           (let ((__tmp268096
                                  (lambda (_%rtm267753%_)
                                    (path-expand
                                     (let ((__tmp268097
                                            (let ((__tmp268098
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm267753%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp268098
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp268097 '".scm"))
                                     _%gerbil-staticdir267750%_))))
                             (declare (not safe))
                             (##map __tmp268096 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates267524%_
                       (append _%gerbil-runtime-scm267755%_
                               _%libgerbil-scm267751%_)))))
                 (_%remove-duplicates267524%_
                  (lambda (_%strlst267710%_)
                    (let _%loop267712%_ ((_%rest267714%_ _%strlst267710%_)
                                         (_%result267715%_ '()))
                      (let* ((_%$%rest267716267724%_ _%rest267714%_)
                             (_%$%else267718267732%_
                              (lambda () (reverse! _%result267715%_)))
                             (_%$%K267720267738%_
                              (lambda (_%rest267735%_ _%path267736%_)
                                (if (member _%path267736%_ _%result267715%_)
                                    (_%loop267712%_
                                     _%rest267735%_
                                     _%result267715%_)
                                    (_%loop267712%_
                                     _%rest267735%_
                                     (cons _%path267736%_
                                           _%result267715%_))))))
                        (if (pair? _%$%rest267716267724%_)
                            (let ((_%$%hd267721267741%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest267716267724%_)))
                                  (_%$%tl267722267743%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest267716267724%_))))
                              (let* ((_%path267746%_ _%$%hd267721267741%_)
                                     (_%rest267748%_ _%$%tl267722267743%_))
                                (_%$%K267720267738%_
                                 _%rest267748%_
                                 _%path267746%_)))
                            (_%$%else267718267732%_))))))
                 (_%compile-stub267525%_
                  (lambda (_%output-scm267532%_ _%output-bin267533%_)
                    (let* ((_%gerbil-home267535%_
                            (let ((__tmp268099
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp268099)))
                           (_%gerbil-libdir267537%_
                            (path-expand '"lib" _%gerbil-home267535%_))
                           (_%gerbil-staticdir267539%_
                            (path-expand '"static" _%gerbil-libdir267537%_))
                           (_%deps267541%_
                            (gxc#find-runtime-module-deps _%ctx267511%_))
                           (_%libgerbil-deps267543%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?267520%_
                               _%deps267541%_)))
                           (_%libgerbil-scm267545%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps267543%_)))
                           (_%libgerbil-scm267547%_
                            (_%fold-libgerbil-runtime-scm267523%_
                             _%gerbil-staticdir267539%_
                             _%libgerbil-scm267545%_))
                           (_%libgerbil-c267549%_
                            (map _%replace-extension-with-c267517%_
                                 _%libgerbil-scm267547%_))
                           (_%libgerbil-o267551%_
                            (map _%replace-extension-with-object267518%_
                                 _%libgerbil-scm267547%_))
                           (_%src-deps267553%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?267519%_
                               _%deps267541%_)))
                           (_%src-deps-scm267555%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps267553%_)))
                           (_%src-deps-scm267557%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?267522%_
                               _%src-deps-scm267555%_)))
                           (_%src-deps-scm267559%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm267557%_)))
                           (_%src-deps-c267561%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c267517%_
                                     _%src-deps-scm267559%_)))
                           (_%src-deps-o267563%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object267518%_
                                     _%src-deps-scm267559%_)))
                           (_%src-bin-scm267565%_
                            (gxc#find-static-module-file _%ctx267511%_))
                           (_%src-bin-scm267567%_
                            (path-expand _%src-bin-scm267565%_))
                           (_%src-bin-c267569%_
                            (_%replace-extension-with-c267517%_
                             _%src-bin-scm267567%_))
                           (_%src-bin-o267571%_
                            (_%replace-extension-with-object267518%_
                             _%src-bin-scm267567%_))
                           (_%output-bin267573%_
                            (path-expand _%output-bin267533%_))
                           (_%output-scm267575%_
                            (path-expand _%output-scm267532%_))
                           (_%output-c267577%_
                            (_%replace-extension-with-c267517%_
                             _%output-scm267575%_))
                           (_%output-o267579%_
                            (_%replace-extension-with-object267518%_
                             _%output-scm267575%_))
                           (_%output_-c267581%_
                            (_%replace-extension267516%_
                             _%output-scm267575%_
                             '"_.c"))
                           (_%output_-o267583%_
                            (_%replace-extension267516%_
                             _%output-scm267575%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts267585%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts267587%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts267589%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir267539%_))
                           (_%output-ld-opts267591%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts267593%_
                            (_%get-libgerbil-ld-opts267515%_
                             _%gerbil-libdir267537%_))
                           (_%rpath267595%_
                            (gxc#gerbil-rpath _%gerbil-libdir267537%_))
                           (_%builtin-modules267599%_
                            (_%remove-duplicates267524%_
                             (let ((__tmp268100
                                    (let ((__tmp268102
                                           (lambda (_%mod267597%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod267597%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp268101
                                           (cons _%ctx267511%_
                                                 _%deps267541%_)))
                                      (declare (not safe))
                                      (##map __tmp268102 __tmp268101))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp268100)))))
                      (letrec ((_%compile-obj267602%_
                                (lambda (_%scm-path267609%_ _%c-path267610%_)
                                  (let* ((_%o-path267612%_
                                          (_%replace-extension267516%_
                                           _%c-path267610%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock267614%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path267612%_
                                             '".lock")))
                                         (_%locked267616%_ '#f)
                                         (_%unlock267619%_
                                          (lambda ()
                                            (close-port _%locked267616%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock267614%_)))))
                                    (let _%retry267622%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock267614%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry267622%_))
                                          (begin
                                            (set! _%locked267616%_
                                                  (let* ((_%handler267625%_
                                                          false)
                                                         (_%thunk267629%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock267614%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler267634%_ _%handler267625%_)
                 (_%thunk267690%_ _%thunk267629%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler267634%_
                                                     _%thunk267690%_)))
                                            (if _%locked267616%_
                                                '#!void
                                                (_%retry267622%_)))))
                                    (let ((__tmp268104
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path267612%_)))
                                                     (not _%scm-path267609%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path267609%_
                                                        _%o-path267612%_)))
                                                 (let ((_%gsc-cc-opts267707%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp268105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp268106 (cons _%c-path267610%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp268106
                            _%gsc-static-opts267589%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268105 _%gsc-cc-opts267707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp268103
                                           (lambda () (_%unlock267619%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp268104
                                       __tmp268103))))))
                        (let ((__tmp268107
                               (lambda ()
                                 (let ((__tmp268108
                                        (path-directory _%output-bin267573%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp268108)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp268107))
                        (gxc#with-output-to-scheme-file
                         _%output-scm267575%_
                         (lambda ()
                           (_%generate-stub267514%_
                            _%builtin-modules267599%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it267607%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp268109
                                                   (let ((__tmp268110
                                                          (let ((__tmp268111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm267567%_
                               (cons _%output-scm267575%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268111 _%src-deps-scm267559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp268110
                                                      _%libgerbil-c267549%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp268109
                                               _%gsc-link-opts267585%_))))
                                     (for-each
                                      _%compile-obj267602%_
                                      (let ((__tmp268112
                                             (cons _%src-bin-scm267567%_
                                                   (cons _%output-scm267575%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp268112
                                         _%src-deps-scm267559%_))
                                      (let ((__tmp268113
                                             (cons _%src-bin-c267569%_
                                                   (cons _%output-c267577%_
                                                         (cons _%output_-c267581%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp268113
                                         _%src-deps-c267561%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin267573%_
                                                        (let ((__tmp268114
                                                               (cons _%src-bin-o267571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o267579%_
                                   (cons _%output_-o267583%_
                                         (let ((__tmp268115
                                                (let ((__tmp268116
                                                       (let ((__tmp268118
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir267537%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts267593%_))))
                     (__tmp268117
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath267595%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp268118 __tmp268117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp268116
                                                   _%output-ld-opts267591%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp268115
                                            _%libgerbil-o267551%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp268114 _%src-deps-o267563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp268119
                                            (cons _%output-c267577%_
                                                  (cons _%output_-c267581%_
                                                        (cons _%output-o267579%_
                                                              (cons _%output_-o267583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp268119)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it267607%_))
                                  (_%compile-it267607%_)))
                            '#!void))))))
          (let* ((_%output-bin267527%_
                  (gxc#compile-exe-output-file _%ctx267511%_ _%opts267512%_))
                 (_%output-scm267529%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin267527%_ '"__exe.scm"))))
            (_%compile-stub267525%_
             _%output-scm267529%_
             _%output-bin267527%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx267333%_ _%opts267334%_)
        (letrec ((_%reset-declare267336%_
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
                 (_%generate-stub267337%_
                  (lambda (_%deps267502%_)
                    (let ((_%mod-main267504%_
                           (gxc#find-runtime-symbol _%ctx267333%_ 'main))
                          (_%reset-decl267505%_ (_%reset-declare267336%_))
                          (_%user-decl267506%_ (_%user-declare267338%_)))
                      (for-each
                       (lambda (_%dep267508%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl267505%_))
                         (newline)
                         (if _%user-decl267506%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl267506%_))
                               (newline))
                             '#!void)
                         (let ((__tmp268120
                                (cons 'include (cons _%dep267508%_ '()))))
                           (declare (not safe))
                           (##write __tmp268120))
                         (newline))
                       _%deps267502%_)
                      (let ((__tmp268121
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main267504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp268121))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare267338%_
                  (lambda ()
                    (let* ((_%gsc-opts267407%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts267334%_)))
                           (_%gsc-prelude267409%_
                            (if _%gsc-opts267407%_
                                (member '"-prelude" _%gsc-opts267407%_)
                                '#f))
                           (_%gsc-prelude267411%_
                            (if _%gsc-prelude267409%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude267409%_)))
                                '#f)))
                      (let _%lp267414%_ ((_%rest267416%_
                                          (cons _%gsc-prelude267411%_ '()))
                                         (_%user-decls267417%_ '()))
                        (let* ((_%$%rest267418267426%_ _%rest267416%_)
                               (_%$%else267420267434%_
                                (lambda ()
                                  (if (null? _%user-decls267417%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls267417%_)))))
                               (_%$%K267422267490%_
                                (lambda (_%rest267437%_ _%expr267438%_)
                                  (let* ((_%$%expr267439267451%_
                                          _%expr267438%_)
                                         (_%$%else267442267459%_
                                          (lambda ()
                                            (_%lp267414%_
                                             _%rest267437%_
                                             _%user-decls267417%_))))
                                    (let ((_%$%K267447267480%_
                                           (lambda (_%decls267478%_)
                                             (_%lp267414%_
                                              _%rest267437%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls267417%_
                                                 _%decls267478%_)))))
                                          (_%$%K267444267465%_
                                           (lambda (_%exprs267463%_)
                                             (_%lp267414%_
                                              (append _%exprs267463%_
                                                      _%rest267437%_)
                                              _%user-decls267417%_))))
                                      (if (pair? _%$%expr267439267451%_)
                                          (let ((_%$%tl267449267485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr267439267451%_)))
                                                (_%$%hd267448267483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr267439267451%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd267448267483%_
                                                         'declare))
                                                (let ((_%decls267488%_
                                                       _%$%tl267449267485%_))
                                                  (_%$%K267447267480%_
                                                   _%decls267488%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd267448267483%_
                                                             'begin))
                                                    (let ((_%exprs267473%_
                                                           _%$%tl267449267485%_))
                                                      (_%$%K267444267465%_
                                                       _%exprs267473%_))
                                                    (_%$%else267442267459%_))))
                                          (_%$%else267442267459%_)))))))
                          (if (pair? _%$%rest267418267426%_)
                              (let ((_%$%hd267423267493%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest267418267426%_)))
                                    (_%$%tl267424267495%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest267418267426%_))))
                                (let* ((_%expr267498%_ _%$%hd267423267493%_)
                                       (_%rest267500%_ _%$%tl267424267495%_))
                                  (_%$%K267422267490%_
                                   _%rest267500%_
                                   _%expr267498%_)))
                              (_%$%else267420267434%_)))))))
                 (_%compile-stub267339%_
                  (lambda (_%output-scm267346%_ _%output-bin267347%_)
                    (let* ((_%gerbil-home267349%_
                            (let ((__tmp268122
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp268122)))
                           (_%gerbil-libdir267351%_
                            (path-expand '"lib" _%gerbil-home267349%_))
                           (_%runtime267353%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp267355%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home267349%_))
                           (_%include-gambit-sharp267357%_
                            (gxc#include-source _%gambit-sharp267355%_))
                           (_%bin-scm267359%_
                            (gxc#find-static-module-file _%ctx267333%_))
                           (_%deps267361%_
                            (gxc#find-runtime-module-deps _%ctx267333%_))
                           (_%deps267363%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps267361%_)))
                           (_%deps267368%_
                            (let ((__tmp268123
                                   (lambda (_%$obj267365%_)
                                     (not (gxc#file-empty? _%$obj267365%_)))))
                              (declare (not safe))
                              (##filter __tmp268123 _%deps267363%_)))
                           (_%deps267372%_
                            (let ((__tmp268124
                                   (lambda (_%f267370%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f267370%_
                                             _%runtime267353%_))))))
                              (declare (not safe))
                              (##filter __tmp268124 _%deps267368%_)))
                           (_%output-base267374%_
                            (let ((__tmp268125
                                   (path-strip-extension
                                    _%output-scm267346%_)))
                              (declare (not safe))
                              (##string-append __tmp268125)))
                           (_%output-c267376%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base267374%_ '".c")))
                           (_%output-o267378%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base267374%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_267380%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base267374%_ '"_.c")))
                           (_%output-o_267382%_
                            (let ((__tmp268126
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base267374%_
                               __tmp268126)))
                           (_%gsc-link-opts267384%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts267386%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts267388%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir267351%_)))
                           (_%output-ld-opts267390%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros267392%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp267357%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp267357%_
                                            '()))))
                           (_%gsc-link-opts267394%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts267384%_
                               _%gsc-gx-macros267392%_)))
                           (_%rpath267396%_
                            (gxc#gerbil-rpath _%gerbil-libdir267351%_))
                           (_%default-ld-options267398%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp268127
                             (lambda ()
                               (let ((__tmp268128
                                      (path-directory _%output-bin267347%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp268128)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp268127))
                      (gxc#with-output-to-scheme-file
                       _%output-scm267346%_
                       (lambda ()
                         (_%generate-stub267337%_
                          (let ((__tmp268129
                                 (let ((__tmp268130
                                        (cons _%bin-scm267359%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp268130
                                    _%deps267372%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp268129 _%runtime267353%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it267404%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_267380%_
                                                      (let ((__tmp268131
                                                             (cons _%output-scm267346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp268131 _%gsc-link-opts267394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp268132
                                                 (let ((__tmp268133
                                                        (cons _%output-c267376%_
                                                              (cons _%output-c_267380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp268133
                                                    _%gsc-static-opts267388%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp268132
                                             _%gsc-cc-opts267386%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin267347%_
                                                      (cons _%output-o267378%_
                                                            (cons _%output-o_267382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp268134
                                 (let ((__tmp268136
                                        (cons '"-L"
                                              (cons _%gerbil-libdir267351%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options267398%_))))
                                       (__tmp268135
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath267396%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp268136 __tmp268135))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp268134
                             _%output-ld-opts267390%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it267404%_))
                                (_%compile-it267404%_)))
                          '#!void)))))
          (let* ((_%output-bin267341%_
                  (gxc#compile-exe-output-file _%ctx267333%_ _%opts267334%_))
                 (_%output-scm267343%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin267341%_ '"__exe.scm"))))
            (_%compile-stub267339%_
             _%output-scm267343%_
             _%output-bin267341%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx267282%_ _%id267283%_)
        (let ((_%$e267329%_
               (let ((__tmp268138
                      (lambda (_%$%e267284267286%_)
                        (let* ((_%$%$%e267284267288267298%_
                                _%$%e267284267286%_)
                               (_%$%else267290267306%_ (lambda () '#f))
                               (_%$%K267292267310%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e267284267288267298%_
                                 'gx#module-export::t))
                              (let* ((_%$%e267293267313%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e267284267288267298%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e267294267316%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e267284267288267298%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e267295267319%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e267284267288267298%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e267295267319%_ '0))
                                    (let ((_%$%e267296267322%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e267284267288267298%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e267296267322%_
                                               _%id267283%_)
                                          (_%$%K267292267310%_)
                                          (_%$%else267290267306%_)))
                                    (_%$%else267290267306%_)))
                              (_%$%else267290267306%_)))))
                     (__tmp268137
                      (##structure-ref
                       _%ctx267282%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp268138 __tmp268137))))
          (if _%$e267329%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e267329%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx267273%_ _%id267274%_)
        (let ((_%$e267276%_
               (gxc#find-export-binding _%ctx267273%_ _%id267274%_)))
          (if _%$e267276%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e267276%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id267274%_)))
                (##structure-ref _%$e267276%_ '1 gx#binding::t '#f))
              (let ((__tmp268139
                     (##structure-ref
                      _%ctx267273%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp268139
                 _%id267274%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx267139%_)
        (letrec* ((_%ht267141%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template267142%_
                   (lambda (_%in267218%_ _%phi267219%_)
                     (let ((_%iphi267221%_
                            (fx+ _%phi267219%_
                                 (##direct-structure-ref
                                  _%in267218%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports267222%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in267218%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp267224%_ ((_%rest267226%_ _%imports267222%_)
                                          (_%r267227%_ '()))
                         (let* ((_%$%rest267228267236%_ _%rest267226%_)
                                (_%$%else267230267244%_
                                 (lambda () _%r267227%_))
                                (_%$%K267232267261%_
                                 (lambda (_%rest267247%_ _%in267248%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in267248%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi267221%_))
                                           (_%lp267224%_
                                            _%rest267247%_
                                            (cons _%in267248%_ _%r267227%_))
                                           (_%lp267224%_
                                            _%rest267247%_
                                            _%r267227%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in267248%_
                                              'gx#module-import::t))
                                           (let ((_%iphi267252%_
                                                  (fx+ _%phi267219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in267248%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi267252%_))
                                                 (_%lp267224%_
                                                  _%rest267247%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in267248%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r267227%_))
                                                 (_%lp267224%_
                                                  _%rest267247%_
                                                  _%r267227%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in267248%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi267255%_
                                                      (fx+ _%iphi267221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in267248%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi267255%_))
                                                     (_%lp267224%_
                                                      _%rest267247%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in267248%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r267227%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi267255%_))
                                                         (_%lp267224%_
                                                          _%rest267247%_
                                                          (let ((__tmp268140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template267142%_
                          _%in267248%_
                          _%iphi267221%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r267227%_ __tmp268140)))
                 (_%lp267224%_ _%rest267247%_ _%r267227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp267224%_
                                                _%rest267247%_
                                                _%r267227%_)))))))
                           (if (pair? _%$%rest267228267236%_)
                               (let ((_%$%hd267233267264%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest267228267236%_)))
                                     (_%$%tl267234267266%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest267228267236%_))))
                                 (let* ((_%in267269%_ _%$%hd267233267264%_)
                                        (_%rest267271%_ _%$%tl267234267266%_))
                                   (_%$%K267232267261%_
                                    _%rest267271%_
                                    _%in267269%_)))
                               (_%$%else267230267244%_)))))))
                  (_%find-deps267143%_
                   (lambda (_%rest267151%_ _%deps267152%_)
                     (let* ((_%$%rest267153267161%_ _%rest267151%_)
                            (_%$%else267155267169%_ (lambda () _%deps267152%_))
                            (_%$%K267157267206%_
                             (lambda (_%rest267172%_ _%hd267173%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd267173%_
                                      'gx#module-context::t))
                                   (let ((_%id267176%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd267173%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports267177%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd267173%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht267141%_
                                            _%id267176%_))
                                         (_%find-deps267143%_
                                          _%rest267172%_
                                          _%deps267152%_)
                                         (let ((_%$e267180%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd267173%_))))
                                           (if _%$e267180%_
                                               (let ((_%xdeps267185%_
                                                      (_%find-deps267143%_
                                                       (cons _%$e267180%_
                                                             _%imports267177%_)
                                                       _%deps267152%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht267141%_
                                                    _%id267176%_
                                                    _%hd267173%_))
                                                 (_%find-deps267143%_
                                                  _%rest267172%_
                                                  (cons _%hd267173%_
                                                        _%xdeps267185%_)))
                                               (let ((_%xdeps267188%_
                                                      (_%find-deps267143%_
                                                       _%imports267177%_
                                                       _%deps267152%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht267141%_
                                                    _%id267176%_
                                                    _%hd267173%_))
                                                 (_%find-deps267143%_
                                                  _%rest267172%_
                                                  (cons _%hd267173%_
                                                        _%xdeps267188%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd267173%_
                                          'gx#prelude-context::t))
                                       (let ((_%id267191%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd267173%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht267141%_
                                                _%id267191%_))
                                             (_%find-deps267143%_
                                              _%rest267172%_
                                              _%deps267152%_)
                                             (let ((_%xdeps267195%_
                                                    (_%find-deps267143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd267173%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps267152%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht267141%_
                                                      _%id267191%_))
                                                   (_%find-deps267143%_
                                                    _%rest267172%_
                                                    _%xdeps267195%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht267141%_
                                                        _%id267191%_
                                                        _%hd267173%_))
                                                     (_%find-deps267143%_
                                                      _%rest267172%_
                                                      (cons _%hd267173%_
                                                            _%xdeps267195%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd267173%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd267173%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps267143%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd267173%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest267172%_)
                                                _%deps267152%_)
                                               (_%find-deps267143%_
                                                _%rest267172%_
                                                _%deps267152%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd267173%_
                                                  'gx#module-export::t))
                                               (_%find-deps267143%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd267173%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest267172%_)
                                                _%deps267152%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd267173%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd267173%_ '2 '#f '#f)))
               (_%find-deps267143%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd267173%_ '1 '#f '#f))
                      _%rest267172%_)
                _%deps267152%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd267173%_ '2 '#f '#f)))
                   (let ((_%xdeps267202%_
                          (_%import-set-template267142%_ _%hd267173%_ '0)))
                     (_%find-deps267143%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest267172%_ _%xdeps267202%_))
                      _%deps267152%_))
                   (_%find-deps267143%_ _%rest267172%_ _%deps267152%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd267173%_))))))))))
                       (if (pair? _%$%rest267153267161%_)
                           (let ((_%$%hd267158267209%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest267153267161%_)))
                                 (_%$%tl267159267211%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest267153267161%_))))
                             (let* ((_%hd267214%_ _%$%hd267158267209%_)
                                    (_%rest267216%_ _%$%tl267159267211%_))
                               (_%$%K267157267206%_
                                _%rest267216%_
                                _%hd267214%_)))
                           (_%$%else267155267169%_))))))
          (let ((__tmp268141
                 (filter gx#expander-context-id
                         (_%find-deps267143%_
                          (let ((_%$e267145%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx267139%_))))
                            (if _%$e267145%_
                                (cons _%$e267145%_
                                      (##structure-ref
                                       _%ctx267139%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx267139%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp268141)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx267069%_)
        (let* ((_%context-id267071%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx267069%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx267069%_ '1 '#f '#f))
                    (string->symbol _%ctx267069%_)))
               (_%scm267073%_
                (let ((__tmp268142
                       (gxc#static-module-name _%context-id267071%_)))
                  (declare (not safe))
                  (##string-append __tmp268142 '".scm")))
               (_%dirs267075%_ (let () (declare (not safe)) (load-path)))
               (_%dirs267081%_
                (let ((_%user-libpath267077%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath267077%_
                      (let ((_%user-libpath267079%_
                             (path-expand '"lib" _%user-libpath267077%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath267079%_ _%dirs267075%_))
                            _%dirs267075%_
                            (cons _%user-libpath267079%_ _%dirs267075%_)))
                      _%dirs267075%_)))
               (_%dirs267091%_
                (let ((_%$e267083%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e267083%_
                      (cons _%$e267083%_ _%dirs267081%_)
                      _%dirs267081%_)))
               (_%dirs267097%_
                (let ((__tmp268143
                       (lambda (_%$%g267092267094%_)
                         (path-expand '"static" _%$%g267092267094%_))))
                  (declare (not safe))
                  (##map __tmp268143 _%dirs267091%_))))
          (let _%lp267100%_ ((_%rest267102%_ _%dirs267097%_))
            (let* ((_%$%rest267103267111%_ _%rest267102%_)
                   (_%$%else267105267119%_
                    (lambda ()
                      (let ((__tmp268144
                             (##structure-ref
                              _%ctx267069%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp268144
                         _%scm267073%_))))
                   (_%$%K267107267127%_
                    (lambda (_%rest267122%_ _%dir267123%_)
                      (let ((_%path267125%_
                             (path-expand _%scm267073%_ _%dir267123%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path267125%_))
                            _%path267125%_
                            (_%lp267100%_ _%rest267122%_))))))
              (if (pair? _%$%rest267103267111%_)
                  (let ((_%$%hd267108267130%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest267103267111%_)))
                        (_%$%tl267109267132%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest267103267111%_))))
                    (let* ((_%dir267135%_ _%$%hd267108267130%_)
                           (_%rest267137%_ _%$%tl267109267132%_))
                      (_%$%K267107267127%_ _%rest267137%_ _%dir267135%_)))
                  (_%$%else267105267119%_)))))))
    (define gxc#file-empty?
      (lambda (_%path267067%_)
        (zero? (let ((__tmp268145 (file-info _%path267067%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp268145)))))
    (define gxc#compile-top-module
      (lambda (_%ctx267058%_)
        (let ((__tmp268146
               (lambda ()
                 (let ((__tmp268147
                        (lambda ()
                          (let ((__tmp268148
                                 (lambda ()
                                   (let ((__tmp268150
                                          (lambda ()
                                            (let ((__tmp268152
                                                   (lambda ()
                                                     (let ((__tmp268154
                                                            (lambda ()
                                                              (let ((__tmp268155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx267058%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp268155))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp268156
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx267058%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp268156))
                          '#!void)
                      (gxc#collect-bindings _%ctx267058%_)
                      (gxc#compile-runtime-code _%ctx267058%_)
                      (gxc#compile-meta-code _%ctx267058%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx267058%_)
                          '#!void)))
                   (__tmp268153
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
                __tmp268154
                gxc#current-compile-runtime-names
                __tmp268153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp268151
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp268152
                                               gxc#current-compile-runtime-sections
                                               __tmp268151))))
                                         (__tmp268149
                                          (let ((__obj268047
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj268047))
                                            __obj268047)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp268150
                                      gxc#current-compile-symbol-table
                                      __tmp268149)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp268148
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp268147
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268146
           gx#current-expander-context
           _%ctx267058%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx267056%_)
        (let ((__tmp268157
               (##structure-ref _%ctx267056%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp268157))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx267001%_)
        (letrec ((_%compile1267003%_
                  (lambda (_%ctx267045%_)
                    (let* ((_%code267047%_
                            (##structure-ref
                             _%ctx267045%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm267051%_
                            (let ((_%idstr267049%_
                                   (let ((__tmp268158
                                          (##structure-ref
                                           _%ctx267045%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp268158))))
                              (declare (not safe))
                              (##string-append _%idstr267049%_ '"~0")))
                           (_%rtc?267053%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code267047%_))))
                      (if _%rtc?267053%_
                          (let ((__tmp268159
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp268159
                             _%ctx267045%_
                             _%rtm267051%_))
                          '#!void)
                      (_%generate-runtime-code267005%_
                       _%ctx267045%_
                       _%code267047%_
                       (if _%rtc?267053%_ _%rtm267051%_ '#f)))))
                 (_%context-timestamp267004%_
                  (lambda (_%ctx267043%_)
                    (let ((__tmp268160
                           (let ((__tmp268161
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx267043%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp268161 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp268160))))
                 (_%generate-runtime-code267005%_
                  (lambda (_%ctx267012%_ _%code267013%_ _%rtm267014%_)
                    (let* ((_%runtime-code?267016%_ (if _%rtm267014%_ '#t '#f))
                           (_%lifts267018%_ (box '()))
                           (_%runtime-code267024%_
                            (if _%runtime-code?267016%_
                                (let ((__tmp268162
                                       (lambda ()
                                         (let ((__tmp268163
                                                (lambda ()
                                                  (let ((__tmp268164
                                                         (lambda ()
                                                           (let ((__tmp268166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code267013%_))))
                         (__tmp268165
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp268166
                      gxc#current-compile-marks
                      __tmp268165)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp268164
                                                     gxc#current-compile-lift
                                                     _%lifts267018%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp268163
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp268162
                                   gx#current-expander-context
                                   _%ctx267012%_))
                                '#f))
                           (_%runtime-code267026%_
                            (if _%runtime-code?267016%_
                                (if (null? (unbox _%lifts267018%_))
                                    _%runtime-code267024%_
                                    (cons 'begin
                                          (let ((__tmp268168
                                                 (cons _%runtime-code267024%_
                                                       '()))
                                                (__tmp268167
                                                 (reverse (unbox _%lifts267018%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp268168
                                             __tmp268167))))
                                '#f))
                           (_%runtime-code267028%_
                            (if _%runtime-code?267016%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp267004%_
                                                         _%ctx267012%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code267026%_ '())))
                                '#f))
                           (_%loader-code267031%_
                            (let ((__tmp268169
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code267013%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp268169
                               gx#current-expander-context
                               _%ctx267012%_)))
                           (_%loader-code267033%_
                            (cons 'begin
                                  (cons _%loader-code267031%_
                                        (cons (if _%runtime-code?267016%_
                                                  (cons 'load-module
                                                        (cons _%rtm267014%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0267035%_
                            (gxc#compile-output-file _%ctx267012%_ '0 '".scm"))
                           (_%scmrt267037%_
                            (gxc#compile-output-file
                             _%ctx267012%_
                             '#f
                             '".scm"))
                           (_%scms267039%_
                            (gxc#compile-static-output-file _%ctx267012%_)))
                      (if _%runtime-code?267016%_
                          (gxc#compile-scm-file__0
                           _%scm0267035%_
                           _%runtime-code267028%_)
                          '#!void)
                      (let ((__tmp268170
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt267037%_
                                _%loader-code267033%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp268170
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms267039%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms267039%_))
                          '#!void)
                      (if _%runtime-code?267016%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0267035%_ _%scms267039%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms267039%_ void)))))))
          (let* ((_%all-modules267007%_
                  (cons _%ctx267001%_ (gxc#lift-nested-modules _%ctx267001%_)))
                 (__tmp268171
                  (lambda (_%ctx267009%_)
                    (let ((__tmp268172
                           (lambda () (_%compile1267003%_ _%ctx267009%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp268172
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp268171 _%all-modules267007%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx266900%_)
        (letrec ((_%compile-ssi266902%_
                  (lambda (_%code266969%_)
                    (let* ((_%path266971%_
                            (gxc#compile-output-file
                             _%ctx266900%_
                             '#f
                             '".ssi"))
                           (_%prelude266983%_
                            (let* ((_%super266973%_
                                    (##structure-ref
                                     _%ctx266900%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e266975%_
                                    (##structure-ref
                                     _%super266973%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e266975%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e266975%_))
                                  ':<root>)))
                           (_%ns266985%_
                            (##structure-ref
                             _%ctx266900%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr266987%_
                            (symbol->string
                             (##structure-ref
                              _%ctx266900%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg266995%_
                            (let ((_%$e266989%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr266987%_ '#\/))))
                              (if _%$e266989%_
                                  (let ((__tmp268173
                                         (substring
                                          _%idstr266987%_
                                          '0
                                          _%$e266989%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp268173))
                                  '#f)))
                           (_%rt266997%_
                            (let ((__tmp268174
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp268174 _%ctx266900%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path266971%_))
                      (gxc#with-output-to-scheme-file
                       _%path266971%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude266983%_))
                         (if _%pkg266995%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg266995%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns266985%_))
                         (newline)
                         (pretty-print _%code266969%_)
                         (if _%rt266997%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt266997%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi266903%_
                  (lambda (_%part266908%_)
                    (let* ((_%$%part266909266922%_ _%part266908%_)
                           (_%$%E266911266926%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part266909266922%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K266912266938%_
                            (lambda (_%code266929%_
                                     _%n266930%_
                                     _%phi266931%_
                                     _%phi-ctx266932%_)
                              (let ((_%code266936%_
                                     (let ((__tmp268175
                                            (lambda ()
                                              (let ((__tmp268176
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code266929%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp268176
                                                 gx#current-expander-phi
                                                 _%phi266931%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp268175
                                        gx#current-expander-context
                                        _%phi-ctx266932%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx266900%_
                                  _%n266930%_
                                  '".scm")
                                 _%code266936%_
                                 '#t)))))
                      (if (pair? _%$%part266909266922%_)
                          (let ((_%$%hd266913266941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part266909266922%_)))
                                (_%$%tl266914266943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part266909266922%_))))
                            (let ((_%phi-ctx266946%_ _%$%hd266913266941%_))
                              (if (pair? _%$%tl266914266943%_)
                                  (let ((_%$%hd266915266948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl266914266943%_)))
                                        (_%$%tl266916266950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl266914266943%_))))
                                    (let ((_%phi266953%_ _%$%hd266915266948%_))
                                      (if (pair? _%$%tl266916266950%_)
                                          (let ((_%$%hd266917266955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl266916266950%_)))
                                                (_%$%tl266918266957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl266916266950%_))))
                                            (let ((_%n266960%_
                                                   _%$%hd266917266955%_))
                                              (if (pair? _%$%tl266918266957%_)
                                                  (let ((_%$%hd266919266962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl266918266957%_)))
                                                        (_%$%tl266920266964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl266918266957%_))))
                                                    (let ((_%code266967%_
                                                           _%$%hd266919266962%_))
                                                      (if (null? _%$%tl266920266964%_)
                                                          (_%$%K266912266938%_
                                                           _%code266967%_
                                                           _%n266960%_
                                                           _%phi266953%_
                                                           _%phi-ctx266946%_)
                                                          (_%$%E266911266926%_))))
                                                  (_%$%E266911266926%_))))
                                          (_%$%E266911266926%_))))
                                  (_%$%E266911266926%_))))
                          (_%$%E266911266926%_))))))
          (let ((_g268177_ (gxc#generate-meta-code _%ctx266900%_)))
            (begin
              (let ((_g268178_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g268177_)
                           (##values-length _g268177_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g268178_ 2)))
                    (error "Context expects 2 values" _g268178_)))
              (let ((_%ssi-code266905%_
                     (let () (declare (not safe)) (##values-ref _g268177_ 0)))
                    (_%phi-code266906%_
                     (let () (declare (not safe)) (##values-ref _g268177_ 1))))
                (begin
                  (_%compile-ssi266902%_ _%ssi-code266905%_)
                  (for-each _%compile-phi266903%_ _%phi-code266906%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx266882%_)
        (let* ((_%path266884%_
                (gxc#compile-output-file _%ctx266882%_ '#f '".ssxi.ss"))
               (_%code266886%_
                (let ((__tmp268179
                       (##structure-ref
                        _%ctx266882%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp268179)))
               (_%idstr266888%_
                (symbol->string
                 (##structure-ref
                  _%ctx266882%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg266896%_
                (let ((_%$e266890%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr266888%_ '#\/))))
                  (if _%$e266890%_
                      (let ((__tmp268180
                             (substring _%idstr266888%_ '0 _%$e266890%_)))
                        (declare (not safe))
                        (##string->symbol __tmp268180))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path266884%_))
          (gxc#with-output-to-scheme-file
           _%path266884%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg266896%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg266896%_))
                 '#!void)
             (newline)
             (pretty-print _%code266886%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx266875%_)
        (let* ((_%state266877%_
                (let ((__obj268048
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj268048 _%ctx266875%_))
                  __obj268048))
               (_%ssi-code266879%_
                (let ((__tmp268181
                       (##structure-ref
                        _%ctx266875%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state266877%_
                   __tmp268181))))
          (values _%ssi-code266879%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state266877%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx266867%_)
        (let* ((_%lifts266869%_ (box '()))
               (__tmp268182
                (lambda ()
                  (let ((__tmp268184
                         (lambda ()
                           (let ((_%code266873%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx266867%_))))
                             (if (null? (unbox _%lifts266869%_))
                                 _%code266873%_
                                 (cons 'begin
                                       (let ((__tmp268186
                                              (cons _%code266873%_ '()))
                                             (__tmp268185
                                              (reverse (unbox _%lifts266869%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp268186
                                          __tmp268185)))))))
                        (__tmp268183
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp268184
                     gxc#current-compile-marks
                     __tmp268183)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268182
           gxc#current-compile-lift
           _%lifts266869%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx266863%_)
        (let ((_%modules266865%_ (box '())))
          (let ((__tmp268187
                 (##structure-ref _%ctx266863%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules266865%_ __tmp268187))
          (reverse (unbox _%modules266865%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path266843%_ _%code266844%_ _%phi?266845%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path266843%_))
        (gxc#with-output-to-scheme-file
         _%path266843%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp268188
                                           (if _%phi?266845%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp268188)))))))
           (pretty-print _%code266844%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it266849%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path266843%_ _%phi?266845%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp268189
                         (cons 'compile-file (cons _%path266843%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it266849%_ __tmp268189))
                  (_%compile-it266849%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path266854%_ _%code266855%_)
        (let ((_%phi?266857%_ '#f))
          (gxc#compile-scm-file__%
           _%path266854%_
           _%code266855%_
           _%phi?266857%_))))
    (define gxc#compile-scm-file
      (lambda _g268190_
        (let ((_g268191_ (let () (declare (not safe)) (##length _g268190_))))
          (cond ((let () (declare (not safe)) (##fx= _g268191_ 2))
                 (apply gxc#compile-scm-file__0 _g268190_))
                ((let () (declare (not safe)) (##fx= _g268191_ 3))
                 (apply gxc#compile-scm-file__% _g268190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g268190_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?266744%_)
        (let _%lp266746%_ ((_%rest266748%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts266749%_ '()))
          (let* ((_%$%rest266750266770%_ _%rest266748%_)
                 (_%$%else266754266778%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts266749%_)))
                        (reverse _%opts266749%_)))))
            (let ((_%$%K266764266821%_
                   (lambda (_%rest266819%_)
                     (_%lp266746%_ _%rest266819%_ _%opts266749%_)))
                  (_%$%K266759266803%_
                   (lambda (_%rest266801%_)
                     (_%lp266746%_ _%rest266801%_ _%opts266749%_)))
                  (_%$%K266756266785%_
                   (lambda (_%rest266782%_ _%opt266783%_)
                     (_%lp266746%_
                      _%rest266782%_
                      (cons _%opt266783%_ _%opts266749%_)))))
              (if (pair? _%$%rest266750266770%_)
                  (let ((_%$%tl266766266826%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest266750266770%_)))
                        (_%$%hd266765266824%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest266750266770%_))))
                    (if (equal? _%$%hd266765266824%_ '"-cc-options")
                        (if (pair? _%$%tl266766266826%_)
                            (let* ((_%$%tl266768266829%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl266766266826%_)))
                                   (_%rest266832%_ _%$%tl266768266829%_))
                              (_%$%K266764266821%_ _%rest266832%_))
                            (let ((_%opt266793%_ _%$%hd266765266824%_)
                                  (_%rest266795%_ _%$%tl266766266826%_))
                              (_%$%K266756266785%_
                               _%rest266795%_
                               _%opt266793%_)))
                        (if (equal? _%$%hd266765266824%_ '"-ld-options")
                            (if (pair? _%$%tl266766266826%_)
                                (let* ((_%$%tl266763266811%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl266766266826%_)))
                                       (_%rest266814%_ _%$%tl266763266811%_))
                                  (_%$%K266759266803%_ _%rest266814%_))
                                (let ((_%opt266793%_ _%$%hd266765266824%_)
                                      (_%rest266795%_ _%$%tl266766266826%_))
                                  (_%$%K266756266785%_
                                   _%rest266795%_
                                   _%opt266793%_)))
                            (let ((_%opt266793%_ _%$%hd266765266824%_)
                                  (_%rest266795%_ _%$%tl266766266826%_))
                              (_%$%K266756266785%_
                               _%rest266795%_
                               _%opt266793%_)))))
                  (_%$%else266754266778%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?266838%_ '#f)) (gxc#gsc-link-options__% _%phi?266838%_))))
    (define gxc#gsc-link-options
      (lambda _g268192_
        (let ((_g268193_ (let () (declare (not safe)) (##length _g268192_))))
          (cond ((let () (declare (not safe)) (##fx= _g268193_ 0))
                 (apply gxc#gsc-link-options__0 _g268192_))
                ((let () (declare (not safe)) (##fx= _g268193_ 1))
                 (apply gxc#gsc-link-options__% _g268192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g268192_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords266594%_ _%$%static?266590266595%_ _%phi?266596%_)
        (let ((_%static?266598%_
               (if (eq? _%$%static?266590266595%_ absent-value)
                   '#f
                   _%$%static?266590266595%_)))
          (if _%phi?266596%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp266600%_ ((_%rest266602%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts266603%_ '()))
                (let* ((_%$%rest266604266630%_ _%rest266602%_)
                       (_%$%else266609266638%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts266603%_)))
                              (reverse! _%opts266603%_)))))
                  (let ((_%$%K266624266701%_
                         (lambda (_%rest266698%_ _%opt266699%_)
                           (if _%static?266598%_
                               (_%lp266600%_
                                _%rest266698%_
                                (cons _%opt266699%_
                                      (cons '"-cc-options" _%opts266603%_)))
                               (_%lp266600%_ _%rest266698%_ _%opts266603%_))))
                        (_%$%K266619266678%_
                         (lambda (_%rest266675%_ _%opt266676%_)
                           (_%lp266600%_
                            _%rest266675%_
                            (cons _%opt266676%_
                                  (cons '"-cc-options" _%opts266603%_)))))
                        (_%$%K266614266658%_
                         (lambda (_%rest266656%_)
                           (_%lp266600%_ _%rest266656%_ _%opts266603%_)))
                        (_%$%K266611266644%_
                         (lambda (_%rest266642%_)
                           (_%lp266600%_ _%rest266642%_ _%opts266603%_))))
                    (if (pair? _%$%rest266604266630%_)
                        (let ((_%$%tl266626266706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest266604266630%_)))
                              (_%$%hd266625266704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest266604266630%_))))
                          (if (equal? _%$%hd266625266704%_ '"-cc-options")
                              (if (pair? _%$%tl266626266706%_)
                                  (let ((_%$%tl266628266711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl266626266706%_)))
                                        (_%$%hd266627266709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl266626266706%_))))
                                    (if (equal? _%$%hd266627266709%_
                                                '"-Bstatic")
                                        (let ((_%opt266714%_
                                               _%$%hd266627266709%_)
                                              (_%rest266716%_
                                               _%$%tl266628266711%_))
                                          (_%$%K266624266701%_
                                           _%rest266716%_
                                           _%opt266714%_))
                                        (let ((_%opt266691%_
                                               _%$%hd266627266709%_)
                                              (_%rest266693%_
                                               _%$%tl266628266711%_))
                                          (_%$%K266619266678%_
                                           _%rest266693%_
                                           _%opt266691%_))))
                                  (let ((_%rest266650%_ _%$%tl266626266706%_))
                                    (_%$%K266611266644%_ _%rest266650%_)))
                              (if (equal? _%$%hd266625266704%_ '"-ld-options")
                                  (if (pair? _%$%tl266626266706%_)
                                      (let* ((_%$%tl266618266666%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl266626266706%_)))
                                             (_%rest266669%_
                                              _%$%tl266618266666%_))
                                        (_%$%K266614266658%_ _%rest266669%_))
                                      (let ((_%rest266650%_
                                             _%$%tl266626266706%_))
                                        (_%$%K266611266644%_ _%rest266650%_)))
                                  (let ((_%rest266650%_ _%$%tl266626266706%_))
                                    (_%$%K266611266644%_ _%rest266650%_)))))
                        (_%$%else266609266638%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords266721%_ _%$%static?266590266722%_)
        (let ((_%phi?266724%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords266721%_
           _%$%static?266590266722%_
           _%phi?266724%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g268194_
        (let ((_g268195_ (let () (declare (not safe)) (##length _g268194_))))
          (cond ((let () (declare (not safe)) (##fx= _g268195_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g268194_))
                ((let () (declare (not safe)) (##fx= _g268195_ 3))
                 (apply gxc#gsc-cc-options__%__% _g268194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g268194_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords266733%_ . _%args266734%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords266733%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266733%_
                  'static:
                  absent-value))
               _%args266734%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args266591266740%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args266591266740%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords266440%_ _%$%static?266436266441%_ _%phi?266442%_)
        (let ((_%static?266444%_
               (if (eq? _%$%static?266436266441%_ absent-value)
                   '#f
                   _%$%static?266436266441%_)))
          (if _%phi?266442%_
              '()
              (let _%lp266446%_ ((_%rest266448%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts266449%_ '()))
                (let* ((_%$%rest266450266476%_ _%rest266448%_)
                       (_%$%else266455266484%_
                        (lambda () (reverse! _%opts266449%_))))
                  (let ((_%$%K266470266547%_
                         (lambda (_%rest266544%_ _%opt266545%_)
                           (if _%static?266444%_
                               (_%lp266446%_
                                _%rest266544%_
                                (cons _%opt266545%_
                                      (cons '"-ld-options" _%opts266449%_)))
                               (_%lp266446%_ _%rest266544%_ _%opts266449%_))))
                        (_%$%K266465266524%_
                         (lambda (_%rest266521%_ _%opt266522%_)
                           (_%lp266446%_
                            _%rest266521%_
                            (cons _%opt266522%_
                                  (cons '"-ld-options" _%opts266449%_)))))
                        (_%$%K266460266504%_
                         (lambda (_%rest266502%_)
                           (_%lp266446%_ _%rest266502%_ _%opts266449%_)))
                        (_%$%K266457266490%_
                         (lambda (_%rest266488%_)
                           (_%lp266446%_ _%rest266488%_ _%opts266449%_))))
                    (if (pair? _%$%rest266450266476%_)
                        (let ((_%$%tl266472266552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest266450266476%_)))
                              (_%$%hd266471266550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest266450266476%_))))
                          (if (equal? _%$%hd266471266550%_ '"-ld-options")
                              (if (pair? _%$%tl266472266552%_)
                                  (let ((_%$%tl266474266557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl266472266552%_)))
                                        (_%$%hd266473266555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl266472266552%_))))
                                    (if (equal? _%$%hd266473266555%_
                                                '"-static")
                                        (let ((_%opt266560%_
                                               _%$%hd266473266555%_)
                                              (_%rest266562%_
                                               _%$%tl266474266557%_))
                                          (_%$%K266470266547%_
                                           _%rest266562%_
                                           _%opt266560%_))
                                        (let ((_%opt266537%_
                                               _%$%hd266473266555%_)
                                              (_%rest266539%_
                                               _%$%tl266474266557%_))
                                          (_%$%K266465266524%_
                                           _%rest266539%_
                                           _%opt266537%_))))
                                  (let ((_%rest266496%_ _%$%tl266472266552%_))
                                    (_%$%K266457266490%_ _%rest266496%_)))
                              (if (equal? _%$%hd266471266550%_ '"-cc-options")
                                  (if (pair? _%$%tl266472266552%_)
                                      (let* ((_%$%tl266464266512%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl266472266552%_)))
                                             (_%rest266515%_
                                              _%$%tl266464266512%_))
                                        (_%$%K266460266504%_ _%rest266515%_))
                                      (let ((_%rest266496%_
                                             _%$%tl266472266552%_))
                                        (_%$%K266457266490%_ _%rest266496%_)))
                                  (let ((_%rest266496%_ _%$%tl266472266552%_))
                                    (_%$%K266457266490%_ _%rest266496%_)))))
                        (_%$%else266455266484%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords266567%_ _%$%static?266436266568%_)
        (let ((_%phi?266570%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords266567%_
           _%$%static?266436266568%_
           _%phi?266570%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g268196_
        (let ((_g268197_ (let () (declare (not safe)) (##length _g268196_))))
          (cond ((let () (declare (not safe)) (##fx= _g268197_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g268196_))
                ((let () (declare (not safe)) (##fx= _g268197_ 3))
                 (apply gxc#gsc-ld-options__%__% _g268196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g268196_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords266579%_ . _%args266580%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords266579%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266579%_
                  'static:
                  absent-value))
               _%args266580%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args266437266586%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args266437266586%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir266431%_)
        (let ((_%user-staticdir266433%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir266431%_
                       '" -I "
                       _%user-staticdir266433%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp266343%_ ((_%rest266345%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts266346%_ '()))
          (let* ((_%$%rest266347266367%_ _%rest266345%_)
                 (_%$%else266351266375%_ (lambda () _%opts266346%_)))
            (let ((_%$%K266361266418%_
                   (lambda (_%rest266416%_)
                     (_%lp266343%_ _%rest266416%_ _%opts266346%_)))
                  (_%$%K266356266396%_
                   (lambda (_%rest266393%_ _%opt266394%_)
                     (_%lp266343%_
                      _%rest266393%_
                      (let ((__tmp268198
                             (let ((__tmp268199
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt266394%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp268199))))
                        (declare (not safe))
                        (##append _%opts266346%_ __tmp268198)))))
                  (_%$%K266353266381%_
                   (lambda (_%rest266379%_)
                     (_%lp266343%_ _%rest266379%_ _%opts266346%_))))
              (if (pair? _%$%rest266347266367%_)
                  (let ((_%$%tl266363266423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest266347266367%_)))
                        (_%$%hd266362266421%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest266347266367%_))))
                    (if (equal? _%$%hd266362266421%_ '"-cc-options")
                        (if (pair? _%$%tl266363266423%_)
                            (let* ((_%$%tl266365266426%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl266363266423%_)))
                                   (_%rest266429%_ _%$%tl266365266426%_))
                              (_%$%K266361266418%_ _%rest266429%_))
                            (let ((_%rest266387%_ _%$%tl266363266423%_))
                              (_%$%K266353266381%_ _%rest266387%_)))
                        (if (equal? _%$%hd266362266421%_ '"-ld-options")
                            (if (pair? _%$%tl266363266423%_)
                                (let ((_%$%tl266360266406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl266363266423%_)))
                                      (_%$%hd266359266404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl266363266423%_))))
                                  (let ((_%opt266409%_ _%$%hd266359266404%_)
                                        (_%rest266411%_ _%$%tl266360266406%_))
                                    (_%$%K266356266396%_
                                     _%rest266411%_
                                     _%opt266409%_)))
                                (let ((_%rest266387%_ _%$%tl266363266423%_))
                                  (_%$%K266353266381%_ _%rest266387%_)))
                            (let ((_%rest266387%_ _%$%tl266363266423%_))
                              (_%$%K266353266381%_ _%rest266387%_)))))
                  (_%$%else266351266375%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str266340%_)
        (not (let () (declare (not safe)) (string-empty? _%str266340%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path266333%_ _%phi?266334%_)
        (let ((_%gsc-link-opts266336%_
               (gxc#gsc-link-options__% _%phi?266334%_))
              (_%gsc-cc-opts266337%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?266334%_))
              (_%gsc-ld-opts266338%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?266334%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp268200
                  (let ((__tmp268201
                         (let ((__tmp268202 (cons _%path266333%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp268202
                            _%gsc-link-opts266336%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp268201 _%gsc-ld-opts266338%_))))
             (declare (not safe))
             (foldr__0 cons __tmp268200 _%gsc-cc-opts266337%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx266299%_ _%n266300%_ _%ext266301%_)
        (letrec ((_%module-relative-path266303%_
                  (lambda (_%ctx266331%_)
                    (path-strip-directory
                     (let ((__tmp268203
                            (##structure-ref
                             _%ctx266331%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp268203)))))
                 (_%module-source-directory266304%_
                  (lambda (_%ctx266327%_)
                    (path-directory
                     (let ((_%mpath266329%_
                            (##structure-ref
                             _%ctx266327%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath266329%_)
                           _%mpath266329%_
                           (last _%mpath266329%_))))))
                 (_%section-string266305%_
                  (lambda (_%n266321%_)
                    (if (number? _%n266321%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n266321%_))
                        (if (symbol? _%n266321%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n266321%_))
                            (if (string? _%n266321%_)
                                _%n266321%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n266321%_)))))))
                 (_%file-name266306%_
                  (lambda (_%path266319%_)
                    (if _%n266300%_
                        (string-append
                         _%path266319%_
                         '"~"
                         (_%section-string266305%_ _%n266300%_)
                         _%ext266301%_)
                        (string-append _%path266319%_ _%ext266301%_))))
                 (_%file-path266307%_
                  (lambda ()
                    (let ((_%$e266313%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e266313%_
                          (path-expand
                           (_%file-name266306%_
                            (let ((__tmp268204
                                   (##structure-ref
                                    _%ctx266299%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp268204)))
                           _%$e266313%_)
                          (path-expand
                           (_%file-name266306%_
                            (_%module-relative-path266303%_ _%ctx266299%_))
                           (_%module-source-directory266304%_
                            _%ctx266299%_)))))))
          (let ((_%path266309%_ (_%file-path266307%_)))
            (let ((__tmp268205
                   (lambda ()
                     (let ((__tmp268206 (path-directory _%path266309%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp268206)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp268205))
            _%path266309%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx266280%_)
        (letrec ((_%file-name266282%_
                  (lambda (_%id266297%_)
                    (let ((__tmp268207 (gxc#static-module-name _%id266297%_)))
                      (declare (not safe))
                      (##string-append __tmp268207 '".scm"))))
                 (_%file-path266283%_
                  (lambda ()
                    (let* ((_%file266289%_
                            (_%file-name266282%_
                             (##structure-ref
                              _%ctx266280%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e266291%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e266291%_
                          (path-expand
                           _%file266289%_
                           (path-expand '"static" _%$e266291%_))
                          (path-expand _%file266289%_ '"static"))))))
          (let ((_%path266285%_ (_%file-path266283%_)))
            (let ((__tmp268208
                   (lambda ()
                     (let ((__tmp268209 (path-directory _%path266285%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp268209)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp268208))
            _%path266285%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx266273%_ _%opts266274%_)
        (let ((_%$e266276%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts266274%_))))
          (if _%$e266276%_
              _%$e266276%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx266273%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr266263%_)
        (if (string? _%idstr266263%_)
            (let* ((_%str266266%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr266263%_)))
                   (_%strs266268%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str266266%_ '#\/))))
              (declare (not safe))
              (string-join _%strs266268%_ '"__"))
            (if (symbol? _%idstr266263%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr266263%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr266263%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp268210
               (let ((__tmp268211 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp268211 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp268210))))
    (define gxc#invoke__%
      (lambda (_%@@keywords266229%_
               _%$%stdout-redirection266225266230%_
               _%$%stderr-redirection266226266231%_
               _%program266232%_
               _%args266233%_)
        (let* ((_%stdout-redirection266235%_
                (if (eq? _%$%stdout-redirection266225266230%_ absent-value)
                    '#f
                    _%$%stdout-redirection266225266230%_))
               (_%stderr-redirection266237%_
                (if (eq? _%$%stderr-redirection266226266231%_ absent-value)
                    '#f
                    _%$%stderr-redirection266226266231%_)))
          (let ((__tmp268212 (cons _%program266232%_ _%args266233%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp268212))
          (let* ((_%proc266239%_
                  (open-process
                   (cons 'path:
                         (cons _%program266232%_
                               (cons 'arguments:
                                     (cons _%args266233%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection266235%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection266237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output266244%_
                  (if (or _%stdout-redirection266235%_
                          _%stderr-redirection266237%_)
                      (read-line _%proc266239%_ '#f)
                      '#f))
                 (_%status266247%_ (process-status _%proc266239%_)))
            (let () (declare (not safe)) (##close-port _%proc266239%_))
            (if (zero? _%status266247%_)
                '#!void
                (begin
                  (display _%output266244%_)
                  (let ((__tmp268213 (cons _%program266232%_ _%args266233%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp268213
                     _%status266247%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords266252%_ . _%args266253%_)
        (apply gxc#invoke__%
               _%@@keywords266252%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266252%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266252%_
                  'stderr-redirection:
                  absent-value))
               _%args266253%_)))
    (define gxc#invoke
      (lambda _%$%args266227266259%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args266227266259%_)))))
