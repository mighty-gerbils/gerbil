(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771036691)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp442601 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp442601))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp442602 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp442602))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path442458%_ _%fun442459%_)
        (with-output-to-file
         (cons 'path: (cons _%path442458%_ gxc#scheme-file-settings))
         _%fun442459%_)))
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
      (lambda (_%gerbil-libdir442453%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir442453%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path442451%_)
        (let ((__tmp442603 (object->string _%path442451%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp442603 '")"))))
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
      (lambda (_%dir442449%_) (delete-file-or-directory _%dir442449%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath442392%_ _%opts442393%_)
        (if (string? _%srcpath442392%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath442392%_)))
        (let* ((_%outdir442395%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts442393%_)))
               (_%invoke-gsc?442397%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts442393%_)))
               (_%target442402%_
                (let ((_%$e442399%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts442393%_))))
                  (if _%$e442399%_ _%$e442399%_ 'C)))
               (_%gsc-options442407%_
                (append (cons '"-target"
                              (cons (symbol->string _%target442402%_) '()))
                        (let ((_%$e442404%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts442393%_))))
                          (if _%$e442404%_ _%$e442404%_ '()))))
               (_%keep-scm?442409%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts442393%_)))
               (_%verbosity442411%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts442393%_)))
               (_%optimize442413%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts442393%_)))
               (_%debug442415%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts442393%_)))
               (_%gen-ssxi442417%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts442393%_)))
               (_%parallel?442419%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts442393%_))))
          (if _%outdir442395%_
              (let ((__tmp442604
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir442395%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp442604))
              '#!void)
          (if _%optimize442413%_
              (let ((__tmp442605
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp442605))
              '#!void)
          (let ((__tmp442606
                 (lambda ()
                   (let ((__tmp442607
                          (lambda ()
                            (let ((__tmp442608
                                   (lambda ()
                                     (let ((__tmp442609
                                            (lambda ()
                                              (let ((__tmp442610
                                                     (lambda ()
                                                       (let ((__tmp442611
                                                              (lambda ()
                                                                (let ((__tmp442612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp442613
                                        (lambda ()
                                          (let ((__tmp442614
                                                 (lambda ()
                                                   (let ((__tmp442616
                                                          (lambda ()
                                                            (let ((__tmp442618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp442620
                                    (lambda ()
                                      (let ((__tmp442621
                                             (lambda ()
                                               (let ((__tmp442622
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath442392%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp442623
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath442392%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp442623))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp442622
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp442621
                                         gxc#current-compile-parallel
                                         _%parallel?442419%_))))
                                   (__tmp442619
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp442620
                                gxc#current-compile-identifiers
                                __tmp442619))))
                          (__tmp442617
                           (cons (cons 'compile-module
                                       (cons _%srcpath442392%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp442618
                       gxc#current-compile-context
                       __tmp442617))))
                 (__tmp442615 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp442616
                                                      gxc#current-compile-timestamp
                                                      __tmp442615)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp442614
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi442417%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp442613
                                    gxc#current-compile-debug
                                    _%debug442415%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp442612
                           gxc#current-compile-optimize
                           _%optimize442413%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp442611
                  gxc#current-compile-verbose
                  _%verbosity442411%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp442610
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?442409%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp442609
                                        gxc#current-compile-gsc-options
                                        _%gsc-options442407%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp442608
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?442397%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp442607
                      gx#current-compilation-target
                      _%target442402%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp442606
             gxc#current-compile-output-dir
             _%outdir442395%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath442442%_)
        (let ((_%opts442444%_ '()))
          (gxc#compile-module__% _%srcpath442442%_ _%opts442444%_))))
    (define gxc#compile-module
      (lambda _g442624_
        (let ((_g442625_ (let () (declare (not safe)) (##length _g442624_))))
          (cond ((let () (declare (not safe)) (##fx= _g442625_ 1))
                 (apply gxc#compile-module__0 _g442624_))
                ((let () (declare (not safe)) (##fx= _g442625_ 2))
                 (apply gxc#compile-module__% _g442624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g442624_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath442341%_ _%opts442342%_)
        (if (string? _%srcpath442341%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath442341%_)))
        (let* ((_%outdir442344%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts442342%_)))
               (_%invoke-gsc?442346%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts442342%_)))
               (_%target442351%_
                (let ((_%$e442348%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts442342%_))))
                  (if _%$e442348%_ _%$e442348%_ 'C)))
               (_%gsc-options442356%_
                (append (cons '"-target"
                              (cons (symbol->string _%target442351%_) '()))
                        (let ((_%$e442353%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts442342%_))))
                          (if _%$e442353%_ _%$e442353%_ '()))))
               (_%keep-scm?442358%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts442342%_)))
               (_%verbosity442360%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts442342%_)))
               (_%debug442362%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts442342%_)))
               (_%parallel?442364%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts442342%_))))
          (if _%outdir442344%_
              (let ((__tmp442626
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir442344%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp442626))
              '#!void)
          (let ((__tmp442627
                 (lambda ()
                   (let ((__tmp442628
                          (lambda ()
                            (let ((__tmp442629
                                   (lambda ()
                                     (let ((__tmp442630
                                            (lambda ()
                                              (let ((__tmp442631
                                                     (lambda ()
                                                       (let ((__tmp442632
                                                              (lambda ()
                                                                (let ((__tmp442633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp442635
                                        (lambda ()
                                          (let ((__tmp442637
                                                 (lambda ()
                                                   (let ((__tmp442639
                                                          (lambda ()
                                                            (let ((__tmp442640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp442641
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath442341%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp442642
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath442341%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp442642))
                                       _%opts442342%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp442641
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp442640
                       gxc#current-compile-parallel
                       _%parallel?442364%_))))
                 (__tmp442638
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp442639
                                                      gxc#current-compile-identifiers
                                                      __tmp442638))))
                                                (__tmp442636
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath442341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp442637
                                             gxc#current-compile-context
                                             __tmp442636))))
                                       (__tmp442634 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp442635
                                    gxc#current-compile-timestamp
                                    __tmp442634)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp442633
                           gxc#current-compile-debug
                           _%debug442362%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp442632
                  gxc#current-compile-verbose
                  _%verbosity442360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp442631
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?442358%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp442630
                                        gxc#current-compile-gsc-options
                                        _%gsc-options442356%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp442629
                               gx#current-compilation-target
                               _%target442351%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp442628
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?442346%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp442627
             gxc#current-compile-output-dir
             _%outdir442344%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath442384%_)
        (let ((_%opts442386%_ '()))
          (gxc#compile-exe__% _%srcpath442384%_ _%opts442386%_))))
    (define gxc#compile-exe
      (lambda _g442643_
        (let ((_g442644_ (let () (declare (not safe)) (##length _g442643_))))
          (cond ((let () (declare (not safe)) (##fx= _g442644_ 1))
                 (apply gxc#compile-exe__0 _g442643_))
                ((let () (declare (not safe)) (##fx= _g442644_ 2))
                 (apply gxc#compile-exe__% _g442643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g442643_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx442337%_ _%opts442338%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts442338%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx442337%_
             _%opts442338%_)
            (gxc#compile-executable-module/separate
             _%ctx442337%_
             _%opts442338%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx442063%_ _%opts442064%_)
        (letrec ((_%generate-stub442066%_
                  (lambda (_%builtin-modules442333%_)
                    (let ((_%mod-main442335%_
                           (gxc#find-runtime-symbol _%ctx442063%_ 'main)))
                      (let ((__tmp442645
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules442333%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp442645))
                      (let ((__tmp442646
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main442335%_
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
                        (##write __tmp442646))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts442067%_
                  (lambda (_%gerbil-libdir442331%_)
                    (let ((__tmp442647
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir442331%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp442647 read))))
                 (_%replace-extension442068%_
                  (lambda (_%path442328%_ _%ext442329%_)
                    (string-append
                     (path-strip-extension _%path442328%_)
                     _%ext442329%_)))
                 (_%replace-extension-with-c442069%_
                  (lambda (_%path442326%_)
                    (_%replace-extension442068%_ _%path442326%_ '".c")))
                 (_%replace-extension-with-object442070%_
                  (lambda (_%path442324%_)
                    (_%replace-extension442068%_
                     _%path442324%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?442071%_
                  (lambda (_%ctx442322%_)
                    (if (_%exclude-module?442073%_ _%ctx442322%_)
                        '#f
                        (not (_%libgerbil-module?442072%_ _%ctx442322%_)))))
                 (_%libgerbil-module?442072%_
                  (lambda (_%ctx442315%_)
                    (let ((_%id-str442317%_
                           (symbol->string
                            (##structure-ref
                             _%ctx442315%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?442073%_ _%id-str442317%_)
                          '#f
                          (let ((_%$e442319%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str442317%_))))
                            (if _%$e442319%_
                                _%$e442319%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str442317%_))))))))
                 (_%exclude-module?442073%_
                  (lambda (_%ctx-or-str442311%_)
                    (let ((_%str442313%_
                           (if (string? _%ctx-or-str442311%_)
                               _%ctx-or-str442311%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str442311%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str442313%_))))
                 (_%not-file-empty?442074%_
                  (lambda (_%path442309%_)
                    (not (gxc#file-empty? _%path442309%_))))
                 (_%fold-libgerbil-runtime-scm442075%_
                  (lambda (_%gerbil-staticdir442302%_ _%libgerbil-scm442303%_)
                    (let ((_%gerbil-runtime-scm442307%_
                           (let ((__tmp442648
                                  (lambda (_%rtm442305%_)
                                    (path-expand
                                     (let ((__tmp442649
                                            (let ((__tmp442650
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm442305%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp442650
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp442649 '".scm"))
                                     _%gerbil-staticdir442302%_))))
                             (declare (not safe))
                             (##map __tmp442648 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates442076%_
                       (append _%gerbil-runtime-scm442307%_
                               _%libgerbil-scm442303%_)))))
                 (_%remove-duplicates442076%_
                  (lambda (_%strlst442262%_)
                    (let _%loop442264%_ ((_%rest442266%_ _%strlst442262%_)
                                         (_%result442267%_ '()))
                      (let* ((_%rest442268442276%_ _%rest442266%_)
                             (_%else442270442284%_
                              (lambda () (reverse! _%result442267%_)))
                             (_%K442272442290%_
                              (lambda (_%rest442287%_ _%path442288%_)
                                (if (member _%path442288%_ _%result442267%_)
                                    (_%loop442264%_
                                     _%rest442287%_
                                     _%result442267%_)
                                    (_%loop442264%_
                                     _%rest442287%_
                                     (cons _%path442288%_
                                           _%result442267%_))))))
                        (if (pair? _%rest442268442276%_)
                            (let ((_%hd442273442293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest442268442276%_)))
                                  (_%tl442274442295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest442268442276%_))))
                              (let* ((_%path442298%_ _%hd442273442293%_)
                                     (_%rest442300%_ _%tl442274442295%_))
                                (_%K442272442290%_
                                 _%rest442300%_
                                 _%path442298%_)))
                            (_%else442270442284%_))))))
                 (_%compile-stub442077%_
                  (lambda (_%output-scm442084%_ _%output-bin442085%_)
                    (let* ((_%gerbil-home442087%_
                            (let ((__tmp442651
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp442651)))
                           (_%gerbil-libdir442089%_
                            (path-expand '"lib" _%gerbil-home442087%_))
                           (_%gerbil-staticdir442091%_
                            (path-expand '"static" _%gerbil-libdir442089%_))
                           (_%deps442093%_
                            (gxc#find-runtime-module-deps _%ctx442063%_))
                           (_%libgerbil-deps442095%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?442072%_
                               _%deps442093%_)))
                           (_%libgerbil-scm442097%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps442095%_)))
                           (_%libgerbil-scm442099%_
                            (_%fold-libgerbil-runtime-scm442075%_
                             _%gerbil-staticdir442091%_
                             _%libgerbil-scm442097%_))
                           (_%libgerbil-c442101%_
                            (map _%replace-extension-with-c442069%_
                                 _%libgerbil-scm442099%_))
                           (_%libgerbil-o442103%_
                            (map _%replace-extension-with-object442070%_
                                 _%libgerbil-scm442099%_))
                           (_%src-deps442105%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?442071%_
                               _%deps442093%_)))
                           (_%src-deps-scm442107%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps442105%_)))
                           (_%src-deps-scm442109%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?442074%_
                               _%src-deps-scm442107%_)))
                           (_%src-deps-scm442111%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm442109%_)))
                           (_%src-deps-c442113%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c442069%_
                                     _%src-deps-scm442111%_)))
                           (_%src-deps-o442115%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object442070%_
                                     _%src-deps-scm442111%_)))
                           (_%src-bin-scm442117%_
                            (gxc#find-static-module-file _%ctx442063%_))
                           (_%src-bin-scm442119%_
                            (path-expand _%src-bin-scm442117%_))
                           (_%src-bin-c442121%_
                            (_%replace-extension-with-c442069%_
                             _%src-bin-scm442119%_))
                           (_%src-bin-o442123%_
                            (_%replace-extension-with-object442070%_
                             _%src-bin-scm442119%_))
                           (_%output-bin442125%_
                            (path-expand _%output-bin442085%_))
                           (_%output-scm442127%_
                            (path-expand _%output-scm442084%_))
                           (_%output-c442129%_
                            (_%replace-extension-with-c442069%_
                             _%output-scm442127%_))
                           (_%output-o442131%_
                            (_%replace-extension-with-object442070%_
                             _%output-scm442127%_))
                           (_%output_-c442133%_
                            (_%replace-extension442068%_
                             _%output-scm442127%_
                             '"_.c"))
                           (_%output_-o442135%_
                            (_%replace-extension442068%_
                             _%output-scm442127%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts442137%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts442139%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts442141%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir442091%_))
                           (_%output-ld-opts442143%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts442145%_
                            (_%get-libgerbil-ld-opts442067%_
                             _%gerbil-libdir442089%_))
                           (_%rpath442147%_
                            (gxc#gerbil-rpath _%gerbil-libdir442089%_))
                           (_%builtin-modules442151%_
                            (_%remove-duplicates442076%_
                             (let ((__tmp442652
                                    (let ((__tmp442654
                                           (lambda (_%mod442149%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod442149%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp442653
                                           (cons _%ctx442063%_
                                                 _%deps442093%_)))
                                      (declare (not safe))
                                      (##map __tmp442654 __tmp442653))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp442652)))))
                      (letrec ((_%compile-obj442154%_
                                (lambda (_%scm-path442161%_ _%c-path442162%_)
                                  (let* ((_%o-path442164%_
                                          (_%replace-extension442068%_
                                           _%c-path442162%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock442166%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path442164%_
                                             '".lock")))
                                         (_%locked442168%_ '#f)
                                         (_%unlock442171%_
                                          (lambda ()
                                            (close-port _%locked442168%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock442166%_)))))
                                    (let _%retry442174%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock442166%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry442174%_))
                                          (begin
                                            (set! _%locked442168%_
                                                  (let* ((_%handler442177%_
                                                          false)
                                                         (_%thunk442181%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock442166%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler442186%_ _%handler442177%_)
                 (_%thunk442242%_ _%thunk442181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler442186%_
                                                     _%thunk442242%_)))
                                            (if _%locked442168%_
                                                '#!void
                                                (_%retry442174%_)))))
                                    (let ((__tmp442656
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path442164%_)))
                                                     (not _%scm-path442161%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path442161%_
                                                        _%o-path442164%_)))
                                                 (let ((_%gsc-cc-opts442259%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp442657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp442658 (cons _%c-path442162%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp442658
                            _%gsc-static-opts442141%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp442657 _%gsc-cc-opts442259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp442655
                                           (lambda () (_%unlock442171%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp442656
                                       __tmp442655))))))
                        (let ((__tmp442659
                               (lambda ()
                                 (let ((__tmp442660
                                        (path-directory _%output-bin442125%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp442660)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp442659))
                        (gxc#with-output-to-scheme-file
                         _%output-scm442127%_
                         (lambda ()
                           (_%generate-stub442066%_
                            _%builtin-modules442151%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it442159%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp442661
                                                   (let ((__tmp442662
                                                          (let ((__tmp442663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm442119%_
                               (cons _%output-scm442127%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp442663 _%src-deps-scm442111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp442662
                                                      _%libgerbil-c442101%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp442661
                                               _%gsc-link-opts442137%_))))
                                     (for-each
                                      _%compile-obj442154%_
                                      (let ((__tmp442664
                                             (cons _%src-bin-scm442119%_
                                                   (cons _%output-scm442127%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp442664
                                         _%src-deps-scm442111%_))
                                      (let ((__tmp442665
                                             (cons _%src-bin-c442121%_
                                                   (cons _%output-c442129%_
                                                         (cons _%output_-c442133%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp442665
                                         _%src-deps-c442113%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin442125%_
                                                        (let ((__tmp442666
                                                               (cons _%src-bin-o442123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o442131%_
                                   (cons _%output_-o442135%_
                                         (let ((__tmp442667
                                                (let ((__tmp442668
                                                       (let ((__tmp442670
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir442089%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts442145%_))))
                     (__tmp442669
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath442147%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp442670 __tmp442669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp442668
                                                   _%output-ld-opts442143%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp442667
                                            _%libgerbil-o442103%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp442666 _%src-deps-o442115%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp442671
                                            (cons _%output-c442129%_
                                                  (cons _%output_-c442133%_
                                                        (cons _%output-o442131%_
                                                              (cons _%output_-o442135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp442671)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it442159%_))
                                  (_%compile-it442159%_)))
                            '#!void))))))
          (let* ((_%output-bin442079%_
                  (gxc#compile-exe-output-file _%ctx442063%_ _%opts442064%_))
                 (_%output-scm442081%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin442079%_ '"__exe.scm"))))
            (_%compile-stub442077%_
             _%output-scm442081%_
             _%output-bin442079%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx441885%_ _%opts441886%_)
        (letrec ((_%reset-declare441888%_
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
                 (_%generate-stub441889%_
                  (lambda (_%deps442054%_)
                    (let ((_%mod-main442056%_
                           (gxc#find-runtime-symbol _%ctx441885%_ 'main))
                          (_%reset-decl442057%_ (_%reset-declare441888%_))
                          (_%user-decl442058%_ (_%user-declare441890%_)))
                      (for-each
                       (lambda (_%dep442060%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl442057%_))
                         (newline)
                         (if _%user-decl442058%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl442058%_))
                               (newline))
                             '#!void)
                         (let ((__tmp442672
                                (cons 'include (cons _%dep442060%_ '()))))
                           (declare (not safe))
                           (##write __tmp442672))
                         (newline))
                       _%deps442054%_)
                      (let ((__tmp442673
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main442056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp442673))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare441890%_
                  (lambda ()
                    (let* ((_%gsc-opts441959%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts441886%_)))
                           (_%gsc-prelude441961%_
                            (if _%gsc-opts441959%_
                                (member '"-prelude" _%gsc-opts441959%_)
                                '#f))
                           (_%gsc-prelude441963%_
                            (if _%gsc-prelude441961%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude441961%_)))
                                '#f)))
                      (let _%lp441966%_ ((_%rest441968%_
                                          (cons _%gsc-prelude441963%_ '()))
                                         (_%user-decls441969%_ '()))
                        (let* ((_%rest441970441978%_ _%rest441968%_)
                               (_%else441972441986%_
                                (lambda ()
                                  (if (null? _%user-decls441969%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls441969%_)))))
                               (_%K441974442042%_
                                (lambda (_%rest441989%_ _%expr441990%_)
                                  (let* ((_%expr441991442003%_ _%expr441990%_)
                                         (_%else441994442011%_
                                          (lambda ()
                                            (_%lp441966%_
                                             _%rest441989%_
                                             _%user-decls441969%_))))
                                    (let ((_%K441999442032%_
                                           (lambda (_%decls442030%_)
                                             (_%lp441966%_
                                              _%rest441989%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls441969%_
                                                 _%decls442030%_)))))
                                          (_%K441996442017%_
                                           (lambda (_%exprs442015%_)
                                             (_%lp441966%_
                                              (append _%exprs442015%_
                                                      _%rest441989%_)
                                              _%user-decls441969%_))))
                                      (if (pair? _%expr441991442003%_)
                                          (let ((_%tl442001442037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr441991442003%_)))
                                                (_%hd442000442035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr441991442003%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd442000442035%_
                                                         'declare))
                                                (let ((_%decls442040%_
                                                       _%tl442001442037%_))
                                                  (_%K441999442032%_
                                                   _%decls442040%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd442000442035%_
                                                             'begin))
                                                    (let ((_%exprs442025%_
                                                           _%tl442001442037%_))
                                                      (_%K441996442017%_
                                                       _%exprs442025%_))
                                                    (_%else441994442011%_))))
                                          (_%else441994442011%_)))))))
                          (if (pair? _%rest441970441978%_)
                              (let ((_%hd441975442045%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest441970441978%_)))
                                    (_%tl441976442047%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest441970441978%_))))
                                (let* ((_%expr442050%_ _%hd441975442045%_)
                                       (_%rest442052%_ _%tl441976442047%_))
                                  (_%K441974442042%_
                                   _%rest442052%_
                                   _%expr442050%_)))
                              (_%else441972441986%_)))))))
                 (_%compile-stub441891%_
                  (lambda (_%output-scm441898%_ _%output-bin441899%_)
                    (let* ((_%gerbil-home441901%_
                            (let ((__tmp442674
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp442674)))
                           (_%gerbil-libdir441903%_
                            (path-expand '"lib" _%gerbil-home441901%_))
                           (_%runtime441905%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp441907%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home441901%_))
                           (_%include-gambit-sharp441909%_
                            (gxc#include-source _%gambit-sharp441907%_))
                           (_%bin-scm441911%_
                            (gxc#find-static-module-file _%ctx441885%_))
                           (_%deps441913%_
                            (gxc#find-runtime-module-deps _%ctx441885%_))
                           (_%deps441915%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps441913%_)))
                           (_%deps441920%_
                            (let ((__tmp442675
                                   (lambda (_%$obj441917%_)
                                     (not (gxc#file-empty? _%$obj441917%_)))))
                              (declare (not safe))
                              (##filter __tmp442675 _%deps441915%_)))
                           (_%deps441924%_
                            (let ((__tmp442676
                                   (lambda (_%f441922%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f441922%_
                                             _%runtime441905%_))))))
                              (declare (not safe))
                              (##filter __tmp442676 _%deps441920%_)))
                           (_%output-base441926%_
                            (let ((__tmp442677
                                   (path-strip-extension
                                    _%output-scm441898%_)))
                              (declare (not safe))
                              (##string-append __tmp442677)))
                           (_%output-c441928%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base441926%_ '".c")))
                           (_%output-o441930%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base441926%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_441932%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base441926%_ '"_.c")))
                           (_%output-o_441934%_
                            (let ((__tmp442678
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base441926%_
                               __tmp442678)))
                           (_%gsc-link-opts441936%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts441938%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts441940%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir441903%_)))
                           (_%output-ld-opts441942%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros441944%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp441909%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp441909%_
                                            '()))))
                           (_%gsc-link-opts441946%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts441936%_
                               _%gsc-gx-macros441944%_)))
                           (_%rpath441948%_
                            (gxc#gerbil-rpath _%gerbil-libdir441903%_))
                           (_%default-ld-options441950%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp442679
                             (lambda ()
                               (let ((__tmp442680
                                      (path-directory _%output-bin441899%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp442680)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp442679))
                      (gxc#with-output-to-scheme-file
                       _%output-scm441898%_
                       (lambda ()
                         (_%generate-stub441889%_
                          (let ((__tmp442681
                                 (let ((__tmp442682
                                        (cons _%bin-scm441911%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp442682
                                    _%deps441924%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp442681 _%runtime441905%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it441956%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_441932%_
                                                      (let ((__tmp442683
                                                             (cons _%output-scm441898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp442683 _%gsc-link-opts441946%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp442684
                                                 (let ((__tmp442685
                                                        (cons _%output-c441928%_
                                                              (cons _%output-c_441932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp442685
                                                    _%gsc-static-opts441940%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp442684
                                             _%gsc-cc-opts441938%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin441899%_
                                                      (cons _%output-o441930%_
                                                            (cons _%output-o_441934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp442686
                                 (let ((__tmp442688
                                        (cons '"-L"
                                              (cons _%gerbil-libdir441903%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options441950%_))))
                                       (__tmp442687
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath441948%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp442688 __tmp442687))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp442686
                             _%output-ld-opts441942%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it441956%_))
                                (_%compile-it441956%_)))
                          '#!void)))))
          (let* ((_%output-bin441893%_
                  (gxc#compile-exe-output-file _%ctx441885%_ _%opts441886%_))
                 (_%output-scm441895%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin441893%_ '"__exe.scm"))))
            (_%compile-stub441891%_
             _%output-scm441895%_
             _%output-bin441893%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx441834%_ _%id441835%_)
        (let ((_%$e441881%_
               (let ((__tmp442690
                      (lambda (_%e441836441838%_)
                        (let* ((_%e441836441840441850%_ _%e441836441838%_)
                               (_%else441842441858%_ (lambda () '#f))
                               (_%K441844441862%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e441836441840441850%_
                                 'gx#module-export::t))
                              (let* ((_%e441845441865%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e441836441840441850%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e441846441868%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e441836441840441850%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e441847441871%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e441836441840441850%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e441847441871%_ '0))
                                    (let ((_%e441848441874%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e441836441840441850%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g441876441878%_)
                                             (eq? _%g441876441878%_
                                                  _%id441835%_))
                                           _%e441848441874%_)
                                          (_%K441844441862%_)
                                          (_%else441842441858%_)))
                                    (_%else441842441858%_)))
                              (_%else441842441858%_)))))
                     (__tmp442689
                      (##structure-ref
                       _%ctx441834%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp442690 __tmp442689))))
          (if _%$e441881%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e441881%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx441825%_ _%id441826%_)
        (let ((_%$e441828%_
               (gxc#find-export-binding _%ctx441825%_ _%id441826%_)))
          (if _%$e441828%_
              ((lambda (_%bind441831%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind441831%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id441826%_)))
                 (##structure-ref _%bind441831%_ '1 gx#binding::t '#f))
               _%$e441828%_)
              (let ((__tmp442691
                     (##structure-ref
                      _%ctx441825%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp442691
                 _%id441826%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx441691%_)
        (letrec* ((_%ht441693%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template441694%_
                   (lambda (_%in441770%_ _%phi441771%_)
                     (let ((_%iphi441773%_
                            (fx+ _%phi441771%_
                                 (##direct-structure-ref
                                  _%in441770%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports441774%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in441770%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp441776%_ ((_%rest441778%_ _%imports441774%_)
                                          (_%r441779%_ '()))
                         (let* ((_%rest441780441788%_ _%rest441778%_)
                                (_%else441782441796%_ (lambda () _%r441779%_))
                                (_%K441784441813%_
                                 (lambda (_%rest441799%_ _%in441800%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in441800%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi441773%_))
                                           (_%lp441776%_
                                            _%rest441799%_
                                            (cons _%in441800%_ _%r441779%_))
                                           (_%lp441776%_
                                            _%rest441799%_
                                            _%r441779%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in441800%_
                                              'gx#module-import::t))
                                           (let ((_%iphi441804%_
                                                  (fx+ _%phi441771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in441800%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi441804%_))
                                                 (_%lp441776%_
                                                  _%rest441799%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in441800%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r441779%_))
                                                 (_%lp441776%_
                                                  _%rest441799%_
                                                  _%r441779%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in441800%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi441807%_
                                                      (fx+ _%iphi441773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in441800%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi441807%_))
                                                     (_%lp441776%_
                                                      _%rest441799%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in441800%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r441779%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi441807%_))
                                                         (_%lp441776%_
                                                          _%rest441799%_
                                                          (let ((__tmp442692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template441694%_
                          _%in441800%_
                          _%iphi441773%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r441779%_ __tmp442692)))
                 (_%lp441776%_ _%rest441799%_ _%r441779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp441776%_
                                                _%rest441799%_
                                                _%r441779%_)))))))
                           (if (pair? _%rest441780441788%_)
                               (let ((_%hd441785441816%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest441780441788%_)))
                                     (_%tl441786441818%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest441780441788%_))))
                                 (let* ((_%in441821%_ _%hd441785441816%_)
                                        (_%rest441823%_ _%tl441786441818%_))
                                   (_%K441784441813%_
                                    _%rest441823%_
                                    _%in441821%_)))
                               (_%else441782441796%_)))))))
                  (_%find-deps441695%_
                   (lambda (_%rest441703%_ _%deps441704%_)
                     (let* ((_%rest441705441713%_ _%rest441703%_)
                            (_%else441707441721%_ (lambda () _%deps441704%_))
                            (_%K441709441758%_
                             (lambda (_%rest441724%_ _%hd441725%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd441725%_
                                      'gx#module-context::t))
                                   (let ((_%id441728%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd441725%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports441729%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd441725%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht441693%_
                                            _%id441728%_))
                                         (_%find-deps441695%_
                                          _%rest441724%_
                                          _%deps441704%_)
                                         (let ((_%$e441732%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd441725%_))))
                                           (if _%$e441732%_
                                               ((lambda (_%pre441735%_)
                                                  (let ((_%xdeps441737%_
                                                         (_%find-deps441695%_
                                                          (cons _%pre441735%_
                                                                _%imports441729%_)
                                                          _%deps441704%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht441693%_
                                                       _%id441728%_
                                                       _%hd441725%_))
                                                    (_%find-deps441695%_
                                                     _%rest441724%_
                                                     (cons _%hd441725%_
                                                           _%xdeps441737%_))))
                                                _%$e441732%_)
                                               (let ((_%xdeps441740%_
                                                      (_%find-deps441695%_
                                                       _%imports441729%_
                                                       _%deps441704%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht441693%_
                                                    _%id441728%_
                                                    _%hd441725%_))
                                                 (_%find-deps441695%_
                                                  _%rest441724%_
                                                  (cons _%hd441725%_
                                                        _%xdeps441740%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd441725%_
                                          'gx#prelude-context::t))
                                       (let ((_%id441743%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd441725%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht441693%_
                                                _%id441743%_))
                                             (_%find-deps441695%_
                                              _%rest441724%_
                                              _%deps441704%_)
                                             (let ((_%xdeps441747%_
                                                    (_%find-deps441695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd441725%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps441704%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht441693%_
                                                      _%id441743%_))
                                                   (_%find-deps441695%_
                                                    _%rest441724%_
                                                    _%xdeps441747%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht441693%_
                                                        _%id441743%_
                                                        _%hd441725%_))
                                                     (_%find-deps441695%_
                                                      _%rest441724%_
                                                      (cons _%hd441725%_
                                                            _%xdeps441747%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd441725%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd441725%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps441695%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd441725%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest441724%_)
                                                _%deps441704%_)
                                               (_%find-deps441695%_
                                                _%rest441724%_
                                                _%deps441704%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd441725%_
                                                  'gx#module-export::t))
                                               (_%find-deps441695%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd441725%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest441724%_)
                                                _%deps441704%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd441725%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd441725%_ '2 '#f '#f)))
               (_%find-deps441695%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd441725%_ '1 '#f '#f))
                      _%rest441724%_)
                _%deps441704%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd441725%_ '2 '#f '#f)))
                   (let ((_%xdeps441754%_
                          (_%import-set-template441694%_ _%hd441725%_ '0)))
                     (_%find-deps441695%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest441724%_ _%xdeps441754%_))
                      _%deps441704%_))
                   (_%find-deps441695%_ _%rest441724%_ _%deps441704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd441725%_))))))))))
                       (if (pair? _%rest441705441713%_)
                           (let ((_%hd441710441761%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest441705441713%_)))
                                 (_%tl441711441763%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest441705441713%_))))
                             (let* ((_%hd441766%_ _%hd441710441761%_)
                                    (_%rest441768%_ _%tl441711441763%_))
                               (_%K441709441758%_
                                _%rest441768%_
                                _%hd441766%_)))
                           (_%else441707441721%_))))))
          (let ((__tmp442693
                 (filter gx#expander-context-id
                         (_%find-deps441695%_
                          (let ((_%$e441697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx441691%_))))
                            (if _%$e441697%_
                                ((lambda (_%pre441700%_)
                                   (cons _%pre441700%_
                                         (##structure-ref
                                          _%ctx441691%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e441697%_)
                                (##structure-ref
                                 _%ctx441691%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp442693)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx441621%_)
        (let* ((_%context-id441623%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx441621%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx441621%_ '1 '#f '#f))
                    (string->symbol _%ctx441621%_)))
               (_%scm441625%_
                (let ((__tmp442694
                       (gxc#static-module-name _%context-id441623%_)))
                  (declare (not safe))
                  (##string-append __tmp442694 '".scm")))
               (_%dirs441627%_ (let () (declare (not safe)) (load-path)))
               (_%dirs441633%_
                (let ((_%user-libpath441629%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath441629%_
                      (let ((_%user-libpath441631%_
                             (path-expand '"lib" _%user-libpath441629%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath441631%_ _%dirs441627%_))
                            _%dirs441627%_
                            (cons _%user-libpath441631%_ _%dirs441627%_)))
                      _%dirs441627%_)))
               (_%dirs441643%_
                (let ((_%$e441635%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e441635%_
                      ((lambda (_%g441637441639%_)
                         (cons _%g441637441639%_ _%dirs441633%_))
                       _%$e441635%_)
                      _%dirs441633%_)))
               (_%dirs441649%_
                (let ((__tmp442695
                       (lambda (_%g441644441646%_)
                         (path-expand '"static" _%g441644441646%_))))
                  (declare (not safe))
                  (##map __tmp442695 _%dirs441643%_))))
          (let _%lp441652%_ ((_%rest441654%_ _%dirs441649%_))
            (let* ((_%rest441655441663%_ _%rest441654%_)
                   (_%else441657441671%_
                    (lambda ()
                      (let ((__tmp442696
                             (##structure-ref
                              _%ctx441621%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp442696
                         _%scm441625%_))))
                   (_%K441659441679%_
                    (lambda (_%rest441674%_ _%dir441675%_)
                      (let ((_%path441677%_
                             (path-expand _%scm441625%_ _%dir441675%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path441677%_))
                            _%path441677%_
                            (_%lp441652%_ _%rest441674%_))))))
              (if (pair? _%rest441655441663%_)
                  (let ((_%hd441660441682%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest441655441663%_)))
                        (_%tl441661441684%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest441655441663%_))))
                    (let* ((_%dir441687%_ _%hd441660441682%_)
                           (_%rest441689%_ _%tl441661441684%_))
                      (_%K441659441679%_ _%rest441689%_ _%dir441687%_)))
                  (_%else441657441671%_)))))))
    (define gxc#file-empty?
      (lambda (_%path441619%_)
        (zero? (let ((__tmp442697 (file-info _%path441619%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp442697)))))
    (define gxc#compile-top-module
      (lambda (_%ctx441610%_)
        (let ((__tmp442698
               (lambda ()
                 (let ((__tmp442699
                        (lambda ()
                          (let ((__tmp442700
                                 (lambda ()
                                   (let ((__tmp442702
                                          (lambda ()
                                            (let ((__tmp442704
                                                   (lambda ()
                                                     (let ((__tmp442706
                                                            (lambda ()
                                                              (let ((__tmp442707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx441610%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp442707))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp442708
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx441610%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp442708))
                          '#!void)
                      (gxc#collect-bindings _%ctx441610%_)
                      (gxc#compile-runtime-code _%ctx441610%_)
                      (gxc#compile-meta-code _%ctx441610%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx441610%_)
                          '#!void)))
                   (__tmp442705
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
                __tmp442706
                gxc#current-compile-runtime-names
                __tmp442705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp442703
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp442704
                                               gxc#current-compile-runtime-sections
                                               __tmp442703))))
                                         (__tmp442701
                                          (let ((__obj442599
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj442599))
                                            __obj442599)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp442702
                                      gxc#current-compile-symbol-table
                                      __tmp442701)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp442700
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp442699
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp442698
           gx#current-expander-context
           _%ctx441610%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx441608%_)
        (let ((__tmp442709
               (##structure-ref _%ctx441608%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp442709))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx441553%_)
        (letrec ((_%compile1441555%_
                  (lambda (_%ctx441597%_)
                    (let* ((_%code441599%_
                            (##structure-ref
                             _%ctx441597%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm441603%_
                            (let ((_%idstr441601%_
                                   (let ((__tmp442710
                                          (##structure-ref
                                           _%ctx441597%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp442710))))
                              (declare (not safe))
                              (##string-append _%idstr441601%_ '"~0")))
                           (_%rtc?441605%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code441599%_))))
                      (if _%rtc?441605%_
                          (let ((__tmp442711
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp442711
                             _%ctx441597%_
                             _%rtm441603%_))
                          '#!void)
                      (_%generate-runtime-code441557%_
                       _%ctx441597%_
                       _%code441599%_
                       (if _%rtc?441605%_ _%rtm441603%_ '#f)))))
                 (_%context-timestamp441556%_
                  (lambda (_%ctx441595%_)
                    (let ((__tmp442712
                           (let ((__tmp442713
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx441595%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp442713 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp442712))))
                 (_%generate-runtime-code441557%_
                  (lambda (_%ctx441564%_ _%code441565%_ _%rtm441566%_)
                    (let* ((_%runtime-code?441568%_ (if _%rtm441566%_ '#t '#f))
                           (_%lifts441570%_ (box '()))
                           (_%runtime-code441576%_
                            (if _%runtime-code?441568%_
                                (let ((__tmp442714
                                       (lambda ()
                                         (let ((__tmp442715
                                                (lambda ()
                                                  (let ((__tmp442716
                                                         (lambda ()
                                                           (let ((__tmp442718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code441565%_))))
                         (__tmp442717
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp442718
                      gxc#current-compile-marks
                      __tmp442717)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp442716
                                                     gxc#current-compile-lift
                                                     _%lifts441570%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp442715
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp442714
                                   gx#current-expander-context
                                   _%ctx441564%_))
                                '#f))
                           (_%runtime-code441578%_
                            (if _%runtime-code?441568%_
                                (if (null? (unbox _%lifts441570%_))
                                    _%runtime-code441576%_
                                    (cons 'begin
                                          (let ((__tmp442720
                                                 (cons _%runtime-code441576%_
                                                       '()))
                                                (__tmp442719
                                                 (reverse (unbox _%lifts441570%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp442720
                                             __tmp442719))))
                                '#f))
                           (_%runtime-code441580%_
                            (if _%runtime-code?441568%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp441556%_
                                                         _%ctx441564%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code441578%_ '())))
                                '#f))
                           (_%loader-code441583%_
                            (let ((__tmp442721
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code441565%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp442721
                               gx#current-expander-context
                               _%ctx441564%_)))
                           (_%loader-code441585%_
                            (cons 'begin
                                  (cons _%loader-code441583%_
                                        (cons (if _%runtime-code?441568%_
                                                  (cons 'load-module
                                                        (cons _%rtm441566%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0441587%_
                            (gxc#compile-output-file _%ctx441564%_ '0 '".scm"))
                           (_%scmrt441589%_
                            (gxc#compile-output-file
                             _%ctx441564%_
                             '#f
                             '".scm"))
                           (_%scms441591%_
                            (gxc#compile-static-output-file _%ctx441564%_)))
                      (if _%runtime-code?441568%_
                          (gxc#compile-scm-file__0
                           _%scm0441587%_
                           _%runtime-code441580%_)
                          '#!void)
                      (let ((__tmp442722
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt441589%_
                                _%loader-code441585%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp442722
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms441591%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms441591%_))
                          '#!void)
                      (if _%runtime-code?441568%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0441587%_ _%scms441591%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms441591%_ void)))))))
          (let* ((_%all-modules441559%_
                  (cons _%ctx441553%_ (gxc#lift-nested-modules _%ctx441553%_)))
                 (__tmp442723
                  (lambda (_%ctx441561%_)
                    (let ((__tmp442724
                           (lambda () (_%compile1441555%_ _%ctx441561%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp442724
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp442723 _%all-modules441559%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx441452%_)
        (letrec ((_%compile-ssi441454%_
                  (lambda (_%code441521%_)
                    (let* ((_%path441523%_
                            (gxc#compile-output-file
                             _%ctx441452%_
                             '#f
                             '".ssi"))
                           (_%prelude441535%_
                            (let* ((_%super441525%_
                                    (##structure-ref
                                     _%ctx441452%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e441527%_
                                    (##structure-ref
                                     _%super441525%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e441527%_
                                  ((lambda (_%g441529441531%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g441529441531%_)))
                                   _%$e441527%_)
                                  ':<root>)))
                           (_%ns441537%_
                            (##structure-ref
                             _%ctx441452%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr441539%_
                            (symbol->string
                             (##structure-ref
                              _%ctx441452%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg441547%_
                            (let ((_%$e441541%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr441539%_ '#\/))))
                              (if _%$e441541%_
                                  ((lambda (_%x441544%_)
                                     (let ((__tmp442725
                                            (substring
                                             _%idstr441539%_
                                             '0
                                             _%x441544%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp442725)))
                                   _%$e441541%_)
                                  '#f)))
                           (_%rt441549%_
                            (let ((__tmp442726
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp442726 _%ctx441452%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path441523%_))
                      (gxc#with-output-to-scheme-file
                       _%path441523%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude441535%_))
                         (if _%pkg441547%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg441547%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns441537%_))
                         (newline)
                         (pretty-print _%code441521%_)
                         (if _%rt441549%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt441549%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi441455%_
                  (lambda (_%part441460%_)
                    (let* ((_%part441461441474%_ _%part441460%_)
                           (_%E441463441478%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part441461441474%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K441464441490%_
                            (lambda (_%code441481%_
                                     _%n441482%_
                                     _%phi441483%_
                                     _%phi-ctx441484%_)
                              (let ((_%code441488%_
                                     (let ((__tmp442727
                                            (lambda ()
                                              (let ((__tmp442728
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code441481%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp442728
                                                 gx#current-expander-phi
                                                 _%phi441483%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp442727
                                        gx#current-expander-context
                                        _%phi-ctx441484%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx441452%_
                                  _%n441482%_
                                  '".scm")
                                 _%code441488%_
                                 '#t)))))
                      (if (pair? _%part441461441474%_)
                          (let ((_%hd441465441493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part441461441474%_)))
                                (_%tl441466441495%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part441461441474%_))))
                            (let ((_%phi-ctx441498%_ _%hd441465441493%_))
                              (if (pair? _%tl441466441495%_)
                                  (let ((_%hd441467441500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl441466441495%_)))
                                        (_%tl441468441502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl441466441495%_))))
                                    (let ((_%phi441505%_ _%hd441467441500%_))
                                      (if (pair? _%tl441468441502%_)
                                          (let ((_%hd441469441507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl441468441502%_)))
                                                (_%tl441470441509%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl441468441502%_))))
                                            (let ((_%n441512%_
                                                   _%hd441469441507%_))
                                              (if (pair? _%tl441470441509%_)
                                                  (let ((_%hd441471441514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl441470441509%_)))
                                                        (_%tl441472441516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl441470441509%_))))
                                                    (let ((_%code441519%_
                                                           _%hd441471441514%_))
                                                      (if (null? _%tl441472441516%_)
                                                          (_%K441464441490%_
                                                           _%code441519%_
                                                           _%n441512%_
                                                           _%phi441505%_
                                                           _%phi-ctx441498%_)
                                                          (_%E441463441478%_))))
                                                  (_%E441463441478%_))))
                                          (_%E441463441478%_))))
                                  (_%E441463441478%_))))
                          (_%E441463441478%_))))))
          (let ((_g442729_ (gxc#generate-meta-code _%ctx441452%_)))
            (begin
              (let ((_g442730_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g442729_)
                           (##values-length _g442729_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g442730_ 2)))
                    (error "Context expects 2 values" _g442730_)))
              (let ((_%ssi-code441457%_
                     (let () (declare (not safe)) (##values-ref _g442729_ 0)))
                    (_%phi-code441458%_
                     (let () (declare (not safe)) (##values-ref _g442729_ 1))))
                (begin
                  (_%compile-ssi441454%_ _%ssi-code441457%_)
                  (for-each _%compile-phi441455%_ _%phi-code441458%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx441434%_)
        (let* ((_%path441436%_
                (gxc#compile-output-file _%ctx441434%_ '#f '".ssxi.ss"))
               (_%code441438%_
                (let ((__tmp442731
                       (##structure-ref
                        _%ctx441434%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp442731)))
               (_%idstr441440%_
                (symbol->string
                 (##structure-ref
                  _%ctx441434%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg441448%_
                (let ((_%$e441442%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr441440%_ '#\/))))
                  (if _%$e441442%_
                      ((lambda (_%x441445%_)
                         (let ((__tmp442732
                                (substring _%idstr441440%_ '0 _%x441445%_)))
                           (declare (not safe))
                           (##string->symbol __tmp442732)))
                       _%$e441442%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path441436%_))
          (gxc#with-output-to-scheme-file
           _%path441436%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg441448%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg441448%_))
                 '#!void)
             (newline)
             (pretty-print _%code441438%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx441427%_)
        (let* ((_%state441429%_
                (let ((__obj442600
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj442600 _%ctx441427%_))
                  __obj442600))
               (_%ssi-code441431%_
                (let ((__tmp442733
                       (##structure-ref
                        _%ctx441427%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state441429%_
                   __tmp442733))))
          (values _%ssi-code441431%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state441429%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx441419%_)
        (let* ((_%lifts441421%_ (box '()))
               (__tmp442734
                (lambda ()
                  (let ((__tmp442736
                         (lambda ()
                           (let ((_%code441425%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx441419%_))))
                             (if (null? (unbox _%lifts441421%_))
                                 _%code441425%_
                                 (cons 'begin
                                       (let ((__tmp442738
                                              (cons _%code441425%_ '()))
                                             (__tmp442737
                                              (reverse (unbox _%lifts441421%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp442738
                                          __tmp442737)))))))
                        (__tmp442735
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp442736
                     gxc#current-compile-marks
                     __tmp442735)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp442734
           gxc#current-compile-lift
           _%lifts441421%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx441415%_)
        (let ((_%modules441417%_ (box '())))
          (let ((__tmp442739
                 (##structure-ref _%ctx441415%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules441417%_ __tmp442739))
          (reverse (unbox _%modules441417%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path441395%_ _%code441396%_ _%phi?441397%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path441395%_))
        (gxc#with-output-to-scheme-file
         _%path441395%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp442740
                                           (if _%phi?441397%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp442740)))))))
           (pretty-print _%code441396%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it441401%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path441395%_ _%phi?441397%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp442741
                         (cons 'compile-file (cons _%path441395%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it441401%_ __tmp442741))
                  (_%compile-it441401%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path441406%_ _%code441407%_)
        (let ((_%phi?441409%_ '#f))
          (gxc#compile-scm-file__%
           _%path441406%_
           _%code441407%_
           _%phi?441409%_))))
    (define gxc#compile-scm-file
      (lambda _g442742_
        (let ((_g442743_ (let () (declare (not safe)) (##length _g442742_))))
          (cond ((let () (declare (not safe)) (##fx= _g442743_ 2))
                 (apply gxc#compile-scm-file__0 _g442742_))
                ((let () (declare (not safe)) (##fx= _g442743_ 3))
                 (apply gxc#compile-scm-file__% _g442742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g442742_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?441296%_)
        (let _%lp441298%_ ((_%rest441300%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts441301%_ '()))
          (let* ((_%rest441302441322%_ _%rest441300%_)
                 (_%else441306441330%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts441301%_)))
                        (reverse _%opts441301%_)))))
            (let ((_%K441316441373%_
                   (lambda (_%rest441371%_)
                     (_%lp441298%_ _%rest441371%_ _%opts441301%_)))
                  (_%K441311441355%_
                   (lambda (_%rest441353%_)
                     (_%lp441298%_ _%rest441353%_ _%opts441301%_)))
                  (_%K441308441337%_
                   (lambda (_%rest441334%_ _%opt441335%_)
                     (_%lp441298%_
                      _%rest441334%_
                      (cons _%opt441335%_ _%opts441301%_)))))
              (if (pair? _%rest441302441322%_)
                  (let ((_%tl441318441378%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest441302441322%_)))
                        (_%hd441317441376%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest441302441322%_))))
                    (if (equal? _%hd441317441376%_ '"-cc-options")
                        (if (pair? _%tl441318441378%_)
                            (let* ((_%tl441320441381%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl441318441378%_)))
                                   (_%rest441384%_ _%tl441320441381%_))
                              (_%K441316441373%_ _%rest441384%_))
                            (let ((_%opt441345%_ _%hd441317441376%_)
                                  (_%rest441347%_ _%tl441318441378%_))
                              (_%K441308441337%_
                               _%rest441347%_
                               _%opt441345%_)))
                        (if (equal? _%hd441317441376%_ '"-ld-options")
                            (if (pair? _%tl441318441378%_)
                                (let* ((_%tl441315441363%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl441318441378%_)))
                                       (_%rest441366%_ _%tl441315441363%_))
                                  (_%K441311441355%_ _%rest441366%_))
                                (let ((_%opt441345%_ _%hd441317441376%_)
                                      (_%rest441347%_ _%tl441318441378%_))
                                  (_%K441308441337%_
                                   _%rest441347%_
                                   _%opt441345%_)))
                            (let ((_%opt441345%_ _%hd441317441376%_)
                                  (_%rest441347%_ _%tl441318441378%_))
                              (_%K441308441337%_
                               _%rest441347%_
                               _%opt441345%_)))))
                  (_%else441306441330%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?441390%_ '#f)) (gxc#gsc-link-options__% _%phi?441390%_))))
    (define gxc#gsc-link-options
      (lambda _g442744_
        (let ((_g442745_ (let () (declare (not safe)) (##length _g442744_))))
          (cond ((let () (declare (not safe)) (##fx= _g442745_ 0))
                 (apply gxc#gsc-link-options__0 _g442744_))
                ((let () (declare (not safe)) (##fx= _g442745_ 1))
                 (apply gxc#gsc-link-options__% _g442744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g442744_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords441146%_ _%static?441142441147%_ _%phi?441148%_)
        (let ((_%static?441150%_
               (if (eq? _%static?441142441147%_ absent-value)
                   '#f
                   _%static?441142441147%_)))
          (if _%phi?441148%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp441152%_ ((_%rest441154%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts441155%_ '()))
                (let* ((_%rest441156441182%_ _%rest441154%_)
                       (_%else441161441190%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts441155%_)))
                              (reverse! _%opts441155%_)))))
                  (let ((_%K441176441253%_
                         (lambda (_%rest441250%_ _%opt441251%_)
                           (if _%static?441150%_
                               (_%lp441152%_
                                _%rest441250%_
                                (cons _%opt441251%_
                                      (cons '"-cc-options" _%opts441155%_)))
                               (_%lp441152%_ _%rest441250%_ _%opts441155%_))))
                        (_%K441171441230%_
                         (lambda (_%rest441227%_ _%opt441228%_)
                           (_%lp441152%_
                            _%rest441227%_
                            (cons _%opt441228%_
                                  (cons '"-cc-options" _%opts441155%_)))))
                        (_%K441166441210%_
                         (lambda (_%rest441208%_)
                           (_%lp441152%_ _%rest441208%_ _%opts441155%_)))
                        (_%K441163441196%_
                         (lambda (_%rest441194%_)
                           (_%lp441152%_ _%rest441194%_ _%opts441155%_))))
                    (if (pair? _%rest441156441182%_)
                        (let ((_%tl441178441258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest441156441182%_)))
                              (_%hd441177441256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest441156441182%_))))
                          (if (equal? _%hd441177441256%_ '"-cc-options")
                              (if (pair? _%tl441178441258%_)
                                  (let ((_%tl441180441263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl441178441258%_)))
                                        (_%hd441179441261%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl441178441258%_))))
                                    (if (equal? _%hd441179441261%_ '"-Bstatic")
                                        (let ((_%opt441266%_
                                               _%hd441179441261%_)
                                              (_%rest441268%_
                                               _%tl441180441263%_))
                                          (_%K441176441253%_
                                           _%rest441268%_
                                           _%opt441266%_))
                                        (let ((_%opt441243%_
                                               _%hd441179441261%_)
                                              (_%rest441245%_
                                               _%tl441180441263%_))
                                          (_%K441171441230%_
                                           _%rest441245%_
                                           _%opt441243%_))))
                                  (let ((_%rest441202%_ _%tl441178441258%_))
                                    (_%K441163441196%_ _%rest441202%_)))
                              (if (equal? _%hd441177441256%_ '"-ld-options")
                                  (if (pair? _%tl441178441258%_)
                                      (let* ((_%tl441170441218%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl441178441258%_)))
                                             (_%rest441221%_
                                              _%tl441170441218%_))
                                        (_%K441166441210%_ _%rest441221%_))
                                      (let ((_%rest441202%_
                                             _%tl441178441258%_))
                                        (_%K441163441196%_ _%rest441202%_)))
                                  (let ((_%rest441202%_ _%tl441178441258%_))
                                    (_%K441163441196%_ _%rest441202%_)))))
                        (_%else441161441190%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords441273%_ _%static?441142441274%_)
        (let ((_%phi?441276%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords441273%_
           _%static?441142441274%_
           _%phi?441276%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g442746_
        (let ((_g442747_ (let () (declare (not safe)) (##length _g442746_))))
          (cond ((let () (declare (not safe)) (##fx= _g442747_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g442746_))
                ((let () (declare (not safe)) (##fx= _g442747_ 3))
                 (apply gxc#gsc-cc-options__%__% _g442746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g442746_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords441285%_ . _%args441286%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords441285%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords441285%_
                  'static:
                  absent-value))
               _%args441286%_)))
    (define gxc#gsc-cc-options
      (lambda _%args441143441292%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args441143441292%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords440992%_ _%static?440988440993%_ _%phi?440994%_)
        (let ((_%static?440996%_
               (if (eq? _%static?440988440993%_ absent-value)
                   '#f
                   _%static?440988440993%_)))
          (if _%phi?440994%_
              '()
              (let _%lp440998%_ ((_%rest441000%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts441001%_ '()))
                (let* ((_%rest441002441028%_ _%rest441000%_)
                       (_%else441007441036%_
                        (lambda () (reverse! _%opts441001%_))))
                  (let ((_%K441022441099%_
                         (lambda (_%rest441096%_ _%opt441097%_)
                           (if _%static?440996%_
                               (_%lp440998%_
                                _%rest441096%_
                                (cons _%opt441097%_
                                      (cons '"-ld-options" _%opts441001%_)))
                               (_%lp440998%_ _%rest441096%_ _%opts441001%_))))
                        (_%K441017441076%_
                         (lambda (_%rest441073%_ _%opt441074%_)
                           (_%lp440998%_
                            _%rest441073%_
                            (cons _%opt441074%_
                                  (cons '"-ld-options" _%opts441001%_)))))
                        (_%K441012441056%_
                         (lambda (_%rest441054%_)
                           (_%lp440998%_ _%rest441054%_ _%opts441001%_)))
                        (_%K441009441042%_
                         (lambda (_%rest441040%_)
                           (_%lp440998%_ _%rest441040%_ _%opts441001%_))))
                    (if (pair? _%rest441002441028%_)
                        (let ((_%tl441024441104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest441002441028%_)))
                              (_%hd441023441102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest441002441028%_))))
                          (if (equal? _%hd441023441102%_ '"-ld-options")
                              (if (pair? _%tl441024441104%_)
                                  (let ((_%tl441026441109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl441024441104%_)))
                                        (_%hd441025441107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl441024441104%_))))
                                    (if (equal? _%hd441025441107%_ '"-static")
                                        (let ((_%opt441112%_
                                               _%hd441025441107%_)
                                              (_%rest441114%_
                                               _%tl441026441109%_))
                                          (_%K441022441099%_
                                           _%rest441114%_
                                           _%opt441112%_))
                                        (let ((_%opt441089%_
                                               _%hd441025441107%_)
                                              (_%rest441091%_
                                               _%tl441026441109%_))
                                          (_%K441017441076%_
                                           _%rest441091%_
                                           _%opt441089%_))))
                                  (let ((_%rest441048%_ _%tl441024441104%_))
                                    (_%K441009441042%_ _%rest441048%_)))
                              (if (equal? _%hd441023441102%_ '"-cc-options")
                                  (if (pair? _%tl441024441104%_)
                                      (let* ((_%tl441016441064%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl441024441104%_)))
                                             (_%rest441067%_
                                              _%tl441016441064%_))
                                        (_%K441012441056%_ _%rest441067%_))
                                      (let ((_%rest441048%_
                                             _%tl441024441104%_))
                                        (_%K441009441042%_ _%rest441048%_)))
                                  (let ((_%rest441048%_ _%tl441024441104%_))
                                    (_%K441009441042%_ _%rest441048%_)))))
                        (_%else441007441036%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords441119%_ _%static?440988441120%_)
        (let ((_%phi?441122%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords441119%_
           _%static?440988441120%_
           _%phi?441122%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g442748_
        (let ((_g442749_ (let () (declare (not safe)) (##length _g442748_))))
          (cond ((let () (declare (not safe)) (##fx= _g442749_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g442748_))
                ((let () (declare (not safe)) (##fx= _g442749_ 3))
                 (apply gxc#gsc-ld-options__%__% _g442748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g442748_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords441131%_ . _%args441132%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords441131%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords441131%_
                  'static:
                  absent-value))
               _%args441132%_)))
    (define gxc#gsc-ld-options
      (lambda _%args440989441138%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args440989441138%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir440983%_)
        (let ((_%user-staticdir440985%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir440983%_
                       '" -I "
                       _%user-staticdir440985%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp440895%_ ((_%rest440897%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts440898%_ '()))
          (let* ((_%rest440899440919%_ _%rest440897%_)
                 (_%else440903440927%_ (lambda () _%opts440898%_)))
            (let ((_%K440913440970%_
                   (lambda (_%rest440968%_)
                     (_%lp440895%_ _%rest440968%_ _%opts440898%_)))
                  (_%K440908440948%_
                   (lambda (_%rest440945%_ _%opt440946%_)
                     (_%lp440895%_
                      _%rest440945%_
                      (let ((__tmp442750
                             (let ((__tmp442751
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt440946%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp442751))))
                        (declare (not safe))
                        (##append _%opts440898%_ __tmp442750)))))
                  (_%K440905440933%_
                   (lambda (_%rest440931%_)
                     (_%lp440895%_ _%rest440931%_ _%opts440898%_))))
              (if (pair? _%rest440899440919%_)
                  (let ((_%tl440915440975%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest440899440919%_)))
                        (_%hd440914440973%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest440899440919%_))))
                    (if (equal? _%hd440914440973%_ '"-cc-options")
                        (if (pair? _%tl440915440975%_)
                            (let* ((_%tl440917440978%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl440915440975%_)))
                                   (_%rest440981%_ _%tl440917440978%_))
                              (_%K440913440970%_ _%rest440981%_))
                            (let ((_%rest440939%_ _%tl440915440975%_))
                              (_%K440905440933%_ _%rest440939%_)))
                        (if (equal? _%hd440914440973%_ '"-ld-options")
                            (if (pair? _%tl440915440975%_)
                                (let ((_%tl440912440958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl440915440975%_)))
                                      (_%hd440911440956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl440915440975%_))))
                                  (let ((_%opt440961%_ _%hd440911440956%_)
                                        (_%rest440963%_ _%tl440912440958%_))
                                    (_%K440908440948%_
                                     _%rest440963%_
                                     _%opt440961%_)))
                                (let ((_%rest440939%_ _%tl440915440975%_))
                                  (_%K440905440933%_ _%rest440939%_)))
                            (let ((_%rest440939%_ _%tl440915440975%_))
                              (_%K440905440933%_ _%rest440939%_)))))
                  (_%else440903440927%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str440892%_)
        (not (let () (declare (not safe)) (string-empty? _%str440892%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path440885%_ _%phi?440886%_)
        (let ((_%gsc-link-opts440888%_
               (gxc#gsc-link-options__% _%phi?440886%_))
              (_%gsc-cc-opts440889%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?440886%_))
              (_%gsc-ld-opts440890%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?440886%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp442752
                  (let ((__tmp442753
                         (let ((__tmp442754 (cons _%path440885%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp442754
                            _%gsc-link-opts440888%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp442753 _%gsc-ld-opts440890%_))))
             (declare (not safe))
             (foldr__0 cons __tmp442752 _%gsc-cc-opts440889%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx440851%_ _%n440852%_ _%ext440853%_)
        (letrec ((_%module-relative-path440855%_
                  (lambda (_%ctx440883%_)
                    (path-strip-directory
                     (let ((__tmp442755
                            (##structure-ref
                             _%ctx440883%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp442755)))))
                 (_%module-source-directory440856%_
                  (lambda (_%ctx440879%_)
                    (path-directory
                     (let ((_%mpath440881%_
                            (##structure-ref
                             _%ctx440879%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath440881%_)
                           _%mpath440881%_
                           (last _%mpath440881%_))))))
                 (_%section-string440857%_
                  (lambda (_%n440873%_)
                    (if (number? _%n440873%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n440873%_))
                        (if (symbol? _%n440873%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n440873%_))
                            (if (string? _%n440873%_)
                                _%n440873%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n440873%_)))))))
                 (_%file-name440858%_
                  (lambda (_%path440871%_)
                    (if _%n440852%_
                        (string-append
                         _%path440871%_
                         '"~"
                         (_%section-string440857%_ _%n440852%_)
                         _%ext440853%_)
                        (string-append _%path440871%_ _%ext440853%_))))
                 (_%file-path440859%_
                  (lambda ()
                    (let ((_%$e440865%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e440865%_
                          ((lambda (_%outdir440868%_)
                             (path-expand
                              (_%file-name440858%_
                               (let ((__tmp442756
                                      (##structure-ref
                                       _%ctx440851%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp442756)))
                              _%outdir440868%_))
                           _%$e440865%_)
                          (path-expand
                           (_%file-name440858%_
                            (_%module-relative-path440855%_ _%ctx440851%_))
                           (_%module-source-directory440856%_
                            _%ctx440851%_)))))))
          (let ((_%path440861%_ (_%file-path440859%_)))
            (let ((__tmp442757
                   (lambda ()
                     (let ((__tmp442758 (path-directory _%path440861%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp442758)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp442757))
            _%path440861%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx440832%_)
        (letrec ((_%file-name440834%_
                  (lambda (_%id440849%_)
                    (let ((__tmp442759 (gxc#static-module-name _%id440849%_)))
                      (declare (not safe))
                      (##string-append __tmp442759 '".scm"))))
                 (_%file-path440835%_
                  (lambda ()
                    (let* ((_%file440841%_
                            (_%file-name440834%_
                             (##structure-ref
                              _%ctx440832%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e440843%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e440843%_
                          ((lambda (_%outdir440846%_)
                             (path-expand
                              _%file440841%_
                              (path-expand '"static" _%outdir440846%_)))
                           _%$e440843%_)
                          (path-expand _%file440841%_ '"static"))))))
          (let ((_%path440837%_ (_%file-path440835%_)))
            (let ((__tmp442760
                   (lambda ()
                     (let ((__tmp442761 (path-directory _%path440837%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp442761)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp442760))
            _%path440837%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx440825%_ _%opts440826%_)
        (let ((_%$e440828%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts440826%_))))
          (if _%$e440828%_
              _%$e440828%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx440825%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr440815%_)
        (if (string? _%idstr440815%_)
            (let* ((_%str440818%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr440815%_)))
                   (_%strs440820%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str440818%_ '#\/))))
              (declare (not safe))
              (string-join _%strs440820%_ '"__"))
            (if (symbol? _%idstr440815%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr440815%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr440815%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp442762
               (let ((__tmp442763 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp442763 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp442762))))
    (define gxc#invoke__%
      (lambda (_%@@keywords440781%_
               _%stdout-redirection440777440782%_
               _%stderr-redirection440778440783%_
               _%program440784%_
               _%args440785%_)
        (let* ((_%stdout-redirection440787%_
                (if (eq? _%stdout-redirection440777440782%_ absent-value)
                    '#f
                    _%stdout-redirection440777440782%_))
               (_%stderr-redirection440789%_
                (if (eq? _%stderr-redirection440778440783%_ absent-value)
                    '#f
                    _%stderr-redirection440778440783%_)))
          (let ((__tmp442764 (cons _%program440784%_ _%args440785%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp442764))
          (let* ((_%proc440791%_
                  (open-process
                   (cons 'path:
                         (cons _%program440784%_
                               (cons 'arguments:
                                     (cons _%args440785%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection440787%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection440789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output440796%_
                  (if (or _%stdout-redirection440787%_
                          _%stderr-redirection440789%_)
                      (read-line _%proc440791%_ '#f)
                      '#f))
                 (_%status440799%_ (process-status _%proc440791%_)))
            (let () (declare (not safe)) (##close-port _%proc440791%_))
            (if (zero? _%status440799%_)
                '#!void
                (begin
                  (display _%output440796%_)
                  (let ((__tmp442765 (cons _%program440784%_ _%args440785%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp442765
                     _%status440799%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords440804%_ . _%args440805%_)
        (apply gxc#invoke__%
               _%@@keywords440804%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords440804%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords440804%_
                  'stderr-redirection:
                  absent-value))
               _%args440805%_)))
    (define gxc#invoke
      (lambda _%args440779440811%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args440779440811%_)))))
