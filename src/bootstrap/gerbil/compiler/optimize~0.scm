(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1784471411)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp268493
                   (let ((__obj268487
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-info:::init! __obj268487))
                     __obj268487)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp268493)))))
    (define gxc#optimize!
      (lambda (_%ctx268095%_)
        (let ((__tmp268495
               (lambda ()
                 (let ((__tmp268497
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx268095%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx268095%_)
                          (let ((__tmp268499
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp268498
                                 (##structure-ref
                                  _%ctx268095%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp268499 __tmp268498 '#t))
                          (let ((_%code268099%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx268095%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx268095%_
                             _%code268099%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp268496
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp268497
                    gxc#current-compile-local-type
                    __tmp268496))))
              (__tmp268494 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268495
           gxc#current-compile-mutators
           __tmp268494))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx268081%_)
        (letrec ((_%load-it!268083%_
                  (lambda (_%id268093%_)
                    (if (let ((__tmp268500
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp268500 _%id268093%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id268093%_)
                          (let ((__tmp268501
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp268501 _%id268093%_ '#t)))))))
          (let* ((_%modid268085%_
                  (##structure-ref
                   _%ctx268081%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str268087%_ (symbol->string _%modid268085%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str268087%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str268087%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!268083%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!268083%_
                   '(gerbil/builtin
                     gerbil/builtin-inline-rules
                     gerbil/runtime/gambit
                     gerbil/runtime/util
                     gerbil/runtime/table
                     gerbil/runtime/control
                     gerbil/runtime/system
                     gerbil/runtime/c3
                     gerbil/runtime/mop
                     gerbil/runtime/mop-system-classes
                     gerbil/runtime/error
                     gerbil/runtime/interface
                     gerbil/runtime/hash
                     gerbil/runtime/thread
                     gerbil/runtime/syntax
                     gerbil/runtime/eval
                     gerbil/runtime/repl
                     gerbil/runtime/loader
                     gerbil/runtime/init
                     gerbil/runtime))))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_%ctx268018%_)
        (letrec* ((_%deps268020%_
                   (let* ((_%imports268071%_
                           (##structure-ref
                            _%ctx268018%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e268073%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx268018%_))))
                     (if _%$e268073%_
                         (cons _%$e268073%_ _%imports268071%_)
                         _%imports268071%_))))
          (let _%lp268022%_ ((_%rest268024%_ _%deps268020%_))
            (let* ((_%$%rest268025268033%_ _%rest268024%_)
                   (_%$%else268027268041%_ (lambda () '#!void))
                   (_%$%K268029268059%_
                    (lambda (_%rest268044%_ _%hd268045%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd268045%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp268503
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp268502
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd268045%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp268503 __tmp268502))
                                '#!void
                                (begin
                                  (let ((_%$e268048%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd268045%_))))
                                    (if _%$e268048%_
                                        (_%lp268022%_
                                         (cons _%$e268048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd268045%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp268022%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd268045%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd268045%_)))
                            (_%lp268022%_ _%rest268044%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd268045%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp268505
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp268504
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd268045%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp268505 __tmp268504))
                                    '#!void
                                    (begin
                                      (_%lp268022%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd268045%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd268045%_)))
                                (_%lp268022%_ _%rest268044%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd268045%_
                                     'gx#module-import::t))
                                  (_%lp268022%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd268045%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest268044%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd268045%_
                                         'gx#module-export::t))
                                      (_%lp268022%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd268045%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest268044%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd268045%_
                                             'gx#import-set::t))
                                          (_%lp268022%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd268045%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest268044%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd268045%_))))))))))
              (if (pair? _%$%rest268025268033%_)
                  (let ((_%$%hd268030268062%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest268025268033%_)))
                        (_%$%tl268031268064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest268025268033%_))))
                    (let* ((_%hd268067%_ _%$%hd268030268062%_)
                           (_%rest268069%_ _%$%tl268031268064%_))
                      (_%$%K268029268059%_ _%rest268069%_ _%hd268067%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx267998%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx267998%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx267998%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht268000%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id268002%_
                    (##structure-ref
                     _%ctx267998%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod268004%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht268000%_ _%id268002%_)))
                   (_%$e268007%_ _%mod268004%_))
              (if _%$e268007%_
                  _%$e268007%_
                  (let* ((_%mod268010%_
                          (gxc#optimizer-import-ssxi _%ctx267998%_))
                         (_%val268015%_
                          (let ((_%$e268012%_ _%mod268010%_))
                            (if _%$e268012%_ _%$e268012%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht268000%_ _%id268002%_ _%val268015%_))
                    _%val268015%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx267996%_)
        (if (##structure-ref _%ctx267996%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx267996%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id267974%_)
        (letrec ((_%catch-e267976%_
                  (lambda (_%exn267994%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn267994%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn267994%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id267974%_))))
                    '#f))
                 (_%import-e267977%_
                  (lambda ()
                    (let* ((_%str-id267980%_
                            (let ((__tmp268506
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id267974%_))))
                              (declare (not safe))
                              (##string-append __tmp268506 '".ssxi")))
                           (_%artefact-path267987%_
                            (let ((_%$%odir267981267983%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir267981267983%_
                                  (let ((_%odir267985%_
                                         _%$%odir267981267983%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id267980%_
                                        '".ss"))
                                     _%odir267985%_))
                                  '#f)))
                           (_%library-path267989%_
                            (let ((__tmp268507
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id267980%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp268507)))
                           (_%ssxi-path267991%_
                            (if (and _%artefact-path267987%_
                                     (file-exists? _%artefact-path267987%_))
                                _%artefact-path267987%_
                                _%library-path267989%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path267991%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path267991%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e267976%_ _%import-e267977%_)))))
    (define gxc#optimize-source
      (lambda (_%stx267959%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx267959%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx267959%_))
        (let* ((_%stx267961%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx267959%_)))
               (_%stx267963%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx267961%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx267963%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx267963%_))
          (let _%fixpoint267966%_ ((_%current267968%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx267963%_))
            (let ((_%refined267970%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current267968%_ _%refined267970%_)
                  '#!void
                  (_%fixpoint267966%_ _%refined267970%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx267963%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx267963%_))
          (let ((_%stx267972%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx267963%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx267972%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp268509 (list gxc#::generate-runtime-empty::t))
            (__tmp268508 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp268509
         '()
         __tmp268508
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args267956%_
        (apply make-instance gxc#::generate-ssxi::t _%$args267956%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp268510
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-annotation
                  gxc#generate-ssxi-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp268510)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx267948%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self267951%_
                (let ((__obj268489
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj268489))
               (__tmp268511
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self267951%_ _%stx267948%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp268511
           gxc#current-compile-method
           _%self267951%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self267908%_ _%stx267909%_)
        (let* ((_%$%g267911267921%_
                (lambda (_%$%g267912267918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267912267918%_))))
               (_%$%g267910267945%_
                (lambda (_%$%g267912267924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267912267924%_))
                      (let ((_%$%e267914267926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267912267924%_))))
                        (let ((_%$%hd267915267929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267914267926%_)))
                              (_%$%tl267916267931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267914267926%_))))
                          (let ((__tmp268514
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self267908%_
                                      _%stx267909%_))))
                                (__tmp268512
                                 (let ((__tmp268513
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp268513 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp268514
                             gx#current-expander-phi
                             __tmp268512))))
                      (_%$%g267911267921%_ _%$%g267912267924%_)))))
          (_%$%g267910267945%_ _%stx267909%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self267847%_ _%stx267848%_)
        (let* ((_%$%g267850267864%_
                (lambda (_%$%g267851267861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g267851267861%_))))
               (_%$%g267849267905%_
                (lambda (_%$%g267851267867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g267851267867%_))
                      (let ((_%$%e267854267869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g267851267867%_))))
                        (let ((_%$%hd267855267872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267854267869%_)))
                              (_%$%tl267856267874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267854267869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl267856267874%_))
                              (let ((_%$%e267857267877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl267856267874%_))))
                                (let ((_%$%hd267858267880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267857267877%_)))
                                      (_%$%tl267859267882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267857267877%_))))
                                  (let* ((_%ctx267899%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd267858267880%_)))
                                         (_%code267901%_
                                          (##structure-ref
                                           _%ctx267899%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp268515
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self267847%_
                                               _%code267901%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp268515
                                     gx#current-expander-context
                                     _%ctx267899%_))))
                              (_%$%g267850267864%_ _%$%g267851267867%_))))
                      (_%$%g267850267864%_ _%$%g267851267867%_)))))
          (_%$%g267849267905%_ _%stx267848%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self267654%_ _%stx267655%_)
        (letrec ((_%generate-e267657%_
                  (lambda (_%id267832%_)
                    (let* ((_%sym267834%_
                            (if (let ((__tmp268516
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp268516))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id267832%_))
                                '#f))
                           (_%$e267836%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym267834%_))))
                      (if _%$e267836%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym267834%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym267834%_
                                                    (cons (let ((__method268490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e267836%_ 'typedecl))))
                    (if __method268490
                        (let ()
                          (declare (not safe))
                          (__method268490 _%$e267836%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e267836%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym267834%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym267834%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e267841%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym267834%_))))
                            (if _%$e267841%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym267834%_
                                     '" "
                                     _%$e267841%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e267841%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym267834%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym267834%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e267841%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym267834%_
                                                  (cons (let ((__method268491
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e267841%_ 'typedecl))))
                  (if __method268491
                      (let ()
                        (declare (not safe))
                        (__method268491 _%$e267841%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e267841%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx268102268103%_ _%stx267655%_)
                 (_%$%g267660267698%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx268102268103%_)))))
            (let ((_%__kont268104268105%_
                   (lambda (_%$%g267662267814%_)
                     (_%generate-e267657%_ _%$%g267662267814%_)))
                  (_%__kont268106268107%_
                   (lambda (_%$%g267675267749%_)
                     (let ((_%types267775%_
                            (map _%generate-e267657%_
                                 (let ((__tmp268517
                                        (lambda (_%$%g267767267770%_
                                                 _%$%g267768267772%_)
                                          (cons _%$%g267767267770%_
                                                _%$%g267768267772%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp268517
                                    '()
                                    _%$%g267675267749%_)))))
                       (cons 'begin _%types267775%_)))))
              (let ((_%__match268157268158%_
                     (lambda (_%$%e267676267703%_
                              _%$%hd267677267706%_
                              _%$%tl267678267708%_
                              _%$%e267679267711%_
                              _%$%hd267680267714%_
                              _%$%tl267681267716%_
                              _%__splice268108268109%_
                              _%$%target267682267719%_
                              _%$%tl267684267721%_)
                       (letrec ((_%$%loop267685267724%_
                                 (lambda (_%$%hd267683267727%_
                                          _%$%id267689267729%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd267683267727%_))
                                       (let ((_%$%e267686267731%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd267683267727%_))))
                                         (let ((_%$%lp-tl267688267736%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e267686267731%_)))
                                               (_%$%lp-hd267687267734%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e267686267731%_))))
                                           (_%$%loop267685267724%_
                                            _%$%lp-tl267688267736%_
                                            (cons _%$%lp-hd267687267734%_
                                                  _%$%id267689267729%_))))
                                       (let ((_%$%id267690267739%_
                                              (reverse _%$%id267689267729%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl267681267716%_))
                                             (let ((_%$%e267691267741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl267681267716%_))))
                                               (let ((_%$%tl267693267746%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e267691267741%_)))
                                                     (_%$%hd267692267744%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e267691267741%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl267693267746%_))
                                                     (_%__kont268106268107%_
                                                      _%$%id267690267739%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g267660267698%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g267660267698%_))))))))
                         (_%$%loop267685267724%_
                          _%$%target267682267719%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx268102268103%_))
                    (let ((_%$%e267663267782%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx268102268103%_))))
                      (let ((_%$%tl267665267787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e267663267782%_)))
                            (_%$%hd267664267785%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e267663267782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl267665267787%_))
                            (let ((_%$%e267666267790%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl267665267787%_))))
                              (let ((_%$%tl267668267795%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e267666267790%_)))
                                    (_%$%hd267667267793%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e267666267790%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd267667267793%_))
                                    (let ((_%$%e267669267798%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd267667267793%_))))
                                      (let ((_%$%tl267671267803%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e267669267798%_)))
                                            (_%$%hd267670267801%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e267669267798%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl267671267803%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl267668267795%_))
                                                (let ((_%$%e267672267806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl267668267795%_))))
                                                  (let ((_%$%tl267674267811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e267672267806%_)))
                                                        (_%$%hd267673267809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e267672267806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267674267811%_))
                                                        (_%__kont268104268105%_
                                                         _%$%hd267670267801%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd267667267793%_))
                                                            (let ((_%__splice268108268109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd267667267793%_
                              '0))))
                      (let ((_%$%tl267684267721%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice268108268109%_ '1)))
                            (_%$%target267682267719%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice268108268109%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl267684267721%_))
                            (_%__match268157268158%_
                             _%$%e267663267782%_
                             _%$%hd267664267785%_
                             _%$%tl267665267787%_
                             _%$%e267666267790%_
                             _%$%hd267667267793%_
                             _%$%tl267668267795%_
                             _%__splice268108268109%_
                             _%$%target267682267719%_
                             _%$%tl267684267721%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g267660267698%_)))))
                    (let () (declare (not safe)) (_%$%g267660267698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd267667267793%_))
                                                    (let ((_%__splice268108268109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd267667267793%_
                                                              '0))))
                                                      (let ((_%$%tl267684267721%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice268108268109%_ '1)))
                    (_%$%target267682267719%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice268108268109%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl267684267721%_))
                    (_%__match268157268158%_
                     _%$%e267663267782%_
                     _%$%hd267664267785%_
                     _%$%tl267665267787%_
                     _%$%e267666267790%_
                     _%$%hd267667267793%_
                     _%$%tl267668267795%_
                     _%__splice268108268109%_
                     _%$%target267682267719%_
                     _%$%tl267684267721%_)
                    (let () (declare (not safe)) (_%$%g267660267698%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g267660267698%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd267667267793%_))
                                                (let ((_%__splice268108268109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd267667267793%_
                                                          '0))))
                                                  (let ((_%$%tl267684267721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice268108268109%_
                                                            '1)))
                                                        (_%$%target267682267719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice268108268109%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267684267721%_))
                                                        (_%__match268157268158%_
                                                         _%$%e267663267782%_
                                                         _%$%hd267664267785%_
                                                         _%$%tl267665267787%_
                                                         _%$%e267666267790%_
                                                         _%$%hd267667267793%_
                                                         _%$%tl267668267795%_
                                                         _%__splice268108268109%_
                                                         _%$%target267682267719%_
                                                         _%$%tl267684267721%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g267660267698%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267660267698%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd267667267793%_))
                                        (let ((_%__splice268108268109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd267667267793%_
                                                  '0))))
                                          (let ((_%$%tl267684267721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice268108268109%_
                                                    '1)))
                                                (_%$%target267682267719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice268108268109%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl267684267721%_))
                                                (_%__match268157268158%_
                                                 _%$%e267663267782%_
                                                 _%$%hd267664267785%_
                                                 _%$%tl267665267787%_
                                                 _%$%e267666267790%_
                                                 _%$%hd267667267793%_
                                                 _%$%tl267668267795%_
                                                 _%__splice268108268109%_
                                                 _%$%target267682267719%_
                                                 _%$%tl267684267721%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267660267698%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g267660267698%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g267660267698%_)))))
                    (let () (declare (not safe)) (_%$%g267660267698%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self267207%_ _%stx267208%_)
        (let* ((_%__stx268160268161%_ _%stx267208%_)
               (_%$%g267212267314%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268160268161%_)))))
          (let ((_%__kont268162268163%_
                 (lambda (_%$%g267214267604%_
                          _%$%g267215267605%_
                          _%$%g267216267606%_
                          _%$%g267217267607%_
                          _%$%g267218267608%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g267217267607%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g267216267606%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g267215267605%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g267214267604%_))
                                                 '())))))))
                (_%__kont268164268165%_
                 (lambda (_%$%g267267267430%_
                          _%$%g267268267431%_
                          _%$%g267269267432%_
                          _%$%g267270267433%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g267269267432%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g267268267431%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g267267267430%_))
                                           (cons '#f '())))))))
                (_%__kont268166268167%_ (lambda () '(begin))))
            (let ((_%__match268295268296%_
                   (lambda (_%$%e267219267476%_
                            _%$%hd267220267479%_
                            _%$%tl267221267481%_
                            _%$%e267222267484%_
                            _%$%hd267223267487%_
                            _%$%tl267224267489%_
                            _%$%e267225267492%_
                            _%$%hd267226267495%_
                            _%$%tl267227267497%_
                            _%$%e267228267500%_
                            _%$%hd267229267503%_
                            _%$%tl267230267505%_
                            _%$%e267231267508%_
                            _%$%hd267232267511%_
                            _%$%tl267233267513%_
                            _%$%e267234267516%_
                            _%$%hd267235267519%_
                            _%$%tl267236267521%_
                            _%$%e267237267524%_
                            _%$%hd267238267527%_
                            _%$%tl267239267529%_
                            _%$%e267240267532%_
                            _%$%hd267241267535%_
                            _%$%tl267242267537%_
                            _%$%e267243267540%_
                            _%$%hd267244267543%_
                            _%$%tl267245267545%_
                            _%$%e267246267548%_
                            _%$%hd267247267551%_
                            _%$%tl267248267553%_
                            _%$%e267249267556%_
                            _%$%hd267250267559%_
                            _%$%tl267251267561%_
                            _%$%e267252267564%_
                            _%$%hd267253267567%_
                            _%$%tl267254267569%_
                            _%$%e267255267572%_
                            _%$%hd267256267575%_
                            _%$%tl267257267577%_
                            _%$%e267258267580%_
                            _%$%hd267259267583%_
                            _%$%tl267260267585%_
                            _%$%e267261267588%_
                            _%$%hd267262267591%_
                            _%$%tl267263267593%_
                            _%$%e267264267596%_
                            _%$%hd267265267599%_
                            _%$%tl267266267601%_)
                     (let ((_%$%g267214267604%_ _%$%hd267265267599%_)
                           (_%$%g267215267605%_ _%$%hd267256267575%_)
                           (_%$%g267216267606%_ _%$%hd267247267551%_)
                           (_%$%g267217267607%_ _%$%hd267238267527%_)
                           (_%$%g267218267608%_ _%$%hd267229267503%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g267218267608%_
                              'bind-method!))
                           (_%__kont268162268163%_
                            _%$%g267214267604%_
                            _%$%g267215267605%_
                            _%$%g267216267606%_
                            _%$%g267217267607%_
                            _%$%g267218267608%_)
                           (_%__kont268166268167%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268160268161%_))
                  (let ((_%$%e267219267476%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx268160268161%_))))
                    (let ((_%$%tl267221267481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267219267476%_)))
                          (_%$%hd267220267479%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267219267476%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl267221267481%_))
                          (let ((_%$%e267222267484%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl267221267481%_))))
                            (let ((_%$%tl267224267489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267222267484%_)))
                                  (_%$%hd267223267487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267222267484%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd267223267487%_))
                                  (let ((_%$%e267225267492%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd267223267487%_))))
                                    (let ((_%$%tl267227267497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267225267492%_)))
                                          (_%$%hd267226267495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267225267492%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd267226267495%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd267226267495%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267227267497%_))
                                                  (let ((_%$%e267228267500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl267227267497%_))))
                                                    (let ((_%$%tl267230267505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267228267500%_)))
                                                          (_%$%hd267229267503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267228267500%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl267230267505%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl267224267489%_))
                      (let ((_%$%e267231267508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl267224267489%_))))
                        (let ((_%$%tl267233267513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267231267508%_)))
                              (_%$%hd267232267511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267231267508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd267232267511%_))
                              (let ((_%$%e267234267516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd267232267511%_))))
                                (let ((_%$%tl267236267521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e267234267516%_)))
                                      (_%$%hd267235267519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e267234267516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd267235267519%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd267235267519%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl267236267521%_))
                                              (let ((_%$%e267237267524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl267236267521%_))))
                                                (let ((_%$%tl267239267529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e267237267524%_)))
                                                      (_%$%hd267238267527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e267237267524%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267239267529%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl267233267513%_))
                                                          (let ((_%$%e267240267532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl267233267513%_))))
                    (let ((_%$%tl267242267537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267240267532%_)))
                          (_%$%hd267241267535%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267240267532%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd267241267535%_))
                          (let ((_%$%e267243267540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd267241267535%_))))
                            (let ((_%$%tl267245267545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e267243267540%_)))
                                  (_%$%hd267244267543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e267243267540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd267244267543%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd267244267543%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl267245267545%_))
                                          (let ((_%$%e267246267548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl267245267545%_))))
                                            (let ((_%$%tl267248267553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e267246267548%_)))
                                                  (_%$%hd267247267551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e267246267548%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl267248267553%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl267242267537%_))
                                                      (let ((_%$%e267249267556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl267242267537%_))))
                (let ((_%$%tl267251267561%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e267249267556%_)))
                      (_%$%hd267250267559%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e267249267556%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd267250267559%_))
                      (let ((_%$%e267252267564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd267250267559%_))))
                        (let ((_%$%tl267254267569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e267252267564%_)))
                              (_%$%hd267253267567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e267252267564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd267253267567%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd267253267567%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl267254267569%_))
                                      (let ((_%$%e267255267572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl267254267569%_))))
                                        (let ((_%$%tl267257267577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e267255267572%_)))
                                              (_%$%hd267256267575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e267255267572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267257267577%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl267251267561%_))
                                                  (let ((_%$%e267258267580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl267251267561%_))))
                                                    (let ((_%$%tl267260267585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e267258267580%_)))
                                                          (_%$%hd267259267583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e267258267580%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd267259267583%_))
                                                          (let ((_%$%e267261267588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd267259267583%_))))
                    (let ((_%$%tl267263267593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e267261267588%_)))
                          (_%$%hd267262267591%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e267261267588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd267262267591%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd267262267591%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl267263267593%_))
                                  (let ((_%$%e267264267596%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl267263267593%_))))
                                    (let ((_%$%tl267266267601%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e267264267596%_)))
                                          (_%$%hd267265267599%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e267264267596%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl267266267601%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl267260267585%_))
                                              (_%__match268295268296%_
                                               _%$%e267219267476%_
                                               _%$%hd267220267479%_
                                               _%$%tl267221267481%_
                                               _%$%e267222267484%_
                                               _%$%hd267223267487%_
                                               _%$%tl267224267489%_
                                               _%$%e267225267492%_
                                               _%$%hd267226267495%_
                                               _%$%tl267227267497%_
                                               _%$%e267228267500%_
                                               _%$%hd267229267503%_
                                               _%$%tl267230267505%_
                                               _%$%e267231267508%_
                                               _%$%hd267232267511%_
                                               _%$%tl267233267513%_
                                               _%$%e267234267516%_
                                               _%$%hd267235267519%_
                                               _%$%tl267236267521%_
                                               _%$%e267237267524%_
                                               _%$%hd267238267527%_
                                               _%$%tl267239267529%_
                                               _%$%e267240267532%_
                                               _%$%hd267241267535%_
                                               _%$%tl267242267537%_
                                               _%$%e267243267540%_
                                               _%$%hd267244267543%_
                                               _%$%tl267245267545%_
                                               _%$%e267246267548%_
                                               _%$%hd267247267551%_
                                               _%$%tl267248267553%_
                                               _%$%e267249267556%_
                                               _%$%hd267250267559%_
                                               _%$%tl267251267561%_
                                               _%$%e267252267564%_
                                               _%$%hd267253267567%_
                                               _%$%tl267254267569%_
                                               _%$%e267255267572%_
                                               _%$%hd267256267575%_
                                               _%$%tl267257267577%_
                                               _%$%e267258267580%_
                                               _%$%hd267259267583%_
                                               _%$%tl267260267585%_
                                               _%$%e267261267588%_
                                               _%$%hd267262267591%_
                                               _%$%tl267263267593%_
                                               _%$%e267264267596%_
                                               _%$%hd267265267599%_
                                               _%$%tl267266267601%_)
                                              (_%__kont268166268167%_))
                                          (_%__kont268166268167%_))))
                                  (_%__kont268166268167%_))
                              (_%__kont268166268167%_))
                          (_%__kont268166268167%_))))
                  (_%__kont268166268167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl267251267561%_))
                                                      (if (let ((__tmp268518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp268518 'bind-method!))
                  (let ((_%$%g267267267430%_ _%$%hd267256267575%_)
                        (_%$%g267268267431%_ _%$%hd267247267551%_)
                        (_%$%g267269267432%_ _%$%hd267238267527%_)
                        (_%$%g267270267433%_ _%$%hd267229267503%_))
                    (_%__kont268164268165%_
                     _%$%g267267267430%_
                     _%$%g267268267431%_
                     _%$%g267269267432%_
                     _%$%g267270267433%_))
                  (_%__kont268166268167%_))
              (_%__kont268166268167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268166268167%_))))
                                      (_%__kont268166268167%_))
                                  (_%__kont268166268167%_))
                              (_%__kont268166268167%_))))
                      (_%__kont268166268167%_))))
              (_%__kont268166268167%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268166268167%_))))
                                          (_%__kont268166268167%_))
                                      (_%__kont268166268167%_))
                                  (_%__kont268166268167%_))))
                          (_%__kont268166268167%_))))
                  (_%__kont268166268167%_))
              (_%__kont268166268167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont268166268167%_))
                                          (_%__kont268166268167%_))
                                      (_%__kont268166268167%_))))
                              (_%__kont268166268167%_))))
                      (_%__kont268166268167%_))
                  (_%__kont268166268167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont268166268167%_))
                                              (_%__kont268166268167%_))
                                          (_%__kont268166268167%_))))
                                  (_%__kont268166268167%_))))
                          (_%__kont268166268167%_))))
                  (_%__kont268166268167%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self267031%_ _%stx267032%_)
        (let* ((_%__stx268404268405%_ _%stx267032%_)
               (_%$%g267035267075%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268404268405%_)))))
          (let ((_%__kont268406268407%_
                 (lambda (_%$%g267037267181%_ _%$%g267038267182%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g267038267182%_))
                               (cons _%$%g267037267181%_ '())))))
                (_%__kont268408268409%_
                 (lambda (_%$%g267060267104%_ _%$%g267061267105%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268404268405%_))
                (let ((_%$%e267039267125%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx268404268405%_))))
                  (let ((_%$%tl267041267130%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e267039267125%_)))
                        (_%$%hd267040267128%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e267039267125%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl267041267130%_))
                        (let ((_%$%e267042267133%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl267041267130%_))))
                          (let ((_%$%tl267044267138%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e267042267133%_)))
                                (_%$%hd267043267136%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e267042267133%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd267043267136%_))
                                (let ((_%$%e267045267141%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd267043267136%_))))
                                  (let ((_%$%tl267047267146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e267045267141%_)))
                                        (_%$%hd267046267144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e267045267141%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd267046267144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd267046267144%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl267047267146%_))
                                                (let ((_%$%e267048267149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl267047267146%_))))
                                                  (let ((_%$%tl267050267154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e267048267149%_)))
                                                        (_%$%hd267049267152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e267048267149%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267050267154%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl267044267138%_))
                                                            (let ((_%$%e267051267157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl267044267138%_))))
                      (let ((_%$%tl267053267162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e267051267157%_)))
                            (_%$%hd267052267160%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e267051267157%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd267052267160%_))
                            (let ((_%$%e267054267165%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd267052267160%_))))
                              (let ((_%$%tl267056267170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e267054267165%_)))
                                    (_%$%hd267055267168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e267054267165%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd267055267168%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd267055267168%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl267056267170%_))
                                            (let ((_%$%e267057267173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl267056267170%_))))
                                              (let ((_%$%tl267059267178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e267057267173%_)))
                                                    (_%$%hd267058267176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e267057267173%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl267059267178%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267053267162%_))
                                                        (_%__kont268406268407%_
                                                         _%$%hd267058267176%_
                                                         _%$%hd267049267152%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g267035267075%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267053267162%_))
                                                        (_%__kont268408268409%_
                                                         _%$%hd267052267160%_
                                                         _%$%hd267043267136%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g267035267075%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl267053267162%_))
                                                (_%__kont268408268409%_
                                                 _%$%hd267052267160%_
                                                 _%$%hd267043267136%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267035267075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl267053267162%_))
                                            (_%__kont268408268409%_
                                             _%$%hd267052267160%_
                                             _%$%hd267043267136%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g267035267075%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl267053267162%_))
                                        (_%__kont268408268409%_
                                         _%$%hd267052267160%_
                                         _%$%hd267043267136%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g267035267075%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl267053267162%_))
                                (_%__kont268408268409%_
                                 _%$%hd267052267160%_
                                 _%$%hd267043267136%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g267035267075%_))))))
                    (let () (declare (not safe)) (_%$%g267035267075%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl267044267138%_))
                    (let ((_%$%e267068267096%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl267044267138%_))))
                      (let ((_%$%tl267070267101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e267068267096%_)))
                            (_%$%hd267069267099%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e267068267096%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl267070267101%_))
                            (_%__kont268408268409%_
                             _%$%hd267069267099%_
                             _%$%hd267043267136%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g267035267075%_)))))
                    (let () (declare (not safe)) (_%$%g267035267075%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl267044267138%_))
                                                    (let ((_%$%e267068267096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl267044267138%_))))
                                                      (let ((_%$%tl267070267101%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e267068267096%_)))
                    (_%$%hd267069267099%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e267068267096%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl267070267101%_))
                    (_%__kont268408268409%_
                     _%$%hd267069267099%_
                     _%$%hd267043267136%_)
                    (let () (declare (not safe)) (_%$%g267035267075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g267035267075%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl267044267138%_))
                                                (let ((_%$%e267068267096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl267044267138%_))))
                                                  (let ((_%$%tl267070267101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e267068267096%_)))
                                                        (_%$%hd267069267099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e267068267096%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl267070267101%_))
                                                        (_%__kont268408268409%_
                                                         _%$%hd267069267099%_
                                                         _%$%hd267043267136%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g267035267075%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g267035267075%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl267044267138%_))
                                            (let ((_%$%e267068267096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl267044267138%_))))
                                              (let ((_%$%tl267070267101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e267068267096%_)))
                                                    (_%$%hd267069267099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e267068267096%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl267070267101%_))
                                                    (_%__kont268408268409%_
                                                     _%$%hd267069267099%_
                                                     _%$%hd267043267136%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g267035267075%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g267035267075%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl267044267138%_))
                                    (let ((_%$%e267068267096%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl267044267138%_))))
                                      (let ((_%$%tl267070267101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e267068267096%_)))
                                            (_%$%hd267069267099%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e267068267096%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl267070267101%_))
                                            (_%__kont268408268409%_
                                             _%$%hd267069267099%_
                                             _%$%hd267043267136%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g267035267075%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g267035267075%_))))))
                        (let () (declare (not safe)) (_%$%g267035267075%_)))))
                (let () (declare (not safe)) (_%$%g267035267075%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self267018%_)
        (let ((_%self267021%_ _%self267018%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self267021%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self266792%_)
        (let* ((_%self266795%_ _%self266792%_)
               (_%$%self266804266820%_ _%self266795%_)
               (_%$%E266806266823%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self266804266820%_
                           '((!class id
                                     super
                                     precendence-list
                                     slots
                                     fields
                                     constructor
                                     struct?
                                     final?
                                     system?
                                     metaclass
                                     methods))))
                  '#!void))
               (_%$%K266807266838%_
                (lambda (_%methods266826%_
                         _%metaclass266827%_
                         _%system?266828%_
                         _%final?266829%_
                         _%struct?266830%_
                         _%constructor266831%_
                         _%fields266832%_
                         _%slots266833%_
                         _%precendence-list266834%_
                         _%super266835%_
                         _%id266836%_)
                  (cons '@class
                        (cons _%id266836%_
                              (cons _%super266835%_
                                    (cons _%precendence-list266834%_
                                          (cons _%slots266833%_
                                                (cons _%fields266832%_
                                                      (cons _%constructor266831%_
                                                            (cons _%struct?266830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?266829%_
                                (cons _%system?266828%_
                                      (cons _%metaclass266827%_
                                            (cons (if _%methods266826%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods266826%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e266808266841%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '1
                   '#f
                   '#f)))
               (_%id266844%_ _%$%e266808266841%_)
               (_%$%e266809266846%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '2
                   '#f
                   '#f)))
               (_%super266849%_ _%$%e266809266846%_)
               (_%$%e266810266851%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list266854%_ _%$%e266810266851%_)
               (_%$%e266811266856%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '4
                   '#f
                   '#f)))
               (_%slots266859%_ _%$%e266811266856%_)
               (_%$%e266812266861%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '5
                   '#f
                   '#f)))
               (_%fields266864%_ _%$%e266812266861%_)
               (_%$%e266813266866%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '6
                   '#f
                   '#f)))
               (_%constructor266869%_ _%$%e266813266866%_)
               (_%$%e266814266871%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '7
                   '#f
                   '#f)))
               (_%struct?266874%_ _%$%e266814266871%_)
               (_%$%e266815266876%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '8
                   '#f
                   '#f)))
               (_%final?266879%_ _%$%e266815266876%_)
               (_%$%e266816266881%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '9
                   '#f
                   '#f)))
               (_%system?266884%_ _%$%e266816266881%_)
               (_%$%e266817266886%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass266889%_ _%$%e266817266886%_)
               (_%$%e266818266891%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self266804266820%_
                   '11
                   '#f
                   '#f)))
               (_%methods266894%_ _%$%e266818266891%_))
          (_%$%K266807266838%_
           _%methods266894%_
           _%metaclass266889%_
           _%system?266884%_
           _%final?266879%_
           _%struct?266874%_
           _%constructor266869%_
           _%fields266864%_
           _%slots266859%_
           _%precendence-list266854%_
           _%super266849%_
           _%id266844%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self266657%_)
        (let ((_%self266660%_ _%self266657%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266660%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self266522%_)
        (let ((_%self266525%_ _%self266522%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266525%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self266387%_)
        (let ((_%self266390%_ _%self266387%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266390%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self266390%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266390%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'typedecl
       gxc#!accessor::typedecl
       '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self266252%_)
        (let ((_%self266255%_ _%self266252%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266255%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self266255%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self266255%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self266117%_)
        (let ((_%self266120%_ _%self266117%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self266120%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self266120%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self265931%_)
        (let* ((_%self265934%_ _%self265931%_)
               (_%$%self265943265952%_ _%self265934%_)
               (_%$%E265945265955%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self265943265952%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K265946265974%_
                (lambda (_%dispatch265958%_
                         _%arity265959%_
                         _%signature265960%_)
                  (if _%signature265960%_
                      (let ((_%signature265962%_ _%signature265960%_))
                        (cons '@lambda
                              (cons _%arity265959%_
                                    (cons _%dispatch265958%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature265962%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature265962%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature265962%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature265962%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature265962%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity265959%_
                                  (cons _%dispatch265958%_ '()))))))
               (_%$%e265947265977%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265943265952%_
                   '1
                   '#f
                   '#f)))
               (_%$%e265948265980%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265943265952%_
                   '2
                   '#f
                   '#f)))
               (_%signature265983%_ _%$%e265948265980%_)
               (_%$%e265949265985%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265943265952%_
                   '3
                   '#f
                   '#f)))
               (_%arity265988%_ _%$%e265949265985%_)
               (_%$%e265950265990%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self265943265952%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch265993%_ _%$%e265950265990%_))
          (_%$%K265946265974%_
           _%dispatch265993%_
           _%arity265988%_
           _%signature265983%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self265791%_)
        (let ((_%self265794%_ _%self265791%_))
          (letrec ((_%clause-e265805%_
                    (lambda (_%clause265807%_)
                      (cdr (let ((__method268492
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause265807%_
                                     'typedecl))))
                             (if __method268492
                                 (let ()
                                   (declare (not safe))
                                   (__method268492 _%clause265807%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause265807%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e265805%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self265794%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self265656%_)
        (let ((_%self265659%_ _%self265656%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265659%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self265659%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self265521%_)
        (let ((_%self265524%_ _%self265521%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265524%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self265524%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self265386%_)
        (let ((_%self265389%_ _%self265386%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265389%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
