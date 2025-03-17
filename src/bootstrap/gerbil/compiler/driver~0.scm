(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1742226240)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203769 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203769))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203770 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203770))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203626%_ _%fun203627%_)
        (with-output-to-file
         (cons 'path: (cons _%path203626%_ gxc#scheme-file-settings))
         _%fun203627%_)))
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
      (lambda (_%gerbil-libdir203621%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203621%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path203619%_)
        (let ((__tmp203771 (object->string _%path203619%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp203771 '")"))))
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
      (lambda (_%dir203617%_) (delete-file-or-directory _%dir203617%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203573%_ _%opts203574%_)
        (if (string? _%srcpath203573%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203573%_)))
        (let* ((_%outdir203576%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203574%_)))
               (_%invoke-gsc?203578%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203574%_)))
               (_%target203583%_
                (let ((_%$e203580%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203574%_))))
                  (if _%$e203580%_ _%$e203580%_ 'C)))
               (_%gsc-options203588%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203583%_) '()))
                        (let ((_%$e203585%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203574%_))))
                          (if _%$e203585%_ _%$e203585%_ '()))))
               (_%keep-scm?203590%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203574%_)))
               (_%verbosity203592%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203574%_)))
               (_%optimize203594%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203574%_)))
               (_%debug203596%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203574%_)))
               (_%gen-ssxi203598%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203574%_)))
               (_%parallel?203600%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203574%_))))
          (if _%outdir203576%_
              (let ((__tmp203772
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203576%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203772))
              '#!void)
          (if _%optimize203594%_
              (let ((__tmp203773
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203773))
              '#!void)
          (let ((__tmp203776
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203573%_))
                   (gxc#compile-top-module
                    (let ((__tmp203777
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203573%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203777)))))
                (__tmp203775 (gxc#compile-timestamp))
                (__tmp203774
                 (cons 'compile-module (cons _%srcpath203573%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203776
             gxc#current-compile-output-dir
             _%outdir203576%_
             gx#current-compilation-target
             _%target203583%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203578%_
             gxc#current-compile-gsc-options
             _%gsc-options203588%_
             gxc#current-compile-keep-scm
             _%keep-scm?203590%_
             gxc#current-compile-verbose
             _%verbosity203592%_
             gxc#current-compile-optimize
             _%optimize203594%_
             gxc#current-compile-debug
             _%debug203596%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203598%_
             gxc#current-compile-timestamp
             __tmp203775
             gxc#current-compile-context
             __tmp203774
             gxc#current-compile-parallel
             _%parallel?203600%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203610%_)
        (let ((_%opts203612%_ '()))
          (gxc#compile-module__% _%srcpath203610%_ _%opts203612%_))))
    (define gxc#compile-module
      (lambda _g203779_
        (let ((_g203778_ (let () (declare (not safe)) (##length _g203779_))))
          (cond ((let () (declare (not safe)) (##fx= _g203778_ 1))
                 (apply gxc#compile-module__0 _g203779_))
                ((let () (declare (not safe)) (##fx= _g203778_ 2))
                 (apply gxc#compile-module__% _g203779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203779_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203533%_ _%opts203534%_)
        (if (string? _%srcpath203533%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203533%_)))
        (let* ((_%outdir203536%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203534%_)))
               (_%invoke-gsc?203538%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203534%_)))
               (_%target203543%_
                (let ((_%$e203540%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203534%_))))
                  (if _%$e203540%_ _%$e203540%_ 'C)))
               (_%gsc-options203548%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203543%_) '()))
                        (let ((_%$e203545%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203534%_))))
                          (if _%$e203545%_ _%$e203545%_ '()))))
               (_%keep-scm?203550%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203534%_)))
               (_%verbosity203552%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203534%_)))
               (_%debug203554%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203534%_)))
               (_%parallel?203556%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203534%_))))
          (if _%outdir203536%_
              (let ((__tmp203780
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203536%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203780))
              '#!void)
          (let ((__tmp203783
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203533%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203784
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203533%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203784))
                    _%opts203534%_)))
                (__tmp203782 (gxc#compile-timestamp))
                (__tmp203781 (cons 'compile-exe (cons _%srcpath203533%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203783
             gxc#current-compile-output-dir
             _%outdir203536%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203538%_
             gx#current-compilation-target
             _%target203543%_
             gxc#current-compile-gsc-options
             _%gsc-options203548%_
             gxc#current-compile-keep-scm
             _%keep-scm?203550%_
             gxc#current-compile-verbose
             _%verbosity203552%_
             gxc#current-compile-debug
             _%debug203554%_
             gxc#current-compile-timestamp
             __tmp203782
             gxc#current-compile-context
             __tmp203781
             gxc#current-compile-parallel
             _%parallel?203556%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203565%_)
        (let ((_%opts203567%_ '()))
          (gxc#compile-exe__% _%srcpath203565%_ _%opts203567%_))))
    (define gxc#compile-exe
      (lambda _g203786_
        (let ((_g203785_ (let () (declare (not safe)) (##length _g203786_))))
          (cond ((let () (declare (not safe)) (##fx= _g203785_ 1))
                 (apply gxc#compile-exe__0 _g203786_))
                ((let () (declare (not safe)) (##fx= _g203785_ 2))
                 (apply gxc#compile-exe__% _g203786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203786_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203529%_ _%opts203530%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203530%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203529%_
             _%opts203530%_)
            (gxc#compile-executable-module/separate
             _%ctx203529%_
             _%opts203530%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203329%_ _%opts203330%_)
        (letrec ((_%generate-stub203332%_
                  (lambda (_%builtin-modules203525%_)
                    (let ((_%mod-main203527%_
                           (gxc#find-runtime-symbol _%ctx203329%_ 'main)))
                      (let ((__tmp203787
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203525%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203787))
                      (let ((__tmp203788
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203527%_
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
                        (##write __tmp203788))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203333%_
                  (lambda (_%gerbil-libdir203523%_)
                    (let ((__tmp203789
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203523%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203789 read))))
                 (_%replace-extension203334%_
                  (lambda (_%path203520%_ _%ext203521%_)
                    (string-append
                     (path-strip-extension _%path203520%_)
                     _%ext203521%_)))
                 (_%replace-extension-with-c203335%_
                  (lambda (_%path203518%_)
                    (_%replace-extension203334%_ _%path203518%_ '".c")))
                 (_%replace-extension-with-object203336%_
                  (lambda (_%path203516%_)
                    (_%replace-extension203334%_
                     _%path203516%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?203337%_
                  (lambda (_%ctx203514%_)
                    (if (_%exclude-module?203339%_ _%ctx203514%_)
                        '#f
                        (not (_%libgerbil-module?203338%_ _%ctx203514%_)))))
                 (_%libgerbil-module?203338%_
                  (lambda (_%ctx203507%_)
                    (let ((_%id-str203509%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203507%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203339%_ _%id-str203509%_)
                          '#f
                          (let ((_%$e203511%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203509%_))))
                            (if _%$e203511%_
                                _%$e203511%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203509%_))))))))
                 (_%exclude-module?203339%_
                  (lambda (_%ctx-or-str203503%_)
                    (let ((_%str203505%_
                           (if (string? _%ctx-or-str203503%_)
                               _%ctx-or-str203503%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203503%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203505%_))))
                 (_%not-file-empty?203340%_
                  (lambda (_%path203501%_)
                    (not (gxc#file-empty? _%path203501%_))))
                 (_%fold-libgerbil-runtime-scm203341%_
                  (lambda (_%gerbil-staticdir203494%_ _%libgerbil-scm203495%_)
                    (let ((_%gerbil-runtime-scm203499%_
                           (let ((__tmp203790
                                  (lambda (_%rtm203497%_)
                                    (path-expand
                                     (let ((__tmp203791
                                            (let ((__tmp203792
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203497%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203792
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203791 '".scm"))
                                     _%gerbil-staticdir203494%_))))
                             (declare (not safe))
                             (##map __tmp203790 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203342%_
                       (append _%gerbil-runtime-scm203499%_
                               _%libgerbil-scm203495%_)))))
                 (_%remove-duplicates203342%_
                  (lambda (_%strlst203454%_)
                    (let _%loop203456%_ ((_%rest203458%_ _%strlst203454%_)
                                         (_%result203459%_ '()))
                      (let* ((_%rest203460203468%_ _%rest203458%_)
                             (_%else203462203476%_
                              (lambda () (reverse! _%result203459%_)))
                             (_%K203464203482%_
                              (lambda (_%rest203479%_ _%path203480%_)
                                (if (member _%path203480%_ _%result203459%_)
                                    (_%loop203456%_
                                     _%rest203479%_
                                     _%result203459%_)
                                    (_%loop203456%_
                                     _%rest203479%_
                                     (cons _%path203480%_
                                           _%result203459%_))))))
                        (if (pair? _%rest203460203468%_)
                            (let ((_%hd203465203485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203460203468%_)))
                                  (_%tl203466203487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203460203468%_))))
                              (let* ((_%path203490%_ _%hd203465203485%_)
                                     (_%rest203492%_ _%tl203466203487%_))
                                (_%K203464203482%_
                                 _%rest203492%_
                                 _%path203490%_)))
                            (_%else203462203476%_))))))
                 (_%compile-stub203343%_
                  (lambda (_%output-scm203350%_ _%output-bin203351%_)
                    (let* ((_%gerbil-home203353%_
                            (let ((__tmp203793
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203793)))
                           (_%gerbil-libdir203355%_
                            (path-expand '"lib" _%gerbil-home203353%_))
                           (_%gerbil-staticdir203357%_
                            (path-expand '"static" _%gerbil-libdir203355%_))
                           (_%deps203359%_
                            (gxc#find-runtime-module-deps _%ctx203329%_))
                           (_%libgerbil-deps203361%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203338%_
                               _%deps203359%_)))
                           (_%libgerbil-scm203363%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203361%_)))
                           (_%libgerbil-scm203365%_
                            (_%fold-libgerbil-runtime-scm203341%_
                             _%gerbil-staticdir203357%_
                             _%libgerbil-scm203363%_))
                           (_%libgerbil-c203367%_
                            (map _%replace-extension-with-c203335%_
                                 _%libgerbil-scm203365%_))
                           (_%libgerbil-o203369%_
                            (map _%replace-extension-with-object203336%_
                                 _%libgerbil-scm203365%_))
                           (_%src-deps203371%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203337%_
                               _%deps203359%_)))
                           (_%src-deps-scm203373%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203371%_)))
                           (_%src-deps-scm203375%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203340%_
                               _%src-deps-scm203373%_)))
                           (_%src-deps-scm203377%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203375%_)))
                           (_%src-deps-c203379%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c203335%_
                                     _%src-deps-scm203377%_)))
                           (_%src-deps-o203381%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object203336%_
                                     _%src-deps-scm203377%_)))
                           (_%src-bin-scm203383%_
                            (gxc#find-static-module-file _%ctx203329%_))
                           (_%src-bin-scm203385%_
                            (path-expand _%src-bin-scm203383%_))
                           (_%src-bin-c203387%_
                            (_%replace-extension-with-c203335%_
                             _%src-bin-scm203385%_))
                           (_%src-bin-o203389%_
                            (_%replace-extension-with-object203336%_
                             _%src-bin-scm203385%_))
                           (_%output-bin203391%_
                            (path-expand _%output-bin203351%_))
                           (_%output-scm203393%_
                            (path-expand _%output-scm203350%_))
                           (_%output-c203395%_
                            (_%replace-extension-with-c203335%_
                             _%output-scm203393%_))
                           (_%output-o203397%_
                            (_%replace-extension-with-object203336%_
                             _%output-scm203393%_))
                           (_%output_-c203399%_
                            (_%replace-extension203334%_
                             _%output-scm203393%_
                             '"_.c"))
                           (_%output_-o203401%_
                            (_%replace-extension203334%_
                             _%output-scm203393%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts203403%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203405%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203407%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203357%_))
                           (_%output-ld-opts203409%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203411%_
                            (_%get-libgerbil-ld-opts203333%_
                             _%gerbil-libdir203355%_))
                           (_%rpath203413%_
                            (gxc#gerbil-rpath _%gerbil-libdir203355%_))
                           (_%builtin-modules203417%_
                            (_%remove-duplicates203342%_
                             (let ((__tmp203794
                                    (let ((__tmp203796
                                           (lambda (_%mod203415%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203415%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203795
                                           (cons _%ctx203329%_
                                                 _%deps203359%_)))
                                      (declare (not safe))
                                      (##map __tmp203796 __tmp203795))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203794)))))
                      (letrec ((_%compile-obj203420%_
                                (lambda (_%scm-path203427%_ _%c-path203428%_)
                                  (let* ((_%o-path203430%_
                                          (_%replace-extension203334%_
                                           _%c-path203428%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock203432%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203430%_
                                             '".lock")))
                                         (_%locked203434%_ '#f)
                                         (_%unlock203437%_
                                          (lambda ()
                                            (close-port _%locked203434%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203432%_)))))
                                    (let _%retry203440%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203432%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203440%_))
                                          (begin
                                            (set! _%locked203434%_
                                                  (let ((__tmp203797
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203432%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203797)))
                                            (if _%locked203434%_
                                                '#!void
                                                (_%retry203440%_)))))
                                    (let ((__tmp203799
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203430%_)))
                                                     (not _%scm-path203427%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203427%_
                                                        _%o-path203430%_)))
                                                 (let ((_%gsc-cc-opts203451%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203801 (cons _%c-path203428%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203801
                            _%gsc-static-opts203407%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203800 _%gsc-cc-opts203451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203798
                                           (lambda () (_%unlock203437%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203799
                                       __tmp203798))))))
                        (let ((__tmp203802
                               (lambda ()
                                 (let ((__tmp203803
                                        (path-directory _%output-bin203391%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203803)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203802))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203393%_
                         (lambda ()
                           (_%generate-stub203332%_
                            _%builtin-modules203417%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203425%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203804
                                                   (let ((__tmp203805
                                                          (let ((__tmp203806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203385%_
                               (cons _%output-scm203393%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203806 _%src-deps-scm203377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203805
                                                      _%libgerbil-c203367%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203804
                                               _%gsc-link-opts203403%_))))
                                     (for-each
                                      _%compile-obj203420%_
                                      (let ((__tmp203807
                                             (cons _%src-bin-scm203385%_
                                                   (cons _%output-scm203393%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203807
                                         _%src-deps-scm203377%_))
                                      (let ((__tmp203808
                                             (cons _%src-bin-c203387%_
                                                   (cons _%output-c203395%_
                                                         (cons _%output_-c203399%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203808
                                         _%src-deps-c203379%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203391%_
                                                        (let ((__tmp203809
                                                               (cons _%src-bin-o203389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203397%_
                                   (cons _%output_-o203401%_
                                         (let ((__tmp203810
                                                (let ((__tmp203811
                                                       (let ((__tmp203813
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203355%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203411%_))))
                     (__tmp203812
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203413%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203813 __tmp203812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203811
                                                   _%output-ld-opts203409%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203810
                                            _%libgerbil-o203369%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203809 _%src-deps-o203381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203814
                                            (cons _%output-c203395%_
                                                  (cons _%output_-c203399%_
                                                        (cons _%output-o203397%_
                                                              (cons _%output_-o203401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203814)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203425%_))
                                  (_%compile-it203425%_)))
                            '#!void))))))
          (let* ((_%output-bin203345%_
                  (gxc#compile-exe-output-file _%ctx203329%_ _%opts203330%_))
                 (_%output-scm203347%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203345%_ '"__exe.scm"))))
            (_%compile-stub203343%_
             _%output-scm203347%_
             _%output-bin203345%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx203151%_ _%opts203152%_)
        (letrec ((_%reset-declare203154%_
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
                 (_%generate-stub203155%_
                  (lambda (_%deps203320%_)
                    (let ((_%mod-main203322%_
                           (gxc#find-runtime-symbol _%ctx203151%_ 'main))
                          (_%reset-decl203323%_ (_%reset-declare203154%_))
                          (_%user-decl203324%_ (_%user-declare203156%_)))
                      (for-each
                       (lambda (_%dep203326%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203323%_))
                         (newline)
                         (if _%user-decl203324%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203324%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203815
                                (cons 'include (cons _%dep203326%_ '()))))
                           (declare (not safe))
                           (##write __tmp203815))
                         (newline))
                       _%deps203320%_)
                      (let ((__tmp203816
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203816))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare203156%_
                  (lambda ()
                    (let* ((_%gsc-opts203225%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts203152%_)))
                           (_%gsc-prelude203227%_
                            (if _%gsc-opts203225%_
                                (member '"-prelude" _%gsc-opts203225%_)
                                '#f))
                           (_%gsc-prelude203229%_
                            (if _%gsc-prelude203227%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203227%_)))
                                '#f)))
                      (let _%lp203232%_ ((_%rest203234%_
                                          (cons _%gsc-prelude203229%_ '()))
                                         (_%user-decls203235%_ '()))
                        (let* ((_%rest203236203244%_ _%rest203234%_)
                               (_%else203238203252%_
                                (lambda ()
                                  (if (null? _%user-decls203235%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203235%_)))))
                               (_%K203240203308%_
                                (lambda (_%rest203255%_ _%expr203256%_)
                                  (let* ((_%expr203257203269%_ _%expr203256%_)
                                         (_%else203260203277%_
                                          (lambda ()
                                            (_%lp203232%_
                                             _%rest203255%_
                                             _%user-decls203235%_))))
                                    (let ((_%K203265203298%_
                                           (lambda (_%decls203296%_)
                                             (_%lp203232%_
                                              _%rest203255%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203235%_
                                                 _%decls203296%_)))))
                                          (_%K203262203283%_
                                           (lambda (_%exprs203281%_)
                                             (_%lp203232%_
                                              (append _%exprs203281%_
                                                      _%rest203255%_)
                                              _%user-decls203235%_))))
                                      (if (pair? _%expr203257203269%_)
                                          (let ((_%tl203267203303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203257203269%_)))
                                                (_%hd203266203301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203257203269%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203266203301%_
                                                         'declare))
                                                (let ((_%decls203306%_
                                                       _%tl203267203303%_))
                                                  (_%K203265203298%_
                                                   _%decls203306%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203266203301%_
                                                             'begin))
                                                    (let ((_%exprs203291%_
                                                           _%tl203267203303%_))
                                                      (_%K203262203283%_
                                                       _%exprs203291%_))
                                                    (_%else203260203277%_))))
                                          (_%else203260203277%_)))))))
                          (if (pair? _%rest203236203244%_)
                              (let ((_%hd203241203311%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203236203244%_)))
                                    (_%tl203242203313%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203236203244%_))))
                                (let* ((_%expr203316%_ _%hd203241203311%_)
                                       (_%rest203318%_ _%tl203242203313%_))
                                  (_%K203240203308%_
                                   _%rest203318%_
                                   _%expr203316%_)))
                              (_%else203238203252%_)))))))
                 (_%compile-stub203157%_
                  (lambda (_%output-scm203164%_ _%output-bin203165%_)
                    (let* ((_%gerbil-home203167%_
                            (let ((__tmp203817
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203817)))
                           (_%gerbil-libdir203169%_
                            (path-expand '"lib" _%gerbil-home203167%_))
                           (_%runtime203171%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp203173%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home203167%_))
                           (_%include-gambit-sharp203175%_
                            (gxc#include-source _%gambit-sharp203173%_))
                           (_%bin-scm203177%_
                            (gxc#find-static-module-file _%ctx203151%_))
                           (_%deps203179%_
                            (gxc#find-runtime-module-deps _%ctx203151%_))
                           (_%deps203181%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps203179%_)))
                           (_%deps203186%_
                            (let ((__tmp203818
                                   (lambda (_%$obj203183%_)
                                     (not (gxc#file-empty? _%$obj203183%_)))))
                              (declare (not safe))
                              (##filter __tmp203818 _%deps203181%_)))
                           (_%deps203190%_
                            (let ((__tmp203819
                                   (lambda (_%f203188%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f203188%_
                                             _%runtime203171%_))))))
                              (declare (not safe))
                              (##filter __tmp203819 _%deps203186%_)))
                           (_%output-base203192%_
                            (let ((__tmp203820
                                   (path-strip-extension
                                    _%output-scm203164%_)))
                              (declare (not safe))
                              (##string-append __tmp203820)))
                           (_%output-c203194%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203192%_ '".c")))
                           (_%output-o203196%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base203192%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_203198%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203192%_ '"_.c")))
                           (_%output-o_203200%_
                            (let ((__tmp203821
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base203192%_
                               __tmp203821)))
                           (_%gsc-link-opts203202%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203204%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203206%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir203169%_)))
                           (_%output-ld-opts203208%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203210%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp203175%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp203175%_
                                            '()))))
                           (_%gsc-link-opts203212%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts203202%_
                               _%gsc-gx-macros203210%_)))
                           (_%rpath203214%_
                            (gxc#gerbil-rpath _%gerbil-libdir203169%_))
                           (_%default-ld-options203216%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203822
                             (lambda ()
                               (let ((__tmp203823
                                      (path-directory _%output-bin203165%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203823)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203822))
                      (gxc#with-output-to-scheme-file
                       _%output-scm203164%_
                       (lambda ()
                         (_%generate-stub203155%_
                          (let ((__tmp203824
                                 (let ((__tmp203825
                                        (cons _%bin-scm203177%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203825
                                    _%deps203190%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203824 _%runtime203171%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203222%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_203198%_
                                                      (let ((__tmp203826
                                                             (cons _%output-scm203164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203826 _%gsc-link-opts203212%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203827
                                                 (let ((__tmp203828
                                                        (cons _%output-c203194%_
                                                              (cons _%output-c_203198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203828
                                                    _%gsc-static-opts203206%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203827
                                             _%gsc-cc-opts203204%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin203165%_
                                                      (cons _%output-o203196%_
                                                            (cons _%output-o_203200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203829
                                 (let ((__tmp203831
                                        (cons '"-L"
                                              (cons _%gerbil-libdir203169%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203216%_))))
                                       (__tmp203830
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203214%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203831 __tmp203830))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203829
                             _%output-ld-opts203208%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203222%_))
                                (_%compile-it203222%_)))
                          '#!void)))))
          (let* ((_%output-bin203159%_
                  (gxc#compile-exe-output-file _%ctx203151%_ _%opts203152%_))
                 (_%output-scm203161%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203159%_ '"__exe.scm"))))
            (_%compile-stub203157%_
             _%output-scm203161%_
             _%output-bin203159%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx203100%_ _%id203101%_)
        (let ((_%$e203147%_
               (let ((__tmp203833
                      (lambda (_%e203102203104%_)
                        (let* ((_%g203106203116%_ _%e203102203104%_)
                               (_%else203108203124%_ (lambda () '#f))
                               (_%K203110203128%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g203106203116%_
                                 'gx#module-export::t))
                              (let* ((_%e203111203131%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203106203116%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e203112203134%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203106203116%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e203113203137%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203106203116%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e203113203137%_ '0))
                                    (let ((_%e203114203140%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g203106203116%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g203142203144%_)
                                             (eq? _%g203142203144%_
                                                  _%id203101%_))
                                           _%e203114203140%_)
                                          (_%K203110203128%_)
                                          (_%else203108203124%_)))
                                    (_%else203108203124%_)))
                              (_%else203108203124%_)))))
                     (__tmp203832
                      (##structure-ref
                       _%ctx203100%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203833 __tmp203832))))
          (if _%$e203147%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e203147%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx203091%_ _%id203092%_)
        (let ((_%$e203094%_
               (gxc#find-export-binding _%ctx203091%_ _%id203092%_)))
          (if _%$e203094%_
              ((lambda (_%bind203097%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind203097%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id203092%_)))
                 (##structure-ref _%bind203097%_ '1 gx#binding::t '#f))
               _%$e203094%_)
              (let ((__tmp203834
                     (##structure-ref
                      _%ctx203091%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203834
                 _%id203092%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202957%_)
        (letrec* ((_%ht202959%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202960%_
                   (lambda (_%in203036%_ _%phi203037%_)
                     (let ((_%iphi203039%_
                            (fx+ _%phi203037%_
                                 (##direct-structure-ref
                                  _%in203036%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports203040%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in203036%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp203042%_ ((_%rest203044%_ _%imports203040%_)
                                          (_%r203045%_ '()))
                         (let* ((_%rest203046203054%_ _%rest203044%_)
                                (_%else203048203062%_ (lambda () _%r203045%_))
                                (_%K203050203079%_
                                 (lambda (_%rest203065%_ _%in203066%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in203066%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi203039%_))
                                           (_%lp203042%_
                                            _%rest203065%_
                                            (cons _%in203066%_ _%r203045%_))
                                           (_%lp203042%_
                                            _%rest203065%_
                                            _%r203045%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in203066%_
                                              'gx#module-import::t))
                                           (let ((_%iphi203070%_
                                                  (fx+ _%phi203037%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in203066%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi203070%_))
                                                 (_%lp203042%_
                                                  _%rest203065%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in203066%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r203045%_))
                                                 (_%lp203042%_
                                                  _%rest203065%_
                                                  _%r203045%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in203066%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi203073%_
                                                      (fx+ _%iphi203039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in203066%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi203073%_))
                                                     (_%lp203042%_
                                                      _%rest203065%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in203066%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r203045%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi203073%_))
                                                         (_%lp203042%_
                                                          _%rest203065%_
                                                          (let ((__tmp203835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202960%_
                          _%in203066%_
                          _%iphi203039%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r203045%_ __tmp203835)))
                 (_%lp203042%_ _%rest203065%_ _%r203045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp203042%_
                                                _%rest203065%_
                                                _%r203045%_)))))))
                           (if (pair? _%rest203046203054%_)
                               (let ((_%hd203051203082%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest203046203054%_)))
                                     (_%tl203052203084%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest203046203054%_))))
                                 (let* ((_%in203087%_ _%hd203051203082%_)
                                        (_%rest203089%_ _%tl203052203084%_))
                                   (_%K203050203079%_
                                    _%rest203089%_
                                    _%in203087%_)))
                               (_%else203048203062%_)))))))
                  (_%find-deps202961%_
                   (lambda (_%rest202969%_ _%deps202970%_)
                     (let* ((_%rest202971202979%_ _%rest202969%_)
                            (_%else202973202987%_ (lambda () _%deps202970%_))
                            (_%K202975203024%_
                             (lambda (_%rest202990%_ _%hd202991%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202991%_
                                      'gx#module-context::t))
                                   (let ((_%id202994%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202991%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202995%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202991%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202959%_
                                            _%id202994%_))
                                         (_%find-deps202961%_
                                          _%rest202990%_
                                          _%deps202970%_)
                                         (let ((_%$e202998%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202991%_))))
                                           (if _%$e202998%_
                                               ((lambda (_%pre203001%_)
                                                  (let ((_%xdeps203003%_
                                                         (_%find-deps202961%_
                                                          (cons _%pre203001%_
                                                                _%imports202995%_)
                                                          _%deps202970%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202959%_
                                                       _%id202994%_
                                                       _%hd202991%_))
                                                    (_%find-deps202961%_
                                                     _%rest202990%_
                                                     (cons _%hd202991%_
                                                           _%xdeps203003%_))))
                                                _%$e202998%_)
                                               (let ((_%xdeps203006%_
                                                      (_%find-deps202961%_
                                                       _%imports202995%_
                                                       _%deps202970%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202959%_
                                                    _%id202994%_
                                                    _%hd202991%_))
                                                 (_%find-deps202961%_
                                                  _%rest202990%_
                                                  (cons _%hd202991%_
                                                        _%xdeps203006%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202991%_
                                          'gx#prelude-context::t))
                                       (let ((_%id203009%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202991%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202959%_
                                                _%id203009%_))
                                             (_%find-deps202961%_
                                              _%rest202990%_
                                              _%deps202970%_)
                                             (let ((_%xdeps203013%_
                                                    (_%find-deps202961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202991%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202970%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202959%_
                                                      _%id203009%_))
                                                   (_%find-deps202961%_
                                                    _%rest202990%_
                                                    _%xdeps203013%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202959%_
                                                        _%id203009%_
                                                        _%hd202991%_))
                                                     (_%find-deps202961%_
                                                      _%rest202990%_
                                                      (cons _%hd202991%_
                                                            _%xdeps203013%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202991%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202991%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202961%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202991%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202990%_)
                                                _%deps202970%_)
                                               (_%find-deps202961%_
                                                _%rest202990%_
                                                _%deps202970%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202991%_
                                                  'gx#module-export::t))
                                               (_%find-deps202961%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202991%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202990%_)
                                                _%deps202970%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202991%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202991%_ '2 '#f '#f)))
               (_%find-deps202961%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202991%_ '1 '#f '#f))
                      _%rest202990%_)
                _%deps202970%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202991%_ '2 '#f '#f)))
                   (let ((_%xdeps203020%_
                          (_%import-set-template202960%_ _%hd202991%_ '0)))
                     (_%find-deps202961%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202990%_ _%xdeps203020%_))
                      _%deps202970%_))
                   (_%find-deps202961%_ _%rest202990%_ _%deps202970%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202991%_))))))))))
                       (if (pair? _%rest202971202979%_)
                           (let ((_%hd202976203027%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202971202979%_)))
                                 (_%tl202977203029%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202971202979%_))))
                             (let* ((_%hd203032%_ _%hd202976203027%_)
                                    (_%rest203034%_ _%tl202977203029%_))
                               (_%K202975203024%_
                                _%rest203034%_
                                _%hd203032%_)))
                           (_%else202973202987%_))))))
          (let ((__tmp203836
                 (filter gx#expander-context-id
                         (_%find-deps202961%_
                          (let ((_%$e202963%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202957%_))))
                            (if _%$e202963%_
                                ((lambda (_%pre202966%_)
                                   (cons _%pre202966%_
                                         (##structure-ref
                                          _%ctx202957%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202963%_)
                                (##structure-ref
                                 _%ctx202957%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203836)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202887%_)
        (let* ((_%context-id202889%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202887%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202887%_ '1 '#f '#f))
                    (string->symbol _%ctx202887%_)))
               (_%scm202891%_
                (let ((__tmp203837
                       (gxc#static-module-name _%context-id202889%_)))
                  (declare (not safe))
                  (##string-append __tmp203837 '".scm")))
               (_%dirs202893%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202899%_
                (let ((_%user-libpath202895%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202895%_
                      (let ((_%user-libpath202897%_
                             (path-expand '"lib" _%user-libpath202895%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202897%_ _%dirs202893%_))
                            _%dirs202893%_
                            (cons _%user-libpath202897%_ _%dirs202893%_)))
                      _%dirs202893%_)))
               (_%dirs202909%_
                (let ((_%$e202901%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202901%_
                      ((lambda (_%g202903202905%_)
                         (cons _%g202903202905%_ _%dirs202899%_))
                       _%$e202901%_)
                      _%dirs202899%_)))
               (_%dirs202915%_
                (let ((__tmp203838
                       (lambda (_%g202910202912%_)
                         (path-expand '"static" _%g202910202912%_))))
                  (declare (not safe))
                  (##map __tmp203838 _%dirs202909%_))))
          (let _%lp202918%_ ((_%rest202920%_ _%dirs202915%_))
            (let* ((_%rest202921202929%_ _%rest202920%_)
                   (_%else202923202937%_
                    (lambda ()
                      (let ((__tmp203839
                             (##structure-ref
                              _%ctx202887%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203839
                         _%scm202891%_))))
                   (_%K202925202945%_
                    (lambda (_%rest202940%_ _%dir202941%_)
                      (let ((_%path202943%_
                             (path-expand _%scm202891%_ _%dir202941%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202943%_))
                            _%path202943%_
                            (_%lp202918%_ _%rest202940%_))))))
              (if (pair? _%rest202921202929%_)
                  (let ((_%hd202926202948%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202921202929%_)))
                        (_%tl202927202950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202921202929%_))))
                    (let* ((_%dir202953%_ _%hd202926202948%_)
                           (_%rest202955%_ _%tl202927202950%_))
                      (_%K202925202945%_ _%rest202955%_ _%dir202953%_)))
                  (_%else202923202937%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202885%_)
        (zero? (let ((__tmp203840 (file-info _%path202885%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203840)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202881%_)
        (let ((__tmp203844
               (lambda ()
                 (let ((__tmp203845
                        (##structure-ref
                         _%ctx202881%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203845))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203846
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202881%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203846))
                     '#!void)
                 (gxc#collect-bindings _%ctx202881%_)
                 (gxc#compile-runtime-code _%ctx202881%_)
                 (gxc#compile-meta-code _%ctx202881%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202881%_)
                     '#!void)))
              (__tmp203843
               (let ((__obj203767
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203767))
                 __obj203767))
              (__tmp203842 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203841
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
          (__call-with-parameters
           __tmp203844
           gx#current-expander-context
           _%ctx202881%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203843
           gxc#current-compile-runtime-sections
           __tmp203842
           gxc#current-compile-runtime-names
           __tmp203841))))
    (define gxc#collect-bindings
      (lambda (_%ctx202879%_)
        (let ((__tmp203847
               (##structure-ref _%ctx202879%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203847))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202827%_)
        (letrec ((_%compile1202829%_
                  (lambda (_%ctx202868%_)
                    (let* ((_%code202870%_
                            (##structure-ref
                             _%ctx202868%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202874%_
                            (let ((_%idstr202872%_
                                   (let ((__tmp203848
                                          (##structure-ref
                                           _%ctx202868%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203848))))
                              (declare (not safe))
                              (##string-append _%idstr202872%_ '"~0")))
                           (_%rtc?202876%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202870%_))))
                      (if _%rtc?202876%_
                          (let ((__tmp203849
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203849
                             _%ctx202868%_
                             _%rtm202874%_))
                          '#!void)
                      (_%generate-runtime-code202831%_
                       _%ctx202868%_
                       _%code202870%_
                       (if _%rtc?202876%_ _%rtm202874%_ '#f)))))
                 (_%context-timestamp202830%_
                  (lambda (_%ctx202866%_)
                    (let ((__tmp203850
                           (let ((__tmp203851
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202866%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203851 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203850))))
                 (_%generate-runtime-code202831%_
                  (lambda (_%ctx202838%_ _%code202839%_ _%rtm202840%_)
                    (let* ((_%runtime-code?202842%_ (if _%rtm202840%_ '#t '#f))
                           (_%lifts202844%_ (box '()))
                           (_%runtime-code202847%_
                            (if _%runtime-code?202842%_
                                (let ((__tmp203854
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202839%_))))
                                      (__tmp203853
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203852
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203854
                                   gx#current-expander-context
                                   _%ctx202838%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202844%_
                                   gxc#current-compile-marks
                                   __tmp203853
                                   gxc#current-compile-identifiers
                                   __tmp203852))
                                '#f))
                           (_%runtime-code202849%_
                            (if _%runtime-code?202842%_
                                (if (null? (unbox _%lifts202844%_))
                                    _%runtime-code202847%_
                                    (cons 'begin
                                          (let ((__tmp203856
                                                 (cons _%runtime-code202847%_
                                                       '()))
                                                (__tmp203855
                                                 (reverse (unbox _%lifts202844%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203856
                                             __tmp203855))))
                                '#f))
                           (_%runtime-code202851%_
                            (if _%runtime-code?202842%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202830%_
                                                         _%ctx202838%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202849%_ '())))
                                '#f))
                           (_%loader-code202854%_
                            (let ((__tmp203857
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202839%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203857
                               gx#current-expander-context
                               _%ctx202838%_)))
                           (_%loader-code202856%_
                            (cons 'begin
                                  (cons _%loader-code202854%_
                                        (cons (if _%runtime-code?202842%_
                                                  (cons 'load-module
                                                        (cons _%rtm202840%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202858%_
                            (gxc#compile-output-file _%ctx202838%_ '0 '".scm"))
                           (_%scmrt202860%_
                            (gxc#compile-output-file
                             _%ctx202838%_
                             '#f
                             '".scm"))
                           (_%scms202862%_
                            (gxc#compile-static-output-file _%ctx202838%_)))
                      (if _%runtime-code?202842%_
                          (gxc#compile-scm-file__0
                           _%scm0202858%_
                           _%runtime-code202851%_)
                          '#!void)
                      (let ((__tmp203858
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202860%_
                                _%loader-code202856%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203858
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202862%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202862%_))
                          '#!void)
                      (if _%runtime-code?202842%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202858%_ _%scms202862%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202862%_ void)))))))
          (let* ((_%all-modules202833%_
                  (cons _%ctx202827%_ (gxc#lift-nested-modules _%ctx202827%_)))
                 (__tmp203859
                  (lambda (_%ctx202835%_)
                    (let ((__tmp203860
                           (lambda () (_%compile1202829%_ _%ctx202835%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203860
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203859 _%all-modules202833%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202727%_)
        (letrec ((_%compile-ssi202729%_
                  (lambda (_%code202795%_)
                    (let* ((_%path202797%_
                            (gxc#compile-output-file
                             _%ctx202727%_
                             '#f
                             '".ssi"))
                           (_%prelude202809%_
                            (let* ((_%super202799%_
                                    (##structure-ref
                                     _%ctx202727%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202801%_
                                    (##structure-ref
                                     _%super202799%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202801%_
                                  ((lambda (_%g202803202805%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202803202805%_)))
                                   _%$e202801%_)
                                  ':<root>)))
                           (_%ns202811%_
                            (##structure-ref
                             _%ctx202727%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202813%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202727%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202821%_
                            (let ((_%$e202815%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202813%_ '#\/))))
                              (if _%$e202815%_
                                  ((lambda (_%x202818%_)
                                     (let ((__tmp203861
                                            (substring
                                             _%idstr202813%_
                                             '0
                                             _%x202818%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203861)))
                                   _%$e202815%_)
                                  '#f)))
                           (_%rt202823%_
                            (let ((__tmp203862
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203862 _%ctx202727%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202797%_))
                      (gxc#with-output-to-scheme-file
                       _%path202797%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202809%_))
                         (if _%pkg202821%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202821%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202811%_))
                         (newline)
                         (pretty-print _%code202795%_)
                         (if _%rt202823%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202823%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202730%_
                  (lambda (_%part202735%_)
                    (let* ((_%part202736202749%_ _%part202735%_)
                           (_%E202738202753%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202736202749%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202739202764%_
                            (lambda (_%code202756%_
                                     _%n202757%_
                                     _%phi202758%_
                                     _%phi-ctx202759%_)
                              (let ((_%code202762%_
                                     (let ((__tmp203863
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202756%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203863
                                        gx#current-expander-context
                                        _%phi-ctx202759%_
                                        gx#current-expander-phi
                                        _%phi202758%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202727%_
                                  _%n202757%_
                                  '".scm")
                                 _%code202762%_
                                 '#t)))))
                      (if (pair? _%part202736202749%_)
                          (let ((_%hd202740202767%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202736202749%_)))
                                (_%tl202741202769%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202736202749%_))))
                            (let ((_%phi-ctx202772%_ _%hd202740202767%_))
                              (if (pair? _%tl202741202769%_)
                                  (let ((_%hd202742202774%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202741202769%_)))
                                        (_%tl202743202776%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202741202769%_))))
                                    (let ((_%phi202779%_ _%hd202742202774%_))
                                      (if (pair? _%tl202743202776%_)
                                          (let ((_%hd202744202781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202743202776%_)))
                                                (_%tl202745202783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202743202776%_))))
                                            (let ((_%n202786%_
                                                   _%hd202744202781%_))
                                              (if (pair? _%tl202745202783%_)
                                                  (let ((_%hd202746202788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202745202783%_)))
                                                        (_%tl202747202790%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202745202783%_))))
                                                    (let ((_%code202793%_
                                                           _%hd202746202788%_))
                                                      (if (null? _%tl202747202790%_)
                                                          (_%K202739202764%_
                                                           _%code202793%_
                                                           _%n202786%_
                                                           _%phi202779%_
                                                           _%phi-ctx202772%_)
                                                          (_%E202738202753%_))))
                                                  (_%E202738202753%_))))
                                          (_%E202738202753%_))))
                                  (_%E202738202753%_))))
                          (_%E202738202753%_))))))
          (let ((_g203864_ (gxc#generate-meta-code _%ctx202727%_)))
            (begin
              (let ((_g203865_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203864_)
                           (##values-length _g203864_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203865_ 2)))
                    (error "Context expects 2 values" _g203865_)))
              (let ((_%ssi-code202732%_
                     (let () (declare (not safe)) (##values-ref _g203864_ 0)))
                    (_%phi-code202733%_
                     (let () (declare (not safe)) (##values-ref _g203864_ 1))))
                (begin
                  (_%compile-ssi202729%_ _%ssi-code202732%_)
                  (for-each _%compile-phi202730%_ _%phi-code202733%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202709%_)
        (let* ((_%path202711%_
                (gxc#compile-output-file _%ctx202709%_ '#f '".ssxi.ss"))
               (_%code202713%_
                (let ((__tmp203866
                       (##structure-ref
                        _%ctx202709%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203866)))
               (_%idstr202715%_
                (symbol->string
                 (##structure-ref
                  _%ctx202709%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202723%_
                (let ((_%$e202717%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202715%_ '#\/))))
                  (if _%$e202717%_
                      ((lambda (_%x202720%_)
                         (let ((__tmp203867
                                (substring _%idstr202715%_ '0 _%x202720%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203867)))
                       _%$e202717%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202711%_))
          (gxc#with-output-to-scheme-file
           _%path202711%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202723%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202723%_))
                 '#!void)
             (newline)
             (pretty-print _%code202713%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202702%_)
        (let* ((_%state202704%_
                (let ((__obj203768
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203768 _%ctx202702%_))
                  __obj203768))
               (_%ssi-code202706%_
                (let ((__tmp203868
                       (##structure-ref
                        _%ctx202702%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202704%_
                   __tmp203868))))
          (values _%ssi-code202706%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202704%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202695%_)
        (let ((_%lifts202697%_ (box '())))
          (let ((__tmp203871
                 (lambda ()
                   (let ((_%code202700%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202695%_))))
                     (if (null? (unbox _%lifts202697%_))
                         _%code202700%_
                         (cons 'begin
                               (let ((__tmp203873 (cons _%code202700%_ '()))
                                     (__tmp203872
                                      (reverse (unbox _%lifts202697%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203873 __tmp203872)))))))
                (__tmp203870
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203869
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203871
             gxc#current-compile-lift
             _%lifts202697%_
             gxc#current-compile-marks
             __tmp203870
             gxc#current-compile-identifiers
             __tmp203869)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202691%_)
        (let ((_%modules202693%_ (box '())))
          (let ((__tmp203874
                 (##structure-ref _%ctx202691%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202693%_ __tmp203874))
          (reverse (unbox _%modules202693%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202671%_ _%code202672%_ _%phi?202673%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202671%_))
        (gxc#with-output-to-scheme-file
         _%path202671%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203875
                                           (if _%phi?202673%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203875)))))))
           (pretty-print _%code202672%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202677%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202671%_ _%phi?202673%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203876
                         (cons 'compile-file (cons _%path202671%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202677%_ __tmp203876))
                  (_%compile-it202677%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202682%_ _%code202683%_)
        (let ((_%phi?202685%_ '#f))
          (gxc#compile-scm-file__%
           _%path202682%_
           _%code202683%_
           _%phi?202685%_))))
    (define gxc#compile-scm-file
      (lambda _g203878_
        (let ((_g203877_ (let () (declare (not safe)) (##length _g203878_))))
          (cond ((let () (declare (not safe)) (##fx= _g203877_ 2))
                 (apply gxc#compile-scm-file__0 _g203878_))
                ((let () (declare (not safe)) (##fx= _g203877_ 3))
                 (apply gxc#compile-scm-file__% _g203878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203878_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202572%_)
        (let _%lp202574%_ ((_%rest202576%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202577%_ '()))
          (let* ((_%rest202578202598%_ _%rest202576%_)
                 (_%else202582202606%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202577%_)))
                        (reverse _%opts202577%_)))))
            (let ((_%K202592202649%_
                   (lambda (_%rest202647%_)
                     (_%lp202574%_ _%rest202647%_ _%opts202577%_)))
                  (_%K202587202631%_
                   (lambda (_%rest202629%_)
                     (_%lp202574%_ _%rest202629%_ _%opts202577%_)))
                  (_%K202584202613%_
                   (lambda (_%rest202610%_ _%opt202611%_)
                     (_%lp202574%_
                      _%rest202610%_
                      (cons _%opt202611%_ _%opts202577%_)))))
              (if (pair? _%rest202578202598%_)
                  (let ((_%tl202594202654%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202578202598%_)))
                        (_%hd202593202652%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202578202598%_))))
                    (if (equal? _%hd202593202652%_ '"-cc-options")
                        (if (pair? _%tl202594202654%_)
                            (let* ((_%tl202596202657%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202594202654%_)))
                                   (_%rest202660%_ _%tl202596202657%_))
                              (_%K202592202649%_ _%rest202660%_))
                            (let ((_%opt202621%_ _%hd202593202652%_)
                                  (_%rest202623%_ _%tl202594202654%_))
                              (_%K202584202613%_
                               _%rest202623%_
                               _%opt202621%_)))
                        (if (equal? _%hd202593202652%_ '"-ld-options")
                            (if (pair? _%tl202594202654%_)
                                (let* ((_%tl202591202639%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202594202654%_)))
                                       (_%rest202642%_ _%tl202591202639%_))
                                  (_%K202587202631%_ _%rest202642%_))
                                (let ((_%opt202621%_ _%hd202593202652%_)
                                      (_%rest202623%_ _%tl202594202654%_))
                                  (_%K202584202613%_
                                   _%rest202623%_
                                   _%opt202621%_)))
                            (let ((_%opt202621%_ _%hd202593202652%_)
                                  (_%rest202623%_ _%tl202594202654%_))
                              (_%K202584202613%_
                               _%rest202623%_
                               _%opt202621%_)))))
                  (_%else202582202606%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202666%_ '#f)) (gxc#gsc-link-options__% _%phi?202666%_))))
    (define gxc#gsc-link-options
      (lambda _g203880_
        (let ((_g203879_ (let () (declare (not safe)) (##length _g203880_))))
          (cond ((let () (declare (not safe)) (##fx= _g203879_ 0))
                 (apply gxc#gsc-link-options__0 _g203880_))
                ((let () (declare (not safe)) (##fx= _g203879_ 1))
                 (apply gxc#gsc-link-options__% _g203880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203880_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202421%_ _%static?202417202422%_ _%phi?202424%_)
        (let ((_%static?202426%_
               (if (eq? _%static?202417202422%_ absent-value)
                   '#f
                   _%static?202417202422%_)))
          (if _%phi?202424%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202428%_ ((_%rest202430%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202431%_ '()))
                (let* ((_%rest202432202458%_ _%rest202430%_)
                       (_%else202437202466%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202431%_)))
                              (reverse! _%opts202431%_)))))
                  (let ((_%K202452202529%_
                         (lambda (_%rest202526%_ _%opt202527%_)
                           (if _%static?202426%_
                               (_%lp202428%_
                                _%rest202526%_
                                (cons _%opt202527%_
                                      (cons '"-cc-options" _%opts202431%_)))
                               (_%lp202428%_ _%rest202526%_ _%opts202431%_))))
                        (_%K202447202506%_
                         (lambda (_%rest202503%_ _%opt202504%_)
                           (_%lp202428%_
                            _%rest202503%_
                            (cons _%opt202504%_
                                  (cons '"-cc-options" _%opts202431%_)))))
                        (_%K202442202486%_
                         (lambda (_%rest202484%_)
                           (_%lp202428%_ _%rest202484%_ _%opts202431%_)))
                        (_%K202439202472%_
                         (lambda (_%rest202470%_)
                           (_%lp202428%_ _%rest202470%_ _%opts202431%_))))
                    (if (pair? _%rest202432202458%_)
                        (let ((_%tl202454202534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202432202458%_)))
                              (_%hd202453202532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202432202458%_))))
                          (if (equal? _%hd202453202532%_ '"-cc-options")
                              (if (pair? _%tl202454202534%_)
                                  (let ((_%tl202456202539%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202454202534%_)))
                                        (_%hd202455202537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202454202534%_))))
                                    (if (equal? _%hd202455202537%_ '"-Bstatic")
                                        (let ((_%opt202542%_
                                               _%hd202455202537%_)
                                              (_%rest202544%_
                                               _%tl202456202539%_))
                                          (_%K202452202529%_
                                           _%rest202544%_
                                           _%opt202542%_))
                                        (let ((_%opt202519%_
                                               _%hd202455202537%_)
                                              (_%rest202521%_
                                               _%tl202456202539%_))
                                          (_%K202447202506%_
                                           _%rest202521%_
                                           _%opt202519%_))))
                                  (let ((_%rest202478%_ _%tl202454202534%_))
                                    (_%K202439202472%_ _%rest202478%_)))
                              (if (equal? _%hd202453202532%_ '"-ld-options")
                                  (if (pair? _%tl202454202534%_)
                                      (let* ((_%tl202446202494%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202454202534%_)))
                                             (_%rest202497%_
                                              _%tl202446202494%_))
                                        (_%K202442202486%_ _%rest202497%_))
                                      (let ((_%rest202478%_
                                             _%tl202454202534%_))
                                        (_%K202439202472%_ _%rest202478%_)))
                                  (let ((_%rest202478%_ _%tl202454202534%_))
                                    (_%K202439202472%_ _%rest202478%_)))))
                        (_%else202437202466%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202549%_ _%static?202417202550%_)
        (let ((_%phi?202552%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202549%_
           _%static?202417202550%_
           _%phi?202552%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203882_
        (let ((_g203881_ (let () (declare (not safe)) (##length _g203882_))))
          (cond ((let () (declare (not safe)) (##fx= _g203881_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203882_))
                ((let () (declare (not safe)) (##fx= _g203881_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203882_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202561%_ . _%args202562%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202561%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202561%_
                  'static:
                  absent-value))
               _%args202562%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202418202568%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202418202568%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202266%_ _%static?202262202267%_ _%phi?202269%_)
        (let ((_%static?202271%_
               (if (eq? _%static?202262202267%_ absent-value)
                   '#f
                   _%static?202262202267%_)))
          (if _%phi?202269%_
              '()
              (let _%lp202273%_ ((_%rest202275%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202276%_ '()))
                (let* ((_%rest202277202303%_ _%rest202275%_)
                       (_%else202282202311%_
                        (lambda () (reverse! _%opts202276%_))))
                  (let ((_%K202297202374%_
                         (lambda (_%rest202371%_ _%opt202372%_)
                           (if _%static?202271%_
                               (_%lp202273%_
                                _%rest202371%_
                                (cons _%opt202372%_
                                      (cons '"-ld-options" _%opts202276%_)))
                               (_%lp202273%_ _%rest202371%_ _%opts202276%_))))
                        (_%K202292202351%_
                         (lambda (_%rest202348%_ _%opt202349%_)
                           (_%lp202273%_
                            _%rest202348%_
                            (cons _%opt202349%_
                                  (cons '"-ld-options" _%opts202276%_)))))
                        (_%K202287202331%_
                         (lambda (_%rest202329%_)
                           (_%lp202273%_ _%rest202329%_ _%opts202276%_)))
                        (_%K202284202317%_
                         (lambda (_%rest202315%_)
                           (_%lp202273%_ _%rest202315%_ _%opts202276%_))))
                    (if (pair? _%rest202277202303%_)
                        (let ((_%tl202299202379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202277202303%_)))
                              (_%hd202298202377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202277202303%_))))
                          (if (equal? _%hd202298202377%_ '"-ld-options")
                              (if (pair? _%tl202299202379%_)
                                  (let ((_%tl202301202384%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202299202379%_)))
                                        (_%hd202300202382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202299202379%_))))
                                    (if (equal? _%hd202300202382%_ '"-static")
                                        (let ((_%opt202387%_
                                               _%hd202300202382%_)
                                              (_%rest202389%_
                                               _%tl202301202384%_))
                                          (_%K202297202374%_
                                           _%rest202389%_
                                           _%opt202387%_))
                                        (let ((_%opt202364%_
                                               _%hd202300202382%_)
                                              (_%rest202366%_
                                               _%tl202301202384%_))
                                          (_%K202292202351%_
                                           _%rest202366%_
                                           _%opt202364%_))))
                                  (let ((_%rest202323%_ _%tl202299202379%_))
                                    (_%K202284202317%_ _%rest202323%_)))
                              (if (equal? _%hd202298202377%_ '"-cc-options")
                                  (if (pair? _%tl202299202379%_)
                                      (let* ((_%tl202291202339%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202299202379%_)))
                                             (_%rest202342%_
                                              _%tl202291202339%_))
                                        (_%K202287202331%_ _%rest202342%_))
                                      (let ((_%rest202323%_
                                             _%tl202299202379%_))
                                        (_%K202284202317%_ _%rest202323%_)))
                                  (let ((_%rest202323%_ _%tl202299202379%_))
                                    (_%K202284202317%_ _%rest202323%_)))))
                        (_%else202282202311%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202394%_ _%static?202262202395%_)
        (let ((_%phi?202397%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202394%_
           _%static?202262202395%_
           _%phi?202397%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203884_
        (let ((_g203883_ (let () (declare (not safe)) (##length _g203884_))))
          (cond ((let () (declare (not safe)) (##fx= _g203883_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203884_))
                ((let () (declare (not safe)) (##fx= _g203883_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203884_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202406%_ . _%args202407%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202406%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202406%_
                  'static:
                  absent-value))
               _%args202407%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202263202413%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202263202413%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202257%_)
        (let ((_%user-staticdir202259%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202257%_
                       '" -I "
                       _%user-staticdir202259%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp202169%_ ((_%rest202171%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202172%_ '()))
          (let* ((_%rest202173202193%_ _%rest202171%_)
                 (_%else202177202201%_ (lambda () _%opts202172%_)))
            (let ((_%K202187202244%_
                   (lambda (_%rest202242%_)
                     (_%lp202169%_ _%rest202242%_ _%opts202172%_)))
                  (_%K202182202222%_
                   (lambda (_%rest202219%_ _%opt202220%_)
                     (_%lp202169%_
                      _%rest202219%_
                      (let ((__tmp203885
                             (let ((__tmp203886
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202220%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203886))))
                        (declare (not safe))
                        (##append _%opts202172%_ __tmp203885)))))
                  (_%K202179202207%_
                   (lambda (_%rest202205%_)
                     (_%lp202169%_ _%rest202205%_ _%opts202172%_))))
              (if (pair? _%rest202173202193%_)
                  (let ((_%tl202189202249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202173202193%_)))
                        (_%hd202188202247%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202173202193%_))))
                    (if (equal? _%hd202188202247%_ '"-cc-options")
                        (if (pair? _%tl202189202249%_)
                            (let* ((_%tl202191202252%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202189202249%_)))
                                   (_%rest202255%_ _%tl202191202252%_))
                              (_%K202187202244%_ _%rest202255%_))
                            (let ((_%rest202213%_ _%tl202189202249%_))
                              (_%K202179202207%_ _%rest202213%_)))
                        (if (equal? _%hd202188202247%_ '"-ld-options")
                            (if (pair? _%tl202189202249%_)
                                (let ((_%tl202186202232%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202189202249%_)))
                                      (_%hd202185202230%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202189202249%_))))
                                  (let ((_%opt202235%_ _%hd202185202230%_)
                                        (_%rest202237%_ _%tl202186202232%_))
                                    (_%K202182202222%_
                                     _%rest202237%_
                                     _%opt202235%_)))
                                (let ((_%rest202213%_ _%tl202189202249%_))
                                  (_%K202179202207%_ _%rest202213%_)))
                            (let ((_%rest202213%_ _%tl202189202249%_))
                              (_%K202179202207%_ _%rest202213%_)))))
                  (_%else202177202201%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str202166%_)
        (not (let () (declare (not safe)) (string-empty? _%str202166%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path202159%_ _%phi?202160%_)
        (let ((_%gsc-link-opts202162%_
               (gxc#gsc-link-options__% _%phi?202160%_))
              (_%gsc-cc-opts202163%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?202160%_))
              (_%gsc-ld-opts202164%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?202160%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203887
                  (let ((__tmp203888
                         (let ((__tmp203889 (cons _%path202159%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203889
                            _%gsc-link-opts202162%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203888 _%gsc-ld-opts202164%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203887 _%gsc-cc-opts202163%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx202125%_ _%n202126%_ _%ext202127%_)
        (letrec ((_%module-relative-path202129%_
                  (lambda (_%ctx202157%_)
                    (path-strip-directory
                     (let ((__tmp203890
                            (##structure-ref
                             _%ctx202157%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203890)))))
                 (_%module-source-directory202130%_
                  (lambda (_%ctx202153%_)
                    (path-directory
                     (let ((_%mpath202155%_
                            (##structure-ref
                             _%ctx202153%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath202155%_)
                           _%mpath202155%_
                           (last _%mpath202155%_))))))
                 (_%section-string202131%_
                  (lambda (_%n202147%_)
                    (if (number? _%n202147%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n202147%_))
                        (if (symbol? _%n202147%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n202147%_))
                            (if (string? _%n202147%_)
                                _%n202147%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n202147%_)))))))
                 (_%file-name202132%_
                  (lambda (_%path202145%_)
                    (if _%n202126%_
                        (string-append
                         _%path202145%_
                         '"~"
                         (_%section-string202131%_ _%n202126%_)
                         _%ext202127%_)
                        (string-append _%path202145%_ _%ext202127%_))))
                 (_%file-path202133%_
                  (lambda ()
                    (let ((_%$e202139%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e202139%_
                          ((lambda (_%outdir202142%_)
                             (path-expand
                              (_%file-name202132%_
                               (let ((__tmp203891
                                      (##structure-ref
                                       _%ctx202125%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203891)))
                              _%outdir202142%_))
                           _%$e202139%_)
                          (path-expand
                           (_%file-name202132%_
                            (_%module-relative-path202129%_ _%ctx202125%_))
                           (_%module-source-directory202130%_
                            _%ctx202125%_)))))))
          (let ((_%path202135%_ (_%file-path202133%_)))
            (let ((__tmp203892
                   (lambda ()
                     (let ((__tmp203893 (path-directory _%path202135%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203893)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203892))
            _%path202135%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx202106%_)
        (letrec ((_%file-name202108%_
                  (lambda (_%id202123%_)
                    (let ((__tmp203894 (gxc#static-module-name _%id202123%_)))
                      (declare (not safe))
                      (##string-append __tmp203894 '".scm"))))
                 (_%file-path202109%_
                  (lambda ()
                    (let* ((_%file202115%_
                            (_%file-name202108%_
                             (##structure-ref
                              _%ctx202106%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e202117%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e202117%_
                          ((lambda (_%outdir202120%_)
                             (path-expand
                              _%file202115%_
                              (path-expand '"static" _%outdir202120%_)))
                           _%$e202117%_)
                          (path-expand _%file202115%_ '"static"))))))
          (let ((_%path202111%_ (_%file-path202109%_)))
            (let ((__tmp203895
                   (lambda ()
                     (let ((__tmp203896 (path-directory _%path202111%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203896)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203895))
            _%path202111%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx202099%_ _%opts202100%_)
        (let ((_%$e202102%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts202100%_))))
          (if _%$e202102%_
              _%$e202102%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx202099%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr202089%_)
        (if (string? _%idstr202089%_)
            (let* ((_%str202092%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr202089%_)))
                   (_%strs202094%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str202092%_ '#\/))))
              (declare (not safe))
              (string-join _%strs202094%_ '"__"))
            (if (symbol? _%idstr202089%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr202089%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr202089%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203897
               (let ((__tmp203898 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203898 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203897))))
    (define gxc#invoke__%
      (lambda (_%@@keywords202053%_
               _%stdout-redirection202049202054%_
               _%stderr-redirection202050202056%_
               _%program202058%_
               _%args202059%_)
        (let* ((_%stdout-redirection202061%_
                (if (eq? _%stdout-redirection202049202054%_ absent-value)
                    '#f
                    _%stdout-redirection202049202054%_))
               (_%stderr-redirection202063%_
                (if (eq? _%stderr-redirection202050202056%_ absent-value)
                    '#f
                    _%stderr-redirection202050202056%_)))
          (let ((__tmp203899 (cons _%program202058%_ _%args202059%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203899))
          (let* ((_%proc202065%_
                  (open-process
                   (cons 'path:
                         (cons _%program202058%_
                               (cons 'arguments:
                                     (cons _%args202059%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection202061%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection202063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output202070%_
                  (if (or _%stdout-redirection202061%_
                          _%stderr-redirection202063%_)
                      (read-line _%proc202065%_ '#f)
                      '#f))
                 (_%status202073%_ (process-status _%proc202065%_)))
            (let () (declare (not safe)) (##close-port _%proc202065%_))
            (if (zero? _%status202073%_)
                '#!void
                (begin
                  (display _%output202070%_)
                  (let ((__tmp203900 (cons _%program202058%_ _%args202059%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203900
                     _%status202073%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords202078%_ . _%args202079%_)
        (apply gxc#invoke__%
               _%@@keywords202078%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202078%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202078%_
                  'stderr-redirection:
                  absent-value))
               _%args202079%_)))
    (define gxc#invoke
      (lambda _%args202051202085%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args202051202085%_)))))
