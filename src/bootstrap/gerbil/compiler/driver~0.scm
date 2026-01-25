(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1769384636)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp214662 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp214662))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp214663 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp214663))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path214519%_ _%fun214520%_)
        (with-output-to-file
         (cons 'path: (cons _%path214519%_ gxc#scheme-file-settings))
         _%fun214520%_)))
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
      (lambda (_%gerbil-libdir214514%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir214514%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path214512%_)
        (let ((__tmp214664 (object->string _%path214512%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp214664 '")"))))
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
      (lambda (_%dir214510%_) (delete-file-or-directory _%dir214510%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath214454%_ _%opts214455%_)
        (if (string? _%srcpath214454%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214454%_)))
        (let* ((_%outdir214457%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214455%_)))
               (_%invoke-gsc?214459%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214455%_)))
               (_%target214464%_
                (let ((_%$e214461%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214455%_))))
                  (if _%$e214461%_ _%$e214461%_ 'C)))
               (_%gsc-options214469%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214464%_) '()))
                        (let ((_%$e214466%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214455%_))))
                          (if _%$e214466%_ _%$e214466%_ '()))))
               (_%keep-scm?214471%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214455%_)))
               (_%verbosity214473%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214455%_)))
               (_%optimize214475%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts214455%_)))
               (_%debug214477%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214455%_)))
               (_%gen-ssxi214479%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts214455%_)))
               (_%parallel?214481%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214455%_))))
          (if _%outdir214457%_
              (let ((__tmp214665
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214457%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214665))
              '#!void)
          (if _%optimize214475%_
              (let ((__tmp214666
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214666))
              '#!void)
          (let ((__tmp214667
                 (lambda ()
                   (let ((__tmp214668
                          (lambda ()
                            (let ((__tmp214669
                                   (lambda ()
                                     (let ((__tmp214670
                                            (lambda ()
                                              (let ((__tmp214671
                                                     (lambda ()
                                                       (let ((__tmp214672
                                                              (lambda ()
                                                                (let ((__tmp214673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214674
                                        (lambda ()
                                          (let ((__tmp214675
                                                 (lambda ()
                                                   (let ((__tmp214677
                                                          (lambda ()
                                                            (let ((__tmp214679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp214680
                                    (lambda ()
                                      (let ((__tmp214681
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath214454%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp214682
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath214454%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp214682))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp214681
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp214680
                                gxc#current-compile-parallel
                                _%parallel?214481%_))))
                          (__tmp214678
                           (cons (cons 'compile-module
                                       (cons _%srcpath214454%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214679
                       gxc#current-compile-context
                       __tmp214678))))
                 (__tmp214676 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214677
                                                      gxc#current-compile-timestamp
                                                      __tmp214676)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214675
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi214479%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214674
                                    gxc#current-compile-debug
                                    _%debug214477%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214673
                           gxc#current-compile-optimize
                           _%optimize214475%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214672
                  gxc#current-compile-verbose
                  _%verbosity214473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214671
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214471%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214670
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214469%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214669
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?214459%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214668
                      gx#current-compilation-target
                      _%target214464%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214667
             gxc#current-compile-output-dir
             _%outdir214457%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath214503%_)
        (let ((_%opts214505%_ '()))
          (gxc#compile-module__% _%srcpath214503%_ _%opts214505%_))))
    (define gxc#compile-module
      (lambda _g214683_
        (let ((_g214684_ (let () (declare (not safe)) (##length _g214683_))))
          (cond ((let () (declare (not safe)) (##fx= _g214684_ 1))
                 (apply gxc#compile-module__0 _g214683_))
                ((let () (declare (not safe)) (##fx= _g214684_ 2))
                 (apply gxc#compile-module__% _g214683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g214683_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath214404%_ _%opts214405%_)
        (if (string? _%srcpath214404%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214404%_)))
        (let* ((_%outdir214407%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214405%_)))
               (_%invoke-gsc?214409%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214405%_)))
               (_%target214414%_
                (let ((_%$e214411%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214405%_))))
                  (if _%$e214411%_ _%$e214411%_ 'C)))
               (_%gsc-options214419%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214414%_) '()))
                        (let ((_%$e214416%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214405%_))))
                          (if _%$e214416%_ _%$e214416%_ '()))))
               (_%keep-scm?214421%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214405%_)))
               (_%verbosity214423%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214405%_)))
               (_%debug214425%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214405%_)))
               (_%parallel?214427%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214405%_))))
          (if _%outdir214407%_
              (let ((__tmp214685
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214407%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214685))
              '#!void)
          (let ((__tmp214686
                 (lambda ()
                   (let ((__tmp214687
                          (lambda ()
                            (let ((__tmp214688
                                   (lambda ()
                                     (let ((__tmp214689
                                            (lambda ()
                                              (let ((__tmp214690
                                                     (lambda ()
                                                       (let ((__tmp214691
                                                              (lambda ()
                                                                (let ((__tmp214692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214694
                                        (lambda ()
                                          (let ((__tmp214696
                                                 (lambda ()
                                                   (let ((__tmp214697
                                                          (lambda ()
                                                            (let ((__tmp214698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath214404%_))
                             (gxc#compile-executable-module
                              (let ((__tmp214699
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath214404%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp214699))
                              _%opts214405%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214698
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214697
                                                      gxc#current-compile-parallel
                                                      _%parallel?214427%_))))
                                                (__tmp214695
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath214404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214696
                                             gxc#current-compile-context
                                             __tmp214695))))
                                       (__tmp214693 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214694
                                    gxc#current-compile-timestamp
                                    __tmp214693)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214692
                           gxc#current-compile-debug
                           _%debug214425%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214691
                  gxc#current-compile-verbose
                  _%verbosity214423%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214690
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214421%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214689
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214419%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214688
                               gx#current-compilation-target
                               _%target214414%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214687
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?214409%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214686
             gxc#current-compile-output-dir
             _%outdir214407%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath214446%_)
        (let ((_%opts214448%_ '()))
          (gxc#compile-exe__% _%srcpath214446%_ _%opts214448%_))))
    (define gxc#compile-exe
      (lambda _g214700_
        (let ((_g214701_ (let () (declare (not safe)) (##length _g214700_))))
          (cond ((let () (declare (not safe)) (##fx= _g214701_ 1))
                 (apply gxc#compile-exe__0 _g214700_))
                ((let () (declare (not safe)) (##fx= _g214701_ 2))
                 (apply gxc#compile-exe__% _g214700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g214700_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx214400%_ _%opts214401%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts214401%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx214400%_
             _%opts214401%_)
            (gxc#compile-executable-module/separate
             _%ctx214400%_
             _%opts214401%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx214200%_ _%opts214201%_)
        (letrec ((_%generate-stub214203%_
                  (lambda (_%builtin-modules214396%_)
                    (let ((_%mod-main214398%_
                           (gxc#find-runtime-symbol _%ctx214200%_ 'main)))
                      (let ((__tmp214702
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules214396%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp214702))
                      (let ((__tmp214703
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main214398%_
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
                        (##write __tmp214703))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts214204%_
                  (lambda (_%gerbil-libdir214394%_)
                    (let ((__tmp214704
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir214394%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp214704 read))))
                 (_%replace-extension214205%_
                  (lambda (_%path214391%_ _%ext214392%_)
                    (string-append
                     (path-strip-extension _%path214391%_)
                     _%ext214392%_)))
                 (_%replace-extension-with-c214206%_
                  (lambda (_%path214389%_)
                    (_%replace-extension214205%_ _%path214389%_ '".c")))
                 (_%replace-extension-with-object214207%_
                  (lambda (_%path214387%_)
                    (_%replace-extension214205%_
                     _%path214387%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?214208%_
                  (lambda (_%ctx214385%_)
                    (if (_%exclude-module?214210%_ _%ctx214385%_)
                        '#f
                        (not (_%libgerbil-module?214209%_ _%ctx214385%_)))))
                 (_%libgerbil-module?214209%_
                  (lambda (_%ctx214378%_)
                    (let ((_%id-str214380%_
                           (symbol->string
                            (##structure-ref
                             _%ctx214378%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?214210%_ _%id-str214380%_)
                          '#f
                          (let ((_%$e214382%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str214380%_))))
                            (if _%$e214382%_
                                _%$e214382%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str214380%_))))))))
                 (_%exclude-module?214210%_
                  (lambda (_%ctx-or-str214374%_)
                    (let ((_%str214376%_
                           (if (string? _%ctx-or-str214374%_)
                               _%ctx-or-str214374%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str214374%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str214376%_))))
                 (_%not-file-empty?214211%_
                  (lambda (_%path214372%_)
                    (not (gxc#file-empty? _%path214372%_))))
                 (_%fold-libgerbil-runtime-scm214212%_
                  (lambda (_%gerbil-staticdir214365%_ _%libgerbil-scm214366%_)
                    (let ((_%gerbil-runtime-scm214370%_
                           (let ((__tmp214705
                                  (lambda (_%rtm214368%_)
                                    (path-expand
                                     (let ((__tmp214706
                                            (let ((__tmp214707
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm214368%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp214707
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp214706 '".scm"))
                                     _%gerbil-staticdir214365%_))))
                             (declare (not safe))
                             (##map __tmp214705 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates214213%_
                       (append _%gerbil-runtime-scm214370%_
                               _%libgerbil-scm214366%_)))))
                 (_%remove-duplicates214213%_
                  (lambda (_%strlst214325%_)
                    (let _%loop214327%_ ((_%rest214329%_ _%strlst214325%_)
                                         (_%result214330%_ '()))
                      (let* ((_%rest214331214339%_ _%rest214329%_)
                             (_%else214333214347%_
                              (lambda () (reverse! _%result214330%_)))
                             (_%K214335214353%_
                              (lambda (_%rest214350%_ _%path214351%_)
                                (if (member _%path214351%_ _%result214330%_)
                                    (_%loop214327%_
                                     _%rest214350%_
                                     _%result214330%_)
                                    (_%loop214327%_
                                     _%rest214350%_
                                     (cons _%path214351%_
                                           _%result214330%_))))))
                        (if (pair? _%rest214331214339%_)
                            (let ((_%hd214336214356%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest214331214339%_)))
                                  (_%tl214337214358%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest214331214339%_))))
                              (let* ((_%path214361%_ _%hd214336214356%_)
                                     (_%rest214363%_ _%tl214337214358%_))
                                (_%K214335214353%_
                                 _%rest214363%_
                                 _%path214361%_)))
                            (_%else214333214347%_))))))
                 (_%compile-stub214214%_
                  (lambda (_%output-scm214221%_ _%output-bin214222%_)
                    (let* ((_%gerbil-home214224%_
                            (let ((__tmp214708
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214708)))
                           (_%gerbil-libdir214226%_
                            (path-expand '"lib" _%gerbil-home214224%_))
                           (_%gerbil-staticdir214228%_
                            (path-expand '"static" _%gerbil-libdir214226%_))
                           (_%deps214230%_
                            (gxc#find-runtime-module-deps _%ctx214200%_))
                           (_%libgerbil-deps214232%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?214209%_
                               _%deps214230%_)))
                           (_%libgerbil-scm214234%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps214232%_)))
                           (_%libgerbil-scm214236%_
                            (_%fold-libgerbil-runtime-scm214212%_
                             _%gerbil-staticdir214228%_
                             _%libgerbil-scm214234%_))
                           (_%libgerbil-c214238%_
                            (map _%replace-extension-with-c214206%_
                                 _%libgerbil-scm214236%_))
                           (_%libgerbil-o214240%_
                            (map _%replace-extension-with-object214207%_
                                 _%libgerbil-scm214236%_))
                           (_%src-deps214242%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?214208%_
                               _%deps214230%_)))
                           (_%src-deps-scm214244%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps214242%_)))
                           (_%src-deps-scm214246%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?214211%_
                               _%src-deps-scm214244%_)))
                           (_%src-deps-scm214248%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm214246%_)))
                           (_%src-deps-c214250%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c214206%_
                                     _%src-deps-scm214248%_)))
                           (_%src-deps-o214252%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object214207%_
                                     _%src-deps-scm214248%_)))
                           (_%src-bin-scm214254%_
                            (gxc#find-static-module-file _%ctx214200%_))
                           (_%src-bin-scm214256%_
                            (path-expand _%src-bin-scm214254%_))
                           (_%src-bin-c214258%_
                            (_%replace-extension-with-c214206%_
                             _%src-bin-scm214256%_))
                           (_%src-bin-o214260%_
                            (_%replace-extension-with-object214207%_
                             _%src-bin-scm214256%_))
                           (_%output-bin214262%_
                            (path-expand _%output-bin214222%_))
                           (_%output-scm214264%_
                            (path-expand _%output-scm214221%_))
                           (_%output-c214266%_
                            (_%replace-extension-with-c214206%_
                             _%output-scm214264%_))
                           (_%output-o214268%_
                            (_%replace-extension-with-object214207%_
                             _%output-scm214264%_))
                           (_%output_-c214270%_
                            (_%replace-extension214205%_
                             _%output-scm214264%_
                             '"_.c"))
                           (_%output_-o214272%_
                            (_%replace-extension214205%_
                             _%output-scm214264%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts214274%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214276%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214278%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir214228%_))
                           (_%output-ld-opts214280%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts214282%_
                            (_%get-libgerbil-ld-opts214204%_
                             _%gerbil-libdir214226%_))
                           (_%rpath214284%_
                            (gxc#gerbil-rpath _%gerbil-libdir214226%_))
                           (_%builtin-modules214288%_
                            (_%remove-duplicates214213%_
                             (let ((__tmp214709
                                    (let ((__tmp214711
                                           (lambda (_%mod214286%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod214286%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp214710
                                           (cons _%ctx214200%_
                                                 _%deps214230%_)))
                                      (declare (not safe))
                                      (##map __tmp214711 __tmp214710))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp214709)))))
                      (letrec ((_%compile-obj214291%_
                                (lambda (_%scm-path214298%_ _%c-path214299%_)
                                  (let* ((_%o-path214301%_
                                          (_%replace-extension214205%_
                                           _%c-path214299%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock214303%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path214301%_
                                             '".lock")))
                                         (_%locked214305%_ '#f)
                                         (_%unlock214308%_
                                          (lambda ()
                                            (close-port _%locked214305%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock214303%_)))))
                                    (let _%retry214311%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock214303%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry214311%_))
                                          (begin
                                            (set! _%locked214305%_
                                                  (let ((__tmp214712
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock214303%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp214712)))
                                            (if _%locked214305%_
                                                '#!void
                                                (_%retry214311%_)))))
                                    (let ((__tmp214714
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path214301%_)))
                                                     (not _%scm-path214298%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path214298%_
                                                        _%o-path214301%_)))
                                                 (let ((_%gsc-cc-opts214322%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp214715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp214716 (cons _%c-path214299%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214716
                            _%gsc-static-opts214278%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214715 _%gsc-cc-opts214322%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp214713
                                           (lambda () (_%unlock214308%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp214714
                                       __tmp214713))))))
                        (let ((__tmp214717
                               (lambda ()
                                 (let ((__tmp214718
                                        (path-directory _%output-bin214262%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp214718)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp214717))
                        (gxc#with-output-to-scheme-file
                         _%output-scm214264%_
                         (lambda ()
                           (_%generate-stub214203%_
                            _%builtin-modules214288%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it214296%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp214719
                                                   (let ((__tmp214720
                                                          (let ((__tmp214721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm214256%_
                               (cons _%output-scm214264%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214721 _%src-deps-scm214248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp214720
                                                      _%libgerbil-c214238%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp214719
                                               _%gsc-link-opts214274%_))))
                                     (for-each
                                      _%compile-obj214291%_
                                      (let ((__tmp214722
                                             (cons _%src-bin-scm214256%_
                                                   (cons _%output-scm214264%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214722
                                         _%src-deps-scm214248%_))
                                      (let ((__tmp214723
                                             (cons _%src-bin-c214258%_
                                                   (cons _%output-c214266%_
                                                         (cons _%output_-c214270%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214723
                                         _%src-deps-c214250%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin214262%_
                                                        (let ((__tmp214724
                                                               (cons _%src-bin-o214260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o214268%_
                                   (cons _%output_-o214272%_
                                         (let ((__tmp214725
                                                (let ((__tmp214726
                                                       (let ((__tmp214728
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir214226%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts214282%_))))
                     (__tmp214727
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath214284%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp214728 __tmp214727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214726
                                                   _%output-ld-opts214280%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp214725
                                            _%libgerbil-o214240%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp214724 _%src-deps-o214252%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp214729
                                            (cons _%output-c214266%_
                                                  (cons _%output_-c214270%_
                                                        (cons _%output-o214268%_
                                                              (cons _%output_-o214272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp214729)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it214296%_))
                                  (_%compile-it214296%_)))
                            '#!void))))))
          (let* ((_%output-bin214216%_
                  (gxc#compile-exe-output-file _%ctx214200%_ _%opts214201%_))
                 (_%output-scm214218%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214216%_ '"__exe.scm"))))
            (_%compile-stub214214%_
             _%output-scm214218%_
             _%output-bin214216%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx214022%_ _%opts214023%_)
        (letrec ((_%reset-declare214025%_
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
                 (_%generate-stub214026%_
                  (lambda (_%deps214191%_)
                    (let ((_%mod-main214193%_
                           (gxc#find-runtime-symbol _%ctx214022%_ 'main))
                          (_%reset-decl214194%_ (_%reset-declare214025%_))
                          (_%user-decl214195%_ (_%user-declare214027%_)))
                      (for-each
                       (lambda (_%dep214197%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl214194%_))
                         (newline)
                         (if _%user-decl214195%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl214195%_))
                               (newline))
                             '#!void)
                         (let ((__tmp214730
                                (cons 'include (cons _%dep214197%_ '()))))
                           (declare (not safe))
                           (##write __tmp214730))
                         (newline))
                       _%deps214191%_)
                      (let ((__tmp214731
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main214193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp214731))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare214027%_
                  (lambda ()
                    (let* ((_%gsc-opts214096%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts214023%_)))
                           (_%gsc-prelude214098%_
                            (if _%gsc-opts214096%_
                                (member '"-prelude" _%gsc-opts214096%_)
                                '#f))
                           (_%gsc-prelude214100%_
                            (if _%gsc-prelude214098%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude214098%_)))
                                '#f)))
                      (let _%lp214103%_ ((_%rest214105%_
                                          (cons _%gsc-prelude214100%_ '()))
                                         (_%user-decls214106%_ '()))
                        (let* ((_%rest214107214115%_ _%rest214105%_)
                               (_%else214109214123%_
                                (lambda ()
                                  (if (null? _%user-decls214106%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls214106%_)))))
                               (_%K214111214179%_
                                (lambda (_%rest214126%_ _%expr214127%_)
                                  (let* ((_%expr214128214140%_ _%expr214127%_)
                                         (_%else214131214148%_
                                          (lambda ()
                                            (_%lp214103%_
                                             _%rest214126%_
                                             _%user-decls214106%_))))
                                    (let ((_%K214136214169%_
                                           (lambda (_%decls214167%_)
                                             (_%lp214103%_
                                              _%rest214126%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls214106%_
                                                 _%decls214167%_)))))
                                          (_%K214133214154%_
                                           (lambda (_%exprs214152%_)
                                             (_%lp214103%_
                                              (append _%exprs214152%_
                                                      _%rest214126%_)
                                              _%user-decls214106%_))))
                                      (if (pair? _%expr214128214140%_)
                                          (let ((_%tl214138214174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr214128214140%_)))
                                                (_%hd214137214172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr214128214140%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd214137214172%_
                                                         'declare))
                                                (let ((_%decls214177%_
                                                       _%tl214138214174%_))
                                                  (_%K214136214169%_
                                                   _%decls214177%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd214137214172%_
                                                             'begin))
                                                    (let ((_%exprs214162%_
                                                           _%tl214138214174%_))
                                                      (_%K214133214154%_
                                                       _%exprs214162%_))
                                                    (_%else214131214148%_))))
                                          (_%else214131214148%_)))))))
                          (if (pair? _%rest214107214115%_)
                              (let ((_%hd214112214182%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest214107214115%_)))
                                    (_%tl214113214184%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest214107214115%_))))
                                (let* ((_%expr214187%_ _%hd214112214182%_)
                                       (_%rest214189%_ _%tl214113214184%_))
                                  (_%K214111214179%_
                                   _%rest214189%_
                                   _%expr214187%_)))
                              (_%else214109214123%_)))))))
                 (_%compile-stub214028%_
                  (lambda (_%output-scm214035%_ _%output-bin214036%_)
                    (let* ((_%gerbil-home214038%_
                            (let ((__tmp214732
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214732)))
                           (_%gerbil-libdir214040%_
                            (path-expand '"lib" _%gerbil-home214038%_))
                           (_%runtime214042%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp214044%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home214038%_))
                           (_%include-gambit-sharp214046%_
                            (gxc#include-source _%gambit-sharp214044%_))
                           (_%bin-scm214048%_
                            (gxc#find-static-module-file _%ctx214022%_))
                           (_%deps214050%_
                            (gxc#find-runtime-module-deps _%ctx214022%_))
                           (_%deps214052%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps214050%_)))
                           (_%deps214057%_
                            (let ((__tmp214733
                                   (lambda (_%$obj214054%_)
                                     (not (gxc#file-empty? _%$obj214054%_)))))
                              (declare (not safe))
                              (##filter __tmp214733 _%deps214052%_)))
                           (_%deps214061%_
                            (let ((__tmp214734
                                   (lambda (_%f214059%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f214059%_
                                             _%runtime214042%_))))))
                              (declare (not safe))
                              (##filter __tmp214734 _%deps214057%_)))
                           (_%output-base214063%_
                            (let ((__tmp214735
                                   (path-strip-extension
                                    _%output-scm214035%_)))
                              (declare (not safe))
                              (##string-append __tmp214735)))
                           (_%output-c214065%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base214063%_ '".c")))
                           (_%output-o214067%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base214063%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_214069%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base214063%_ '"_.c")))
                           (_%output-o_214071%_
                            (let ((__tmp214736
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base214063%_
                               __tmp214736)))
                           (_%gsc-link-opts214073%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214075%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214077%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir214040%_)))
                           (_%output-ld-opts214079%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros214081%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp214046%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp214046%_
                                            '()))))
                           (_%gsc-link-opts214083%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts214073%_
                               _%gsc-gx-macros214081%_)))
                           (_%rpath214085%_
                            (gxc#gerbil-rpath _%gerbil-libdir214040%_))
                           (_%default-ld-options214087%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp214737
                             (lambda ()
                               (let ((__tmp214738
                                      (path-directory _%output-bin214036%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp214738)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp214737))
                      (gxc#with-output-to-scheme-file
                       _%output-scm214035%_
                       (lambda ()
                         (_%generate-stub214026%_
                          (let ((__tmp214739
                                 (let ((__tmp214740
                                        (cons _%bin-scm214048%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp214740
                                    _%deps214061%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp214739 _%runtime214042%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it214093%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_214069%_
                                                      (let ((__tmp214741
                                                             (cons _%output-scm214035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp214741 _%gsc-link-opts214083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp214742
                                                 (let ((__tmp214743
                                                        (cons _%output-c214065%_
                                                              (cons _%output-c_214069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp214743
                                                    _%gsc-static-opts214077%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214742
                                             _%gsc-cc-opts214075%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin214036%_
                                                      (cons _%output-o214067%_
                                                            (cons _%output-o_214071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp214744
                                 (let ((__tmp214746
                                        (cons '"-L"
                                              (cons _%gerbil-libdir214040%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options214087%_))))
                                       (__tmp214745
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath214085%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp214746 __tmp214745))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp214744
                             _%output-ld-opts214079%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it214093%_))
                                (_%compile-it214093%_)))
                          '#!void)))))
          (let* ((_%output-bin214030%_
                  (gxc#compile-exe-output-file _%ctx214022%_ _%opts214023%_))
                 (_%output-scm214032%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214030%_ '"__exe.scm"))))
            (_%compile-stub214028%_
             _%output-scm214032%_
             _%output-bin214030%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx213971%_ _%id213972%_)
        (let ((_%$e214018%_
               (let ((__tmp214748
                      (lambda (_%e213973213975%_)
                        (let* ((_%e213973213977213987%_ _%e213973213975%_)
                               (_%else213979213995%_ (lambda () '#f))
                               (_%K213981213999%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e213973213977213987%_
                                 'gx#module-export::t))
                              (let* ((_%e213982214002%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213973213977213987%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e213983214005%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213973213977213987%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e213984214008%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213973213977213987%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e213984214008%_ '0))
                                    (let ((_%e213985214011%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e213973213977213987%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g214013214015%_)
                                             (eq? _%g214013214015%_
                                                  _%id213972%_))
                                           _%e213985214011%_)
                                          (_%K213981213999%_)
                                          (_%else213979213995%_)))
                                    (_%else213979213995%_)))
                              (_%else213979213995%_)))))
                     (__tmp214747
                      (##structure-ref
                       _%ctx213971%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp214748 __tmp214747))))
          (if _%$e214018%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e214018%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx213962%_ _%id213963%_)
        (let ((_%$e213965%_
               (gxc#find-export-binding _%ctx213962%_ _%id213963%_)))
          (if _%$e213965%_
              ((lambda (_%bind213968%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind213968%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id213963%_)))
                 (##structure-ref _%bind213968%_ '1 gx#binding::t '#f))
               _%$e213965%_)
              (let ((__tmp214749
                     (##structure-ref
                      _%ctx213962%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp214749
                 _%id213963%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx213828%_)
        (letrec* ((_%ht213830%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template213831%_
                   (lambda (_%in213907%_ _%phi213908%_)
                     (let ((_%iphi213910%_
                            (fx+ _%phi213908%_
                                 (##direct-structure-ref
                                  _%in213907%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports213911%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in213907%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp213913%_ ((_%rest213915%_ _%imports213911%_)
                                          (_%r213916%_ '()))
                         (let* ((_%rest213917213925%_ _%rest213915%_)
                                (_%else213919213933%_ (lambda () _%r213916%_))
                                (_%K213921213950%_
                                 (lambda (_%rest213936%_ _%in213937%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in213937%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi213910%_))
                                           (_%lp213913%_
                                            _%rest213936%_
                                            (cons _%in213937%_ _%r213916%_))
                                           (_%lp213913%_
                                            _%rest213936%_
                                            _%r213916%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in213937%_
                                              'gx#module-import::t))
                                           (let ((_%iphi213941%_
                                                  (fx+ _%phi213908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in213937%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi213941%_))
                                                 (_%lp213913%_
                                                  _%rest213936%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in213937%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r213916%_))
                                                 (_%lp213913%_
                                                  _%rest213936%_
                                                  _%r213916%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in213937%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi213944%_
                                                      (fx+ _%iphi213910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in213937%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi213944%_))
                                                     (_%lp213913%_
                                                      _%rest213936%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in213937%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r213916%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi213944%_))
                                                         (_%lp213913%_
                                                          _%rest213936%_
                                                          (let ((__tmp214750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template213831%_
                          _%in213937%_
                          _%iphi213910%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r213916%_ __tmp214750)))
                 (_%lp213913%_ _%rest213936%_ _%r213916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp213913%_
                                                _%rest213936%_
                                                _%r213916%_)))))))
                           (if (pair? _%rest213917213925%_)
                               (let ((_%hd213922213953%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest213917213925%_)))
                                     (_%tl213923213955%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest213917213925%_))))
                                 (let* ((_%in213958%_ _%hd213922213953%_)
                                        (_%rest213960%_ _%tl213923213955%_))
                                   (_%K213921213950%_
                                    _%rest213960%_
                                    _%in213958%_)))
                               (_%else213919213933%_)))))))
                  (_%find-deps213832%_
                   (lambda (_%rest213840%_ _%deps213841%_)
                     (let* ((_%rest213842213850%_ _%rest213840%_)
                            (_%else213844213858%_ (lambda () _%deps213841%_))
                            (_%K213846213895%_
                             (lambda (_%rest213861%_ _%hd213862%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd213862%_
                                      'gx#module-context::t))
                                   (let ((_%id213865%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213862%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports213866%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213862%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht213830%_
                                            _%id213865%_))
                                         (_%find-deps213832%_
                                          _%rest213861%_
                                          _%deps213841%_)
                                         (let ((_%$e213869%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd213862%_))))
                                           (if _%$e213869%_
                                               ((lambda (_%pre213872%_)
                                                  (let ((_%xdeps213874%_
                                                         (_%find-deps213832%_
                                                          (cons _%pre213872%_
                                                                _%imports213866%_)
                                                          _%deps213841%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht213830%_
                                                       _%id213865%_
                                                       _%hd213862%_))
                                                    (_%find-deps213832%_
                                                     _%rest213861%_
                                                     (cons _%hd213862%_
                                                           _%xdeps213874%_))))
                                                _%$e213869%_)
                                               (let ((_%xdeps213877%_
                                                      (_%find-deps213832%_
                                                       _%imports213866%_
                                                       _%deps213841%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht213830%_
                                                    _%id213865%_
                                                    _%hd213862%_))
                                                 (_%find-deps213832%_
                                                  _%rest213861%_
                                                  (cons _%hd213862%_
                                                        _%xdeps213877%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd213862%_
                                          'gx#prelude-context::t))
                                       (let ((_%id213880%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd213862%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht213830%_
                                                _%id213880%_))
                                             (_%find-deps213832%_
                                              _%rest213861%_
                                              _%deps213841%_)
                                             (let ((_%xdeps213884%_
                                                    (_%find-deps213832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd213862%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps213841%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht213830%_
                                                      _%id213880%_))
                                                   (_%find-deps213832%_
                                                    _%rest213861%_
                                                    _%xdeps213884%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht213830%_
                                                        _%id213880%_
                                                        _%hd213862%_))
                                                     (_%find-deps213832%_
                                                      _%rest213861%_
                                                      (cons _%hd213862%_
                                                            _%xdeps213884%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd213862%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd213862%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps213832%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213862%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213861%_)
                                                _%deps213841%_)
                                               (_%find-deps213832%_
                                                _%rest213861%_
                                                _%deps213841%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd213862%_
                                                  'gx#module-export::t))
                                               (_%find-deps213832%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213862%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213861%_)
                                                _%deps213841%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd213862%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd213862%_ '2 '#f '#f)))
               (_%find-deps213832%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd213862%_ '1 '#f '#f))
                      _%rest213861%_)
                _%deps213841%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd213862%_ '2 '#f '#f)))
                   (let ((_%xdeps213891%_
                          (_%import-set-template213831%_ _%hd213862%_ '0)))
                     (_%find-deps213832%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest213861%_ _%xdeps213891%_))
                      _%deps213841%_))
                   (_%find-deps213832%_ _%rest213861%_ _%deps213841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd213862%_))))))))))
                       (if (pair? _%rest213842213850%_)
                           (let ((_%hd213847213898%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest213842213850%_)))
                                 (_%tl213848213900%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest213842213850%_))))
                             (let* ((_%hd213903%_ _%hd213847213898%_)
                                    (_%rest213905%_ _%tl213848213900%_))
                               (_%K213846213895%_
                                _%rest213905%_
                                _%hd213903%_)))
                           (_%else213844213858%_))))))
          (let ((__tmp214751
                 (filter gx#expander-context-id
                         (_%find-deps213832%_
                          (let ((_%$e213834%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx213828%_))))
                            (if _%$e213834%_
                                ((lambda (_%pre213837%_)
                                   (cons _%pre213837%_
                                         (##structure-ref
                                          _%ctx213828%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e213834%_)
                                (##structure-ref
                                 _%ctx213828%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp214751)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx213758%_)
        (let* ((_%context-id213760%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx213758%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx213758%_ '1 '#f '#f))
                    (string->symbol _%ctx213758%_)))
               (_%scm213762%_
                (let ((__tmp214752
                       (gxc#static-module-name _%context-id213760%_)))
                  (declare (not safe))
                  (##string-append __tmp214752 '".scm")))
               (_%dirs213764%_ (let () (declare (not safe)) (load-path)))
               (_%dirs213770%_
                (let ((_%user-libpath213766%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath213766%_
                      (let ((_%user-libpath213768%_
                             (path-expand '"lib" _%user-libpath213766%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath213768%_ _%dirs213764%_))
                            _%dirs213764%_
                            (cons _%user-libpath213768%_ _%dirs213764%_)))
                      _%dirs213764%_)))
               (_%dirs213780%_
                (let ((_%$e213772%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e213772%_
                      ((lambda (_%g213774213776%_)
                         (cons _%g213774213776%_ _%dirs213770%_))
                       _%$e213772%_)
                      _%dirs213770%_)))
               (_%dirs213786%_
                (let ((__tmp214753
                       (lambda (_%g213781213783%_)
                         (path-expand '"static" _%g213781213783%_))))
                  (declare (not safe))
                  (##map __tmp214753 _%dirs213780%_))))
          (let _%lp213789%_ ((_%rest213791%_ _%dirs213786%_))
            (let* ((_%rest213792213800%_ _%rest213791%_)
                   (_%else213794213808%_
                    (lambda ()
                      (let ((__tmp214754
                             (##structure-ref
                              _%ctx213758%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp214754
                         _%scm213762%_))))
                   (_%K213796213816%_
                    (lambda (_%rest213811%_ _%dir213812%_)
                      (let ((_%path213814%_
                             (path-expand _%scm213762%_ _%dir213812%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path213814%_))
                            _%path213814%_
                            (_%lp213789%_ _%rest213811%_))))))
              (if (pair? _%rest213792213800%_)
                  (let ((_%hd213797213819%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213792213800%_)))
                        (_%tl213798213821%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213792213800%_))))
                    (let* ((_%dir213824%_ _%hd213797213819%_)
                           (_%rest213826%_ _%tl213798213821%_))
                      (_%K213796213816%_ _%rest213826%_ _%dir213824%_)))
                  (_%else213794213808%_)))))))
    (define gxc#file-empty?
      (lambda (_%path213756%_)
        (zero? (let ((__tmp214755 (file-info _%path213756%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp214755)))))
    (define gxc#compile-top-module
      (lambda (_%ctx213747%_)
        (let ((__tmp214756
               (lambda ()
                 (let ((__tmp214757
                        (lambda ()
                          (let ((__tmp214758
                                 (lambda ()
                                   (let ((__tmp214760
                                          (lambda ()
                                            (let ((__tmp214762
                                                   (lambda ()
                                                     (let ((__tmp214764
                                                            (lambda ()
                                                              (let ((__tmp214765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx213747%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp214765))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp214766
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx213747%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp214766))
                          '#!void)
                      (gxc#collect-bindings _%ctx213747%_)
                      (gxc#compile-runtime-code _%ctx213747%_)
                      (gxc#compile-meta-code _%ctx213747%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx213747%_)
                          '#!void)))
                   (__tmp214763
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
                __tmp214764
                gxc#current-compile-runtime-names
                __tmp214763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp214761
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp214762
                                               gxc#current-compile-runtime-sections
                                               __tmp214761))))
                                         (__tmp214759
                                          (let ((__obj214660
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj214660))
                                            __obj214660)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214760
                                      gxc#current-compile-symbol-table
                                      __tmp214759)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp214758
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp214757
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214756
           gx#current-expander-context
           _%ctx213747%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx213745%_)
        (let ((__tmp214767
               (##structure-ref _%ctx213745%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp214767))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx213689%_)
        (letrec ((_%compile1213691%_
                  (lambda (_%ctx213734%_)
                    (let* ((_%code213736%_
                            (##structure-ref
                             _%ctx213734%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm213740%_
                            (let ((_%idstr213738%_
                                   (let ((__tmp214768
                                          (##structure-ref
                                           _%ctx213734%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp214768))))
                              (declare (not safe))
                              (##string-append _%idstr213738%_ '"~0")))
                           (_%rtc?213742%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code213736%_))))
                      (if _%rtc?213742%_
                          (let ((__tmp214769
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp214769
                             _%ctx213734%_
                             _%rtm213740%_))
                          '#!void)
                      (_%generate-runtime-code213693%_
                       _%ctx213734%_
                       _%code213736%_
                       (if _%rtc?213742%_ _%rtm213740%_ '#f)))))
                 (_%context-timestamp213692%_
                  (lambda (_%ctx213732%_)
                    (let ((__tmp214770
                           (let ((__tmp214771
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx213732%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp214771 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp214770))))
                 (_%generate-runtime-code213693%_
                  (lambda (_%ctx213700%_ _%code213701%_ _%rtm213702%_)
                    (let* ((_%runtime-code?213704%_ (if _%rtm213702%_ '#t '#f))
                           (_%lifts213706%_ (box '()))
                           (_%runtime-code213713%_
                            (if _%runtime-code?213704%_
                                (let ((__tmp214772
                                       (lambda ()
                                         (let ((__tmp214773
                                                (lambda ()
                                                  (let ((__tmp214774
                                                         (lambda ()
                                                           (let ((__tmp214776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp214778
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code213701%_))))
                                  (__tmp214777
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214778
                               gxc#current-compile-identifiers
                               __tmp214777))))
                         (__tmp214775
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214776
                      gxc#current-compile-marks
                      __tmp214775)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp214774
                                                     gxc#current-compile-lift
                                                     _%lifts213706%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp214773
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp214772
                                   gx#current-expander-context
                                   _%ctx213700%_))
                                '#f))
                           (_%runtime-code213715%_
                            (if _%runtime-code?213704%_
                                (if (null? (unbox _%lifts213706%_))
                                    _%runtime-code213713%_
                                    (cons 'begin
                                          (let ((__tmp214780
                                                 (cons _%runtime-code213713%_
                                                       '()))
                                                (__tmp214779
                                                 (reverse (unbox _%lifts213706%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214780
                                             __tmp214779))))
                                '#f))
                           (_%runtime-code213717%_
                            (if _%runtime-code?213704%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp213692%_
                                                         _%ctx213700%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code213715%_ '())))
                                '#f))
                           (_%loader-code213720%_
                            (let ((__tmp214781
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code213701%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214781
                               gx#current-expander-context
                               _%ctx213700%_)))
                           (_%loader-code213722%_
                            (cons 'begin
                                  (cons _%loader-code213720%_
                                        (cons (if _%runtime-code?213704%_
                                                  (cons 'load-module
                                                        (cons _%rtm213702%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0213724%_
                            (gxc#compile-output-file _%ctx213700%_ '0 '".scm"))
                           (_%scmrt213726%_
                            (gxc#compile-output-file
                             _%ctx213700%_
                             '#f
                             '".scm"))
                           (_%scms213728%_
                            (gxc#compile-static-output-file _%ctx213700%_)))
                      (if _%runtime-code?213704%_
                          (gxc#compile-scm-file__0
                           _%scm0213724%_
                           _%runtime-code213717%_)
                          '#!void)
                      (let ((__tmp214782
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt213726%_
                                _%loader-code213722%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp214782
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms213728%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms213728%_))
                          '#!void)
                      (if _%runtime-code?213704%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0213724%_ _%scms213728%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms213728%_ void)))))))
          (let* ((_%all-modules213695%_
                  (cons _%ctx213689%_ (gxc#lift-nested-modules _%ctx213689%_)))
                 (__tmp214783
                  (lambda (_%ctx213697%_)
                    (let ((__tmp214784
                           (lambda () (_%compile1213691%_ _%ctx213697%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214784
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp214783 _%all-modules213695%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx213588%_)
        (letrec ((_%compile-ssi213590%_
                  (lambda (_%code213657%_)
                    (let* ((_%path213659%_
                            (gxc#compile-output-file
                             _%ctx213588%_
                             '#f
                             '".ssi"))
                           (_%prelude213671%_
                            (let* ((_%super213661%_
                                    (##structure-ref
                                     _%ctx213588%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e213663%_
                                    (##structure-ref
                                     _%super213661%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e213663%_
                                  ((lambda (_%g213665213667%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g213665213667%_)))
                                   _%$e213663%_)
                                  ':<root>)))
                           (_%ns213673%_
                            (##structure-ref
                             _%ctx213588%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr213675%_
                            (symbol->string
                             (##structure-ref
                              _%ctx213588%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg213683%_
                            (let ((_%$e213677%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr213675%_ '#\/))))
                              (if _%$e213677%_
                                  ((lambda (_%x213680%_)
                                     (let ((__tmp214785
                                            (substring
                                             _%idstr213675%_
                                             '0
                                             _%x213680%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp214785)))
                                   _%$e213677%_)
                                  '#f)))
                           (_%rt213685%_
                            (let ((__tmp214786
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp214786 _%ctx213588%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path213659%_))
                      (gxc#with-output-to-scheme-file
                       _%path213659%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude213671%_))
                         (if _%pkg213683%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg213683%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns213673%_))
                         (newline)
                         (pretty-print _%code213657%_)
                         (if _%rt213685%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt213685%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi213591%_
                  (lambda (_%part213596%_)
                    (let* ((_%part213597213610%_ _%part213596%_)
                           (_%E213599213614%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part213597213610%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K213600213626%_
                            (lambda (_%code213617%_
                                     _%n213618%_
                                     _%phi213619%_
                                     _%phi-ctx213620%_)
                              (let ((_%code213624%_
                                     (let ((__tmp214787
                                            (lambda ()
                                              (let ((__tmp214788
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code213617%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214788
                                                 gx#current-expander-phi
                                                 _%phi213619%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214787
                                        gx#current-expander-context
                                        _%phi-ctx213620%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx213588%_
                                  _%n213618%_
                                  '".scm")
                                 _%code213624%_
                                 '#t)))))
                      (if (pair? _%part213597213610%_)
                          (let ((_%hd213601213629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part213597213610%_)))
                                (_%tl213602213631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part213597213610%_))))
                            (let ((_%phi-ctx213634%_ _%hd213601213629%_))
                              (if (pair? _%tl213602213631%_)
                                  (let ((_%hd213603213636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213602213631%_)))
                                        (_%tl213604213638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213602213631%_))))
                                    (let ((_%phi213641%_ _%hd213603213636%_))
                                      (if (pair? _%tl213604213638%_)
                                          (let ((_%hd213605213643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl213604213638%_)))
                                                (_%tl213606213645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl213604213638%_))))
                                            (let ((_%n213648%_
                                                   _%hd213605213643%_))
                                              (if (pair? _%tl213606213645%_)
                                                  (let ((_%hd213607213650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl213606213645%_)))
                                                        (_%tl213608213652%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl213606213645%_))))
                                                    (let ((_%code213655%_
                                                           _%hd213607213650%_))
                                                      (if (null? _%tl213608213652%_)
                                                          (_%K213600213626%_
                                                           _%code213655%_
                                                           _%n213648%_
                                                           _%phi213641%_
                                                           _%phi-ctx213634%_)
                                                          (_%E213599213614%_))))
                                                  (_%E213599213614%_))))
                                          (_%E213599213614%_))))
                                  (_%E213599213614%_))))
                          (_%E213599213614%_))))))
          (let ((_g214789_ (gxc#generate-meta-code _%ctx213588%_)))
            (begin
              (let ((_g214790_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214789_)
                           (##values-length _g214789_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214790_ 2)))
                    (error "Context expects 2 values" _g214790_)))
              (let ((_%ssi-code213593%_
                     (let () (declare (not safe)) (##values-ref _g214789_ 0)))
                    (_%phi-code213594%_
                     (let () (declare (not safe)) (##values-ref _g214789_ 1))))
                (begin
                  (_%compile-ssi213590%_ _%ssi-code213593%_)
                  (for-each _%compile-phi213591%_ _%phi-code213594%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx213570%_)
        (let* ((_%path213572%_
                (gxc#compile-output-file _%ctx213570%_ '#f '".ssxi.ss"))
               (_%code213574%_
                (let ((__tmp214791
                       (##structure-ref
                        _%ctx213570%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp214791)))
               (_%idstr213576%_
                (symbol->string
                 (##structure-ref
                  _%ctx213570%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg213584%_
                (let ((_%$e213578%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr213576%_ '#\/))))
                  (if _%$e213578%_
                      ((lambda (_%x213581%_)
                         (let ((__tmp214792
                                (substring _%idstr213576%_ '0 _%x213581%_)))
                           (declare (not safe))
                           (##string->symbol __tmp214792)))
                       _%$e213578%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path213572%_))
          (gxc#with-output-to-scheme-file
           _%path213572%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg213584%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg213584%_))
                 '#!void)
             (newline)
             (pretty-print _%code213574%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx213563%_)
        (let* ((_%state213565%_
                (let ((__obj214661
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj214661 _%ctx213563%_))
                  __obj214661))
               (_%ssi-code213567%_
                (let ((__tmp214793
                       (##structure-ref
                        _%ctx213563%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state213565%_
                   __tmp214793))))
          (values _%ssi-code213567%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state213565%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx213554%_)
        (let* ((_%lifts213556%_ (box '()))
               (__tmp214794
                (lambda ()
                  (let ((__tmp214796
                         (lambda ()
                           (let ((__tmp214798
                                  (lambda ()
                                    (let ((_%code213561%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx213554%_))))
                                      (if (null? (unbox _%lifts213556%_))
                                          _%code213561%_
                                          (cons 'begin
                                                (let ((__tmp214800
                                                       (cons _%code213561%_
                                                             '()))
                                                      (__tmp214799
                                                       (reverse (unbox _%lifts213556%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214800
                                                   __tmp214799)))))))
                                 (__tmp214797
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp214798
                              gxc#current-compile-identifiers
                              __tmp214797))))
                        (__tmp214795
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp214796
                     gxc#current-compile-marks
                     __tmp214795)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214794
           gxc#current-compile-lift
           _%lifts213556%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx213550%_)
        (let ((_%modules213552%_ (box '())))
          (let ((__tmp214801
                 (##structure-ref _%ctx213550%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules213552%_ __tmp214801))
          (reverse (unbox _%modules213552%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path213530%_ _%code213531%_ _%phi?213532%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path213530%_))
        (gxc#with-output-to-scheme-file
         _%path213530%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp214802
                                           (if _%phi?213532%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp214802)))))))
           (pretty-print _%code213531%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it213536%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path213530%_ _%phi?213532%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp214803
                         (cons 'compile-file (cons _%path213530%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it213536%_ __tmp214803))
                  (_%compile-it213536%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path213541%_ _%code213542%_)
        (let ((_%phi?213544%_ '#f))
          (gxc#compile-scm-file__%
           _%path213541%_
           _%code213542%_
           _%phi?213544%_))))
    (define gxc#compile-scm-file
      (lambda _g214804_
        (let ((_g214805_ (let () (declare (not safe)) (##length _g214804_))))
          (cond ((let () (declare (not safe)) (##fx= _g214805_ 2))
                 (apply gxc#compile-scm-file__0 _g214804_))
                ((let () (declare (not safe)) (##fx= _g214805_ 3))
                 (apply gxc#compile-scm-file__% _g214804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g214804_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?213431%_)
        (let _%lp213433%_ ((_%rest213435%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213436%_ '()))
          (let* ((_%rest213437213457%_ _%rest213435%_)
                 (_%else213441213465%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts213436%_)))
                        (reverse _%opts213436%_)))))
            (let ((_%K213451213508%_
                   (lambda (_%rest213506%_)
                     (_%lp213433%_ _%rest213506%_ _%opts213436%_)))
                  (_%K213446213490%_
                   (lambda (_%rest213488%_)
                     (_%lp213433%_ _%rest213488%_ _%opts213436%_)))
                  (_%K213443213472%_
                   (lambda (_%rest213469%_ _%opt213470%_)
                     (_%lp213433%_
                      _%rest213469%_
                      (cons _%opt213470%_ _%opts213436%_)))))
              (if (pair? _%rest213437213457%_)
                  (let ((_%tl213453213513%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213437213457%_)))
                        (_%hd213452213511%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213437213457%_))))
                    (if (equal? _%hd213452213511%_ '"-cc-options")
                        (if (pair? _%tl213453213513%_)
                            (let* ((_%tl213455213516%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213453213513%_)))
                                   (_%rest213519%_ _%tl213455213516%_))
                              (_%K213451213508%_ _%rest213519%_))
                            (let ((_%opt213480%_ _%hd213452213511%_)
                                  (_%rest213482%_ _%tl213453213513%_))
                              (_%K213443213472%_
                               _%rest213482%_
                               _%opt213480%_)))
                        (if (equal? _%hd213452213511%_ '"-ld-options")
                            (if (pair? _%tl213453213513%_)
                                (let* ((_%tl213450213498%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl213453213513%_)))
                                       (_%rest213501%_ _%tl213450213498%_))
                                  (_%K213446213490%_ _%rest213501%_))
                                (let ((_%opt213480%_ _%hd213452213511%_)
                                      (_%rest213482%_ _%tl213453213513%_))
                                  (_%K213443213472%_
                                   _%rest213482%_
                                   _%opt213480%_)))
                            (let ((_%opt213480%_ _%hd213452213511%_)
                                  (_%rest213482%_ _%tl213453213513%_))
                              (_%K213443213472%_
                               _%rest213482%_
                               _%opt213480%_)))))
                  (_%else213441213465%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?213525%_ '#f)) (gxc#gsc-link-options__% _%phi?213525%_))))
    (define gxc#gsc-link-options
      (lambda _g214806_
        (let ((_g214807_ (let () (declare (not safe)) (##length _g214806_))))
          (cond ((let () (declare (not safe)) (##fx= _g214807_ 0))
                 (apply gxc#gsc-link-options__0 _g214806_))
                ((let () (declare (not safe)) (##fx= _g214807_ 1))
                 (apply gxc#gsc-link-options__% _g214806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g214806_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords213281%_ _%static?213277213282%_ _%phi?213283%_)
        (let ((_%static?213285%_
               (if (eq? _%static?213277213282%_ absent-value)
                   '#f
                   _%static?213277213282%_)))
          (if _%phi?213283%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp213287%_ ((_%rest213289%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213290%_ '()))
                (let* ((_%rest213291213317%_ _%rest213289%_)
                       (_%else213296213325%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts213290%_)))
                              (reverse! _%opts213290%_)))))
                  (let ((_%K213311213388%_
                         (lambda (_%rest213385%_ _%opt213386%_)
                           (if _%static?213285%_
                               (_%lp213287%_
                                _%rest213385%_
                                (cons _%opt213386%_
                                      (cons '"-cc-options" _%opts213290%_)))
                               (_%lp213287%_ _%rest213385%_ _%opts213290%_))))
                        (_%K213306213365%_
                         (lambda (_%rest213362%_ _%opt213363%_)
                           (_%lp213287%_
                            _%rest213362%_
                            (cons _%opt213363%_
                                  (cons '"-cc-options" _%opts213290%_)))))
                        (_%K213301213345%_
                         (lambda (_%rest213343%_)
                           (_%lp213287%_ _%rest213343%_ _%opts213290%_)))
                        (_%K213298213331%_
                         (lambda (_%rest213329%_)
                           (_%lp213287%_ _%rest213329%_ _%opts213290%_))))
                    (if (pair? _%rest213291213317%_)
                        (let ((_%tl213313213393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213291213317%_)))
                              (_%hd213312213391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213291213317%_))))
                          (if (equal? _%hd213312213391%_ '"-cc-options")
                              (if (pair? _%tl213313213393%_)
                                  (let ((_%tl213315213398%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213313213393%_)))
                                        (_%hd213314213396%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213313213393%_))))
                                    (if (equal? _%hd213314213396%_ '"-Bstatic")
                                        (let ((_%opt213401%_
                                               _%hd213314213396%_)
                                              (_%rest213403%_
                                               _%tl213315213398%_))
                                          (_%K213311213388%_
                                           _%rest213403%_
                                           _%opt213401%_))
                                        (let ((_%opt213378%_
                                               _%hd213314213396%_)
                                              (_%rest213380%_
                                               _%tl213315213398%_))
                                          (_%K213306213365%_
                                           _%rest213380%_
                                           _%opt213378%_))))
                                  (let ((_%rest213337%_ _%tl213313213393%_))
                                    (_%K213298213331%_ _%rest213337%_)))
                              (if (equal? _%hd213312213391%_ '"-ld-options")
                                  (if (pair? _%tl213313213393%_)
                                      (let* ((_%tl213305213353%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213313213393%_)))
                                             (_%rest213356%_
                                              _%tl213305213353%_))
                                        (_%K213301213345%_ _%rest213356%_))
                                      (let ((_%rest213337%_
                                             _%tl213313213393%_))
                                        (_%K213298213331%_ _%rest213337%_)))
                                  (let ((_%rest213337%_ _%tl213313213393%_))
                                    (_%K213298213331%_ _%rest213337%_)))))
                        (_%else213296213325%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords213408%_ _%static?213277213409%_)
        (let ((_%phi?213411%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords213408%_
           _%static?213277213409%_
           _%phi?213411%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g214808_
        (let ((_g214809_ (let () (declare (not safe)) (##length _g214808_))))
          (cond ((let () (declare (not safe)) (##fx= _g214809_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g214808_))
                ((let () (declare (not safe)) (##fx= _g214809_ 3))
                 (apply gxc#gsc-cc-options__%__% _g214808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g214808_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords213420%_ . _%args213421%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords213420%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213420%_
                  'static:
                  absent-value))
               _%args213421%_)))
    (define gxc#gsc-cc-options
      (lambda _%args213278213427%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args213278213427%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords213127%_ _%static?213123213128%_ _%phi?213129%_)
        (let ((_%static?213131%_
               (if (eq? _%static?213123213128%_ absent-value)
                   '#f
                   _%static?213123213128%_)))
          (if _%phi?213129%_
              '()
              (let _%lp213133%_ ((_%rest213135%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213136%_ '()))
                (let* ((_%rest213137213163%_ _%rest213135%_)
                       (_%else213142213171%_
                        (lambda () (reverse! _%opts213136%_))))
                  (let ((_%K213157213234%_
                         (lambda (_%rest213231%_ _%opt213232%_)
                           (if _%static?213131%_
                               (_%lp213133%_
                                _%rest213231%_
                                (cons _%opt213232%_
                                      (cons '"-ld-options" _%opts213136%_)))
                               (_%lp213133%_ _%rest213231%_ _%opts213136%_))))
                        (_%K213152213211%_
                         (lambda (_%rest213208%_ _%opt213209%_)
                           (_%lp213133%_
                            _%rest213208%_
                            (cons _%opt213209%_
                                  (cons '"-ld-options" _%opts213136%_)))))
                        (_%K213147213191%_
                         (lambda (_%rest213189%_)
                           (_%lp213133%_ _%rest213189%_ _%opts213136%_)))
                        (_%K213144213177%_
                         (lambda (_%rest213175%_)
                           (_%lp213133%_ _%rest213175%_ _%opts213136%_))))
                    (if (pair? _%rest213137213163%_)
                        (let ((_%tl213159213239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213137213163%_)))
                              (_%hd213158213237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213137213163%_))))
                          (if (equal? _%hd213158213237%_ '"-ld-options")
                              (if (pair? _%tl213159213239%_)
                                  (let ((_%tl213161213244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213159213239%_)))
                                        (_%hd213160213242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213159213239%_))))
                                    (if (equal? _%hd213160213242%_ '"-static")
                                        (let ((_%opt213247%_
                                               _%hd213160213242%_)
                                              (_%rest213249%_
                                               _%tl213161213244%_))
                                          (_%K213157213234%_
                                           _%rest213249%_
                                           _%opt213247%_))
                                        (let ((_%opt213224%_
                                               _%hd213160213242%_)
                                              (_%rest213226%_
                                               _%tl213161213244%_))
                                          (_%K213152213211%_
                                           _%rest213226%_
                                           _%opt213224%_))))
                                  (let ((_%rest213183%_ _%tl213159213239%_))
                                    (_%K213144213177%_ _%rest213183%_)))
                              (if (equal? _%hd213158213237%_ '"-cc-options")
                                  (if (pair? _%tl213159213239%_)
                                      (let* ((_%tl213151213199%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213159213239%_)))
                                             (_%rest213202%_
                                              _%tl213151213199%_))
                                        (_%K213147213191%_ _%rest213202%_))
                                      (let ((_%rest213183%_
                                             _%tl213159213239%_))
                                        (_%K213144213177%_ _%rest213183%_)))
                                  (let ((_%rest213183%_ _%tl213159213239%_))
                                    (_%K213144213177%_ _%rest213183%_)))))
                        (_%else213142213171%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords213254%_ _%static?213123213255%_)
        (let ((_%phi?213257%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords213254%_
           _%static?213123213255%_
           _%phi?213257%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g214810_
        (let ((_g214811_ (let () (declare (not safe)) (##length _g214810_))))
          (cond ((let () (declare (not safe)) (##fx= _g214811_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g214810_))
                ((let () (declare (not safe)) (##fx= _g214811_ 3))
                 (apply gxc#gsc-ld-options__%__% _g214810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g214810_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords213266%_ . _%args213267%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords213266%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213266%_
                  'static:
                  absent-value))
               _%args213267%_)))
    (define gxc#gsc-ld-options
      (lambda _%args213124213273%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args213124213273%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir213118%_)
        (let ((_%user-staticdir213120%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir213118%_
                       '" -I "
                       _%user-staticdir213120%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp213030%_ ((_%rest213032%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213033%_ '()))
          (let* ((_%rest213034213054%_ _%rest213032%_)
                 (_%else213038213062%_ (lambda () _%opts213033%_)))
            (let ((_%K213048213105%_
                   (lambda (_%rest213103%_)
                     (_%lp213030%_ _%rest213103%_ _%opts213033%_)))
                  (_%K213043213083%_
                   (lambda (_%rest213080%_ _%opt213081%_)
                     (_%lp213030%_
                      _%rest213080%_
                      (let ((__tmp214812
                             (let ((__tmp214813
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt213081%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp214813))))
                        (declare (not safe))
                        (##append _%opts213033%_ __tmp214812)))))
                  (_%K213040213068%_
                   (lambda (_%rest213066%_)
                     (_%lp213030%_ _%rest213066%_ _%opts213033%_))))
              (if (pair? _%rest213034213054%_)
                  (let ((_%tl213050213110%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213034213054%_)))
                        (_%hd213049213108%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213034213054%_))))
                    (if (equal? _%hd213049213108%_ '"-cc-options")
                        (if (pair? _%tl213050213110%_)
                            (let* ((_%tl213052213113%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213050213110%_)))
                                   (_%rest213116%_ _%tl213052213113%_))
                              (_%K213048213105%_ _%rest213116%_))
                            (let ((_%rest213074%_ _%tl213050213110%_))
                              (_%K213040213068%_ _%rest213074%_)))
                        (if (equal? _%hd213049213108%_ '"-ld-options")
                            (if (pair? _%tl213050213110%_)
                                (let ((_%tl213047213093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl213050213110%_)))
                                      (_%hd213046213091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl213050213110%_))))
                                  (let ((_%opt213096%_ _%hd213046213091%_)
                                        (_%rest213098%_ _%tl213047213093%_))
                                    (_%K213043213083%_
                                     _%rest213098%_
                                     _%opt213096%_)))
                                (let ((_%rest213074%_ _%tl213050213110%_))
                                  (_%K213040213068%_ _%rest213074%_)))
                            (let ((_%rest213074%_ _%tl213050213110%_))
                              (_%K213040213068%_ _%rest213074%_)))))
                  (_%else213038213062%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str213027%_)
        (not (let () (declare (not safe)) (string-empty? _%str213027%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path213020%_ _%phi?213021%_)
        (let ((_%gsc-link-opts213023%_
               (gxc#gsc-link-options__% _%phi?213021%_))
              (_%gsc-cc-opts213024%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?213021%_))
              (_%gsc-ld-opts213025%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?213021%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp214814
                  (let ((__tmp214815
                         (let ((__tmp214816 (cons _%path213020%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214816
                            _%gsc-link-opts213023%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214815 _%gsc-ld-opts213025%_))))
             (declare (not safe))
             (__foldr1 cons __tmp214814 _%gsc-cc-opts213024%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx212986%_ _%n212987%_ _%ext212988%_)
        (letrec ((_%module-relative-path212990%_
                  (lambda (_%ctx213018%_)
                    (path-strip-directory
                     (let ((__tmp214817
                            (##structure-ref
                             _%ctx213018%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp214817)))))
                 (_%module-source-directory212991%_
                  (lambda (_%ctx213014%_)
                    (path-directory
                     (let ((_%mpath213016%_
                            (##structure-ref
                             _%ctx213014%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath213016%_)
                           _%mpath213016%_
                           (last _%mpath213016%_))))))
                 (_%section-string212992%_
                  (lambda (_%n213008%_)
                    (if (number? _%n213008%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n213008%_))
                        (if (symbol? _%n213008%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n213008%_))
                            (if (string? _%n213008%_)
                                _%n213008%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n213008%_)))))))
                 (_%file-name212993%_
                  (lambda (_%path213006%_)
                    (if _%n212987%_
                        (string-append
                         _%path213006%_
                         '"~"
                         (_%section-string212992%_ _%n212987%_)
                         _%ext212988%_)
                        (string-append _%path213006%_ _%ext212988%_))))
                 (_%file-path212994%_
                  (lambda ()
                    (let ((_%$e213000%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e213000%_
                          ((lambda (_%outdir213003%_)
                             (path-expand
                              (_%file-name212993%_
                               (let ((__tmp214818
                                      (##structure-ref
                                       _%ctx212986%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp214818)))
                              _%outdir213003%_))
                           _%$e213000%_)
                          (path-expand
                           (_%file-name212993%_
                            (_%module-relative-path212990%_ _%ctx212986%_))
                           (_%module-source-directory212991%_
                            _%ctx212986%_)))))))
          (let ((_%path212996%_ (_%file-path212994%_)))
            (let ((__tmp214819
                   (lambda ()
                     (let ((__tmp214820 (path-directory _%path212996%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214820)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214819))
            _%path212996%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx212967%_)
        (letrec ((_%file-name212969%_
                  (lambda (_%id212984%_)
                    (let ((__tmp214821 (gxc#static-module-name _%id212984%_)))
                      (declare (not safe))
                      (##string-append __tmp214821 '".scm"))))
                 (_%file-path212970%_
                  (lambda ()
                    (let* ((_%file212976%_
                            (_%file-name212969%_
                             (##structure-ref
                              _%ctx212967%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e212978%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e212978%_
                          ((lambda (_%outdir212981%_)
                             (path-expand
                              _%file212976%_
                              (path-expand '"static" _%outdir212981%_)))
                           _%$e212978%_)
                          (path-expand _%file212976%_ '"static"))))))
          (let ((_%path212972%_ (_%file-path212970%_)))
            (let ((__tmp214822
                   (lambda ()
                     (let ((__tmp214823 (path-directory _%path212972%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214823)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214822))
            _%path212972%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx212960%_ _%opts212961%_)
        (let ((_%$e212963%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts212961%_))))
          (if _%$e212963%_
              _%$e212963%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx212960%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr212950%_)
        (if (string? _%idstr212950%_)
            (let* ((_%str212953%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr212950%_)))
                   (_%strs212955%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str212953%_ '#\/))))
              (declare (not safe))
              (string-join _%strs212955%_ '"__"))
            (if (symbol? _%idstr212950%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr212950%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr212950%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp214824
               (let ((__tmp214825 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp214825 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp214824))))
    (define gxc#invoke__%
      (lambda (_%@@keywords212916%_
               _%stdout-redirection212912212917%_
               _%stderr-redirection212913212918%_
               _%program212919%_
               _%args212920%_)
        (let* ((_%stdout-redirection212922%_
                (if (eq? _%stdout-redirection212912212917%_ absent-value)
                    '#f
                    _%stdout-redirection212912212917%_))
               (_%stderr-redirection212924%_
                (if (eq? _%stderr-redirection212913212918%_ absent-value)
                    '#f
                    _%stderr-redirection212913212918%_)))
          (let ((__tmp214826 (cons _%program212919%_ _%args212920%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp214826))
          (let* ((_%proc212926%_
                  (open-process
                   (cons 'path:
                         (cons _%program212919%_
                               (cons 'arguments:
                                     (cons _%args212920%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection212922%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection212924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output212931%_
                  (if (or _%stdout-redirection212922%_
                          _%stderr-redirection212924%_)
                      (read-line _%proc212926%_ '#f)
                      '#f))
                 (_%status212934%_ (process-status _%proc212926%_)))
            (let () (declare (not safe)) (##close-port _%proc212926%_))
            (if (zero? _%status212934%_)
                '#!void
                (begin
                  (display _%output212931%_)
                  (let ((__tmp214827 (cons _%program212919%_ _%args212920%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp214827
                     _%status212934%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords212939%_ . _%args212940%_)
        (apply gxc#invoke__%
               _%@@keywords212939%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212939%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212939%_
                  'stderr-redirection:
                  absent-value))
               _%args212940%_)))
    (define gxc#invoke
      (lambda _%args212914212946%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args212914212946%_)))))
