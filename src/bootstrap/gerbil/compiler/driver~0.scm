(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1742223880)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203750 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203750))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203751 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203751))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203607%_ _%fun203608%_)
        (with-output-to-file
         (cons 'path: (cons _%path203607%_ gxc#scheme-file-settings))
         _%fun203608%_)))
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
      (lambda (_%gerbil-libdir203602%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203602%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path203600%_)
        (let ((__tmp203752 (object->string _%path203600%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp203752 '")"))))
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
      (lambda (_%dir203598%_) (delete-file-or-directory _%dir203598%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203554%_ _%opts203555%_)
        (if (string? _%srcpath203554%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203554%_)))
        (let* ((_%outdir203557%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203555%_)))
               (_%invoke-gsc?203559%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203555%_)))
               (_%target203564%_
                (let ((_%$e203561%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203555%_))))
                  (if _%$e203561%_ _%$e203561%_ 'C)))
               (_%gsc-options203569%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203564%_) '()))
                        (let ((_%$e203566%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203555%_))))
                          (if _%$e203566%_ _%$e203566%_ '()))))
               (_%keep-scm?203571%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203555%_)))
               (_%verbosity203573%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203555%_)))
               (_%optimize203575%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203555%_)))
               (_%debug203577%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203555%_)))
               (_%gen-ssxi203579%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203555%_)))
               (_%parallel?203581%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203555%_))))
          (if _%outdir203557%_
              (let ((__tmp203753
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203557%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203753))
              '#!void)
          (if _%optimize203575%_
              (let ((__tmp203754
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203754))
              '#!void)
          (let ((__tmp203757
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203554%_))
                   (gxc#compile-top-module
                    (let ((__tmp203758
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203554%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203758)))))
                (__tmp203756 (gxc#compile-timestamp))
                (__tmp203755
                 (cons 'compile-module (cons _%srcpath203554%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203757
             gxc#current-compile-output-dir
             _%outdir203557%_
             gx#current-compilation-target
             _%target203564%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203559%_
             gxc#current-compile-gsc-options
             _%gsc-options203569%_
             gxc#current-compile-keep-scm
             _%keep-scm?203571%_
             gxc#current-compile-verbose
             _%verbosity203573%_
             gxc#current-compile-optimize
             _%optimize203575%_
             gxc#current-compile-debug
             _%debug203577%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203579%_
             gxc#current-compile-timestamp
             __tmp203756
             gxc#current-compile-context
             __tmp203755
             gxc#current-compile-parallel
             _%parallel?203581%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203591%_)
        (let ((_%opts203593%_ '()))
          (gxc#compile-module__% _%srcpath203591%_ _%opts203593%_))))
    (define gxc#compile-module
      (lambda _g203760_
        (let ((_g203759_ (let () (declare (not safe)) (##length _g203760_))))
          (cond ((let () (declare (not safe)) (##fx= _g203759_ 1))
                 (apply gxc#compile-module__0 _g203760_))
                ((let () (declare (not safe)) (##fx= _g203759_ 2))
                 (apply gxc#compile-module__% _g203760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203760_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203514%_ _%opts203515%_)
        (if (string? _%srcpath203514%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203514%_)))
        (let* ((_%outdir203517%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203515%_)))
               (_%invoke-gsc?203519%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203515%_)))
               (_%target203524%_
                (let ((_%$e203521%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203515%_))))
                  (if _%$e203521%_ _%$e203521%_ 'C)))
               (_%gsc-options203529%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203524%_) '()))
                        (let ((_%$e203526%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203515%_))))
                          (if _%$e203526%_ _%$e203526%_ '()))))
               (_%keep-scm?203531%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203515%_)))
               (_%verbosity203533%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203515%_)))
               (_%debug203535%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203515%_)))
               (_%parallel?203537%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203515%_))))
          (if _%outdir203517%_
              (let ((__tmp203761
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203517%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203761))
              '#!void)
          (let ((__tmp203764
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203514%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203765
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203514%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203765))
                    _%opts203515%_)))
                (__tmp203763 (gxc#compile-timestamp))
                (__tmp203762 (cons 'compile-exe (cons _%srcpath203514%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203764
             gxc#current-compile-output-dir
             _%outdir203517%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203519%_
             gx#current-compilation-target
             _%target203524%_
             gxc#current-compile-gsc-options
             _%gsc-options203529%_
             gxc#current-compile-keep-scm
             _%keep-scm?203531%_
             gxc#current-compile-verbose
             _%verbosity203533%_
             gxc#current-compile-debug
             _%debug203535%_
             gxc#current-compile-timestamp
             __tmp203763
             gxc#current-compile-context
             __tmp203762
             gxc#current-compile-parallel
             _%parallel?203537%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203546%_)
        (let ((_%opts203548%_ '()))
          (gxc#compile-exe__% _%srcpath203546%_ _%opts203548%_))))
    (define gxc#compile-exe
      (lambda _g203767_
        (let ((_g203766_ (let () (declare (not safe)) (##length _g203767_))))
          (cond ((let () (declare (not safe)) (##fx= _g203766_ 1))
                 (apply gxc#compile-exe__0 _g203767_))
                ((let () (declare (not safe)) (##fx= _g203766_ 2))
                 (apply gxc#compile-exe__% _g203767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203767_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203510%_ _%opts203511%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203511%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203510%_
             _%opts203511%_)
            (gxc#compile-executable-module/separate
             _%ctx203510%_
             _%opts203511%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203310%_ _%opts203311%_)
        (letrec ((_%generate-stub203313%_
                  (lambda (_%builtin-modules203506%_)
                    (let ((_%mod-main203508%_
                           (gxc#find-runtime-symbol _%ctx203310%_ 'main)))
                      (let ((__tmp203768
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203506%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203768))
                      (let ((__tmp203769
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203508%_
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
                        (##write __tmp203769))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203314%_
                  (lambda (_%gerbil-libdir203504%_)
                    (let ((__tmp203770
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203504%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203770 read))))
                 (_%replace-extension203315%_
                  (lambda (_%path203501%_ _%ext203502%_)
                    (string-append
                     (path-strip-extension _%path203501%_)
                     _%ext203502%_)))
                 (_%replace-extension-with-c203316%_
                  (lambda (_%path203499%_)
                    (_%replace-extension203315%_ _%path203499%_ '".c")))
                 (_%replace-extension-with-object203317%_
                  (lambda (_%path203497%_)
                    (_%replace-extension203315%_
                     _%path203497%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?203318%_
                  (lambda (_%ctx203495%_)
                    (if (_%exclude-module?203320%_ _%ctx203495%_)
                        '#f
                        (not (_%libgerbil-module?203319%_ _%ctx203495%_)))))
                 (_%libgerbil-module?203319%_
                  (lambda (_%ctx203488%_)
                    (let ((_%id-str203490%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203488%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203320%_ _%id-str203490%_)
                          '#f
                          (let ((_%$e203492%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203490%_))))
                            (if _%$e203492%_
                                _%$e203492%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203490%_))))))))
                 (_%exclude-module?203320%_
                  (lambda (_%ctx-or-str203484%_)
                    (let ((_%str203486%_
                           (if (string? _%ctx-or-str203484%_)
                               _%ctx-or-str203484%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203484%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203486%_))))
                 (_%not-file-empty?203321%_
                  (lambda (_%path203482%_)
                    (not (gxc#file-empty? _%path203482%_))))
                 (_%fold-libgerbil-runtime-scm203322%_
                  (lambda (_%gerbil-staticdir203475%_ _%libgerbil-scm203476%_)
                    (let ((_%gerbil-runtime-scm203480%_
                           (let ((__tmp203771
                                  (lambda (_%rtm203478%_)
                                    (path-expand
                                     (let ((__tmp203772
                                            (let ((__tmp203773
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203478%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203773
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203772 '".scm"))
                                     _%gerbil-staticdir203475%_))))
                             (declare (not safe))
                             (##map __tmp203771 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203323%_
                       (append _%gerbil-runtime-scm203480%_
                               _%libgerbil-scm203476%_)))))
                 (_%remove-duplicates203323%_
                  (lambda (_%strlst203435%_)
                    (let _%loop203437%_ ((_%rest203439%_ _%strlst203435%_)
                                         (_%result203440%_ '()))
                      (let* ((_%rest203441203449%_ _%rest203439%_)
                             (_%else203443203457%_
                              (lambda () (reverse! _%result203440%_)))
                             (_%K203445203463%_
                              (lambda (_%rest203460%_ _%path203461%_)
                                (if (member _%path203461%_ _%result203440%_)
                                    (_%loop203437%_
                                     _%rest203460%_
                                     _%result203440%_)
                                    (_%loop203437%_
                                     _%rest203460%_
                                     (cons _%path203461%_
                                           _%result203440%_))))))
                        (if (pair? _%rest203441203449%_)
                            (let ((_%hd203446203466%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203441203449%_)))
                                  (_%tl203447203468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203441203449%_))))
                              (let* ((_%path203471%_ _%hd203446203466%_)
                                     (_%rest203473%_ _%tl203447203468%_))
                                (_%K203445203463%_
                                 _%rest203473%_
                                 _%path203471%_)))
                            (_%else203443203457%_))))))
                 (_%compile-stub203324%_
                  (lambda (_%output-scm203331%_ _%output-bin203332%_)
                    (let* ((_%gerbil-home203334%_
                            (let ((__tmp203774
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203774)))
                           (_%gerbil-libdir203336%_
                            (path-expand '"lib" _%gerbil-home203334%_))
                           (_%gerbil-staticdir203338%_
                            (path-expand '"static" _%gerbil-libdir203336%_))
                           (_%deps203340%_
                            (gxc#find-runtime-module-deps _%ctx203310%_))
                           (_%libgerbil-deps203342%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203319%_
                               _%deps203340%_)))
                           (_%libgerbil-scm203344%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203342%_)))
                           (_%libgerbil-scm203346%_
                            (_%fold-libgerbil-runtime-scm203322%_
                             _%gerbil-staticdir203338%_
                             _%libgerbil-scm203344%_))
                           (_%libgerbil-c203348%_
                            (map _%replace-extension-with-c203316%_
                                 _%libgerbil-scm203346%_))
                           (_%libgerbil-o203350%_
                            (map _%replace-extension-with-object203317%_
                                 _%libgerbil-scm203346%_))
                           (_%src-deps203352%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203318%_
                               _%deps203340%_)))
                           (_%src-deps-scm203354%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203352%_)))
                           (_%src-deps-scm203356%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203321%_
                               _%src-deps-scm203354%_)))
                           (_%src-deps-scm203358%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203356%_)))
                           (_%src-deps-c203360%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c203316%_
                                     _%src-deps-scm203358%_)))
                           (_%src-deps-o203362%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object203317%_
                                     _%src-deps-scm203358%_)))
                           (_%src-bin-scm203364%_
                            (gxc#find-static-module-file _%ctx203310%_))
                           (_%src-bin-scm203366%_
                            (path-expand _%src-bin-scm203364%_))
                           (_%src-bin-c203368%_
                            (_%replace-extension-with-c203316%_
                             _%src-bin-scm203366%_))
                           (_%src-bin-o203370%_
                            (_%replace-extension-with-object203317%_
                             _%src-bin-scm203366%_))
                           (_%output-bin203372%_
                            (path-expand _%output-bin203332%_))
                           (_%output-scm203374%_
                            (path-expand _%output-scm203331%_))
                           (_%output-c203376%_
                            (_%replace-extension-with-c203316%_
                             _%output-scm203374%_))
                           (_%output-o203378%_
                            (_%replace-extension-with-object203317%_
                             _%output-scm203374%_))
                           (_%output_-c203380%_
                            (_%replace-extension203315%_
                             _%output-scm203374%_
                             '"_.c"))
                           (_%output_-o203382%_
                            (_%replace-extension203315%_
                             _%output-scm203374%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts203384%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203386%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203388%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203338%_))
                           (_%output-ld-opts203390%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203392%_
                            (_%get-libgerbil-ld-opts203314%_
                             _%gerbil-libdir203336%_))
                           (_%rpath203394%_
                            (gxc#gerbil-rpath _%gerbil-libdir203336%_))
                           (_%builtin-modules203398%_
                            (_%remove-duplicates203323%_
                             (let ((__tmp203775
                                    (let ((__tmp203777
                                           (lambda (_%mod203396%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203396%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203776
                                           (cons _%ctx203310%_
                                                 _%deps203340%_)))
                                      (declare (not safe))
                                      (##map __tmp203777 __tmp203776))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203775)))))
                      (letrec ((_%compile-obj203401%_
                                (lambda (_%scm-path203408%_ _%c-path203409%_)
                                  (let* ((_%o-path203411%_
                                          (_%replace-extension203315%_
                                           _%c-path203409%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock203413%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203411%_
                                             '".lock")))
                                         (_%locked203415%_ '#f)
                                         (_%unlock203418%_
                                          (lambda ()
                                            (close-port _%locked203415%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203413%_)))))
                                    (let _%retry203421%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203413%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203421%_))
                                          (begin
                                            (set! _%locked203415%_
                                                  (let ((__tmp203778
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203413%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203778)))
                                            (if _%locked203415%_
                                                '#!void
                                                (_%retry203421%_)))))
                                    (let ((__tmp203780
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203411%_)))
                                                     (not _%scm-path203408%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203408%_
                                                        _%o-path203411%_)))
                                                 (let ((_%gsc-cc-opts203432%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203782 (cons _%c-path203409%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203782
                            _%gsc-static-opts203388%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203781 _%gsc-cc-opts203432%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203779
                                           (lambda () (_%unlock203418%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203780
                                       __tmp203779))))))
                        (let ((__tmp203783
                               (lambda ()
                                 (let ((__tmp203784
                                        (path-directory _%output-bin203372%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203784)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203783))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203374%_
                         (lambda ()
                           (_%generate-stub203313%_
                            _%builtin-modules203398%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203406%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203785
                                                   (let ((__tmp203786
                                                          (let ((__tmp203787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203366%_
                               (cons _%output-scm203374%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203787 _%src-deps-scm203358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203786
                                                      _%libgerbil-c203348%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203785
                                               _%gsc-link-opts203384%_))))
                                     (for-each
                                      _%compile-obj203401%_
                                      (let ((__tmp203788
                                             (cons _%src-bin-scm203366%_
                                                   (cons _%output-scm203374%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203788
                                         _%src-deps-scm203358%_))
                                      (let ((__tmp203789
                                             (cons _%src-bin-c203368%_
                                                   (cons _%output-c203376%_
                                                         (cons _%output_-c203380%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203789
                                         _%src-deps-c203360%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203372%_
                                                        (let ((__tmp203790
                                                               (cons _%src-bin-o203370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203378%_
                                   (cons _%output_-o203382%_
                                         (let ((__tmp203791
                                                (let ((__tmp203792
                                                       (let ((__tmp203794
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203336%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203392%_))))
                     (__tmp203793
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203394%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203794 __tmp203793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203792
                                                   _%output-ld-opts203390%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203791
                                            _%libgerbil-o203350%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203790 _%src-deps-o203362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203795
                                            (cons _%output-c203376%_
                                                  (cons _%output_-c203380%_
                                                        (cons _%output-o203378%_
                                                              (cons _%output_-o203382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203795)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203406%_))
                                  (_%compile-it203406%_)))
                            '#!void))))))
          (let* ((_%output-bin203326%_
                  (gxc#compile-exe-output-file _%ctx203310%_ _%opts203311%_))
                 (_%output-scm203328%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203326%_ '"__exe.scm"))))
            (_%compile-stub203324%_
             _%output-scm203328%_
             _%output-bin203326%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx203132%_ _%opts203133%_)
        (letrec ((_%reset-declare203135%_
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
                 (_%generate-stub203136%_
                  (lambda (_%deps203301%_)
                    (let ((_%mod-main203303%_
                           (gxc#find-runtime-symbol _%ctx203132%_ 'main))
                          (_%reset-decl203304%_ (_%reset-declare203135%_))
                          (_%user-decl203305%_ (_%user-declare203137%_)))
                      (for-each
                       (lambda (_%dep203307%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203304%_))
                         (newline)
                         (if _%user-decl203305%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203305%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203796
                                (cons 'include (cons _%dep203307%_ '()))))
                           (declare (not safe))
                           (##write __tmp203796))
                         (newline))
                       _%deps203301%_)
                      (let ((__tmp203797
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203797))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare203137%_
                  (lambda ()
                    (let* ((_%gsc-opts203206%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts203133%_)))
                           (_%gsc-prelude203208%_
                            (if _%gsc-opts203206%_
                                (member '"-prelude" _%gsc-opts203206%_)
                                '#f))
                           (_%gsc-prelude203210%_
                            (if _%gsc-prelude203208%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203208%_)))
                                '#f)))
                      (let _%lp203213%_ ((_%rest203215%_
                                          (cons _%gsc-prelude203210%_ '()))
                                         (_%user-decls203216%_ '()))
                        (let* ((_%rest203217203225%_ _%rest203215%_)
                               (_%else203219203233%_
                                (lambda ()
                                  (if (null? _%user-decls203216%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203216%_)))))
                               (_%K203221203289%_
                                (lambda (_%rest203236%_ _%expr203237%_)
                                  (let* ((_%expr203238203250%_ _%expr203237%_)
                                         (_%else203241203258%_
                                          (lambda ()
                                            (_%lp203213%_
                                             _%rest203236%_
                                             _%user-decls203216%_))))
                                    (let ((_%K203246203279%_
                                           (lambda (_%decls203277%_)
                                             (_%lp203213%_
                                              _%rest203236%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203216%_
                                                 _%decls203277%_)))))
                                          (_%K203243203264%_
                                           (lambda (_%exprs203262%_)
                                             (_%lp203213%_
                                              (append _%exprs203262%_
                                                      _%rest203236%_)
                                              _%user-decls203216%_))))
                                      (if (pair? _%expr203238203250%_)
                                          (let ((_%tl203248203284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203238203250%_)))
                                                (_%hd203247203282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203238203250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203247203282%_
                                                         'declare))
                                                (let ((_%decls203287%_
                                                       _%tl203248203284%_))
                                                  (_%K203246203279%_
                                                   _%decls203287%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203247203282%_
                                                             'begin))
                                                    (let ((_%exprs203272%_
                                                           _%tl203248203284%_))
                                                      (_%K203243203264%_
                                                       _%exprs203272%_))
                                                    (_%else203241203258%_))))
                                          (_%else203241203258%_)))))))
                          (if (pair? _%rest203217203225%_)
                              (let ((_%hd203222203292%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203217203225%_)))
                                    (_%tl203223203294%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203217203225%_))))
                                (let* ((_%expr203297%_ _%hd203222203292%_)
                                       (_%rest203299%_ _%tl203223203294%_))
                                  (_%K203221203289%_
                                   _%rest203299%_
                                   _%expr203297%_)))
                              (_%else203219203233%_)))))))
                 (_%compile-stub203138%_
                  (lambda (_%output-scm203145%_ _%output-bin203146%_)
                    (let* ((_%gerbil-home203148%_
                            (let ((__tmp203798
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203798)))
                           (_%gerbil-libdir203150%_
                            (path-expand '"lib" _%gerbil-home203148%_))
                           (_%runtime203152%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp203154%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home203148%_))
                           (_%include-gambit-sharp203156%_
                            (gxc#include-source _%gambit-sharp203154%_))
                           (_%bin-scm203158%_
                            (gxc#find-static-module-file _%ctx203132%_))
                           (_%deps203160%_
                            (gxc#find-runtime-module-deps _%ctx203132%_))
                           (_%deps203162%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps203160%_)))
                           (_%deps203167%_
                            (let ((__tmp203799
                                   (lambda (_%$obj203164%_)
                                     (not (gxc#file-empty? _%$obj203164%_)))))
                              (declare (not safe))
                              (##filter __tmp203799 _%deps203162%_)))
                           (_%deps203171%_
                            (let ((__tmp203800
                                   (lambda (_%f203169%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f203169%_
                                             _%runtime203152%_))))))
                              (declare (not safe))
                              (##filter __tmp203800 _%deps203167%_)))
                           (_%output-base203173%_
                            (let ((__tmp203801
                                   (path-strip-extension
                                    _%output-scm203145%_)))
                              (declare (not safe))
                              (##string-append __tmp203801)))
                           (_%output-c203175%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203173%_ '".c")))
                           (_%output-o203177%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base203173%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_203179%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203173%_ '"_.c")))
                           (_%output-o_203181%_
                            (let ((__tmp203802
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base203173%_
                               __tmp203802)))
                           (_%gsc-link-opts203183%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203185%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203187%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir203150%_)))
                           (_%output-ld-opts203189%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203191%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp203156%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp203156%_
                                            '()))))
                           (_%gsc-link-opts203193%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts203183%_
                               _%gsc-gx-macros203191%_)))
                           (_%rpath203195%_
                            (gxc#gerbil-rpath _%gerbil-libdir203150%_))
                           (_%default-ld-options203197%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203803
                             (lambda ()
                               (let ((__tmp203804
                                      (path-directory _%output-bin203146%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203804)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203803))
                      (gxc#with-output-to-scheme-file
                       _%output-scm203145%_
                       (lambda ()
                         (_%generate-stub203136%_
                          (let ((__tmp203805
                                 (let ((__tmp203806
                                        (cons _%bin-scm203158%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203806
                                    _%deps203171%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203805 _%runtime203152%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203203%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_203179%_
                                                      (let ((__tmp203807
                                                             (cons _%output-scm203145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203807 _%gsc-link-opts203193%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203808
                                                 (let ((__tmp203809
                                                        (cons _%output-c203175%_
                                                              (cons _%output-c_203179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203809
                                                    _%gsc-static-opts203187%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203808
                                             _%gsc-cc-opts203185%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin203146%_
                                                      (cons _%output-o203177%_
                                                            (cons _%output-o_203181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203810
                                 (let ((__tmp203812
                                        (cons '"-L"
                                              (cons _%gerbil-libdir203150%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203197%_))))
                                       (__tmp203811
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203195%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203812 __tmp203811))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203810
                             _%output-ld-opts203189%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203203%_))
                                (_%compile-it203203%_)))
                          '#!void)))))
          (let* ((_%output-bin203140%_
                  (gxc#compile-exe-output-file _%ctx203132%_ _%opts203133%_))
                 (_%output-scm203142%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203140%_ '"__exe.scm"))))
            (_%compile-stub203138%_
             _%output-scm203142%_
             _%output-bin203140%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx203081%_ _%id203082%_)
        (let ((_%$e203128%_
               (let ((__tmp203814
                      (lambda (_%e203083203085%_)
                        (let* ((_%g203087203097%_ _%e203083203085%_)
                               (_%else203089203105%_ (lambda () '#f))
                               (_%K203091203109%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g203087203097%_
                                 'gx#module-export::t))
                              (let* ((_%e203092203112%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203087203097%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e203093203115%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203087203097%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e203094203118%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203087203097%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e203094203118%_ '0))
                                    (let ((_%e203095203121%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g203087203097%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g203123203125%_)
                                             (eq? _%g203123203125%_
                                                  _%id203082%_))
                                           _%e203095203121%_)
                                          (_%K203091203109%_)
                                          (_%else203089203105%_)))
                                    (_%else203089203105%_)))
                              (_%else203089203105%_)))))
                     (__tmp203813
                      (##structure-ref
                       _%ctx203081%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203814 __tmp203813))))
          (if _%$e203128%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e203128%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx203072%_ _%id203073%_)
        (let ((_%$e203075%_
               (gxc#find-export-binding _%ctx203072%_ _%id203073%_)))
          (if _%$e203075%_
              ((lambda (_%bind203078%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind203078%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id203073%_)))
                 (##structure-ref _%bind203078%_ '1 gx#binding::t '#f))
               _%$e203075%_)
              (let ((__tmp203815
                     (##structure-ref
                      _%ctx203072%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203815
                 _%id203073%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202938%_)
        (letrec* ((_%ht202940%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202941%_
                   (lambda (_%in203017%_ _%phi203018%_)
                     (let ((_%iphi203020%_
                            (fx+ _%phi203018%_
                                 (##direct-structure-ref
                                  _%in203017%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports203021%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in203017%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp203023%_ ((_%rest203025%_ _%imports203021%_)
                                          (_%r203026%_ '()))
                         (let* ((_%rest203027203035%_ _%rest203025%_)
                                (_%else203029203043%_ (lambda () _%r203026%_))
                                (_%K203031203060%_
                                 (lambda (_%rest203046%_ _%in203047%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in203047%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi203020%_))
                                           (_%lp203023%_
                                            _%rest203046%_
                                            (cons _%in203047%_ _%r203026%_))
                                           (_%lp203023%_
                                            _%rest203046%_
                                            _%r203026%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in203047%_
                                              'gx#module-import::t))
                                           (let ((_%iphi203051%_
                                                  (fx+ _%phi203018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in203047%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi203051%_))
                                                 (_%lp203023%_
                                                  _%rest203046%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in203047%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r203026%_))
                                                 (_%lp203023%_
                                                  _%rest203046%_
                                                  _%r203026%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in203047%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi203054%_
                                                      (fx+ _%iphi203020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in203047%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi203054%_))
                                                     (_%lp203023%_
                                                      _%rest203046%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in203047%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r203026%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi203054%_))
                                                         (_%lp203023%_
                                                          _%rest203046%_
                                                          (let ((__tmp203816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202941%_
                          _%in203047%_
                          _%iphi203020%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r203026%_ __tmp203816)))
                 (_%lp203023%_ _%rest203046%_ _%r203026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp203023%_
                                                _%rest203046%_
                                                _%r203026%_)))))))
                           (if (pair? _%rest203027203035%_)
                               (let ((_%hd203032203063%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest203027203035%_)))
                                     (_%tl203033203065%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest203027203035%_))))
                                 (let* ((_%in203068%_ _%hd203032203063%_)
                                        (_%rest203070%_ _%tl203033203065%_))
                                   (_%K203031203060%_
                                    _%rest203070%_
                                    _%in203068%_)))
                               (_%else203029203043%_)))))))
                  (_%find-deps202942%_
                   (lambda (_%rest202950%_ _%deps202951%_)
                     (let* ((_%rest202952202960%_ _%rest202950%_)
                            (_%else202954202968%_ (lambda () _%deps202951%_))
                            (_%K202956203005%_
                             (lambda (_%rest202971%_ _%hd202972%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202972%_
                                      'gx#module-context::t))
                                   (let ((_%id202975%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202972%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202976%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202972%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202940%_
                                            _%id202975%_))
                                         (_%find-deps202942%_
                                          _%rest202971%_
                                          _%deps202951%_)
                                         (let ((_%$e202979%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202972%_))))
                                           (if _%$e202979%_
                                               ((lambda (_%pre202982%_)
                                                  (let ((_%xdeps202984%_
                                                         (_%find-deps202942%_
                                                          (cons _%pre202982%_
                                                                _%imports202976%_)
                                                          _%deps202951%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202940%_
                                                       _%id202975%_
                                                       _%hd202972%_))
                                                    (_%find-deps202942%_
                                                     _%rest202971%_
                                                     (cons _%hd202972%_
                                                           _%xdeps202984%_))))
                                                _%$e202979%_)
                                               (let ((_%xdeps202987%_
                                                      (_%find-deps202942%_
                                                       _%imports202976%_
                                                       _%deps202951%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202940%_
                                                    _%id202975%_
                                                    _%hd202972%_))
                                                 (_%find-deps202942%_
                                                  _%rest202971%_
                                                  (cons _%hd202972%_
                                                        _%xdeps202987%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202972%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202990%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202972%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202940%_
                                                _%id202990%_))
                                             (_%find-deps202942%_
                                              _%rest202971%_
                                              _%deps202951%_)
                                             (let ((_%xdeps202994%_
                                                    (_%find-deps202942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202972%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202951%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202940%_
                                                      _%id202990%_))
                                                   (_%find-deps202942%_
                                                    _%rest202971%_
                                                    _%xdeps202994%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202940%_
                                                        _%id202990%_
                                                        _%hd202972%_))
                                                     (_%find-deps202942%_
                                                      _%rest202971%_
                                                      (cons _%hd202972%_
                                                            _%xdeps202994%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202972%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202972%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202942%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202972%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202971%_)
                                                _%deps202951%_)
                                               (_%find-deps202942%_
                                                _%rest202971%_
                                                _%deps202951%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202972%_
                                                  'gx#module-export::t))
                                               (_%find-deps202942%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202972%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202971%_)
                                                _%deps202951%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202972%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202972%_ '2 '#f '#f)))
               (_%find-deps202942%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202972%_ '1 '#f '#f))
                      _%rest202971%_)
                _%deps202951%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202972%_ '2 '#f '#f)))
                   (let ((_%xdeps203001%_
                          (_%import-set-template202941%_ _%hd202972%_ '0)))
                     (_%find-deps202942%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202971%_ _%xdeps203001%_))
                      _%deps202951%_))
                   (_%find-deps202942%_ _%rest202971%_ _%deps202951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202972%_))))))))))
                       (if (pair? _%rest202952202960%_)
                           (let ((_%hd202957203008%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202952202960%_)))
                                 (_%tl202958203010%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202952202960%_))))
                             (let* ((_%hd203013%_ _%hd202957203008%_)
                                    (_%rest203015%_ _%tl202958203010%_))
                               (_%K202956203005%_
                                _%rest203015%_
                                _%hd203013%_)))
                           (_%else202954202968%_))))))
          (let ((__tmp203817
                 (filter gx#expander-context-id
                         (_%find-deps202942%_
                          (let ((_%$e202944%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202938%_))))
                            (if _%$e202944%_
                                ((lambda (_%pre202947%_)
                                   (cons _%pre202947%_
                                         (##structure-ref
                                          _%ctx202938%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202944%_)
                                (##structure-ref
                                 _%ctx202938%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203817)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202868%_)
        (let* ((_%context-id202870%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202868%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202868%_ '1 '#f '#f))
                    (string->symbol _%ctx202868%_)))
               (_%scm202872%_
                (let ((__tmp203818
                       (gxc#static-module-name _%context-id202870%_)))
                  (declare (not safe))
                  (##string-append __tmp203818 '".scm")))
               (_%dirs202874%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202880%_
                (let ((_%user-libpath202876%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202876%_
                      (let ((_%user-libpath202878%_
                             (path-expand '"lib" _%user-libpath202876%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202878%_ _%dirs202874%_))
                            _%dirs202874%_
                            (cons _%user-libpath202878%_ _%dirs202874%_)))
                      _%dirs202874%_)))
               (_%dirs202890%_
                (let ((_%$e202882%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202882%_
                      ((lambda (_%g202884202886%_)
                         (cons _%g202884202886%_ _%dirs202880%_))
                       _%$e202882%_)
                      _%dirs202880%_)))
               (_%dirs202896%_
                (let ((__tmp203819
                       (lambda (_%g202891202893%_)
                         (path-expand '"static" _%g202891202893%_))))
                  (declare (not safe))
                  (##map __tmp203819 _%dirs202890%_))))
          (let _%lp202899%_ ((_%rest202901%_ _%dirs202896%_))
            (let* ((_%rest202902202910%_ _%rest202901%_)
                   (_%else202904202918%_
                    (lambda ()
                      (let ((__tmp203820
                             (##structure-ref
                              _%ctx202868%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203820
                         _%scm202872%_))))
                   (_%K202906202926%_
                    (lambda (_%rest202921%_ _%dir202922%_)
                      (let ((_%path202924%_
                             (path-expand _%scm202872%_ _%dir202922%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202924%_))
                            _%path202924%_
                            (_%lp202899%_ _%rest202921%_))))))
              (if (pair? _%rest202902202910%_)
                  (let ((_%hd202907202929%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202902202910%_)))
                        (_%tl202908202931%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202902202910%_))))
                    (let* ((_%dir202934%_ _%hd202907202929%_)
                           (_%rest202936%_ _%tl202908202931%_))
                      (_%K202906202926%_ _%rest202936%_ _%dir202934%_)))
                  (_%else202904202918%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202866%_)
        (zero? (let ((__tmp203821 (file-info _%path202866%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203821)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202862%_)
        (let ((__tmp203825
               (lambda ()
                 (let ((__tmp203826
                        (##structure-ref
                         _%ctx202862%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203826))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203827
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202862%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203827))
                     '#!void)
                 (gxc#collect-bindings _%ctx202862%_)
                 (gxc#compile-runtime-code _%ctx202862%_)
                 (gxc#compile-meta-code _%ctx202862%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202862%_)
                     '#!void)))
              (__tmp203824
               (let ((__obj203748
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203748))
                 __obj203748))
              (__tmp203823 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203822
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
           __tmp203825
           gx#current-expander-context
           _%ctx202862%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203824
           gxc#current-compile-runtime-sections
           __tmp203823
           gxc#current-compile-runtime-names
           __tmp203822))))
    (define gxc#collect-bindings
      (lambda (_%ctx202860%_)
        (let ((__tmp203828
               (##structure-ref _%ctx202860%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203828))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202808%_)
        (letrec ((_%compile1202810%_
                  (lambda (_%ctx202849%_)
                    (let* ((_%code202851%_
                            (##structure-ref
                             _%ctx202849%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202855%_
                            (let ((_%idstr202853%_
                                   (let ((__tmp203829
                                          (##structure-ref
                                           _%ctx202849%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203829))))
                              (declare (not safe))
                              (##string-append _%idstr202853%_ '"~0")))
                           (_%rtc?202857%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202851%_))))
                      (if _%rtc?202857%_
                          (let ((__tmp203830
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203830
                             _%ctx202849%_
                             _%rtm202855%_))
                          '#!void)
                      (_%generate-runtime-code202812%_
                       _%ctx202849%_
                       _%code202851%_
                       (if _%rtc?202857%_ _%rtm202855%_ '#f)))))
                 (_%context-timestamp202811%_
                  (lambda (_%ctx202847%_)
                    (let ((__tmp203831
                           (let ((__tmp203832
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202847%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203832 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203831))))
                 (_%generate-runtime-code202812%_
                  (lambda (_%ctx202819%_ _%code202820%_ _%rtm202821%_)
                    (let* ((_%runtime-code?202823%_ (if _%rtm202821%_ '#t '#f))
                           (_%lifts202825%_ (box '()))
                           (_%runtime-code202828%_
                            (if _%runtime-code?202823%_
                                (let ((__tmp203835
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202820%_))))
                                      (__tmp203834
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203833
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203835
                                   gx#current-expander-context
                                   _%ctx202819%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202825%_
                                   gxc#current-compile-marks
                                   __tmp203834
                                   gxc#current-compile-identifiers
                                   __tmp203833))
                                '#f))
                           (_%runtime-code202830%_
                            (if _%runtime-code?202823%_
                                (if (null? (unbox _%lifts202825%_))
                                    _%runtime-code202828%_
                                    (cons 'begin
                                          (let ((__tmp203837
                                                 (cons _%runtime-code202828%_
                                                       '()))
                                                (__tmp203836
                                                 (reverse (unbox _%lifts202825%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203837
                                             __tmp203836))))
                                '#f))
                           (_%runtime-code202832%_
                            (if _%runtime-code?202823%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202811%_
                                                         _%ctx202819%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202830%_ '())))
                                '#f))
                           (_%loader-code202835%_
                            (let ((__tmp203838
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202820%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203838
                               gx#current-expander-context
                               _%ctx202819%_)))
                           (_%loader-code202837%_
                            (cons 'begin
                                  (cons _%loader-code202835%_
                                        (cons (if _%runtime-code?202823%_
                                                  (cons 'load-module
                                                        (cons _%rtm202821%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202839%_
                            (gxc#compile-output-file _%ctx202819%_ '0 '".scm"))
                           (_%scmrt202841%_
                            (gxc#compile-output-file
                             _%ctx202819%_
                             '#f
                             '".scm"))
                           (_%scms202843%_
                            (gxc#compile-static-output-file _%ctx202819%_)))
                      (if _%runtime-code?202823%_
                          (gxc#compile-scm-file__0
                           _%scm0202839%_
                           _%runtime-code202832%_)
                          '#!void)
                      (let ((__tmp203839
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202841%_
                                _%loader-code202837%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203839
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202843%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202843%_))
                          '#!void)
                      (if _%runtime-code?202823%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202839%_ _%scms202843%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202843%_ void)))))))
          (let* ((_%all-modules202814%_
                  (cons _%ctx202808%_ (gxc#lift-nested-modules _%ctx202808%_)))
                 (__tmp203840
                  (lambda (_%ctx202816%_)
                    (let ((__tmp203841
                           (lambda () (_%compile1202810%_ _%ctx202816%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203841
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203840 _%all-modules202814%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202708%_)
        (letrec ((_%compile-ssi202710%_
                  (lambda (_%code202776%_)
                    (let* ((_%path202778%_
                            (gxc#compile-output-file
                             _%ctx202708%_
                             '#f
                             '".ssi"))
                           (_%prelude202790%_
                            (let* ((_%super202780%_
                                    (##structure-ref
                                     _%ctx202708%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202782%_
                                    (##structure-ref
                                     _%super202780%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202782%_
                                  ((lambda (_%g202784202786%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202784202786%_)))
                                   _%$e202782%_)
                                  ':<root>)))
                           (_%ns202792%_
                            (##structure-ref
                             _%ctx202708%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202794%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202708%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202802%_
                            (let ((_%$e202796%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202794%_ '#\/))))
                              (if _%$e202796%_
                                  ((lambda (_%x202799%_)
                                     (let ((__tmp203842
                                            (substring
                                             _%idstr202794%_
                                             '0
                                             _%x202799%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203842)))
                                   _%$e202796%_)
                                  '#f)))
                           (_%rt202804%_
                            (let ((__tmp203843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203843 _%ctx202708%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202778%_))
                      (gxc#with-output-to-scheme-file
                       _%path202778%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202790%_))
                         (if _%pkg202802%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202802%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202792%_))
                         (newline)
                         (pretty-print _%code202776%_)
                         (if _%rt202804%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202804%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202711%_
                  (lambda (_%part202716%_)
                    (let* ((_%part202717202730%_ _%part202716%_)
                           (_%E202719202734%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202717202730%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202720202745%_
                            (lambda (_%code202737%_
                                     _%n202738%_
                                     _%phi202739%_
                                     _%phi-ctx202740%_)
                              (let ((_%code202743%_
                                     (let ((__tmp203844
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202737%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203844
                                        gx#current-expander-context
                                        _%phi-ctx202740%_
                                        gx#current-expander-phi
                                        _%phi202739%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202708%_
                                  _%n202738%_
                                  '".scm")
                                 _%code202743%_
                                 '#t)))))
                      (if (pair? _%part202717202730%_)
                          (let ((_%hd202721202748%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202717202730%_)))
                                (_%tl202722202750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202717202730%_))))
                            (let ((_%phi-ctx202753%_ _%hd202721202748%_))
                              (if (pair? _%tl202722202750%_)
                                  (let ((_%hd202723202755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202722202750%_)))
                                        (_%tl202724202757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202722202750%_))))
                                    (let ((_%phi202760%_ _%hd202723202755%_))
                                      (if (pair? _%tl202724202757%_)
                                          (let ((_%hd202725202762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202724202757%_)))
                                                (_%tl202726202764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202724202757%_))))
                                            (let ((_%n202767%_
                                                   _%hd202725202762%_))
                                              (if (pair? _%tl202726202764%_)
                                                  (let ((_%hd202727202769%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202726202764%_)))
                                                        (_%tl202728202771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202726202764%_))))
                                                    (let ((_%code202774%_
                                                           _%hd202727202769%_))
                                                      (if (null? _%tl202728202771%_)
                                                          (_%K202720202745%_
                                                           _%code202774%_
                                                           _%n202767%_
                                                           _%phi202760%_
                                                           _%phi-ctx202753%_)
                                                          (_%E202719202734%_))))
                                                  (_%E202719202734%_))))
                                          (_%E202719202734%_))))
                                  (_%E202719202734%_))))
                          (_%E202719202734%_))))))
          (let ((_g203845_ (gxc#generate-meta-code _%ctx202708%_)))
            (begin
              (let ((_g203846_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203845_)
                           (##values-length _g203845_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203846_ 2)))
                    (error "Context expects 2 values" _g203846_)))
              (let ((_%ssi-code202713%_
                     (let () (declare (not safe)) (##values-ref _g203845_ 0)))
                    (_%phi-code202714%_
                     (let () (declare (not safe)) (##values-ref _g203845_ 1))))
                (begin
                  (_%compile-ssi202710%_ _%ssi-code202713%_)
                  (for-each _%compile-phi202711%_ _%phi-code202714%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202690%_)
        (let* ((_%path202692%_
                (gxc#compile-output-file _%ctx202690%_ '#f '".ssxi.ss"))
               (_%code202694%_
                (let ((__tmp203847
                       (##structure-ref
                        _%ctx202690%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203847)))
               (_%idstr202696%_
                (symbol->string
                 (##structure-ref
                  _%ctx202690%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202704%_
                (let ((_%$e202698%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202696%_ '#\/))))
                  (if _%$e202698%_
                      ((lambda (_%x202701%_)
                         (let ((__tmp203848
                                (substring _%idstr202696%_ '0 _%x202701%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203848)))
                       _%$e202698%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202692%_))
          (gxc#with-output-to-scheme-file
           _%path202692%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202704%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202704%_))
                 '#!void)
             (newline)
             (pretty-print _%code202694%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202683%_)
        (let* ((_%state202685%_
                (let ((__obj203749
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203749 _%ctx202683%_))
                  __obj203749))
               (_%ssi-code202687%_
                (let ((__tmp203849
                       (##structure-ref
                        _%ctx202683%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202685%_
                   __tmp203849))))
          (values _%ssi-code202687%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202685%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202676%_)
        (let ((_%lifts202678%_ (box '())))
          (let ((__tmp203852
                 (lambda ()
                   (let ((_%code202681%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202676%_))))
                     (if (null? (unbox _%lifts202678%_))
                         _%code202681%_
                         (cons 'begin
                               (let ((__tmp203854 (cons _%code202681%_ '()))
                                     (__tmp203853
                                      (reverse (unbox _%lifts202678%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203854 __tmp203853)))))))
                (__tmp203851
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203850
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203852
             gxc#current-compile-lift
             _%lifts202678%_
             gxc#current-compile-marks
             __tmp203851
             gxc#current-compile-identifiers
             __tmp203850)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202672%_)
        (let ((_%modules202674%_ (box '())))
          (let ((__tmp203855
                 (##structure-ref _%ctx202672%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202674%_ __tmp203855))
          (reverse (unbox _%modules202674%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202652%_ _%code202653%_ _%phi?202654%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202652%_))
        (gxc#with-output-to-scheme-file
         _%path202652%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203856
                                           (if _%phi?202654%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203856)))))))
           (pretty-print _%code202653%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202658%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202652%_ _%phi?202654%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203857
                         (cons 'compile-file (cons _%path202652%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202658%_ __tmp203857))
                  (_%compile-it202658%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202663%_ _%code202664%_)
        (let ((_%phi?202666%_ '#f))
          (gxc#compile-scm-file__%
           _%path202663%_
           _%code202664%_
           _%phi?202666%_))))
    (define gxc#compile-scm-file
      (lambda _g203859_
        (let ((_g203858_ (let () (declare (not safe)) (##length _g203859_))))
          (cond ((let () (declare (not safe)) (##fx= _g203858_ 2))
                 (apply gxc#compile-scm-file__0 _g203859_))
                ((let () (declare (not safe)) (##fx= _g203858_ 3))
                 (apply gxc#compile-scm-file__% _g203859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203859_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202553%_)
        (let _%lp202555%_ ((_%rest202557%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202558%_ '()))
          (let* ((_%rest202559202579%_ _%rest202557%_)
                 (_%else202563202587%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202558%_)))
                        (reverse _%opts202558%_)))))
            (let ((_%K202573202630%_
                   (lambda (_%rest202628%_)
                     (_%lp202555%_ _%rest202628%_ _%opts202558%_)))
                  (_%K202568202612%_
                   (lambda (_%rest202610%_)
                     (_%lp202555%_ _%rest202610%_ _%opts202558%_)))
                  (_%K202565202594%_
                   (lambda (_%rest202591%_ _%opt202592%_)
                     (_%lp202555%_
                      _%rest202591%_
                      (cons _%opt202592%_ _%opts202558%_)))))
              (if (pair? _%rest202559202579%_)
                  (let ((_%tl202575202635%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202559202579%_)))
                        (_%hd202574202633%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202559202579%_))))
                    (if (equal? _%hd202574202633%_ '"-cc-options")
                        (if (pair? _%tl202575202635%_)
                            (let* ((_%tl202577202638%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202575202635%_)))
                                   (_%rest202641%_ _%tl202577202638%_))
                              (_%K202573202630%_ _%rest202641%_))
                            (let ((_%opt202602%_ _%hd202574202633%_)
                                  (_%rest202604%_ _%tl202575202635%_))
                              (_%K202565202594%_
                               _%rest202604%_
                               _%opt202602%_)))
                        (if (equal? _%hd202574202633%_ '"-ld-options")
                            (if (pair? _%tl202575202635%_)
                                (let* ((_%tl202572202620%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202575202635%_)))
                                       (_%rest202623%_ _%tl202572202620%_))
                                  (_%K202568202612%_ _%rest202623%_))
                                (let ((_%opt202602%_ _%hd202574202633%_)
                                      (_%rest202604%_ _%tl202575202635%_))
                                  (_%K202565202594%_
                                   _%rest202604%_
                                   _%opt202602%_)))
                            (let ((_%opt202602%_ _%hd202574202633%_)
                                  (_%rest202604%_ _%tl202575202635%_))
                              (_%K202565202594%_
                               _%rest202604%_
                               _%opt202602%_)))))
                  (_%else202563202587%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202647%_ '#f)) (gxc#gsc-link-options__% _%phi?202647%_))))
    (define gxc#gsc-link-options
      (lambda _g203861_
        (let ((_g203860_ (let () (declare (not safe)) (##length _g203861_))))
          (cond ((let () (declare (not safe)) (##fx= _g203860_ 0))
                 (apply gxc#gsc-link-options__0 _g203861_))
                ((let () (declare (not safe)) (##fx= _g203860_ 1))
                 (apply gxc#gsc-link-options__% _g203861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203861_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202402%_ _%static?202398202403%_ _%phi?202405%_)
        (let ((_%static?202407%_
               (if (eq? _%static?202398202403%_ absent-value)
                   '#f
                   _%static?202398202403%_)))
          (if _%phi?202405%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202409%_ ((_%rest202411%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202412%_ '()))
                (let* ((_%rest202413202439%_ _%rest202411%_)
                       (_%else202418202447%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202412%_)))
                              (reverse! _%opts202412%_)))))
                  (let ((_%K202433202510%_
                         (lambda (_%rest202507%_ _%opt202508%_)
                           (if _%static?202407%_
                               (_%lp202409%_
                                _%rest202507%_
                                (cons _%opt202508%_
                                      (cons '"-cc-options" _%opts202412%_)))
                               (_%lp202409%_ _%rest202507%_ _%opts202412%_))))
                        (_%K202428202487%_
                         (lambda (_%rest202484%_ _%opt202485%_)
                           (_%lp202409%_
                            _%rest202484%_
                            (cons _%opt202485%_
                                  (cons '"-cc-options" _%opts202412%_)))))
                        (_%K202423202467%_
                         (lambda (_%rest202465%_)
                           (_%lp202409%_ _%rest202465%_ _%opts202412%_)))
                        (_%K202420202453%_
                         (lambda (_%rest202451%_)
                           (_%lp202409%_ _%rest202451%_ _%opts202412%_))))
                    (if (pair? _%rest202413202439%_)
                        (let ((_%tl202435202515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202413202439%_)))
                              (_%hd202434202513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202413202439%_))))
                          (if (equal? _%hd202434202513%_ '"-cc-options")
                              (if (pair? _%tl202435202515%_)
                                  (let ((_%tl202437202520%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202435202515%_)))
                                        (_%hd202436202518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202435202515%_))))
                                    (if (equal? _%hd202436202518%_ '"-Bstatic")
                                        (let ((_%opt202523%_
                                               _%hd202436202518%_)
                                              (_%rest202525%_
                                               _%tl202437202520%_))
                                          (_%K202433202510%_
                                           _%rest202525%_
                                           _%opt202523%_))
                                        (let ((_%opt202500%_
                                               _%hd202436202518%_)
                                              (_%rest202502%_
                                               _%tl202437202520%_))
                                          (_%K202428202487%_
                                           _%rest202502%_
                                           _%opt202500%_))))
                                  (let ((_%rest202459%_ _%tl202435202515%_))
                                    (_%K202420202453%_ _%rest202459%_)))
                              (if (equal? _%hd202434202513%_ '"-ld-options")
                                  (if (pair? _%tl202435202515%_)
                                      (let* ((_%tl202427202475%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202435202515%_)))
                                             (_%rest202478%_
                                              _%tl202427202475%_))
                                        (_%K202423202467%_ _%rest202478%_))
                                      (let ((_%rest202459%_
                                             _%tl202435202515%_))
                                        (_%K202420202453%_ _%rest202459%_)))
                                  (let ((_%rest202459%_ _%tl202435202515%_))
                                    (_%K202420202453%_ _%rest202459%_)))))
                        (_%else202418202447%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202530%_ _%static?202398202531%_)
        (let ((_%phi?202533%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202530%_
           _%static?202398202531%_
           _%phi?202533%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203863_
        (let ((_g203862_ (let () (declare (not safe)) (##length _g203863_))))
          (cond ((let () (declare (not safe)) (##fx= _g203862_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203863_))
                ((let () (declare (not safe)) (##fx= _g203862_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203863_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202542%_ . _%args202543%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202542%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202542%_
                  'static:
                  absent-value))
               _%args202543%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202399202549%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202399202549%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202247%_ _%static?202243202248%_ _%phi?202250%_)
        (let ((_%static?202252%_
               (if (eq? _%static?202243202248%_ absent-value)
                   '#f
                   _%static?202243202248%_)))
          (if _%phi?202250%_
              '()
              (let _%lp202254%_ ((_%rest202256%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202257%_ '()))
                (let* ((_%rest202258202284%_ _%rest202256%_)
                       (_%else202263202292%_
                        (lambda () (reverse! _%opts202257%_))))
                  (let ((_%K202278202355%_
                         (lambda (_%rest202352%_ _%opt202353%_)
                           (if _%static?202252%_
                               (_%lp202254%_
                                _%rest202352%_
                                (cons _%opt202353%_
                                      (cons '"-ld-options" _%opts202257%_)))
                               (_%lp202254%_ _%rest202352%_ _%opts202257%_))))
                        (_%K202273202332%_
                         (lambda (_%rest202329%_ _%opt202330%_)
                           (_%lp202254%_
                            _%rest202329%_
                            (cons _%opt202330%_
                                  (cons '"-ld-options" _%opts202257%_)))))
                        (_%K202268202312%_
                         (lambda (_%rest202310%_)
                           (_%lp202254%_ _%rest202310%_ _%opts202257%_)))
                        (_%K202265202298%_
                         (lambda (_%rest202296%_)
                           (_%lp202254%_ _%rest202296%_ _%opts202257%_))))
                    (if (pair? _%rest202258202284%_)
                        (let ((_%tl202280202360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202258202284%_)))
                              (_%hd202279202358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202258202284%_))))
                          (if (equal? _%hd202279202358%_ '"-ld-options")
                              (if (pair? _%tl202280202360%_)
                                  (let ((_%tl202282202365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202280202360%_)))
                                        (_%hd202281202363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202280202360%_))))
                                    (if (equal? _%hd202281202363%_ '"-static")
                                        (let ((_%opt202368%_
                                               _%hd202281202363%_)
                                              (_%rest202370%_
                                               _%tl202282202365%_))
                                          (_%K202278202355%_
                                           _%rest202370%_
                                           _%opt202368%_))
                                        (let ((_%opt202345%_
                                               _%hd202281202363%_)
                                              (_%rest202347%_
                                               _%tl202282202365%_))
                                          (_%K202273202332%_
                                           _%rest202347%_
                                           _%opt202345%_))))
                                  (let ((_%rest202304%_ _%tl202280202360%_))
                                    (_%K202265202298%_ _%rest202304%_)))
                              (if (equal? _%hd202279202358%_ '"-cc-options")
                                  (if (pair? _%tl202280202360%_)
                                      (let* ((_%tl202272202320%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202280202360%_)))
                                             (_%rest202323%_
                                              _%tl202272202320%_))
                                        (_%K202268202312%_ _%rest202323%_))
                                      (let ((_%rest202304%_
                                             _%tl202280202360%_))
                                        (_%K202265202298%_ _%rest202304%_)))
                                  (let ((_%rest202304%_ _%tl202280202360%_))
                                    (_%K202265202298%_ _%rest202304%_)))))
                        (_%else202263202292%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202375%_ _%static?202243202376%_)
        (let ((_%phi?202378%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202375%_
           _%static?202243202376%_
           _%phi?202378%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203865_
        (let ((_g203864_ (let () (declare (not safe)) (##length _g203865_))))
          (cond ((let () (declare (not safe)) (##fx= _g203864_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203865_))
                ((let () (declare (not safe)) (##fx= _g203864_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203865_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202387%_ . _%args202388%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202387%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202387%_
                  'static:
                  absent-value))
               _%args202388%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202244202394%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202244202394%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202238%_)
        (let ((_%user-staticdir202240%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202238%_
                       '" -I "
                       _%user-staticdir202240%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp202150%_ ((_%rest202152%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202153%_ '()))
          (let* ((_%rest202154202174%_ _%rest202152%_)
                 (_%else202158202182%_ (lambda () _%opts202153%_)))
            (let ((_%K202168202225%_
                   (lambda (_%rest202223%_)
                     (_%lp202150%_ _%rest202223%_ _%opts202153%_)))
                  (_%K202163202203%_
                   (lambda (_%rest202200%_ _%opt202201%_)
                     (_%lp202150%_
                      _%rest202200%_
                      (let ((__tmp203866
                             (let ((__tmp203867
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202201%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203867))))
                        (declare (not safe))
                        (##append _%opts202153%_ __tmp203866)))))
                  (_%K202160202188%_
                   (lambda (_%rest202186%_)
                     (_%lp202150%_ _%rest202186%_ _%opts202153%_))))
              (if (pair? _%rest202154202174%_)
                  (let ((_%tl202170202230%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202154202174%_)))
                        (_%hd202169202228%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202154202174%_))))
                    (if (equal? _%hd202169202228%_ '"-cc-options")
                        (if (pair? _%tl202170202230%_)
                            (let* ((_%tl202172202233%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202170202230%_)))
                                   (_%rest202236%_ _%tl202172202233%_))
                              (_%K202168202225%_ _%rest202236%_))
                            (let ((_%rest202194%_ _%tl202170202230%_))
                              (_%K202160202188%_ _%rest202194%_)))
                        (if (equal? _%hd202169202228%_ '"-ld-options")
                            (if (pair? _%tl202170202230%_)
                                (let ((_%tl202167202213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202170202230%_)))
                                      (_%hd202166202211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202170202230%_))))
                                  (let ((_%opt202216%_ _%hd202166202211%_)
                                        (_%rest202218%_ _%tl202167202213%_))
                                    (_%K202163202203%_
                                     _%rest202218%_
                                     _%opt202216%_)))
                                (let ((_%rest202194%_ _%tl202170202230%_))
                                  (_%K202160202188%_ _%rest202194%_)))
                            (let ((_%rest202194%_ _%tl202170202230%_))
                              (_%K202160202188%_ _%rest202194%_)))))
                  (_%else202158202182%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str202147%_)
        (not (let () (declare (not safe)) (string-empty? _%str202147%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path202140%_ _%phi?202141%_)
        (let ((_%gsc-link-opts202143%_
               (gxc#gsc-link-options__% _%phi?202141%_))
              (_%gsc-cc-opts202144%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?202141%_))
              (_%gsc-ld-opts202145%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?202141%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203868
                  (let ((__tmp203869
                         (let ((__tmp203870 (cons _%path202140%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203870
                            _%gsc-link-opts202143%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203869 _%gsc-ld-opts202145%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203868 _%gsc-cc-opts202144%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx202106%_ _%n202107%_ _%ext202108%_)
        (letrec ((_%module-relative-path202110%_
                  (lambda (_%ctx202138%_)
                    (path-strip-directory
                     (let ((__tmp203871
                            (##structure-ref
                             _%ctx202138%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203871)))))
                 (_%module-source-directory202111%_
                  (lambda (_%ctx202134%_)
                    (path-directory
                     (let ((_%mpath202136%_
                            (##structure-ref
                             _%ctx202134%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath202136%_)
                           _%mpath202136%_
                           (last _%mpath202136%_))))))
                 (_%section-string202112%_
                  (lambda (_%n202128%_)
                    (if (number? _%n202128%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n202128%_))
                        (if (symbol? _%n202128%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n202128%_))
                            (if (string? _%n202128%_)
                                _%n202128%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n202128%_)))))))
                 (_%file-name202113%_
                  (lambda (_%path202126%_)
                    (if _%n202107%_
                        (string-append
                         _%path202126%_
                         '"~"
                         (_%section-string202112%_ _%n202107%_)
                         _%ext202108%_)
                        (string-append _%path202126%_ _%ext202108%_))))
                 (_%file-path202114%_
                  (lambda ()
                    (let ((_%$e202120%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e202120%_
                          ((lambda (_%outdir202123%_)
                             (path-expand
                              (_%file-name202113%_
                               (let ((__tmp203872
                                      (##structure-ref
                                       _%ctx202106%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203872)))
                              _%outdir202123%_))
                           _%$e202120%_)
                          (path-expand
                           (_%file-name202113%_
                            (_%module-relative-path202110%_ _%ctx202106%_))
                           (_%module-source-directory202111%_
                            _%ctx202106%_)))))))
          (let ((_%path202116%_ (_%file-path202114%_)))
            (let ((__tmp203873
                   (lambda ()
                     (let ((__tmp203874 (path-directory _%path202116%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203874)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203873))
            _%path202116%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx202087%_)
        (letrec ((_%file-name202089%_
                  (lambda (_%id202104%_)
                    (let ((__tmp203875 (gxc#static-module-name _%id202104%_)))
                      (declare (not safe))
                      (##string-append __tmp203875 '".scm"))))
                 (_%file-path202090%_
                  (lambda ()
                    (let* ((_%file202096%_
                            (_%file-name202089%_
                             (##structure-ref
                              _%ctx202087%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e202098%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e202098%_
                          ((lambda (_%outdir202101%_)
                             (path-expand
                              _%file202096%_
                              (path-expand '"static" _%outdir202101%_)))
                           _%$e202098%_)
                          (path-expand _%file202096%_ '"static"))))))
          (let ((_%path202092%_ (_%file-path202090%_)))
            (let ((__tmp203876
                   (lambda ()
                     (let ((__tmp203877 (path-directory _%path202092%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203877)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203876))
            _%path202092%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx202080%_ _%opts202081%_)
        (let ((_%$e202083%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts202081%_))))
          (if _%$e202083%_
              _%$e202083%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx202080%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr202070%_)
        (if (string? _%idstr202070%_)
            (let* ((_%str202073%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr202070%_)))
                   (_%strs202075%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str202073%_ '#\/))))
              (declare (not safe))
              (string-join _%strs202075%_ '"__"))
            (if (symbol? _%idstr202070%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr202070%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr202070%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203878
               (let ((__tmp203879 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203879 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203878))))
    (define gxc#invoke__%
      (lambda (_%@@keywords202034%_
               _%stdout-redirection202030202035%_
               _%stderr-redirection202031202037%_
               _%program202039%_
               _%args202040%_)
        (let* ((_%stdout-redirection202042%_
                (if (eq? _%stdout-redirection202030202035%_ absent-value)
                    '#f
                    _%stdout-redirection202030202035%_))
               (_%stderr-redirection202044%_
                (if (eq? _%stderr-redirection202031202037%_ absent-value)
                    '#f
                    _%stderr-redirection202031202037%_)))
          (let ((__tmp203880 (cons _%program202039%_ _%args202040%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203880))
          (let* ((_%proc202046%_
                  (open-process
                   (cons 'path:
                         (cons _%program202039%_
                               (cons 'arguments:
                                     (cons _%args202040%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection202042%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection202044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output202051%_
                  (if (or _%stdout-redirection202042%_
                          _%stderr-redirection202044%_)
                      (read-line _%proc202046%_ '#f)
                      '#f))
                 (_%status202054%_ (process-status _%proc202046%_)))
            (let () (declare (not safe)) (##close-port _%proc202046%_))
            (if (zero? _%status202054%_)
                '#!void
                (begin
                  (display _%output202051%_)
                  (let ((__tmp203881 (cons _%program202039%_ _%args202040%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203881
                     _%status202054%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords202059%_ . _%args202060%_)
        (apply gxc#invoke__%
               _%@@keywords202059%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202059%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202059%_
                  'stderr-redirection:
                  absent-value))
               _%args202060%_)))
    (define gxc#invoke
      (lambda _%args202032202066%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args202032202066%_)))))
