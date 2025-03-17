(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1742222184)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203749 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203749))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203750 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203750))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203606%_ _%fun203607%_)
        (with-output-to-file
         (cons 'path: (cons _%path203606%_ gxc#scheme-file-settings))
         _%fun203607%_)))
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
      (lambda (_%gerbil-libdir203601%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203601%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path203599%_)
        (let ((__tmp203751 (object->string _%path203599%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp203751 '")"))))
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
      (lambda (_%dir203597%_) (delete-file-or-directory _%dir203597%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203553%_ _%opts203554%_)
        (if (string? _%srcpath203553%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203553%_)))
        (let* ((_%outdir203556%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203554%_)))
               (_%invoke-gsc?203558%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203554%_)))
               (_%target203563%_
                (let ((_%$e203560%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203554%_))))
                  (if _%$e203560%_ _%$e203560%_ 'C)))
               (_%gsc-options203568%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203563%_) '()))
                        (let ((_%$e203565%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203554%_))))
                          (if _%$e203565%_ _%$e203565%_ '()))))
               (_%keep-scm?203570%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203554%_)))
               (_%verbosity203572%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203554%_)))
               (_%optimize203574%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203554%_)))
               (_%debug203576%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203554%_)))
               (_%gen-ssxi203578%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203554%_)))
               (_%parallel?203580%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203554%_))))
          (if _%outdir203556%_
              (let ((__tmp203752
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203556%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203752))
              '#!void)
          (if _%optimize203574%_
              (let ((__tmp203753
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203753))
              '#!void)
          (let ((__tmp203756
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203553%_))
                   (gxc#compile-top-module
                    (let ((__tmp203757
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203553%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203757)))))
                (__tmp203755 (gxc#compile-timestamp))
                (__tmp203754
                 (cons 'compile-module (cons _%srcpath203553%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203756
             gxc#current-compile-output-dir
             _%outdir203556%_
             gx#current-compilation-target
             _%target203563%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203558%_
             gxc#current-compile-gsc-options
             _%gsc-options203568%_
             gxc#current-compile-keep-scm
             _%keep-scm?203570%_
             gxc#current-compile-verbose
             _%verbosity203572%_
             gxc#current-compile-optimize
             _%optimize203574%_
             gxc#current-compile-debug
             _%debug203576%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203578%_
             gxc#current-compile-timestamp
             __tmp203755
             gxc#current-compile-context
             __tmp203754
             gxc#current-compile-parallel
             _%parallel?203580%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203590%_)
        (let ((_%opts203592%_ '()))
          (gxc#compile-module__% _%srcpath203590%_ _%opts203592%_))))
    (define gxc#compile-module
      (lambda _g203759_
        (let ((_g203758_ (let () (declare (not safe)) (##length _g203759_))))
          (cond ((let () (declare (not safe)) (##fx= _g203758_ 1))
                 (apply gxc#compile-module__0 _g203759_))
                ((let () (declare (not safe)) (##fx= _g203758_ 2))
                 (apply gxc#compile-module__% _g203759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203759_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203513%_ _%opts203514%_)
        (if (string? _%srcpath203513%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203513%_)))
        (let* ((_%outdir203516%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203514%_)))
               (_%invoke-gsc?203518%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203514%_)))
               (_%target203523%_
                (let ((_%$e203520%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203514%_))))
                  (if _%$e203520%_ _%$e203520%_ 'C)))
               (_%gsc-options203528%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203523%_) '()))
                        (let ((_%$e203525%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203514%_))))
                          (if _%$e203525%_ _%$e203525%_ '()))))
               (_%keep-scm?203530%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203514%_)))
               (_%verbosity203532%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203514%_)))
               (_%debug203534%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203514%_)))
               (_%parallel?203536%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203514%_))))
          (if _%outdir203516%_
              (let ((__tmp203760
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203516%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203760))
              '#!void)
          (let ((__tmp203763
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203513%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203764
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203513%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203764))
                    _%opts203514%_)))
                (__tmp203762 (gxc#compile-timestamp))
                (__tmp203761 (cons 'compile-exe (cons _%srcpath203513%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203763
             gxc#current-compile-output-dir
             _%outdir203516%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203518%_
             gx#current-compilation-target
             _%target203523%_
             gxc#current-compile-gsc-options
             _%gsc-options203528%_
             gxc#current-compile-keep-scm
             _%keep-scm?203530%_
             gxc#current-compile-verbose
             _%verbosity203532%_
             gxc#current-compile-debug
             _%debug203534%_
             gxc#current-compile-timestamp
             __tmp203762
             gxc#current-compile-context
             __tmp203761
             gxc#current-compile-parallel
             _%parallel?203536%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203545%_)
        (let ((_%opts203547%_ '()))
          (gxc#compile-exe__% _%srcpath203545%_ _%opts203547%_))))
    (define gxc#compile-exe
      (lambda _g203766_
        (let ((_g203765_ (let () (declare (not safe)) (##length _g203766_))))
          (cond ((let () (declare (not safe)) (##fx= _g203765_ 1))
                 (apply gxc#compile-exe__0 _g203766_))
                ((let () (declare (not safe)) (##fx= _g203765_ 2))
                 (apply gxc#compile-exe__% _g203766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203766_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203509%_ _%opts203510%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203510%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203509%_
             _%opts203510%_)
            (gxc#compile-executable-module/separate
             _%ctx203509%_
             _%opts203510%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203309%_ _%opts203310%_)
        (letrec ((_%generate-stub203312%_
                  (lambda (_%builtin-modules203505%_)
                    (let ((_%mod-main203507%_
                           (gxc#find-runtime-symbol _%ctx203309%_ 'main)))
                      (let ((__tmp203767
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203505%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203767))
                      (let ((__tmp203768
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203507%_
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
                        (##write __tmp203768))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203313%_
                  (lambda (_%gerbil-libdir203503%_)
                    (let ((__tmp203769
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203503%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203769 read))))
                 (_%replace-extension203314%_
                  (lambda (_%path203500%_ _%ext203501%_)
                    (string-append
                     (path-strip-extension _%path203500%_)
                     _%ext203501%_)))
                 (_%replace-extension-with-c203315%_
                  (lambda (_%path203498%_)
                    (_%replace-extension203314%_ _%path203498%_ '".c")))
                 (_%replace-extension-with-object203316%_
                  (lambda (_%path203496%_)
                    (_%replace-extension203314%_
                     _%path203496%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?203317%_
                  (lambda (_%ctx203494%_)
                    (if (_%exclude-module?203319%_ _%ctx203494%_)
                        '#f
                        (not (_%libgerbil-module?203318%_ _%ctx203494%_)))))
                 (_%libgerbil-module?203318%_
                  (lambda (_%ctx203487%_)
                    (let ((_%id-str203489%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203487%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203319%_ _%id-str203489%_)
                          '#f
                          (let ((_%$e203491%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203489%_))))
                            (if _%$e203491%_
                                _%$e203491%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203489%_))))))))
                 (_%exclude-module?203319%_
                  (lambda (_%ctx-or-str203483%_)
                    (let ((_%str203485%_
                           (if (string? _%ctx-or-str203483%_)
                               _%ctx-or-str203483%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203483%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203485%_))))
                 (_%not-file-empty?203320%_
                  (lambda (_%path203481%_)
                    (not (gxc#file-empty? _%path203481%_))))
                 (_%fold-libgerbil-runtime-scm203321%_
                  (lambda (_%gerbil-staticdir203474%_ _%libgerbil-scm203475%_)
                    (let ((_%gerbil-runtime-scm203479%_
                           (let ((__tmp203770
                                  (lambda (_%rtm203477%_)
                                    (path-expand
                                     (let ((__tmp203771
                                            (let ((__tmp203772
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203477%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203772
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203771 '".scm"))
                                     _%gerbil-staticdir203474%_))))
                             (declare (not safe))
                             (##map __tmp203770 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203322%_
                       (append _%gerbil-runtime-scm203479%_
                               _%libgerbil-scm203475%_)))))
                 (_%remove-duplicates203322%_
                  (lambda (_%strlst203434%_)
                    (let _%loop203436%_ ((_%rest203438%_ _%strlst203434%_)
                                         (_%result203439%_ '()))
                      (let* ((_%rest203440203448%_ _%rest203438%_)
                             (_%else203442203456%_
                              (lambda () (reverse! _%result203439%_)))
                             (_%K203444203462%_
                              (lambda (_%rest203459%_ _%path203460%_)
                                (if (member _%path203460%_ _%result203439%_)
                                    (_%loop203436%_
                                     _%rest203459%_
                                     _%result203439%_)
                                    (_%loop203436%_
                                     _%rest203459%_
                                     (cons _%path203460%_
                                           _%result203439%_))))))
                        (if (pair? _%rest203440203448%_)
                            (let ((_%hd203445203465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203440203448%_)))
                                  (_%tl203446203467%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203440203448%_))))
                              (let* ((_%path203470%_ _%hd203445203465%_)
                                     (_%rest203472%_ _%tl203446203467%_))
                                (_%K203444203462%_
                                 _%rest203472%_
                                 _%path203470%_)))
                            (_%else203442203456%_))))))
                 (_%compile-stub203323%_
                  (lambda (_%output-scm203330%_ _%output-bin203331%_)
                    (let* ((_%gerbil-home203333%_
                            (let ((__tmp203773
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203773)))
                           (_%gerbil-libdir203335%_
                            (path-expand '"lib" _%gerbil-home203333%_))
                           (_%gerbil-staticdir203337%_
                            (path-expand '"static" _%gerbil-libdir203335%_))
                           (_%deps203339%_
                            (gxc#find-runtime-module-deps _%ctx203309%_))
                           (_%libgerbil-deps203341%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203318%_
                               _%deps203339%_)))
                           (_%libgerbil-scm203343%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203341%_)))
                           (_%libgerbil-scm203345%_
                            (_%fold-libgerbil-runtime-scm203321%_
                             _%gerbil-staticdir203337%_
                             _%libgerbil-scm203343%_))
                           (_%libgerbil-c203347%_
                            (map _%replace-extension-with-c203315%_
                                 _%libgerbil-scm203345%_))
                           (_%libgerbil-o203349%_
                            (map _%replace-extension-with-object203316%_
                                 _%libgerbil-scm203345%_))
                           (_%src-deps203351%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203317%_
                               _%deps203339%_)))
                           (_%src-deps-scm203353%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203351%_)))
                           (_%src-deps-scm203355%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203320%_
                               _%src-deps-scm203353%_)))
                           (_%src-deps-scm203357%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203355%_)))
                           (_%src-deps-c203359%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c203315%_
                                     _%src-deps-scm203357%_)))
                           (_%src-deps-o203361%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object203316%_
                                     _%src-deps-scm203357%_)))
                           (_%src-bin-scm203363%_
                            (gxc#find-static-module-file _%ctx203309%_))
                           (_%src-bin-scm203365%_
                            (path-expand _%src-bin-scm203363%_))
                           (_%src-bin-c203367%_
                            (_%replace-extension-with-c203315%_
                             _%src-bin-scm203365%_))
                           (_%src-bin-o203369%_
                            (_%replace-extension-with-object203316%_
                             _%src-bin-scm203365%_))
                           (_%output-bin203371%_
                            (path-expand _%output-bin203331%_))
                           (_%output-scm203373%_
                            (path-expand _%output-scm203330%_))
                           (_%output-c203375%_
                            (_%replace-extension-with-c203315%_
                             _%output-scm203373%_))
                           (_%output-o203377%_
                            (_%replace-extension-with-object203316%_
                             _%output-scm203373%_))
                           (_%output_-c203379%_
                            (_%replace-extension203314%_
                             _%output-scm203373%_
                             '"_.c"))
                           (_%output_-o203381%_
                            (_%replace-extension203314%_
                             _%output-scm203373%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts203383%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203385%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203387%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203337%_))
                           (_%output-ld-opts203389%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203391%_
                            (_%get-libgerbil-ld-opts203313%_
                             _%gerbil-libdir203335%_))
                           (_%rpath203393%_
                            (gxc#gerbil-rpath _%gerbil-libdir203335%_))
                           (_%builtin-modules203397%_
                            (_%remove-duplicates203322%_
                             (let ((__tmp203774
                                    (let ((__tmp203776
                                           (lambda (_%mod203395%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203395%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203775
                                           (cons _%ctx203309%_
                                                 _%deps203339%_)))
                                      (declare (not safe))
                                      (##map __tmp203776 __tmp203775))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203774)))))
                      (letrec ((_%compile-obj203400%_
                                (lambda (_%scm-path203407%_ _%c-path203408%_)
                                  (let* ((_%o-path203410%_
                                          (_%replace-extension203314%_
                                           _%c-path203408%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock203412%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203410%_
                                             '".lock")))
                                         (_%locked203414%_ '#f)
                                         (_%unlock203417%_
                                          (lambda ()
                                            (close-port _%locked203414%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203412%_)))))
                                    (let _%retry203420%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203412%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203420%_))
                                          (begin
                                            (set! _%locked203414%_
                                                  (let ((__tmp203777
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203412%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203777)))
                                            (if _%locked203414%_
                                                '#!void
                                                (_%retry203420%_)))))
                                    (let ((__tmp203779
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203410%_)))
                                                     (not _%scm-path203407%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203407%_
                                                        _%o-path203410%_)))
                                                 (let ((_%gsc-cc-opts203431%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203781 (cons _%c-path203408%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203781
                            _%gsc-static-opts203387%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203780 _%gsc-cc-opts203431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203778
                                           (lambda () (_%unlock203417%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203779
                                       __tmp203778))))))
                        (let ((__tmp203782
                               (lambda ()
                                 (let ((__tmp203783
                                        (path-directory _%output-bin203371%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203783)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203782))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203373%_
                         (lambda ()
                           (_%generate-stub203312%_
                            _%builtin-modules203397%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203405%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203784
                                                   (let ((__tmp203785
                                                          (let ((__tmp203786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203365%_
                               (cons _%output-scm203373%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203786 _%src-deps-scm203357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203785
                                                      _%libgerbil-c203347%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203784
                                               _%gsc-link-opts203383%_))))
                                     (for-each
                                      _%compile-obj203400%_
                                      (let ((__tmp203787
                                             (cons _%src-bin-scm203365%_
                                                   (cons _%output-scm203373%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203787
                                         _%src-deps-scm203357%_))
                                      (let ((__tmp203788
                                             (cons _%src-bin-c203367%_
                                                   (cons _%output-c203375%_
                                                         (cons _%output_-c203379%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203788
                                         _%src-deps-c203359%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203371%_
                                                        (let ((__tmp203789
                                                               (cons _%src-bin-o203369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203377%_
                                   (cons _%output_-o203381%_
                                         (let ((__tmp203790
                                                (let ((__tmp203791
                                                       (let ((__tmp203793
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203335%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203391%_))))
                     (__tmp203792
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203393%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203793 __tmp203792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203791
                                                   _%output-ld-opts203389%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203790
                                            _%libgerbil-o203349%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203789 _%src-deps-o203361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203794
                                            (cons _%output-c203375%_
                                                  (cons _%output_-c203379%_
                                                        (cons _%output-o203377%_
                                                              (cons _%output_-o203381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203794)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203405%_))
                                  (_%compile-it203405%_)))
                            '#!void))))))
          (let* ((_%output-bin203325%_
                  (gxc#compile-exe-output-file _%ctx203309%_ _%opts203310%_))
                 (_%output-scm203327%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203325%_ '"__exe.scm"))))
            (_%compile-stub203323%_
             _%output-scm203327%_
             _%output-bin203325%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx203131%_ _%opts203132%_)
        (letrec ((_%reset-declare203134%_
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
                 (_%generate-stub203135%_
                  (lambda (_%deps203300%_)
                    (let ((_%mod-main203302%_
                           (gxc#find-runtime-symbol _%ctx203131%_ 'main))
                          (_%reset-decl203303%_ (_%reset-declare203134%_))
                          (_%user-decl203304%_ (_%user-declare203136%_)))
                      (for-each
                       (lambda (_%dep203306%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203303%_))
                         (newline)
                         (if _%user-decl203304%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203304%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203795
                                (cons 'include (cons _%dep203306%_ '()))))
                           (declare (not safe))
                           (##write __tmp203795))
                         (newline))
                       _%deps203300%_)
                      (let ((__tmp203796
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203796))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare203136%_
                  (lambda ()
                    (let* ((_%gsc-opts203205%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts203132%_)))
                           (_%gsc-prelude203207%_
                            (if _%gsc-opts203205%_
                                (member '"-prelude" _%gsc-opts203205%_)
                                '#f))
                           (_%gsc-prelude203209%_
                            (if _%gsc-prelude203207%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203207%_)))
                                '#f)))
                      (let _%lp203212%_ ((_%rest203214%_
                                          (cons _%gsc-prelude203209%_ '()))
                                         (_%user-decls203215%_ '()))
                        (let* ((_%rest203216203224%_ _%rest203214%_)
                               (_%else203218203232%_
                                (lambda ()
                                  (if (null? _%user-decls203215%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203215%_)))))
                               (_%K203220203288%_
                                (lambda (_%rest203235%_ _%expr203236%_)
                                  (let* ((_%expr203237203249%_ _%expr203236%_)
                                         (_%else203240203257%_
                                          (lambda ()
                                            (_%lp203212%_
                                             _%rest203235%_
                                             _%user-decls203215%_))))
                                    (let ((_%K203245203278%_
                                           (lambda (_%decls203276%_)
                                             (_%lp203212%_
                                              _%rest203235%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203215%_
                                                 _%decls203276%_)))))
                                          (_%K203242203263%_
                                           (lambda (_%exprs203261%_)
                                             (_%lp203212%_
                                              (append _%exprs203261%_
                                                      _%rest203235%_)
                                              _%user-decls203215%_))))
                                      (if (pair? _%expr203237203249%_)
                                          (let ((_%tl203247203283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203237203249%_)))
                                                (_%hd203246203281%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203237203249%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203246203281%_
                                                         'declare))
                                                (let ((_%decls203286%_
                                                       _%tl203247203283%_))
                                                  (_%K203245203278%_
                                                   _%decls203286%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203246203281%_
                                                             'begin))
                                                    (let ((_%exprs203271%_
                                                           _%tl203247203283%_))
                                                      (_%K203242203263%_
                                                       _%exprs203271%_))
                                                    (_%else203240203257%_))))
                                          (_%else203240203257%_)))))))
                          (if (pair? _%rest203216203224%_)
                              (let ((_%hd203221203291%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203216203224%_)))
                                    (_%tl203222203293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203216203224%_))))
                                (let* ((_%expr203296%_ _%hd203221203291%_)
                                       (_%rest203298%_ _%tl203222203293%_))
                                  (_%K203220203288%_
                                   _%rest203298%_
                                   _%expr203296%_)))
                              (_%else203218203232%_)))))))
                 (_%compile-stub203137%_
                  (lambda (_%output-scm203144%_ _%output-bin203145%_)
                    (let* ((_%gerbil-home203147%_
                            (let ((__tmp203797
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203797)))
                           (_%gerbil-libdir203149%_
                            (path-expand '"lib" _%gerbil-home203147%_))
                           (_%runtime203151%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp203153%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home203147%_))
                           (_%include-gambit-sharp203155%_
                            (gxc#include-source _%gambit-sharp203153%_))
                           (_%bin-scm203157%_
                            (gxc#find-static-module-file _%ctx203131%_))
                           (_%deps203159%_
                            (gxc#find-runtime-module-deps _%ctx203131%_))
                           (_%deps203161%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps203159%_)))
                           (_%deps203166%_
                            (let ((__tmp203798
                                   (lambda (_%$obj203163%_)
                                     (not (gxc#file-empty? _%$obj203163%_)))))
                              (declare (not safe))
                              (##filter __tmp203798 _%deps203161%_)))
                           (_%deps203170%_
                            (let ((__tmp203799
                                   (lambda (_%f203168%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f203168%_
                                             _%runtime203151%_))))))
                              (declare (not safe))
                              (##filter __tmp203799 _%deps203166%_)))
                           (_%output-base203172%_
                            (let ((__tmp203800
                                   (path-strip-extension
                                    _%output-scm203144%_)))
                              (declare (not safe))
                              (##string-append __tmp203800)))
                           (_%output-c203174%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203172%_ '".c")))
                           (_%output-o203176%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base203172%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_203178%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203172%_ '"_.c")))
                           (_%output-o_203180%_
                            (let ((__tmp203801
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base203172%_
                               __tmp203801)))
                           (_%gsc-link-opts203182%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203184%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203186%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir203149%_)))
                           (_%output-ld-opts203188%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203190%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp203155%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp203155%_
                                            '()))))
                           (_%gsc-link-opts203192%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts203182%_
                               _%gsc-gx-macros203190%_)))
                           (_%rpath203194%_
                            (gxc#gerbil-rpath _%gerbil-libdir203149%_))
                           (_%default-ld-options203196%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203802
                             (lambda ()
                               (let ((__tmp203803
                                      (path-directory _%output-bin203145%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203803)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203802))
                      (gxc#with-output-to-scheme-file
                       _%output-scm203144%_
                       (lambda ()
                         (_%generate-stub203135%_
                          (let ((__tmp203804
                                 (let ((__tmp203805
                                        (cons _%bin-scm203157%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203805
                                    _%deps203170%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203804 _%runtime203151%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203202%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_203178%_
                                                      (let ((__tmp203806
                                                             (cons _%output-scm203144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203806 _%gsc-link-opts203192%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203807
                                                 (let ((__tmp203808
                                                        (cons _%output-c203174%_
                                                              (cons _%output-c_203178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203808
                                                    _%gsc-static-opts203186%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203807
                                             _%gsc-cc-opts203184%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin203145%_
                                                      (cons _%output-o203176%_
                                                            (cons _%output-o_203180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203809
                                 (let ((__tmp203811
                                        (cons '"-L"
                                              (cons _%gerbil-libdir203149%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203196%_))))
                                       (__tmp203810
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203194%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203811 __tmp203810))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203809
                             _%output-ld-opts203188%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203202%_))
                                (_%compile-it203202%_)))
                          '#!void)))))
          (let* ((_%output-bin203139%_
                  (gxc#compile-exe-output-file _%ctx203131%_ _%opts203132%_))
                 (_%output-scm203141%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203139%_ '"__exe.scm"))))
            (_%compile-stub203137%_
             _%output-scm203141%_
             _%output-bin203139%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx203080%_ _%id203081%_)
        (let ((_%$e203127%_
               (let ((__tmp203813
                      (lambda (_%e203082203084%_)
                        (let* ((_%g203086203096%_ _%e203082203084%_)
                               (_%else203088203104%_ (lambda () '#f))
                               (_%K203090203108%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g203086203096%_
                                 'gx#module-export::t))
                              (let* ((_%e203091203111%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203086203096%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e203092203114%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203086203096%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e203093203117%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g203086203096%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e203093203117%_ '0))
                                    (let ((_%e203094203120%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g203086203096%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g203122203124%_)
                                             (eq? _%g203122203124%_
                                                  _%id203081%_))
                                           _%e203094203120%_)
                                          (_%K203090203108%_)
                                          (_%else203088203104%_)))
                                    (_%else203088203104%_)))
                              (_%else203088203104%_)))))
                     (__tmp203812
                      (##structure-ref
                       _%ctx203080%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203813 __tmp203812))))
          (if _%$e203127%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e203127%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx203071%_ _%id203072%_)
        (let ((_%$e203074%_
               (gxc#find-export-binding _%ctx203071%_ _%id203072%_)))
          (if _%$e203074%_
              ((lambda (_%bind203077%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind203077%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id203072%_)))
                 (##structure-ref _%bind203077%_ '1 gx#binding::t '#f))
               _%$e203074%_)
              (let ((__tmp203814
                     (##structure-ref
                      _%ctx203071%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203814
                 _%id203072%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202937%_)
        (letrec* ((_%ht202939%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202940%_
                   (lambda (_%in203016%_ _%phi203017%_)
                     (let ((_%iphi203019%_
                            (fx+ _%phi203017%_
                                 (##direct-structure-ref
                                  _%in203016%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports203020%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in203016%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp203022%_ ((_%rest203024%_ _%imports203020%_)
                                          (_%r203025%_ '()))
                         (let* ((_%rest203026203034%_ _%rest203024%_)
                                (_%else203028203042%_ (lambda () _%r203025%_))
                                (_%K203030203059%_
                                 (lambda (_%rest203045%_ _%in203046%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in203046%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi203019%_))
                                           (_%lp203022%_
                                            _%rest203045%_
                                            (cons _%in203046%_ _%r203025%_))
                                           (_%lp203022%_
                                            _%rest203045%_
                                            _%r203025%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in203046%_
                                              'gx#module-import::t))
                                           (let ((_%iphi203050%_
                                                  (fx+ _%phi203017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in203046%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi203050%_))
                                                 (_%lp203022%_
                                                  _%rest203045%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in203046%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r203025%_))
                                                 (_%lp203022%_
                                                  _%rest203045%_
                                                  _%r203025%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in203046%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi203053%_
                                                      (fx+ _%iphi203019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in203046%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi203053%_))
                                                     (_%lp203022%_
                                                      _%rest203045%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in203046%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r203025%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi203053%_))
                                                         (_%lp203022%_
                                                          _%rest203045%_
                                                          (let ((__tmp203815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202940%_
                          _%in203046%_
                          _%iphi203019%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r203025%_ __tmp203815)))
                 (_%lp203022%_ _%rest203045%_ _%r203025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp203022%_
                                                _%rest203045%_
                                                _%r203025%_)))))))
                           (if (pair? _%rest203026203034%_)
                               (let ((_%hd203031203062%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest203026203034%_)))
                                     (_%tl203032203064%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest203026203034%_))))
                                 (let* ((_%in203067%_ _%hd203031203062%_)
                                        (_%rest203069%_ _%tl203032203064%_))
                                   (_%K203030203059%_
                                    _%rest203069%_
                                    _%in203067%_)))
                               (_%else203028203042%_)))))))
                  (_%find-deps202941%_
                   (lambda (_%rest202949%_ _%deps202950%_)
                     (let* ((_%rest202951202959%_ _%rest202949%_)
                            (_%else202953202967%_ (lambda () _%deps202950%_))
                            (_%K202955203004%_
                             (lambda (_%rest202970%_ _%hd202971%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202971%_
                                      'gx#module-context::t))
                                   (let ((_%id202974%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202971%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202975%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202971%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202939%_
                                            _%id202974%_))
                                         (_%find-deps202941%_
                                          _%rest202970%_
                                          _%deps202950%_)
                                         (let ((_%$e202978%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202971%_))))
                                           (if _%$e202978%_
                                               ((lambda (_%pre202981%_)
                                                  (let ((_%xdeps202983%_
                                                         (_%find-deps202941%_
                                                          (cons _%pre202981%_
                                                                _%imports202975%_)
                                                          _%deps202950%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202939%_
                                                       _%id202974%_
                                                       _%hd202971%_))
                                                    (_%find-deps202941%_
                                                     _%rest202970%_
                                                     (cons _%hd202971%_
                                                           _%xdeps202983%_))))
                                                _%$e202978%_)
                                               (let ((_%xdeps202986%_
                                                      (_%find-deps202941%_
                                                       _%imports202975%_
                                                       _%deps202950%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202939%_
                                                    _%id202974%_
                                                    _%hd202971%_))
                                                 (_%find-deps202941%_
                                                  _%rest202970%_
                                                  (cons _%hd202971%_
                                                        _%xdeps202986%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202971%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202989%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202971%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202939%_
                                                _%id202989%_))
                                             (_%find-deps202941%_
                                              _%rest202970%_
                                              _%deps202950%_)
                                             (let ((_%xdeps202993%_
                                                    (_%find-deps202941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202971%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202950%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202939%_
                                                      _%id202989%_))
                                                   (_%find-deps202941%_
                                                    _%rest202970%_
                                                    _%xdeps202993%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202939%_
                                                        _%id202989%_
                                                        _%hd202971%_))
                                                     (_%find-deps202941%_
                                                      _%rest202970%_
                                                      (cons _%hd202971%_
                                                            _%xdeps202993%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202971%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202971%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202941%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202971%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202970%_)
                                                _%deps202950%_)
                                               (_%find-deps202941%_
                                                _%rest202970%_
                                                _%deps202950%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202971%_
                                                  'gx#module-export::t))
                                               (_%find-deps202941%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202971%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202970%_)
                                                _%deps202950%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202971%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202971%_ '2 '#f '#f)))
               (_%find-deps202941%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202971%_ '1 '#f '#f))
                      _%rest202970%_)
                _%deps202950%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202971%_ '2 '#f '#f)))
                   (let ((_%xdeps203000%_
                          (_%import-set-template202940%_ _%hd202971%_ '0)))
                     (_%find-deps202941%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202970%_ _%xdeps203000%_))
                      _%deps202950%_))
                   (_%find-deps202941%_ _%rest202970%_ _%deps202950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202971%_))))))))))
                       (if (pair? _%rest202951202959%_)
                           (let ((_%hd202956203007%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202951202959%_)))
                                 (_%tl202957203009%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202951202959%_))))
                             (let* ((_%hd203012%_ _%hd202956203007%_)
                                    (_%rest203014%_ _%tl202957203009%_))
                               (_%K202955203004%_
                                _%rest203014%_
                                _%hd203012%_)))
                           (_%else202953202967%_))))))
          (let ((__tmp203816
                 (filter gx#expander-context-id
                         (_%find-deps202941%_
                          (let ((_%$e202943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202937%_))))
                            (if _%$e202943%_
                                ((lambda (_%pre202946%_)
                                   (cons _%pre202946%_
                                         (##structure-ref
                                          _%ctx202937%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202943%_)
                                (##structure-ref
                                 _%ctx202937%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203816)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202867%_)
        (let* ((_%context-id202869%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202867%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202867%_ '1 '#f '#f))
                    (string->symbol _%ctx202867%_)))
               (_%scm202871%_
                (let ((__tmp203817
                       (gxc#static-module-name _%context-id202869%_)))
                  (declare (not safe))
                  (##string-append __tmp203817 '".scm")))
               (_%dirs202873%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202879%_
                (let ((_%user-libpath202875%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202875%_
                      (let ((_%user-libpath202877%_
                             (path-expand '"lib" _%user-libpath202875%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202877%_ _%dirs202873%_))
                            _%dirs202873%_
                            (cons _%user-libpath202877%_ _%dirs202873%_)))
                      _%dirs202873%_)))
               (_%dirs202889%_
                (let ((_%$e202881%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202881%_
                      ((lambda (_%g202883202885%_)
                         (cons _%g202883202885%_ _%dirs202879%_))
                       _%$e202881%_)
                      _%dirs202879%_)))
               (_%dirs202895%_
                (let ((__tmp203818
                       (lambda (_%g202890202892%_)
                         (path-expand '"static" _%g202890202892%_))))
                  (declare (not safe))
                  (##map __tmp203818 _%dirs202889%_))))
          (let _%lp202898%_ ((_%rest202900%_ _%dirs202895%_))
            (let* ((_%rest202901202909%_ _%rest202900%_)
                   (_%else202903202917%_
                    (lambda ()
                      (let ((__tmp203819
                             (##structure-ref
                              _%ctx202867%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203819
                         _%scm202871%_))))
                   (_%K202905202925%_
                    (lambda (_%rest202920%_ _%dir202921%_)
                      (let ((_%path202923%_
                             (path-expand _%scm202871%_ _%dir202921%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202923%_))
                            _%path202923%_
                            (_%lp202898%_ _%rest202920%_))))))
              (if (pair? _%rest202901202909%_)
                  (let ((_%hd202906202928%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202901202909%_)))
                        (_%tl202907202930%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202901202909%_))))
                    (let* ((_%dir202933%_ _%hd202906202928%_)
                           (_%rest202935%_ _%tl202907202930%_))
                      (_%K202905202925%_ _%rest202935%_ _%dir202933%_)))
                  (_%else202903202917%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202865%_)
        (zero? (let ((__tmp203820 (file-info _%path202865%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203820)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202861%_)
        (let ((__tmp203824
               (lambda ()
                 (let ((__tmp203825
                        (##structure-ref
                         _%ctx202861%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203825))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203826
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202861%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203826))
                     '#!void)
                 (gxc#collect-bindings _%ctx202861%_)
                 (gxc#compile-runtime-code _%ctx202861%_)
                 (gxc#compile-meta-code _%ctx202861%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202861%_)
                     '#!void)))
              (__tmp203823
               (let ((__obj203747
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203747))
                 __obj203747))
              (__tmp203822 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203821
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
           __tmp203824
           gx#current-expander-context
           _%ctx202861%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203823
           gxc#current-compile-runtime-sections
           __tmp203822
           gxc#current-compile-runtime-names
           __tmp203821))))
    (define gxc#collect-bindings
      (lambda (_%ctx202859%_)
        (let ((__tmp203827
               (##structure-ref _%ctx202859%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203827))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202807%_)
        (letrec ((_%compile1202809%_
                  (lambda (_%ctx202848%_)
                    (let* ((_%code202850%_
                            (##structure-ref
                             _%ctx202848%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202854%_
                            (let ((_%idstr202852%_
                                   (let ((__tmp203828
                                          (##structure-ref
                                           _%ctx202848%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203828))))
                              (declare (not safe))
                              (##string-append _%idstr202852%_ '"~0")))
                           (_%rtc?202856%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202850%_))))
                      (if _%rtc?202856%_
                          (let ((__tmp203829
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203829
                             _%ctx202848%_
                             _%rtm202854%_))
                          '#!void)
                      (_%generate-runtime-code202811%_
                       _%ctx202848%_
                       _%code202850%_
                       (if _%rtc?202856%_ _%rtm202854%_ '#f)))))
                 (_%context-timestamp202810%_
                  (lambda (_%ctx202846%_)
                    (let ((__tmp203830
                           (let ((__tmp203831
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202846%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203831 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203830))))
                 (_%generate-runtime-code202811%_
                  (lambda (_%ctx202818%_ _%code202819%_ _%rtm202820%_)
                    (let* ((_%runtime-code?202822%_ (if _%rtm202820%_ '#t '#f))
                           (_%lifts202824%_ (box '()))
                           (_%runtime-code202827%_
                            (if _%runtime-code?202822%_
                                (let ((__tmp203834
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202819%_))))
                                      (__tmp203833
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203832
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203834
                                   gx#current-expander-context
                                   _%ctx202818%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202824%_
                                   gxc#current-compile-marks
                                   __tmp203833
                                   gxc#current-compile-identifiers
                                   __tmp203832))
                                '#f))
                           (_%runtime-code202829%_
                            (if _%runtime-code?202822%_
                                (if (null? (unbox _%lifts202824%_))
                                    _%runtime-code202827%_
                                    (cons 'begin
                                          (let ((__tmp203836
                                                 (cons _%runtime-code202827%_
                                                       '()))
                                                (__tmp203835
                                                 (reverse (unbox _%lifts202824%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203836
                                             __tmp203835))))
                                '#f))
                           (_%runtime-code202831%_
                            (if _%runtime-code?202822%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202810%_
                                                         _%ctx202818%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202829%_ '())))
                                '#f))
                           (_%loader-code202834%_
                            (let ((__tmp203837
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202819%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203837
                               gx#current-expander-context
                               _%ctx202818%_)))
                           (_%loader-code202836%_
                            (cons 'begin
                                  (cons _%loader-code202834%_
                                        (cons (if _%runtime-code?202822%_
                                                  (cons 'load-module
                                                        (cons _%rtm202820%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202838%_
                            (gxc#compile-output-file _%ctx202818%_ '0 '".scm"))
                           (_%scmrt202840%_
                            (gxc#compile-output-file
                             _%ctx202818%_
                             '#f
                             '".scm"))
                           (_%scms202842%_
                            (gxc#compile-static-output-file _%ctx202818%_)))
                      (if _%runtime-code?202822%_
                          (gxc#compile-scm-file__0
                           _%scm0202838%_
                           _%runtime-code202831%_)
                          '#!void)
                      (let ((__tmp203838
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202840%_
                                _%loader-code202836%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203838
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202842%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202842%_))
                          '#!void)
                      (if _%runtime-code?202822%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202838%_ _%scms202842%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202842%_ void)))))))
          (let* ((_%all-modules202813%_
                  (cons _%ctx202807%_ (gxc#lift-nested-modules _%ctx202807%_)))
                 (__tmp203839
                  (lambda (_%ctx202815%_)
                    (let ((__tmp203840
                           (lambda () (_%compile1202809%_ _%ctx202815%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203840
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203839 _%all-modules202813%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202707%_)
        (letrec ((_%compile-ssi202709%_
                  (lambda (_%code202775%_)
                    (let* ((_%path202777%_
                            (gxc#compile-output-file
                             _%ctx202707%_
                             '#f
                             '".ssi"))
                           (_%prelude202789%_
                            (let* ((_%super202779%_
                                    (##structure-ref
                                     _%ctx202707%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202781%_
                                    (##structure-ref
                                     _%super202779%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202781%_
                                  ((lambda (_%g202783202785%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202783202785%_)))
                                   _%$e202781%_)
                                  ':<root>)))
                           (_%ns202791%_
                            (##structure-ref
                             _%ctx202707%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202793%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202707%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202801%_
                            (let ((_%$e202795%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202793%_ '#\/))))
                              (if _%$e202795%_
                                  ((lambda (_%x202798%_)
                                     (let ((__tmp203841
                                            (substring
                                             _%idstr202793%_
                                             '0
                                             _%x202798%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203841)))
                                   _%$e202795%_)
                                  '#f)))
                           (_%rt202803%_
                            (let ((__tmp203842
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203842 _%ctx202707%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202777%_))
                      (gxc#with-output-to-scheme-file
                       _%path202777%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202789%_))
                         (if _%pkg202801%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202801%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202791%_))
                         (newline)
                         (pretty-print _%code202775%_)
                         (if _%rt202803%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202803%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202710%_
                  (lambda (_%part202715%_)
                    (let* ((_%part202716202729%_ _%part202715%_)
                           (_%E202718202733%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202716202729%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202719202744%_
                            (lambda (_%code202736%_
                                     _%n202737%_
                                     _%phi202738%_
                                     _%phi-ctx202739%_)
                              (let ((_%code202742%_
                                     (let ((__tmp203843
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202736%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203843
                                        gx#current-expander-context
                                        _%phi-ctx202739%_
                                        gx#current-expander-phi
                                        _%phi202738%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202707%_
                                  _%n202737%_
                                  '".scm")
                                 _%code202742%_
                                 '#t)))))
                      (if (pair? _%part202716202729%_)
                          (let ((_%hd202720202747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202716202729%_)))
                                (_%tl202721202749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202716202729%_))))
                            (let ((_%phi-ctx202752%_ _%hd202720202747%_))
                              (if (pair? _%tl202721202749%_)
                                  (let ((_%hd202722202754%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202721202749%_)))
                                        (_%tl202723202756%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202721202749%_))))
                                    (let ((_%phi202759%_ _%hd202722202754%_))
                                      (if (pair? _%tl202723202756%_)
                                          (let ((_%hd202724202761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202723202756%_)))
                                                (_%tl202725202763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202723202756%_))))
                                            (let ((_%n202766%_
                                                   _%hd202724202761%_))
                                              (if (pair? _%tl202725202763%_)
                                                  (let ((_%hd202726202768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202725202763%_)))
                                                        (_%tl202727202770%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202725202763%_))))
                                                    (let ((_%code202773%_
                                                           _%hd202726202768%_))
                                                      (if (null? _%tl202727202770%_)
                                                          (_%K202719202744%_
                                                           _%code202773%_
                                                           _%n202766%_
                                                           _%phi202759%_
                                                           _%phi-ctx202752%_)
                                                          (_%E202718202733%_))))
                                                  (_%E202718202733%_))))
                                          (_%E202718202733%_))))
                                  (_%E202718202733%_))))
                          (_%E202718202733%_))))))
          (let ((_g203844_ (gxc#generate-meta-code _%ctx202707%_)))
            (begin
              (let ((_g203845_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203844_)
                           (##values-length _g203844_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203845_ 2)))
                    (error "Context expects 2 values" _g203845_)))
              (let ((_%ssi-code202712%_
                     (let () (declare (not safe)) (##values-ref _g203844_ 0)))
                    (_%phi-code202713%_
                     (let () (declare (not safe)) (##values-ref _g203844_ 1))))
                (begin
                  (_%compile-ssi202709%_ _%ssi-code202712%_)
                  (for-each _%compile-phi202710%_ _%phi-code202713%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202689%_)
        (let* ((_%path202691%_
                (gxc#compile-output-file _%ctx202689%_ '#f '".ssxi.ss"))
               (_%code202693%_
                (let ((__tmp203846
                       (##structure-ref
                        _%ctx202689%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203846)))
               (_%idstr202695%_
                (symbol->string
                 (##structure-ref
                  _%ctx202689%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202703%_
                (let ((_%$e202697%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202695%_ '#\/))))
                  (if _%$e202697%_
                      ((lambda (_%x202700%_)
                         (let ((__tmp203847
                                (substring _%idstr202695%_ '0 _%x202700%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203847)))
                       _%$e202697%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202691%_))
          (gxc#with-output-to-scheme-file
           _%path202691%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202703%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202703%_))
                 '#!void)
             (newline)
             (pretty-print _%code202693%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202682%_)
        (let* ((_%state202684%_
                (let ((__obj203748
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203748 _%ctx202682%_))
                  __obj203748))
               (_%ssi-code202686%_
                (let ((__tmp203848
                       (##structure-ref
                        _%ctx202682%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202684%_
                   __tmp203848))))
          (values _%ssi-code202686%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202684%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202675%_)
        (let ((_%lifts202677%_ (box '())))
          (let ((__tmp203851
                 (lambda ()
                   (let ((_%code202680%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202675%_))))
                     (if (null? (unbox _%lifts202677%_))
                         _%code202680%_
                         (cons 'begin
                               (let ((__tmp203853 (cons _%code202680%_ '()))
                                     (__tmp203852
                                      (reverse (unbox _%lifts202677%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203853 __tmp203852)))))))
                (__tmp203850
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203849
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203851
             gxc#current-compile-lift
             _%lifts202677%_
             gxc#current-compile-marks
             __tmp203850
             gxc#current-compile-identifiers
             __tmp203849)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202671%_)
        (let ((_%modules202673%_ (box '())))
          (let ((__tmp203854
                 (##structure-ref _%ctx202671%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202673%_ __tmp203854))
          (reverse (unbox _%modules202673%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202651%_ _%code202652%_ _%phi?202653%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202651%_))
        (gxc#with-output-to-scheme-file
         _%path202651%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203855
                                           (if _%phi?202653%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203855)))))))
           (pretty-print _%code202652%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202657%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202651%_ _%phi?202653%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203856
                         (cons 'compile-file (cons _%path202651%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202657%_ __tmp203856))
                  (_%compile-it202657%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202662%_ _%code202663%_)
        (let ((_%phi?202665%_ '#f))
          (gxc#compile-scm-file__%
           _%path202662%_
           _%code202663%_
           _%phi?202665%_))))
    (define gxc#compile-scm-file
      (lambda _g203858_
        (let ((_g203857_ (let () (declare (not safe)) (##length _g203858_))))
          (cond ((let () (declare (not safe)) (##fx= _g203857_ 2))
                 (apply gxc#compile-scm-file__0 _g203858_))
                ((let () (declare (not safe)) (##fx= _g203857_ 3))
                 (apply gxc#compile-scm-file__% _g203858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203858_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202552%_)
        (let _%lp202554%_ ((_%rest202556%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202557%_ '()))
          (let* ((_%rest202558202578%_ _%rest202556%_)
                 (_%else202562202586%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202557%_)))
                        (reverse _%opts202557%_)))))
            (let ((_%K202572202629%_
                   (lambda (_%rest202627%_)
                     (_%lp202554%_ _%rest202627%_ _%opts202557%_)))
                  (_%K202567202611%_
                   (lambda (_%rest202609%_)
                     (_%lp202554%_ _%rest202609%_ _%opts202557%_)))
                  (_%K202564202593%_
                   (lambda (_%rest202590%_ _%opt202591%_)
                     (_%lp202554%_
                      _%rest202590%_
                      (cons _%opt202591%_ _%opts202557%_)))))
              (if (pair? _%rest202558202578%_)
                  (let ((_%tl202574202634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202558202578%_)))
                        (_%hd202573202632%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202558202578%_))))
                    (if (equal? _%hd202573202632%_ '"-cc-options")
                        (if (pair? _%tl202574202634%_)
                            (let* ((_%tl202576202637%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202574202634%_)))
                                   (_%rest202640%_ _%tl202576202637%_))
                              (_%K202572202629%_ _%rest202640%_))
                            (let ((_%opt202601%_ _%hd202573202632%_)
                                  (_%rest202603%_ _%tl202574202634%_))
                              (_%K202564202593%_
                               _%rest202603%_
                               _%opt202601%_)))
                        (if (equal? _%hd202573202632%_ '"-ld-options")
                            (if (pair? _%tl202574202634%_)
                                (let* ((_%tl202571202619%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202574202634%_)))
                                       (_%rest202622%_ _%tl202571202619%_))
                                  (_%K202567202611%_ _%rest202622%_))
                                (let ((_%opt202601%_ _%hd202573202632%_)
                                      (_%rest202603%_ _%tl202574202634%_))
                                  (_%K202564202593%_
                                   _%rest202603%_
                                   _%opt202601%_)))
                            (let ((_%opt202601%_ _%hd202573202632%_)
                                  (_%rest202603%_ _%tl202574202634%_))
                              (_%K202564202593%_
                               _%rest202603%_
                               _%opt202601%_)))))
                  (_%else202562202586%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202646%_ '#f)) (gxc#gsc-link-options__% _%phi?202646%_))))
    (define gxc#gsc-link-options
      (lambda _g203860_
        (let ((_g203859_ (let () (declare (not safe)) (##length _g203860_))))
          (cond ((let () (declare (not safe)) (##fx= _g203859_ 0))
                 (apply gxc#gsc-link-options__0 _g203860_))
                ((let () (declare (not safe)) (##fx= _g203859_ 1))
                 (apply gxc#gsc-link-options__% _g203860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203860_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202401%_ _%static?202397202402%_ _%phi?202404%_)
        (let ((_%static?202406%_
               (if (eq? _%static?202397202402%_ absent-value)
                   '#f
                   _%static?202397202402%_)))
          (if _%phi?202404%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202408%_ ((_%rest202410%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202411%_ '()))
                (let* ((_%rest202412202438%_ _%rest202410%_)
                       (_%else202417202446%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202411%_)))
                              (reverse! _%opts202411%_)))))
                  (let ((_%K202432202509%_
                         (lambda (_%rest202506%_ _%opt202507%_)
                           (if _%static?202406%_
                               (_%lp202408%_
                                _%rest202506%_
                                (cons _%opt202507%_
                                      (cons '"-cc-options" _%opts202411%_)))
                               (_%lp202408%_ _%rest202506%_ _%opts202411%_))))
                        (_%K202427202486%_
                         (lambda (_%rest202483%_ _%opt202484%_)
                           (_%lp202408%_
                            _%rest202483%_
                            (cons _%opt202484%_
                                  (cons '"-cc-options" _%opts202411%_)))))
                        (_%K202422202466%_
                         (lambda (_%rest202464%_)
                           (_%lp202408%_ _%rest202464%_ _%opts202411%_)))
                        (_%K202419202452%_
                         (lambda (_%rest202450%_)
                           (_%lp202408%_ _%rest202450%_ _%opts202411%_))))
                    (if (pair? _%rest202412202438%_)
                        (let ((_%tl202434202514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202412202438%_)))
                              (_%hd202433202512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202412202438%_))))
                          (if (equal? _%hd202433202512%_ '"-cc-options")
                              (if (pair? _%tl202434202514%_)
                                  (let ((_%tl202436202519%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202434202514%_)))
                                        (_%hd202435202517%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202434202514%_))))
                                    (if (equal? _%hd202435202517%_ '"-Bstatic")
                                        (let ((_%opt202522%_
                                               _%hd202435202517%_)
                                              (_%rest202524%_
                                               _%tl202436202519%_))
                                          (_%K202432202509%_
                                           _%rest202524%_
                                           _%opt202522%_))
                                        (let ((_%opt202499%_
                                               _%hd202435202517%_)
                                              (_%rest202501%_
                                               _%tl202436202519%_))
                                          (_%K202427202486%_
                                           _%rest202501%_
                                           _%opt202499%_))))
                                  (let ((_%rest202458%_ _%tl202434202514%_))
                                    (_%K202419202452%_ _%rest202458%_)))
                              (if (equal? _%hd202433202512%_ '"-ld-options")
                                  (if (pair? _%tl202434202514%_)
                                      (let* ((_%tl202426202474%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202434202514%_)))
                                             (_%rest202477%_
                                              _%tl202426202474%_))
                                        (_%K202422202466%_ _%rest202477%_))
                                      (let ((_%rest202458%_
                                             _%tl202434202514%_))
                                        (_%K202419202452%_ _%rest202458%_)))
                                  (let ((_%rest202458%_ _%tl202434202514%_))
                                    (_%K202419202452%_ _%rest202458%_)))))
                        (_%else202417202446%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202529%_ _%static?202397202530%_)
        (let ((_%phi?202532%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202529%_
           _%static?202397202530%_
           _%phi?202532%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203862_
        (let ((_g203861_ (let () (declare (not safe)) (##length _g203862_))))
          (cond ((let () (declare (not safe)) (##fx= _g203861_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203862_))
                ((let () (declare (not safe)) (##fx= _g203861_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203862_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203862_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202541%_ . _%args202542%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202541%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202541%_
                  'static:
                  absent-value))
               _%args202542%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202398202548%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202398202548%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202246%_ _%static?202242202247%_ _%phi?202249%_)
        (let ((_%static?202251%_
               (if (eq? _%static?202242202247%_ absent-value)
                   '#f
                   _%static?202242202247%_)))
          (if _%phi?202249%_
              '()
              (let _%lp202253%_ ((_%rest202255%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202256%_ '()))
                (let* ((_%rest202257202283%_ _%rest202255%_)
                       (_%else202262202291%_
                        (lambda () (reverse! _%opts202256%_))))
                  (let ((_%K202277202354%_
                         (lambda (_%rest202351%_ _%opt202352%_)
                           (if _%static?202251%_
                               (_%lp202253%_
                                _%rest202351%_
                                (cons _%opt202352%_
                                      (cons '"-ld-options" _%opts202256%_)))
                               (_%lp202253%_ _%rest202351%_ _%opts202256%_))))
                        (_%K202272202331%_
                         (lambda (_%rest202328%_ _%opt202329%_)
                           (_%lp202253%_
                            _%rest202328%_
                            (cons _%opt202329%_
                                  (cons '"-ld-options" _%opts202256%_)))))
                        (_%K202267202311%_
                         (lambda (_%rest202309%_)
                           (_%lp202253%_ _%rest202309%_ _%opts202256%_)))
                        (_%K202264202297%_
                         (lambda (_%rest202295%_)
                           (_%lp202253%_ _%rest202295%_ _%opts202256%_))))
                    (if (pair? _%rest202257202283%_)
                        (let ((_%tl202279202359%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202257202283%_)))
                              (_%hd202278202357%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202257202283%_))))
                          (if (equal? _%hd202278202357%_ '"-ld-options")
                              (if (pair? _%tl202279202359%_)
                                  (let ((_%tl202281202364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202279202359%_)))
                                        (_%hd202280202362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202279202359%_))))
                                    (if (equal? _%hd202280202362%_ '"-static")
                                        (let ((_%opt202367%_
                                               _%hd202280202362%_)
                                              (_%rest202369%_
                                               _%tl202281202364%_))
                                          (_%K202277202354%_
                                           _%rest202369%_
                                           _%opt202367%_))
                                        (let ((_%opt202344%_
                                               _%hd202280202362%_)
                                              (_%rest202346%_
                                               _%tl202281202364%_))
                                          (_%K202272202331%_
                                           _%rest202346%_
                                           _%opt202344%_))))
                                  (let ((_%rest202303%_ _%tl202279202359%_))
                                    (_%K202264202297%_ _%rest202303%_)))
                              (if (equal? _%hd202278202357%_ '"-cc-options")
                                  (if (pair? _%tl202279202359%_)
                                      (let* ((_%tl202271202319%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202279202359%_)))
                                             (_%rest202322%_
                                              _%tl202271202319%_))
                                        (_%K202267202311%_ _%rest202322%_))
                                      (let ((_%rest202303%_
                                             _%tl202279202359%_))
                                        (_%K202264202297%_ _%rest202303%_)))
                                  (let ((_%rest202303%_ _%tl202279202359%_))
                                    (_%K202264202297%_ _%rest202303%_)))))
                        (_%else202262202291%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202374%_ _%static?202242202375%_)
        (let ((_%phi?202377%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202374%_
           _%static?202242202375%_
           _%phi?202377%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203864_
        (let ((_g203863_ (let () (declare (not safe)) (##length _g203864_))))
          (cond ((let () (declare (not safe)) (##fx= _g203863_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203864_))
                ((let () (declare (not safe)) (##fx= _g203863_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203864_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202386%_ . _%args202387%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202386%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202386%_
                  'static:
                  absent-value))
               _%args202387%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202243202393%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202243202393%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202237%_)
        (let ((_%user-staticdir202239%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202237%_
                       '" -I "
                       _%user-staticdir202239%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp202149%_ ((_%rest202151%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202152%_ '()))
          (let* ((_%rest202153202173%_ _%rest202151%_)
                 (_%else202157202181%_ (lambda () _%opts202152%_)))
            (let ((_%K202167202224%_
                   (lambda (_%rest202222%_)
                     (_%lp202149%_ _%rest202222%_ _%opts202152%_)))
                  (_%K202162202202%_
                   (lambda (_%rest202199%_ _%opt202200%_)
                     (_%lp202149%_
                      _%rest202199%_
                      (let ((__tmp203865
                             (let ((__tmp203866
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202200%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203866))))
                        (declare (not safe))
                        (##append _%opts202152%_ __tmp203865)))))
                  (_%K202159202187%_
                   (lambda (_%rest202185%_)
                     (_%lp202149%_ _%rest202185%_ _%opts202152%_))))
              (if (pair? _%rest202153202173%_)
                  (let ((_%tl202169202229%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202153202173%_)))
                        (_%hd202168202227%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202153202173%_))))
                    (if (equal? _%hd202168202227%_ '"-cc-options")
                        (if (pair? _%tl202169202229%_)
                            (let* ((_%tl202171202232%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202169202229%_)))
                                   (_%rest202235%_ _%tl202171202232%_))
                              (_%K202167202224%_ _%rest202235%_))
                            (let ((_%rest202193%_ _%tl202169202229%_))
                              (_%K202159202187%_ _%rest202193%_)))
                        (if (equal? _%hd202168202227%_ '"-ld-options")
                            (if (pair? _%tl202169202229%_)
                                (let ((_%tl202166202212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202169202229%_)))
                                      (_%hd202165202210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202169202229%_))))
                                  (let ((_%opt202215%_ _%hd202165202210%_)
                                        (_%rest202217%_ _%tl202166202212%_))
                                    (_%K202162202202%_
                                     _%rest202217%_
                                     _%opt202215%_)))
                                (let ((_%rest202193%_ _%tl202169202229%_))
                                  (_%K202159202187%_ _%rest202193%_)))
                            (let ((_%rest202193%_ _%tl202169202229%_))
                              (_%K202159202187%_ _%rest202193%_)))))
                  (_%else202157202181%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str202146%_)
        (not (let () (declare (not safe)) (string-empty? _%str202146%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path202139%_ _%phi?202140%_)
        (let ((_%gsc-link-opts202142%_
               (gxc#gsc-link-options__% _%phi?202140%_))
              (_%gsc-cc-opts202143%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?202140%_))
              (_%gsc-ld-opts202144%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?202140%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203867
                  (let ((__tmp203868
                         (let ((__tmp203869 (cons _%path202139%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203869
                            _%gsc-link-opts202142%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203868 _%gsc-ld-opts202144%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203867 _%gsc-cc-opts202143%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx202105%_ _%n202106%_ _%ext202107%_)
        (letrec ((_%module-relative-path202109%_
                  (lambda (_%ctx202137%_)
                    (path-strip-directory
                     (let ((__tmp203870
                            (##structure-ref
                             _%ctx202137%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203870)))))
                 (_%module-source-directory202110%_
                  (lambda (_%ctx202133%_)
                    (path-directory
                     (let ((_%mpath202135%_
                            (##structure-ref
                             _%ctx202133%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath202135%_)
                           _%mpath202135%_
                           (last _%mpath202135%_))))))
                 (_%section-string202111%_
                  (lambda (_%n202127%_)
                    (if (number? _%n202127%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n202127%_))
                        (if (symbol? _%n202127%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n202127%_))
                            (if (string? _%n202127%_)
                                _%n202127%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n202127%_)))))))
                 (_%file-name202112%_
                  (lambda (_%path202125%_)
                    (if _%n202106%_
                        (string-append
                         _%path202125%_
                         '"~"
                         (_%section-string202111%_ _%n202106%_)
                         _%ext202107%_)
                        (string-append _%path202125%_ _%ext202107%_))))
                 (_%file-path202113%_
                  (lambda ()
                    (let ((_%$e202119%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e202119%_
                          ((lambda (_%outdir202122%_)
                             (path-expand
                              (_%file-name202112%_
                               (let ((__tmp203871
                                      (##structure-ref
                                       _%ctx202105%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203871)))
                              _%outdir202122%_))
                           _%$e202119%_)
                          (path-expand
                           (_%file-name202112%_
                            (_%module-relative-path202109%_ _%ctx202105%_))
                           (_%module-source-directory202110%_
                            _%ctx202105%_)))))))
          (let ((_%path202115%_ (_%file-path202113%_)))
            (let ((__tmp203872
                   (lambda ()
                     (let ((__tmp203873 (path-directory _%path202115%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203873)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203872))
            _%path202115%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx202086%_)
        (letrec ((_%file-name202088%_
                  (lambda (_%id202103%_)
                    (let ((__tmp203874 (gxc#static-module-name _%id202103%_)))
                      (declare (not safe))
                      (##string-append __tmp203874 '".scm"))))
                 (_%file-path202089%_
                  (lambda ()
                    (let* ((_%file202095%_
                            (_%file-name202088%_
                             (##structure-ref
                              _%ctx202086%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e202097%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e202097%_
                          ((lambda (_%outdir202100%_)
                             (path-expand
                              _%file202095%_
                              (path-expand '"static" _%outdir202100%_)))
                           _%$e202097%_)
                          (path-expand _%file202095%_ '"static"))))))
          (let ((_%path202091%_ (_%file-path202089%_)))
            (let ((__tmp203875
                   (lambda ()
                     (let ((__tmp203876 (path-directory _%path202091%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203876)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203875))
            _%path202091%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx202079%_ _%opts202080%_)
        (let ((_%$e202082%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts202080%_))))
          (if _%$e202082%_
              _%$e202082%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx202079%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr202069%_)
        (if (string? _%idstr202069%_)
            (let* ((_%str202072%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr202069%_)))
                   (_%strs202074%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str202072%_ '#\/))))
              (declare (not safe))
              (string-join _%strs202074%_ '"__"))
            (if (symbol? _%idstr202069%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr202069%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr202069%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203877
               (let ((__tmp203878 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203878 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203877))))
    (define gxc#invoke__%
      (lambda (_%@@keywords202033%_
               _%stdout-redirection202029202034%_
               _%stderr-redirection202030202036%_
               _%program202038%_
               _%args202039%_)
        (let* ((_%stdout-redirection202041%_
                (if (eq? _%stdout-redirection202029202034%_ absent-value)
                    '#f
                    _%stdout-redirection202029202034%_))
               (_%stderr-redirection202043%_
                (if (eq? _%stderr-redirection202030202036%_ absent-value)
                    '#f
                    _%stderr-redirection202030202036%_)))
          (let ((__tmp203879 (cons _%program202038%_ _%args202039%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203879))
          (let* ((_%proc202045%_
                  (open-process
                   (cons 'path:
                         (cons _%program202038%_
                               (cons 'arguments:
                                     (cons _%args202039%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection202041%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection202043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output202050%_
                  (if (or _%stdout-redirection202041%_
                          _%stderr-redirection202043%_)
                      (read-line _%proc202045%_ '#f)
                      '#f))
                 (_%status202053%_ (process-status _%proc202045%_)))
            (let () (declare (not safe)) (##close-port _%proc202045%_))
            (if (zero? _%status202053%_)
                '#!void
                (begin
                  (display _%output202050%_)
                  (let ((__tmp203880 (cons _%program202038%_ _%args202039%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203880
                     _%status202053%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords202058%_ . _%args202059%_)
        (apply gxc#invoke__%
               _%@@keywords202058%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202058%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202058%_
                  'stderr-redirection:
                  absent-value))
               _%args202059%_)))
    (define gxc#invoke
      (lambda _%args202031202065%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args202031202065%_)))))
