(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1783878484)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp267495 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp267495))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp267496 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp267496))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path267352%_ _%fun267353%_)
        (with-output-to-file
         (cons 'path: (cons _%path267352%_ gxc#scheme-file-settings))
         _%fun267353%_)))
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
      (lambda (_%gerbil-libdir267347%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir267347%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path267345%_)
        (let ((__tmp267497 (object->string _%path267345%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp267497 '")"))))
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
      (lambda (_%dir267343%_) (delete-file-or-directory _%dir267343%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath267286%_ _%opts267287%_)
        (if (string? _%srcpath267286%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath267286%_)))
        (let* ((_%outdir267289%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts267287%_)))
               (_%invoke-gsc?267291%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts267287%_)))
               (_%target267296%_
                (let ((_%$e267293%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts267287%_))))
                  (if _%$e267293%_ _%$e267293%_ 'C)))
               (_%gsc-options267301%_
                (append (cons '"-target"
                              (cons (symbol->string _%target267296%_) '()))
                        (let ((_%$e267298%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts267287%_))))
                          (if _%$e267298%_ _%$e267298%_ '()))))
               (_%keep-scm?267303%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts267287%_)))
               (_%verbosity267305%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts267287%_)))
               (_%optimize267307%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts267287%_)))
               (_%debug267309%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts267287%_)))
               (_%gen-ssxi267311%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts267287%_)))
               (_%parallel?267313%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts267287%_))))
          (if _%outdir267289%_
              (let ((__tmp267498
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir267289%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp267498))
              '#!void)
          (if _%optimize267307%_
              (let ((__tmp267499
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp267499))
              '#!void)
          (let ((__tmp267500
                 (lambda ()
                   (let ((__tmp267501
                          (lambda ()
                            (let ((__tmp267502
                                   (lambda ()
                                     (let ((__tmp267503
                                            (lambda ()
                                              (let ((__tmp267504
                                                     (lambda ()
                                                       (let ((__tmp267505
                                                              (lambda ()
                                                                (let ((__tmp267506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp267507
                                        (lambda ()
                                          (let ((__tmp267509
                                                 (lambda ()
                                                   (let ((__tmp267511
                                                          (lambda ()
                                                            (let ((__tmp267513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp267514
                                    (lambda ()
                                      (let ((__tmp267515
                                             (lambda ()
                                               (let ((__tmp267516
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath267286%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp267517
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath267286%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp267517))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp267516
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp267515
                                         gx#current-compilation-target
                                         _%target267296%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp267514
                                gxc#current-compile-parallel
                                _%parallel?267313%_))))
                          (__tmp267512
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp267513
                       gxc#current-compile-identifiers
                       __tmp267512))))
                 (__tmp267510
                  (cons (cons 'compile-module (cons _%srcpath267286%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp267511
                                                      gxc#current-compile-context
                                                      __tmp267510))))
                                                (__tmp267508
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp267509
                                             gxc#current-compile-timestamp
                                             __tmp267508)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp267507
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi267311%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp267506
                           gxc#current-compile-debug
                           _%debug267309%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp267505
                  gxc#current-compile-optimize
                  _%optimize267307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp267504
                                                 gxc#current-compile-verbose
                                                 _%verbosity267305%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp267503
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?267303%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp267502
                               gxc#current-compile-gsc-options
                               _%gsc-options267301%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp267501
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?267291%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp267500
             gxc#current-compile-output-dir
             _%outdir267289%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath267336%_)
        (let ((_%opts267338%_ '()))
          (gxc#compile-module__% _%srcpath267336%_ _%opts267338%_))))
    (define gxc#compile-module
      (lambda _g267518_
        (let ((_g267519_ (let () (declare (not safe)) (##length _g267518_))))
          (cond ((let () (declare (not safe)) (##fx= _g267519_ 1))
                 (apply gxc#compile-module__0 _g267518_))
                ((let () (declare (not safe)) (##fx= _g267519_ 2))
                 (apply gxc#compile-module__% _g267518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g267518_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath267235%_ _%opts267236%_)
        (if (string? _%srcpath267235%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath267235%_)))
        (let* ((_%outdir267238%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts267236%_)))
               (_%invoke-gsc?267240%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts267236%_)))
               (_%target267245%_
                (let ((_%$e267242%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts267236%_))))
                  (if _%$e267242%_ _%$e267242%_ 'C)))
               (_%gsc-options267250%_
                (append (cons '"-target"
                              (cons (symbol->string _%target267245%_) '()))
                        (let ((_%$e267247%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts267236%_))))
                          (if _%$e267247%_ _%$e267247%_ '()))))
               (_%keep-scm?267252%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts267236%_)))
               (_%verbosity267254%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts267236%_)))
               (_%debug267256%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts267236%_)))
               (_%parallel?267258%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts267236%_))))
          (if _%outdir267238%_
              (let ((__tmp267520
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir267238%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp267520))
              '#!void)
          (let ((__tmp267521
                 (lambda ()
                   (let ((__tmp267522
                          (lambda ()
                            (let ((__tmp267523
                                   (lambda ()
                                     (let ((__tmp267524
                                            (lambda ()
                                              (let ((__tmp267525
                                                     (lambda ()
                                                       (let ((__tmp267526
                                                              (lambda ()
                                                                (let ((__tmp267527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp267529
                                        (lambda ()
                                          (let ((__tmp267531
                                                 (lambda ()
                                                   (let ((__tmp267533
                                                          (lambda ()
                                                            (let ((__tmp267534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp267535
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath267235%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp267536
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath267235%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp267536))
                                       _%opts267236%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp267535
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp267534
                       gxc#current-compile-parallel
                       _%parallel?267258%_))))
                 (__tmp267532
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp267533
                                                      gxc#current-compile-identifiers
                                                      __tmp267532))))
                                                (__tmp267530
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath267235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp267531
                                             gxc#current-compile-context
                                             __tmp267530))))
                                       (__tmp267528 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp267529
                                    gxc#current-compile-timestamp
                                    __tmp267528)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp267527
                           gxc#current-compile-debug
                           _%debug267256%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp267526
                  gxc#current-compile-verbose
                  _%verbosity267254%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp267525
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?267252%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp267524
                                        gxc#current-compile-gsc-options
                                        _%gsc-options267250%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp267523
                               gx#current-compilation-target
                               _%target267245%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp267522
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?267240%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp267521
             gxc#current-compile-output-dir
             _%outdir267238%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath267278%_)
        (let ((_%opts267280%_ '()))
          (gxc#compile-exe__% _%srcpath267278%_ _%opts267280%_))))
    (define gxc#compile-exe
      (lambda _g267537_
        (let ((_g267538_ (let () (declare (not safe)) (##length _g267537_))))
          (cond ((let () (declare (not safe)) (##fx= _g267538_ 1))
                 (apply gxc#compile-exe__0 _g267537_))
                ((let () (declare (not safe)) (##fx= _g267538_ 2))
                 (apply gxc#compile-exe__% _g267537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g267537_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx267231%_ _%opts267232%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts267232%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx267231%_
             _%opts267232%_)
            (gxc#compile-executable-module/separate
             _%ctx267231%_
             _%opts267232%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx266957%_ _%opts266958%_)
        (letrec ((_%generate-stub266960%_
                  (lambda (_%builtin-modules267227%_)
                    (let ((_%mod-main267229%_
                           (gxc#find-runtime-symbol _%ctx266957%_ 'main)))
                      (let ((__tmp267539
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules267227%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp267539))
                      (let ((__tmp267540
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main267229%_
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
                        (##write __tmp267540))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts266961%_
                  (lambda (_%gerbil-libdir267225%_)
                    (let ((__tmp267541
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir267225%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp267541 read))))
                 (_%replace-extension266962%_
                  (lambda (_%path267222%_ _%ext267223%_)
                    (string-append
                     (path-strip-extension _%path267222%_)
                     _%ext267223%_)))
                 (_%replace-extension-with-c266963%_
                  (lambda (_%path267220%_)
                    (_%replace-extension266962%_ _%path267220%_ '".c")))
                 (_%replace-extension-with-object266964%_
                  (lambda (_%path267218%_)
                    (_%replace-extension266962%_
                     _%path267218%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?266965%_
                  (lambda (_%ctx267216%_)
                    (if (_%exclude-module?266967%_ _%ctx267216%_)
                        '#f
                        (not (_%libgerbil-module?266966%_ _%ctx267216%_)))))
                 (_%libgerbil-module?266966%_
                  (lambda (_%ctx267209%_)
                    (let ((_%id-str267211%_
                           (symbol->string
                            (##structure-ref
                             _%ctx267209%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?266967%_ _%id-str267211%_)
                          '#f
                          (let ((_%$e267213%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str267211%_))))
                            (if _%$e267213%_
                                _%$e267213%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str267211%_))))))))
                 (_%exclude-module?266967%_
                  (lambda (_%ctx-or-str267205%_)
                    (let ((_%str267207%_
                           (if (string? _%ctx-or-str267205%_)
                               _%ctx-or-str267205%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str267205%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str267207%_))))
                 (_%not-file-empty?266968%_
                  (lambda (_%path267203%_)
                    (not (gxc#file-empty? _%path267203%_))))
                 (_%fold-libgerbil-runtime-scm266969%_
                  (lambda (_%gerbil-staticdir267196%_ _%libgerbil-scm267197%_)
                    (let ((_%gerbil-runtime-scm267201%_
                           (let ((__tmp267542
                                  (lambda (_%rtm267199%_)
                                    (path-expand
                                     (let ((__tmp267543
                                            (let ((__tmp267544
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm267199%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp267544
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp267543 '".scm"))
                                     _%gerbil-staticdir267196%_))))
                             (declare (not safe))
                             (##map __tmp267542 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates266970%_
                       (append _%gerbil-runtime-scm267201%_
                               _%libgerbil-scm267197%_)))))
                 (_%remove-duplicates266970%_
                  (lambda (_%strlst267156%_)
                    (let _%loop267158%_ ((_%rest267160%_ _%strlst267156%_)
                                         (_%result267161%_ '()))
                      (let* ((_%$%rest267162267170%_ _%rest267160%_)
                             (_%$%else267164267178%_
                              (lambda () (reverse! _%result267161%_)))
                             (_%$%K267166267184%_
                              (lambda (_%rest267181%_ _%path267182%_)
                                (if (member _%path267182%_ _%result267161%_)
                                    (_%loop267158%_
                                     _%rest267181%_
                                     _%result267161%_)
                                    (_%loop267158%_
                                     _%rest267181%_
                                     (cons _%path267182%_
                                           _%result267161%_))))))
                        (if (pair? _%$%rest267162267170%_)
                            (let ((_%$%hd267167267187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest267162267170%_)))
                                  (_%$%tl267168267189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest267162267170%_))))
                              (let* ((_%path267192%_ _%$%hd267167267187%_)
                                     (_%rest267194%_ _%$%tl267168267189%_))
                                (_%$%K267166267184%_
                                 _%rest267194%_
                                 _%path267192%_)))
                            (_%$%else267164267178%_))))))
                 (_%compile-stub266971%_
                  (lambda (_%output-scm266978%_ _%output-bin266979%_)
                    (let* ((_%gerbil-home266981%_
                            (let ((__tmp267545
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp267545)))
                           (_%gerbil-libdir266983%_
                            (path-expand '"lib" _%gerbil-home266981%_))
                           (_%gerbil-staticdir266985%_
                            (path-expand '"static" _%gerbil-libdir266983%_))
                           (_%deps266987%_
                            (gxc#find-runtime-module-deps _%ctx266957%_))
                           (_%libgerbil-deps266989%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?266966%_
                               _%deps266987%_)))
                           (_%libgerbil-scm266991%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps266989%_)))
                           (_%libgerbil-scm266993%_
                            (_%fold-libgerbil-runtime-scm266969%_
                             _%gerbil-staticdir266985%_
                             _%libgerbil-scm266991%_))
                           (_%libgerbil-c266995%_
                            (map _%replace-extension-with-c266963%_
                                 _%libgerbil-scm266993%_))
                           (_%libgerbil-o266997%_
                            (map _%replace-extension-with-object266964%_
                                 _%libgerbil-scm266993%_))
                           (_%src-deps266999%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?266965%_
                               _%deps266987%_)))
                           (_%src-deps-scm267001%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps266999%_)))
                           (_%src-deps-scm267003%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?266968%_
                               _%src-deps-scm267001%_)))
                           (_%src-deps-scm267005%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm267003%_)))
                           (_%src-deps-c267007%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c266963%_
                                     _%src-deps-scm267005%_)))
                           (_%src-deps-o267009%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object266964%_
                                     _%src-deps-scm267005%_)))
                           (_%src-bin-scm267011%_
                            (gxc#find-static-module-file _%ctx266957%_))
                           (_%src-bin-scm267013%_
                            (path-expand _%src-bin-scm267011%_))
                           (_%src-bin-c267015%_
                            (_%replace-extension-with-c266963%_
                             _%src-bin-scm267013%_))
                           (_%src-bin-o267017%_
                            (_%replace-extension-with-object266964%_
                             _%src-bin-scm267013%_))
                           (_%output-bin267019%_
                            (path-expand _%output-bin266979%_))
                           (_%output-scm267021%_
                            (path-expand _%output-scm266978%_))
                           (_%output-c267023%_
                            (_%replace-extension-with-c266963%_
                             _%output-scm267021%_))
                           (_%output-o267025%_
                            (_%replace-extension-with-object266964%_
                             _%output-scm267021%_))
                           (_%output_-c267027%_
                            (_%replace-extension266962%_
                             _%output-scm267021%_
                             '"_.c"))
                           (_%output_-o267029%_
                            (_%replace-extension266962%_
                             _%output-scm267021%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts267031%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts267033%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts267035%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir266985%_))
                           (_%output-ld-opts267037%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts267039%_
                            (_%get-libgerbil-ld-opts266961%_
                             _%gerbil-libdir266983%_))
                           (_%rpath267041%_
                            (gxc#gerbil-rpath _%gerbil-libdir266983%_))
                           (_%builtin-modules267045%_
                            (_%remove-duplicates266970%_
                             (let ((__tmp267546
                                    (let ((__tmp267548
                                           (lambda (_%mod267043%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod267043%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp267547
                                           (cons _%ctx266957%_
                                                 _%deps266987%_)))
                                      (declare (not safe))
                                      (##map __tmp267548 __tmp267547))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp267546)))))
                      (letrec ((_%compile-obj267048%_
                                (lambda (_%scm-path267055%_ _%c-path267056%_)
                                  (let* ((_%o-path267058%_
                                          (_%replace-extension266962%_
                                           _%c-path267056%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock267060%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path267058%_
                                             '".lock")))
                                         (_%locked267062%_ '#f)
                                         (_%unlock267065%_
                                          (lambda ()
                                            (close-port _%locked267062%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock267060%_)))))
                                    (let _%retry267068%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock267060%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry267068%_))
                                          (begin
                                            (set! _%locked267062%_
                                                  (let* ((_%handler267071%_
                                                          false)
                                                         (_%thunk267075%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock267060%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler267080%_ _%handler267071%_)
                 (_%thunk267136%_ _%thunk267075%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler267080%_
                                                     _%thunk267136%_)))
                                            (if _%locked267062%_
                                                '#!void
                                                (_%retry267068%_)))))
                                    (let ((__tmp267550
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path267058%_)))
                                                     (not _%scm-path267055%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path267055%_
                                                        _%o-path267058%_)))
                                                 (let ((_%gsc-cc-opts267153%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp267551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp267552 (cons _%c-path267056%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp267552
                            _%gsc-static-opts267035%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp267551 _%gsc-cc-opts267153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp267549
                                           (lambda () (_%unlock267065%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp267550
                                       __tmp267549))))))
                        (let ((__tmp267553
                               (lambda ()
                                 (let ((__tmp267554
                                        (path-directory _%output-bin267019%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp267554)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp267553))
                        (gxc#with-output-to-scheme-file
                         _%output-scm267021%_
                         (lambda ()
                           (_%generate-stub266960%_
                            _%builtin-modules267045%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it267053%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp267555
                                                   (let ((__tmp267556
                                                          (let ((__tmp267557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm267013%_
                               (cons _%output-scm267021%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp267557 _%src-deps-scm267005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp267556
                                                      _%libgerbil-c266995%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp267555
                                               _%gsc-link-opts267031%_))))
                                     (for-each
                                      _%compile-obj267048%_
                                      (let ((__tmp267558
                                             (cons _%src-bin-scm267013%_
                                                   (cons _%output-scm267021%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp267558
                                         _%src-deps-scm267005%_))
                                      (let ((__tmp267559
                                             (cons _%src-bin-c267015%_
                                                   (cons _%output-c267023%_
                                                         (cons _%output_-c267027%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp267559
                                         _%src-deps-c267007%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin267019%_
                                                        (let ((__tmp267560
                                                               (cons _%src-bin-o267017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o267025%_
                                   (cons _%output_-o267029%_
                                         (let ((__tmp267561
                                                (let ((__tmp267562
                                                       (let ((__tmp267564
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir266983%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts267039%_))))
                     (__tmp267563
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath267041%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp267564 __tmp267563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp267562
                                                   _%output-ld-opts267037%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp267561
                                            _%libgerbil-o266997%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp267560 _%src-deps-o267009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp267565
                                            (cons _%output-c267023%_
                                                  (cons _%output_-c267027%_
                                                        (cons _%output-o267025%_
                                                              (cons _%output_-o267029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp267565)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it267053%_))
                                  (_%compile-it267053%_)))
                            '#!void))))))
          (let* ((_%output-bin266973%_
                  (gxc#compile-exe-output-file _%ctx266957%_ _%opts266958%_))
                 (_%output-scm266975%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin266973%_ '"__exe.scm"))))
            (_%compile-stub266971%_
             _%output-scm266975%_
             _%output-bin266973%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx266779%_ _%opts266780%_)
        (letrec ((_%reset-declare266782%_
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
                 (_%generate-stub266783%_
                  (lambda (_%deps266948%_)
                    (let ((_%mod-main266950%_
                           (gxc#find-runtime-symbol _%ctx266779%_ 'main))
                          (_%reset-decl266951%_ (_%reset-declare266782%_))
                          (_%user-decl266952%_ (_%user-declare266784%_)))
                      (for-each
                       (lambda (_%dep266954%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl266951%_))
                         (newline)
                         (if _%user-decl266952%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl266952%_))
                               (newline))
                             '#!void)
                         (let ((__tmp267566
                                (cons 'include (cons _%dep266954%_ '()))))
                           (declare (not safe))
                           (##write __tmp267566))
                         (newline))
                       _%deps266948%_)
                      (let ((__tmp267567
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main266950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp267567))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare266784%_
                  (lambda ()
                    (let* ((_%gsc-opts266853%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts266780%_)))
                           (_%gsc-prelude266855%_
                            (if _%gsc-opts266853%_
                                (member '"-prelude" _%gsc-opts266853%_)
                                '#f))
                           (_%gsc-prelude266857%_
                            (if _%gsc-prelude266855%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude266855%_)))
                                '#f)))
                      (let _%lp266860%_ ((_%rest266862%_
                                          (cons _%gsc-prelude266857%_ '()))
                                         (_%user-decls266863%_ '()))
                        (let* ((_%$%rest266864266872%_ _%rest266862%_)
                               (_%$%else266866266880%_
                                (lambda ()
                                  (if (null? _%user-decls266863%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls266863%_)))))
                               (_%$%K266868266936%_
                                (lambda (_%rest266883%_ _%expr266884%_)
                                  (let* ((_%$%expr266885266897%_
                                          _%expr266884%_)
                                         (_%$%else266888266905%_
                                          (lambda ()
                                            (_%lp266860%_
                                             _%rest266883%_
                                             _%user-decls266863%_))))
                                    (let ((_%$%K266893266926%_
                                           (lambda (_%decls266924%_)
                                             (_%lp266860%_
                                              _%rest266883%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls266863%_
                                                 _%decls266924%_)))))
                                          (_%$%K266890266911%_
                                           (lambda (_%exprs266909%_)
                                             (_%lp266860%_
                                              (append _%exprs266909%_
                                                      _%rest266883%_)
                                              _%user-decls266863%_))))
                                      (if (pair? _%$%expr266885266897%_)
                                          (let ((_%$%tl266895266931%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr266885266897%_)))
                                                (_%$%hd266894266929%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr266885266897%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd266894266929%_
                                                         'declare))
                                                (let ((_%decls266934%_
                                                       _%$%tl266895266931%_))
                                                  (_%$%K266893266926%_
                                                   _%decls266934%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd266894266929%_
                                                             'begin))
                                                    (let ((_%exprs266919%_
                                                           _%$%tl266895266931%_))
                                                      (_%$%K266890266911%_
                                                       _%exprs266919%_))
                                                    (_%$%else266888266905%_))))
                                          (_%$%else266888266905%_)))))))
                          (if (pair? _%$%rest266864266872%_)
                              (let ((_%$%hd266869266939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest266864266872%_)))
                                    (_%$%tl266870266941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest266864266872%_))))
                                (let* ((_%expr266944%_ _%$%hd266869266939%_)
                                       (_%rest266946%_ _%$%tl266870266941%_))
                                  (_%$%K266868266936%_
                                   _%rest266946%_
                                   _%expr266944%_)))
                              (_%$%else266866266880%_)))))))
                 (_%compile-stub266785%_
                  (lambda (_%output-scm266792%_ _%output-bin266793%_)
                    (let* ((_%gerbil-home266795%_
                            (let ((__tmp267568
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp267568)))
                           (_%gerbil-libdir266797%_
                            (path-expand '"lib" _%gerbil-home266795%_))
                           (_%runtime266799%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp266801%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home266795%_))
                           (_%include-gambit-sharp266803%_
                            (gxc#include-source _%gambit-sharp266801%_))
                           (_%bin-scm266805%_
                            (gxc#find-static-module-file _%ctx266779%_))
                           (_%deps266807%_
                            (gxc#find-runtime-module-deps _%ctx266779%_))
                           (_%deps266809%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps266807%_)))
                           (_%deps266814%_
                            (let ((__tmp267569
                                   (lambda (_%$obj266811%_)
                                     (not (gxc#file-empty? _%$obj266811%_)))))
                              (declare (not safe))
                              (##filter __tmp267569 _%deps266809%_)))
                           (_%deps266818%_
                            (let ((__tmp267570
                                   (lambda (_%f266816%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f266816%_
                                             _%runtime266799%_))))))
                              (declare (not safe))
                              (##filter __tmp267570 _%deps266814%_)))
                           (_%output-base266820%_
                            (let ((__tmp267571
                                   (path-strip-extension
                                    _%output-scm266792%_)))
                              (declare (not safe))
                              (##string-append __tmp267571)))
                           (_%output-c266822%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base266820%_ '".c")))
                           (_%output-o266824%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base266820%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_266826%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base266820%_ '"_.c")))
                           (_%output-o_266828%_
                            (let ((__tmp267572
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base266820%_
                               __tmp267572)))
                           (_%gsc-link-opts266830%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts266832%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts266834%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir266797%_)))
                           (_%output-ld-opts266836%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros266838%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp266803%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp266803%_
                                            '()))))
                           (_%gsc-link-opts266840%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts266830%_
                               _%gsc-gx-macros266838%_)))
                           (_%rpath266842%_
                            (gxc#gerbil-rpath _%gerbil-libdir266797%_))
                           (_%default-ld-options266844%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp267573
                             (lambda ()
                               (let ((__tmp267574
                                      (path-directory _%output-bin266793%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp267574)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp267573))
                      (gxc#with-output-to-scheme-file
                       _%output-scm266792%_
                       (lambda ()
                         (_%generate-stub266783%_
                          (let ((__tmp267575
                                 (let ((__tmp267576
                                        (cons _%bin-scm266805%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp267576
                                    _%deps266818%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp267575 _%runtime266799%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it266850%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_266826%_
                                                      (let ((__tmp267577
                                                             (cons _%output-scm266792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp267577 _%gsc-link-opts266840%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp267578
                                                 (let ((__tmp267579
                                                        (cons _%output-c266822%_
                                                              (cons _%output-c_266826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp267579
                                                    _%gsc-static-opts266834%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp267578
                                             _%gsc-cc-opts266832%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin266793%_
                                                      (cons _%output-o266824%_
                                                            (cons _%output-o_266828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp267580
                                 (let ((__tmp267582
                                        (cons '"-L"
                                              (cons _%gerbil-libdir266797%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options266844%_))))
                                       (__tmp267581
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath266842%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp267582 __tmp267581))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp267580
                             _%output-ld-opts266836%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it266850%_))
                                (_%compile-it266850%_)))
                          '#!void)))))
          (let* ((_%output-bin266787%_
                  (gxc#compile-exe-output-file _%ctx266779%_ _%opts266780%_))
                 (_%output-scm266789%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin266787%_ '"__exe.scm"))))
            (_%compile-stub266785%_
             _%output-scm266789%_
             _%output-bin266787%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx266728%_ _%id266729%_)
        (let ((_%$e266775%_
               (let ((__tmp267584
                      (lambda (_%$%e266730266732%_)
                        (let* ((_%$%$%e266730266734266744%_
                                _%$%e266730266732%_)
                               (_%$%else266736266752%_ (lambda () '#f))
                               (_%$%K266738266756%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e266730266734266744%_
                                 'gx#module-export::t))
                              (let* ((_%$%e266739266759%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e266730266734266744%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e266740266762%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e266730266734266744%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e266741266765%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e266730266734266744%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e266741266765%_ '0))
                                    (let ((_%$%e266742266768%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e266730266734266744%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e266742266768%_
                                               _%id266729%_)
                                          (_%$%K266738266756%_)
                                          (_%$%else266736266752%_)))
                                    (_%$%else266736266752%_)))
                              (_%$%else266736266752%_)))))
                     (__tmp267583
                      (##structure-ref
                       _%ctx266728%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp267584 __tmp267583))))
          (if _%$e266775%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e266775%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx266719%_ _%id266720%_)
        (let ((_%$e266722%_
               (gxc#find-export-binding _%ctx266719%_ _%id266720%_)))
          (if _%$e266722%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e266722%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id266720%_)))
                (##structure-ref _%$e266722%_ '1 gx#binding::t '#f))
              (let ((__tmp267585
                     (##structure-ref
                      _%ctx266719%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp267585
                 _%id266720%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx266585%_)
        (letrec* ((_%ht266587%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template266588%_
                   (lambda (_%in266664%_ _%phi266665%_)
                     (let ((_%iphi266667%_
                            (fx+ _%phi266665%_
                                 (##direct-structure-ref
                                  _%in266664%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports266668%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in266664%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp266670%_ ((_%rest266672%_ _%imports266668%_)
                                          (_%r266673%_ '()))
                         (let* ((_%$%rest266674266682%_ _%rest266672%_)
                                (_%$%else266676266690%_
                                 (lambda () _%r266673%_))
                                (_%$%K266678266707%_
                                 (lambda (_%rest266693%_ _%in266694%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in266694%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi266667%_))
                                           (_%lp266670%_
                                            _%rest266693%_
                                            (cons _%in266694%_ _%r266673%_))
                                           (_%lp266670%_
                                            _%rest266693%_
                                            _%r266673%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in266694%_
                                              'gx#module-import::t))
                                           (let ((_%iphi266698%_
                                                  (fx+ _%phi266665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in266694%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi266698%_))
                                                 (_%lp266670%_
                                                  _%rest266693%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in266694%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r266673%_))
                                                 (_%lp266670%_
                                                  _%rest266693%_
                                                  _%r266673%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in266694%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi266701%_
                                                      (fx+ _%iphi266667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in266694%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi266701%_))
                                                     (_%lp266670%_
                                                      _%rest266693%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in266694%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r266673%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi266701%_))
                                                         (_%lp266670%_
                                                          _%rest266693%_
                                                          (let ((__tmp267586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template266588%_
                          _%in266694%_
                          _%iphi266667%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r266673%_ __tmp267586)))
                 (_%lp266670%_ _%rest266693%_ _%r266673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp266670%_
                                                _%rest266693%_
                                                _%r266673%_)))))))
                           (if (pair? _%$%rest266674266682%_)
                               (let ((_%$%hd266679266710%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest266674266682%_)))
                                     (_%$%tl266680266712%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest266674266682%_))))
                                 (let* ((_%in266715%_ _%$%hd266679266710%_)
                                        (_%rest266717%_ _%$%tl266680266712%_))
                                   (_%$%K266678266707%_
                                    _%rest266717%_
                                    _%in266715%_)))
                               (_%$%else266676266690%_)))))))
                  (_%find-deps266589%_
                   (lambda (_%rest266597%_ _%deps266598%_)
                     (let* ((_%$%rest266599266607%_ _%rest266597%_)
                            (_%$%else266601266615%_ (lambda () _%deps266598%_))
                            (_%$%K266603266652%_
                             (lambda (_%rest266618%_ _%hd266619%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd266619%_
                                      'gx#module-context::t))
                                   (let ((_%id266622%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd266619%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports266623%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd266619%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht266587%_
                                            _%id266622%_))
                                         (_%find-deps266589%_
                                          _%rest266618%_
                                          _%deps266598%_)
                                         (let ((_%$e266626%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd266619%_))))
                                           (if _%$e266626%_
                                               (let ((_%xdeps266631%_
                                                      (_%find-deps266589%_
                                                       (cons _%$e266626%_
                                                             _%imports266623%_)
                                                       _%deps266598%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht266587%_
                                                    _%id266622%_
                                                    _%hd266619%_))
                                                 (_%find-deps266589%_
                                                  _%rest266618%_
                                                  (cons _%hd266619%_
                                                        _%xdeps266631%_)))
                                               (let ((_%xdeps266634%_
                                                      (_%find-deps266589%_
                                                       _%imports266623%_
                                                       _%deps266598%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht266587%_
                                                    _%id266622%_
                                                    _%hd266619%_))
                                                 (_%find-deps266589%_
                                                  _%rest266618%_
                                                  (cons _%hd266619%_
                                                        _%xdeps266634%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd266619%_
                                          'gx#prelude-context::t))
                                       (let ((_%id266637%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd266619%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht266587%_
                                                _%id266637%_))
                                             (_%find-deps266589%_
                                              _%rest266618%_
                                              _%deps266598%_)
                                             (let ((_%xdeps266641%_
                                                    (_%find-deps266589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd266619%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps266598%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht266587%_
                                                      _%id266637%_))
                                                   (_%find-deps266589%_
                                                    _%rest266618%_
                                                    _%xdeps266641%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht266587%_
                                                        _%id266637%_
                                                        _%hd266619%_))
                                                     (_%find-deps266589%_
                                                      _%rest266618%_
                                                      (cons _%hd266619%_
                                                            _%xdeps266641%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd266619%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd266619%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps266589%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd266619%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest266618%_)
                                                _%deps266598%_)
                                               (_%find-deps266589%_
                                                _%rest266618%_
                                                _%deps266598%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd266619%_
                                                  'gx#module-export::t))
                                               (_%find-deps266589%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd266619%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest266618%_)
                                                _%deps266598%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd266619%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd266619%_ '2 '#f '#f)))
               (_%find-deps266589%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd266619%_ '1 '#f '#f))
                      _%rest266618%_)
                _%deps266598%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd266619%_ '2 '#f '#f)))
                   (let ((_%xdeps266648%_
                          (_%import-set-template266588%_ _%hd266619%_ '0)))
                     (_%find-deps266589%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest266618%_ _%xdeps266648%_))
                      _%deps266598%_))
                   (_%find-deps266589%_ _%rest266618%_ _%deps266598%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd266619%_))))))))))
                       (if (pair? _%$%rest266599266607%_)
                           (let ((_%$%hd266604266655%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest266599266607%_)))
                                 (_%$%tl266605266657%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest266599266607%_))))
                             (let* ((_%hd266660%_ _%$%hd266604266655%_)
                                    (_%rest266662%_ _%$%tl266605266657%_))
                               (_%$%K266603266652%_
                                _%rest266662%_
                                _%hd266660%_)))
                           (_%$%else266601266615%_))))))
          (let ((__tmp267587
                 (filter gx#expander-context-id
                         (_%find-deps266589%_
                          (let ((_%$e266591%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx266585%_))))
                            (if _%$e266591%_
                                (cons _%$e266591%_
                                      (##structure-ref
                                       _%ctx266585%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx266585%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp267587)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx266515%_)
        (let* ((_%context-id266517%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx266515%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx266515%_ '1 '#f '#f))
                    (string->symbol _%ctx266515%_)))
               (_%scm266519%_
                (let ((__tmp267588
                       (gxc#static-module-name _%context-id266517%_)))
                  (declare (not safe))
                  (##string-append __tmp267588 '".scm")))
               (_%dirs266521%_ (let () (declare (not safe)) (load-path)))
               (_%dirs266527%_
                (let ((_%user-libpath266523%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath266523%_
                      (let ((_%user-libpath266525%_
                             (path-expand '"lib" _%user-libpath266523%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath266525%_ _%dirs266521%_))
                            _%dirs266521%_
                            (cons _%user-libpath266525%_ _%dirs266521%_)))
                      _%dirs266521%_)))
               (_%dirs266537%_
                (let ((_%$e266529%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e266529%_
                      (cons _%$e266529%_ _%dirs266527%_)
                      _%dirs266527%_)))
               (_%dirs266543%_
                (let ((__tmp267589
                       (lambda (_%$%g266538266540%_)
                         (path-expand '"static" _%$%g266538266540%_))))
                  (declare (not safe))
                  (##map __tmp267589 _%dirs266537%_))))
          (let _%lp266546%_ ((_%rest266548%_ _%dirs266543%_))
            (let* ((_%$%rest266549266557%_ _%rest266548%_)
                   (_%$%else266551266565%_
                    (lambda ()
                      (let ((__tmp267590
                             (##structure-ref
                              _%ctx266515%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp267590
                         _%scm266519%_))))
                   (_%$%K266553266573%_
                    (lambda (_%rest266568%_ _%dir266569%_)
                      (let ((_%path266571%_
                             (path-expand _%scm266519%_ _%dir266569%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path266571%_))
                            _%path266571%_
                            (_%lp266546%_ _%rest266568%_))))))
              (if (pair? _%$%rest266549266557%_)
                  (let ((_%$%hd266554266576%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest266549266557%_)))
                        (_%$%tl266555266578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest266549266557%_))))
                    (let* ((_%dir266581%_ _%$%hd266554266576%_)
                           (_%rest266583%_ _%$%tl266555266578%_))
                      (_%$%K266553266573%_ _%rest266583%_ _%dir266581%_)))
                  (_%$%else266551266565%_)))))))
    (define gxc#file-empty?
      (lambda (_%path266513%_)
        (zero? (let ((__tmp267591 (file-info _%path266513%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp267591)))))
    (define gxc#compile-top-module
      (lambda (_%ctx266504%_)
        (let ((__tmp267592
               (lambda ()
                 (let ((__tmp267593
                        (lambda ()
                          (let ((__tmp267594
                                 (lambda ()
                                   (let ((__tmp267596
                                          (lambda ()
                                            (let ((__tmp267598
                                                   (lambda ()
                                                     (let ((__tmp267600
                                                            (lambda ()
                                                              (let ((__tmp267601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx266504%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp267601))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp267602
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx266504%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp267602))
                          '#!void)
                      (gxc#collect-bindings _%ctx266504%_)
                      (gxc#compile-runtime-code _%ctx266504%_)
                      (gxc#compile-meta-code _%ctx266504%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx266504%_)
                          '#!void)))
                   (__tmp267599
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
                __tmp267600
                gxc#current-compile-runtime-names
                __tmp267599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp267597
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp267598
                                               gxc#current-compile-runtime-sections
                                               __tmp267597))))
                                         (__tmp267595
                                          (let ((__obj267493
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj267493))
                                            __obj267493)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp267596
                                      gxc#current-compile-symbol-table
                                      __tmp267595)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp267594
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp267593
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp267592
           gx#current-expander-context
           _%ctx266504%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx266502%_)
        (let ((__tmp267603
               (##structure-ref _%ctx266502%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp267603))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx266447%_)
        (letrec ((_%compile1266449%_
                  (lambda (_%ctx266491%_)
                    (let* ((_%code266493%_
                            (##structure-ref
                             _%ctx266491%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm266497%_
                            (let ((_%idstr266495%_
                                   (let ((__tmp267604
                                          (##structure-ref
                                           _%ctx266491%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp267604))))
                              (declare (not safe))
                              (##string-append _%idstr266495%_ '"~0")))
                           (_%rtc?266499%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code266493%_))))
                      (if _%rtc?266499%_
                          (let ((__tmp267605
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp267605
                             _%ctx266491%_
                             _%rtm266497%_))
                          '#!void)
                      (_%generate-runtime-code266451%_
                       _%ctx266491%_
                       _%code266493%_
                       (if _%rtc?266499%_ _%rtm266497%_ '#f)))))
                 (_%context-timestamp266450%_
                  (lambda (_%ctx266489%_)
                    (let ((__tmp267606
                           (let ((__tmp267607
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx266489%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp267607 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp267606))))
                 (_%generate-runtime-code266451%_
                  (lambda (_%ctx266458%_ _%code266459%_ _%rtm266460%_)
                    (let* ((_%runtime-code?266462%_ (if _%rtm266460%_ '#t '#f))
                           (_%lifts266464%_ (box '()))
                           (_%runtime-code266470%_
                            (if _%runtime-code?266462%_
                                (let ((__tmp267608
                                       (lambda ()
                                         (let ((__tmp267609
                                                (lambda ()
                                                  (let ((__tmp267610
                                                         (lambda ()
                                                           (let ((__tmp267612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code266459%_))))
                         (__tmp267611
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp267612
                      gxc#current-compile-marks
                      __tmp267611)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp267610
                                                     gxc#current-compile-lift
                                                     _%lifts266464%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp267609
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp267608
                                   gx#current-expander-context
                                   _%ctx266458%_))
                                '#f))
                           (_%runtime-code266472%_
                            (if _%runtime-code?266462%_
                                (if (null? (unbox _%lifts266464%_))
                                    _%runtime-code266470%_
                                    (cons 'begin
                                          (let ((__tmp267614
                                                 (cons _%runtime-code266470%_
                                                       '()))
                                                (__tmp267613
                                                 (reverse (unbox _%lifts266464%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp267614
                                             __tmp267613))))
                                '#f))
                           (_%runtime-code266474%_
                            (if _%runtime-code?266462%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp266450%_
                                                         _%ctx266458%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code266472%_ '())))
                                '#f))
                           (_%loader-code266477%_
                            (let ((__tmp267615
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code266459%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp267615
                               gx#current-expander-context
                               _%ctx266458%_)))
                           (_%loader-code266479%_
                            (cons 'begin
                                  (cons _%loader-code266477%_
                                        (cons (if _%runtime-code?266462%_
                                                  (cons 'load-module
                                                        (cons _%rtm266460%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0266481%_
                            (gxc#compile-output-file _%ctx266458%_ '0 '".scm"))
                           (_%scmrt266483%_
                            (gxc#compile-output-file
                             _%ctx266458%_
                             '#f
                             '".scm"))
                           (_%scms266485%_
                            (gxc#compile-static-output-file _%ctx266458%_)))
                      (if _%runtime-code?266462%_
                          (gxc#compile-scm-file__0
                           _%scm0266481%_
                           _%runtime-code266474%_)
                          '#!void)
                      (let ((__tmp267616
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt266483%_
                                _%loader-code266479%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp267616
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms266485%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms266485%_))
                          '#!void)
                      (if _%runtime-code?266462%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0266481%_ _%scms266485%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms266485%_ void)))))))
          (let* ((_%all-modules266453%_
                  (cons _%ctx266447%_ (gxc#lift-nested-modules _%ctx266447%_)))
                 (__tmp267617
                  (lambda (_%ctx266455%_)
                    (let ((__tmp267618
                           (lambda () (_%compile1266449%_ _%ctx266455%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp267618
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp267617 _%all-modules266453%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx266346%_)
        (letrec ((_%compile-ssi266348%_
                  (lambda (_%code266415%_)
                    (let* ((_%path266417%_
                            (gxc#compile-output-file
                             _%ctx266346%_
                             '#f
                             '".ssi"))
                           (_%prelude266429%_
                            (let* ((_%super266419%_
                                    (##structure-ref
                                     _%ctx266346%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e266421%_
                                    (##structure-ref
                                     _%super266419%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e266421%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e266421%_))
                                  ':<root>)))
                           (_%ns266431%_
                            (##structure-ref
                             _%ctx266346%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr266433%_
                            (symbol->string
                             (##structure-ref
                              _%ctx266346%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg266441%_
                            (let ((_%$e266435%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr266433%_ '#\/))))
                              (if _%$e266435%_
                                  (let ((__tmp267619
                                         (substring
                                          _%idstr266433%_
                                          '0
                                          _%$e266435%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp267619))
                                  '#f)))
                           (_%rt266443%_
                            (let ((__tmp267620
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp267620 _%ctx266346%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path266417%_))
                      (gxc#with-output-to-scheme-file
                       _%path266417%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude266429%_))
                         (if _%pkg266441%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg266441%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns266431%_))
                         (newline)
                         (pretty-print _%code266415%_)
                         (if _%rt266443%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt266443%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi266349%_
                  (lambda (_%part266354%_)
                    (let* ((_%$%part266355266368%_ _%part266354%_)
                           (_%$%E266357266372%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part266355266368%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K266358266384%_
                            (lambda (_%code266375%_
                                     _%n266376%_
                                     _%phi266377%_
                                     _%phi-ctx266378%_)
                              (let ((_%code266382%_
                                     (let ((__tmp267621
                                            (lambda ()
                                              (let ((__tmp267622
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code266375%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp267622
                                                 gx#current-expander-phi
                                                 _%phi266377%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp267621
                                        gx#current-expander-context
                                        _%phi-ctx266378%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx266346%_
                                  _%n266376%_
                                  '".scm")
                                 _%code266382%_
                                 '#t)))))
                      (if (pair? _%$%part266355266368%_)
                          (let ((_%$%hd266359266387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part266355266368%_)))
                                (_%$%tl266360266389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part266355266368%_))))
                            (let ((_%phi-ctx266392%_ _%$%hd266359266387%_))
                              (if (pair? _%$%tl266360266389%_)
                                  (let ((_%$%hd266361266394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl266360266389%_)))
                                        (_%$%tl266362266396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl266360266389%_))))
                                    (let ((_%phi266399%_ _%$%hd266361266394%_))
                                      (if (pair? _%$%tl266362266396%_)
                                          (let ((_%$%hd266363266401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl266362266396%_)))
                                                (_%$%tl266364266403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl266362266396%_))))
                                            (let ((_%n266406%_
                                                   _%$%hd266363266401%_))
                                              (if (pair? _%$%tl266364266403%_)
                                                  (let ((_%$%hd266365266408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl266364266403%_)))
                                                        (_%$%tl266366266410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl266364266403%_))))
                                                    (let ((_%code266413%_
                                                           _%$%hd266365266408%_))
                                                      (if (null? _%$%tl266366266410%_)
                                                          (_%$%K266358266384%_
                                                           _%code266413%_
                                                           _%n266406%_
                                                           _%phi266399%_
                                                           _%phi-ctx266392%_)
                                                          (_%$%E266357266372%_))))
                                                  (_%$%E266357266372%_))))
                                          (_%$%E266357266372%_))))
                                  (_%$%E266357266372%_))))
                          (_%$%E266357266372%_))))))
          (let ((_g267623_ (gxc#generate-meta-code _%ctx266346%_)))
            (begin
              (let ((_g267624_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g267623_)
                           (##values-length _g267623_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g267624_ 2)))
                    (error "Context expects 2 values" _g267624_)))
              (let ((_%ssi-code266351%_
                     (let () (declare (not safe)) (##values-ref _g267623_ 0)))
                    (_%phi-code266352%_
                     (let () (declare (not safe)) (##values-ref _g267623_ 1))))
                (begin
                  (_%compile-ssi266348%_ _%ssi-code266351%_)
                  (for-each _%compile-phi266349%_ _%phi-code266352%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx266328%_)
        (let* ((_%path266330%_
                (gxc#compile-output-file _%ctx266328%_ '#f '".ssxi.ss"))
               (_%code266332%_
                (let ((__tmp267625
                       (##structure-ref
                        _%ctx266328%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp267625)))
               (_%idstr266334%_
                (symbol->string
                 (##structure-ref
                  _%ctx266328%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg266342%_
                (let ((_%$e266336%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr266334%_ '#\/))))
                  (if _%$e266336%_
                      (let ((__tmp267626
                             (substring _%idstr266334%_ '0 _%$e266336%_)))
                        (declare (not safe))
                        (##string->symbol __tmp267626))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path266330%_))
          (gxc#with-output-to-scheme-file
           _%path266330%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg266342%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg266342%_))
                 '#!void)
             (newline)
             (pretty-print _%code266332%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx266321%_)
        (let* ((_%state266323%_
                (let ((__obj267494
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj267494 _%ctx266321%_))
                  __obj267494))
               (_%ssi-code266325%_
                (let ((__tmp267627
                       (##structure-ref
                        _%ctx266321%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state266323%_
                   __tmp267627))))
          (values _%ssi-code266325%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state266323%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx266313%_)
        (let* ((_%lifts266315%_ (box '()))
               (__tmp267628
                (lambda ()
                  (let ((__tmp267630
                         (lambda ()
                           (let ((_%code266319%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx266313%_))))
                             (if (null? (unbox _%lifts266315%_))
                                 _%code266319%_
                                 (cons 'begin
                                       (let ((__tmp267632
                                              (cons _%code266319%_ '()))
                                             (__tmp267631
                                              (reverse (unbox _%lifts266315%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp267632
                                          __tmp267631)))))))
                        (__tmp267629
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp267630
                     gxc#current-compile-marks
                     __tmp267629)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp267628
           gxc#current-compile-lift
           _%lifts266315%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx266309%_)
        (let ((_%modules266311%_ (box '())))
          (let ((__tmp267633
                 (##structure-ref _%ctx266309%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules266311%_ __tmp267633))
          (reverse (unbox _%modules266311%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path266289%_ _%code266290%_ _%phi?266291%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path266289%_))
        (gxc#with-output-to-scheme-file
         _%path266289%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp267634
                                           (if _%phi?266291%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp267634)))))))
           (pretty-print _%code266290%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it266295%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path266289%_ _%phi?266291%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp267635
                         (cons 'compile-file (cons _%path266289%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it266295%_ __tmp267635))
                  (_%compile-it266295%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path266300%_ _%code266301%_)
        (let ((_%phi?266303%_ '#f))
          (gxc#compile-scm-file__%
           _%path266300%_
           _%code266301%_
           _%phi?266303%_))))
    (define gxc#compile-scm-file
      (lambda _g267636_
        (let ((_g267637_ (let () (declare (not safe)) (##length _g267636_))))
          (cond ((let () (declare (not safe)) (##fx= _g267637_ 2))
                 (apply gxc#compile-scm-file__0 _g267636_))
                ((let () (declare (not safe)) (##fx= _g267637_ 3))
                 (apply gxc#compile-scm-file__% _g267636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g267636_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?266190%_)
        (let _%lp266192%_ ((_%rest266194%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts266195%_ '()))
          (let* ((_%$%rest266196266216%_ _%rest266194%_)
                 (_%$%else266200266224%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts266195%_)))
                        (reverse _%opts266195%_)))))
            (let ((_%$%K266210266267%_
                   (lambda (_%rest266265%_)
                     (_%lp266192%_ _%rest266265%_ _%opts266195%_)))
                  (_%$%K266205266249%_
                   (lambda (_%rest266247%_)
                     (_%lp266192%_ _%rest266247%_ _%opts266195%_)))
                  (_%$%K266202266231%_
                   (lambda (_%rest266228%_ _%opt266229%_)
                     (_%lp266192%_
                      _%rest266228%_
                      (cons _%opt266229%_ _%opts266195%_)))))
              (if (pair? _%$%rest266196266216%_)
                  (let ((_%$%tl266212266272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest266196266216%_)))
                        (_%$%hd266211266270%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest266196266216%_))))
                    (if (equal? _%$%hd266211266270%_ '"-cc-options")
                        (if (pair? _%$%tl266212266272%_)
                            (let* ((_%$%tl266214266275%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl266212266272%_)))
                                   (_%rest266278%_ _%$%tl266214266275%_))
                              (_%$%K266210266267%_ _%rest266278%_))
                            (let ((_%opt266239%_ _%$%hd266211266270%_)
                                  (_%rest266241%_ _%$%tl266212266272%_))
                              (_%$%K266202266231%_
                               _%rest266241%_
                               _%opt266239%_)))
                        (if (equal? _%$%hd266211266270%_ '"-ld-options")
                            (if (pair? _%$%tl266212266272%_)
                                (let* ((_%$%tl266209266257%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl266212266272%_)))
                                       (_%rest266260%_ _%$%tl266209266257%_))
                                  (_%$%K266205266249%_ _%rest266260%_))
                                (let ((_%opt266239%_ _%$%hd266211266270%_)
                                      (_%rest266241%_ _%$%tl266212266272%_))
                                  (_%$%K266202266231%_
                                   _%rest266241%_
                                   _%opt266239%_)))
                            (let ((_%opt266239%_ _%$%hd266211266270%_)
                                  (_%rest266241%_ _%$%tl266212266272%_))
                              (_%$%K266202266231%_
                               _%rest266241%_
                               _%opt266239%_)))))
                  (_%$%else266200266224%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?266284%_ '#f)) (gxc#gsc-link-options__% _%phi?266284%_))))
    (define gxc#gsc-link-options
      (lambda _g267638_
        (let ((_g267639_ (let () (declare (not safe)) (##length _g267638_))))
          (cond ((let () (declare (not safe)) (##fx= _g267639_ 0))
                 (apply gxc#gsc-link-options__0 _g267638_))
                ((let () (declare (not safe)) (##fx= _g267639_ 1))
                 (apply gxc#gsc-link-options__% _g267638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g267638_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords266040%_ _%$%static?266036266041%_ _%phi?266042%_)
        (let ((_%static?266044%_
               (if (eq? _%$%static?266036266041%_ absent-value)
                   '#f
                   _%$%static?266036266041%_)))
          (if _%phi?266042%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp266046%_ ((_%rest266048%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts266049%_ '()))
                (let* ((_%$%rest266050266076%_ _%rest266048%_)
                       (_%$%else266055266084%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts266049%_)))
                              (reverse! _%opts266049%_)))))
                  (let ((_%$%K266070266147%_
                         (lambda (_%rest266144%_ _%opt266145%_)
                           (if _%static?266044%_
                               (_%lp266046%_
                                _%rest266144%_
                                (cons _%opt266145%_
                                      (cons '"-cc-options" _%opts266049%_)))
                               (_%lp266046%_ _%rest266144%_ _%opts266049%_))))
                        (_%$%K266065266124%_
                         (lambda (_%rest266121%_ _%opt266122%_)
                           (_%lp266046%_
                            _%rest266121%_
                            (cons _%opt266122%_
                                  (cons '"-cc-options" _%opts266049%_)))))
                        (_%$%K266060266104%_
                         (lambda (_%rest266102%_)
                           (_%lp266046%_ _%rest266102%_ _%opts266049%_)))
                        (_%$%K266057266090%_
                         (lambda (_%rest266088%_)
                           (_%lp266046%_ _%rest266088%_ _%opts266049%_))))
                    (if (pair? _%$%rest266050266076%_)
                        (let ((_%$%tl266072266152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest266050266076%_)))
                              (_%$%hd266071266150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest266050266076%_))))
                          (if (equal? _%$%hd266071266150%_ '"-cc-options")
                              (if (pair? _%$%tl266072266152%_)
                                  (let ((_%$%tl266074266157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl266072266152%_)))
                                        (_%$%hd266073266155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl266072266152%_))))
                                    (if (equal? _%$%hd266073266155%_
                                                '"-Bstatic")
                                        (let ((_%opt266160%_
                                               _%$%hd266073266155%_)
                                              (_%rest266162%_
                                               _%$%tl266074266157%_))
                                          (_%$%K266070266147%_
                                           _%rest266162%_
                                           _%opt266160%_))
                                        (let ((_%opt266137%_
                                               _%$%hd266073266155%_)
                                              (_%rest266139%_
                                               _%$%tl266074266157%_))
                                          (_%$%K266065266124%_
                                           _%rest266139%_
                                           _%opt266137%_))))
                                  (let ((_%rest266096%_ _%$%tl266072266152%_))
                                    (_%$%K266057266090%_ _%rest266096%_)))
                              (if (equal? _%$%hd266071266150%_ '"-ld-options")
                                  (if (pair? _%$%tl266072266152%_)
                                      (let* ((_%$%tl266064266112%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl266072266152%_)))
                                             (_%rest266115%_
                                              _%$%tl266064266112%_))
                                        (_%$%K266060266104%_ _%rest266115%_))
                                      (let ((_%rest266096%_
                                             _%$%tl266072266152%_))
                                        (_%$%K266057266090%_ _%rest266096%_)))
                                  (let ((_%rest266096%_ _%$%tl266072266152%_))
                                    (_%$%K266057266090%_ _%rest266096%_)))))
                        (_%$%else266055266084%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords266167%_ _%$%static?266036266168%_)
        (let ((_%phi?266170%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords266167%_
           _%$%static?266036266168%_
           _%phi?266170%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g267640_
        (let ((_g267641_ (let () (declare (not safe)) (##length _g267640_))))
          (cond ((let () (declare (not safe)) (##fx= _g267641_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g267640_))
                ((let () (declare (not safe)) (##fx= _g267641_ 3))
                 (apply gxc#gsc-cc-options__%__% _g267640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g267640_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords266179%_ . _%args266180%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords266179%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266179%_
                  'static:
                  absent-value))
               _%args266180%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args266037266186%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args266037266186%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords265886%_ _%$%static?265882265887%_ _%phi?265888%_)
        (let ((_%static?265890%_
               (if (eq? _%$%static?265882265887%_ absent-value)
                   '#f
                   _%$%static?265882265887%_)))
          (if _%phi?265888%_
              '()
              (let _%lp265892%_ ((_%rest265894%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts265895%_ '()))
                (let* ((_%$%rest265896265922%_ _%rest265894%_)
                       (_%$%else265901265930%_
                        (lambda () (reverse! _%opts265895%_))))
                  (let ((_%$%K265916265993%_
                         (lambda (_%rest265990%_ _%opt265991%_)
                           (if _%static?265890%_
                               (_%lp265892%_
                                _%rest265990%_
                                (cons _%opt265991%_
                                      (cons '"-ld-options" _%opts265895%_)))
                               (_%lp265892%_ _%rest265990%_ _%opts265895%_))))
                        (_%$%K265911265970%_
                         (lambda (_%rest265967%_ _%opt265968%_)
                           (_%lp265892%_
                            _%rest265967%_
                            (cons _%opt265968%_
                                  (cons '"-ld-options" _%opts265895%_)))))
                        (_%$%K265906265950%_
                         (lambda (_%rest265948%_)
                           (_%lp265892%_ _%rest265948%_ _%opts265895%_)))
                        (_%$%K265903265936%_
                         (lambda (_%rest265934%_)
                           (_%lp265892%_ _%rest265934%_ _%opts265895%_))))
                    (if (pair? _%$%rest265896265922%_)
                        (let ((_%$%tl265918265998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest265896265922%_)))
                              (_%$%hd265917265996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest265896265922%_))))
                          (if (equal? _%$%hd265917265996%_ '"-ld-options")
                              (if (pair? _%$%tl265918265998%_)
                                  (let ((_%$%tl265920266003%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl265918265998%_)))
                                        (_%$%hd265919266001%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl265918265998%_))))
                                    (if (equal? _%$%hd265919266001%_
                                                '"-static")
                                        (let ((_%opt266006%_
                                               _%$%hd265919266001%_)
                                              (_%rest266008%_
                                               _%$%tl265920266003%_))
                                          (_%$%K265916265993%_
                                           _%rest266008%_
                                           _%opt266006%_))
                                        (let ((_%opt265983%_
                                               _%$%hd265919266001%_)
                                              (_%rest265985%_
                                               _%$%tl265920266003%_))
                                          (_%$%K265911265970%_
                                           _%rest265985%_
                                           _%opt265983%_))))
                                  (let ((_%rest265942%_ _%$%tl265918265998%_))
                                    (_%$%K265903265936%_ _%rest265942%_)))
                              (if (equal? _%$%hd265917265996%_ '"-cc-options")
                                  (if (pair? _%$%tl265918265998%_)
                                      (let* ((_%$%tl265910265958%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl265918265998%_)))
                                             (_%rest265961%_
                                              _%$%tl265910265958%_))
                                        (_%$%K265906265950%_ _%rest265961%_))
                                      (let ((_%rest265942%_
                                             _%$%tl265918265998%_))
                                        (_%$%K265903265936%_ _%rest265942%_)))
                                  (let ((_%rest265942%_ _%$%tl265918265998%_))
                                    (_%$%K265903265936%_ _%rest265942%_)))))
                        (_%$%else265901265930%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords266013%_ _%$%static?265882266014%_)
        (let ((_%phi?266016%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords266013%_
           _%$%static?265882266014%_
           _%phi?266016%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g267642_
        (let ((_g267643_ (let () (declare (not safe)) (##length _g267642_))))
          (cond ((let () (declare (not safe)) (##fx= _g267643_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g267642_))
                ((let () (declare (not safe)) (##fx= _g267643_ 3))
                 (apply gxc#gsc-ld-options__%__% _g267642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g267642_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords266025%_ . _%args266026%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords266025%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords266025%_
                  'static:
                  absent-value))
               _%args266026%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args265883266032%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args265883266032%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir265877%_)
        (let ((_%user-staticdir265879%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir265877%_
                       '" -I "
                       _%user-staticdir265879%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp265789%_ ((_%rest265791%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts265792%_ '()))
          (let* ((_%$%rest265793265813%_ _%rest265791%_)
                 (_%$%else265797265821%_ (lambda () _%opts265792%_)))
            (let ((_%$%K265807265864%_
                   (lambda (_%rest265862%_)
                     (_%lp265789%_ _%rest265862%_ _%opts265792%_)))
                  (_%$%K265802265842%_
                   (lambda (_%rest265839%_ _%opt265840%_)
                     (_%lp265789%_
                      _%rest265839%_
                      (let ((__tmp267644
                             (let ((__tmp267645
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt265840%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp267645))))
                        (declare (not safe))
                        (##append _%opts265792%_ __tmp267644)))))
                  (_%$%K265799265827%_
                   (lambda (_%rest265825%_)
                     (_%lp265789%_ _%rest265825%_ _%opts265792%_))))
              (if (pair? _%$%rest265793265813%_)
                  (let ((_%$%tl265809265869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest265793265813%_)))
                        (_%$%hd265808265867%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest265793265813%_))))
                    (if (equal? _%$%hd265808265867%_ '"-cc-options")
                        (if (pair? _%$%tl265809265869%_)
                            (let* ((_%$%tl265811265872%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl265809265869%_)))
                                   (_%rest265875%_ _%$%tl265811265872%_))
                              (_%$%K265807265864%_ _%rest265875%_))
                            (let ((_%rest265833%_ _%$%tl265809265869%_))
                              (_%$%K265799265827%_ _%rest265833%_)))
                        (if (equal? _%$%hd265808265867%_ '"-ld-options")
                            (if (pair? _%$%tl265809265869%_)
                                (let ((_%$%tl265806265852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl265809265869%_)))
                                      (_%$%hd265805265850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl265809265869%_))))
                                  (let ((_%opt265855%_ _%$%hd265805265850%_)
                                        (_%rest265857%_ _%$%tl265806265852%_))
                                    (_%$%K265802265842%_
                                     _%rest265857%_
                                     _%opt265855%_)))
                                (let ((_%rest265833%_ _%$%tl265809265869%_))
                                  (_%$%K265799265827%_ _%rest265833%_)))
                            (let ((_%rest265833%_ _%$%tl265809265869%_))
                              (_%$%K265799265827%_ _%rest265833%_)))))
                  (_%$%else265797265821%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str265786%_)
        (not (let () (declare (not safe)) (string-empty? _%str265786%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path265779%_ _%phi?265780%_)
        (let ((_%gsc-link-opts265782%_
               (gxc#gsc-link-options__% _%phi?265780%_))
              (_%gsc-cc-opts265783%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?265780%_))
              (_%gsc-ld-opts265784%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?265780%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp267646
                  (let ((__tmp267647
                         (let ((__tmp267648 (cons _%path265779%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp267648
                            _%gsc-link-opts265782%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp267647 _%gsc-ld-opts265784%_))))
             (declare (not safe))
             (foldr__0 cons __tmp267646 _%gsc-cc-opts265783%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx265745%_ _%n265746%_ _%ext265747%_)
        (letrec ((_%module-relative-path265749%_
                  (lambda (_%ctx265777%_)
                    (path-strip-directory
                     (let ((__tmp267649
                            (##structure-ref
                             _%ctx265777%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp267649)))))
                 (_%module-source-directory265750%_
                  (lambda (_%ctx265773%_)
                    (path-directory
                     (let ((_%mpath265775%_
                            (##structure-ref
                             _%ctx265773%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath265775%_)
                           _%mpath265775%_
                           (last _%mpath265775%_))))))
                 (_%section-string265751%_
                  (lambda (_%n265767%_)
                    (if (number? _%n265767%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n265767%_))
                        (if (symbol? _%n265767%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n265767%_))
                            (if (string? _%n265767%_)
                                _%n265767%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n265767%_)))))))
                 (_%file-name265752%_
                  (lambda (_%path265765%_)
                    (if _%n265746%_
                        (string-append
                         _%path265765%_
                         '"~"
                         (_%section-string265751%_ _%n265746%_)
                         _%ext265747%_)
                        (string-append _%path265765%_ _%ext265747%_))))
                 (_%file-path265753%_
                  (lambda ()
                    (let ((_%$e265759%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e265759%_
                          (path-expand
                           (_%file-name265752%_
                            (let ((__tmp267650
                                   (##structure-ref
                                    _%ctx265745%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp267650)))
                           _%$e265759%_)
                          (path-expand
                           (_%file-name265752%_
                            (_%module-relative-path265749%_ _%ctx265745%_))
                           (_%module-source-directory265750%_
                            _%ctx265745%_)))))))
          (let ((_%path265755%_ (_%file-path265753%_)))
            (let ((__tmp267651
                   (lambda ()
                     (let ((__tmp267652 (path-directory _%path265755%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp267652)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp267651))
            _%path265755%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx265726%_)
        (letrec ((_%file-name265728%_
                  (lambda (_%id265743%_)
                    (let ((__tmp267653 (gxc#static-module-name _%id265743%_)))
                      (declare (not safe))
                      (##string-append __tmp267653 '".scm"))))
                 (_%file-path265729%_
                  (lambda ()
                    (let* ((_%file265735%_
                            (_%file-name265728%_
                             (##structure-ref
                              _%ctx265726%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e265737%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e265737%_
                          (path-expand
                           _%file265735%_
                           (path-expand '"static" _%$e265737%_))
                          (path-expand _%file265735%_ '"static"))))))
          (let ((_%path265731%_ (_%file-path265729%_)))
            (let ((__tmp267654
                   (lambda ()
                     (let ((__tmp267655 (path-directory _%path265731%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp267655)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp267654))
            _%path265731%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx265719%_ _%opts265720%_)
        (let ((_%$e265722%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts265720%_))))
          (if _%$e265722%_
              _%$e265722%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx265719%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr265709%_)
        (if (string? _%idstr265709%_)
            (let* ((_%str265712%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr265709%_)))
                   (_%strs265714%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str265712%_ '#\/))))
              (declare (not safe))
              (string-join _%strs265714%_ '"__"))
            (if (symbol? _%idstr265709%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr265709%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr265709%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp267656
               (let ((__tmp267657 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp267657 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp267656))))
    (define gxc#invoke__%
      (lambda (_%@@keywords265675%_
               _%$%stdout-redirection265671265676%_
               _%$%stderr-redirection265672265677%_
               _%program265678%_
               _%args265679%_)
        (let* ((_%stdout-redirection265681%_
                (if (eq? _%$%stdout-redirection265671265676%_ absent-value)
                    '#f
                    _%$%stdout-redirection265671265676%_))
               (_%stderr-redirection265683%_
                (if (eq? _%$%stderr-redirection265672265677%_ absent-value)
                    '#f
                    _%$%stderr-redirection265672265677%_)))
          (let ((__tmp267658 (cons _%program265678%_ _%args265679%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp267658))
          (let* ((_%proc265685%_
                  (open-process
                   (cons 'path:
                         (cons _%program265678%_
                               (cons 'arguments:
                                     (cons _%args265679%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection265681%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection265683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output265690%_
                  (if (or _%stdout-redirection265681%_
                          _%stderr-redirection265683%_)
                      (read-line _%proc265685%_ '#f)
                      '#f))
                 (_%status265693%_ (process-status _%proc265685%_)))
            (let () (declare (not safe)) (##close-port _%proc265685%_))
            (if (zero? _%status265693%_)
                '#!void
                (begin
                  (display _%output265690%_)
                  (let ((__tmp267659 (cons _%program265678%_ _%args265679%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp267659
                     _%status265693%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords265698%_ . _%args265699%_)
        (apply gxc#invoke__%
               _%@@keywords265698%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords265698%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords265698%_
                  'stderr-redirection:
                  absent-value))
               _%args265699%_)))
    (define gxc#invoke
      (lambda _%$%args265673265705%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args265673265705%_)))))
