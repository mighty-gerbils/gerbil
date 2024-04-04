(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712269052)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194452
                   (let ((__obj194446
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194446)
                     __obj194446)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194452)))))
    (define gxc#optimize!
      (lambda (_%ctx194055%_)
        (let ((__tmp194455
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194055%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194055%_))
                 (let ((__tmp194457
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194456
                        (##structure-ref
                         _%ctx194055%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194457 __tmp194456 '#t))
                 (let ((_%code194058%_
                        (let ((__tmp194458
                               (##structure-ref
                                _%ctx194055%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194458))))
                   (##structure-set!
                    _%ctx194055%_
                    _%code194058%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194454 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194453 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194455
           gxc#current-compile-mutators
           __tmp194454
           gxc#current-compile-local-type
           __tmp194453))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194041%_)
        (letrec ((_%load-it!194043%_
                  (lambda (_%id194053%_)
                    (if (let ((__tmp194459
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194459 _%id194053%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194053%_))
                          (let ((__tmp194460
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194460 _%id194053%_ '#t)))))))
          (let* ((_%modid194045%_
                  (##structure-ref
                   _%ctx194041%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194047%_ (symbol->string _%modid194045%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194047%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194047%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194043%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194043%_
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
      (lambda (_%ctx193978%_)
        (letrec* ((_%deps193980%_
                   (let* ((_%imports194031%_
                           (##structure-ref
                            _%ctx193978%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194033%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193978%_))))
                     (if _%$e194033%_
                         ((lambda (_%g194035194037%_)
                            (cons _%g194035194037%_ _%imports194031%_))
                          _%$e194033%_)
                         (let () _%imports194031%_)))))
          (let _%lp193982%_ ((_%rest193984%_ _%deps193980%_))
            (let* ((_%rest193985193993%_ _%rest193984%_)
                   (_%else193987194001%_ (lambda () '#!void))
                   (_%K193989194019%_
                    (lambda (_%rest194004%_ _%hd194005%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194005%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194462
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194461
                                       (##structure-ref
                                        _%hd194005%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194462 __tmp194461))
                                '#!void
                                (begin
                                  (let ((_%$e194008%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194005%_))))
                                    (if _%$e194008%_
                                        ((lambda (_%pre194011%_)
                                           (let ((__tmp194463
                                                  (cons _%pre194011%_
                                                        (##structure-ref
                                                         _%hd194005%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp193982%_ __tmp194463)))
                                         _%$e194008%_)
                                        (let ((__tmp194464
                                               (##structure-ref
                                                _%hd194005%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp193982%_ __tmp194464))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194005%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp193982%_ _%rest194004%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194005%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194466
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194465
                                           (##structure-ref
                                            _%hd194005%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194466 __tmp194465))
                                    '#!void
                                    (begin
                                      (let ((__tmp194467
                                             (##structure-ref
                                              _%hd194005%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp193982%_ __tmp194467))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194005%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp193982%_ _%rest194004%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194005%_
                                     'gx#module-import::t))
                                  (let ((__tmp194468
                                         (cons (##direct-structure-ref
                                                _%hd194005%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194004%_)))
                                    (declare (not safe))
                                    (_%lp193982%_ __tmp194468))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194005%_
                                         'gx#module-export::t))
                                      (let ((__tmp194469
                                             (cons (##direct-structure-ref
                                                    _%hd194005%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194004%_)))
                                        (declare (not safe))
                                        (_%lp193982%_ __tmp194469))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194005%_
                                             'gx#import-set::t))
                                          (let ((__tmp194470
                                                 (cons (##direct-structure-ref
                                                        _%hd194005%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194004%_)))
                                            (declare (not safe))
                                            (_%lp193982%_ __tmp194470))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194005%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193985193993%_))
                  (let ((_%hd193990194022%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193985193993%_)))
                        (_%tl193991194024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193985193993%_))))
                    (let* ((_%hd194027%_ _%hd193990194022%_)
                           (_%rest194029%_ _%tl193991194024%_))
                      (declare (not safe))
                      (_%K193989194019%_ _%rest194029%_ _%hd194027%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193958%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193958%_
                    'gx#module-context::t))
                 (let ((__tmp194471
                        (##structure-ref
                         _%ctx193958%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194471)))
            '#!void
            (let* ((_%ht193960%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193962%_
                    (##structure-ref
                     _%ctx193958%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193964%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193960%_ _%id193962%_)))
                   (_%$e193967%_ _%mod193964%_))
              (if _%$e193967%_
                  _%$e193967%_
                  (let* ((_%mod193970%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx193958%_)))
                         (_%val193975%_
                          (let ((_%$e193972%_ _%mod193970%_))
                            (if _%$e193972%_ _%$e193972%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193960%_ _%id193962%_ _%val193975%_))
                    _%val193975%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193956%_)
        (if (##structure-ref _%ctx193956%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194472
                   (##structure-ref
                    _%ctx193956%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194472))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193933%_)
        (letrec ((_%catch-e193935%_
                  (lambda (_%exn193954%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193954%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193954%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193933%_))))
                    '#f))
                 (_%import-e193936%_
                  (lambda ()
                    (let* ((_%str-id193939%_
                            (let ((__tmp194473
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193933%_))))
                              (declare (not safe))
                              (##string-append __tmp194473 '".ssxi")))
                           (_%artefact-path193947%_
                            (let ((_%odir193940193942%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193940193942%_
                                  (let ((_%odir193945%_ _%odir193940193942%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193939%_
                                        '".ss"))
                                     _%odir193945%_))
                                  '#f)))
                           (_%library-path193949%_
                            (let ((__tmp194474
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193939%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194474)))
                           (_%ssxi-path193951%_
                            (if (and _%artefact-path193947%_
                                     (file-exists? _%artefact-path193947%_))
                                _%artefact-path193947%_
                                _%library-path193949%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193951%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193951%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193935%_ _%import-e193936%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193924%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193924%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193924%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193924%_))
        (let* ((_%stx193926%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193924%_)))
               (_%stx193928%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193926%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193928%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193928%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193928%_))
          (let ((_%stx193931%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193928%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193931%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194476 (list gxc#::generate-runtime-empty::t))
            (__tmp194475 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194476
         '()
         __tmp194475
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193921%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193921%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194477
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
        (__make-promise __tmp194477)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193913%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193916%_
                (let ((__obj194448
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194448))
               (__tmp194478
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193916%_ _%stx193913%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194478
           gxc#current-compile-method
           _%self193916%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193873%_ _%stx193874%_)
        (let* ((_%g193876193886%_
                (lambda (_%g193877193883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193877193883%_))))
               (_%g193875193910%_
                (lambda (_%g193877193889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193877193889%_))
                      (let ((_%e193881193891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193877193889%_))))
                        (let ((_%hd193880193894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193881193891%_)))
                              (_%tl193879193896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193881193891%_))))
                          ((lambda (_%L193899%_)
                             (let ((__tmp194481
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193873%_
                                         _%stx193874%_))))
                                   (__tmp194479
                                    (let ((__tmp194480
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194480 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194481
                                gx#current-expander-phi
                                __tmp194479)))
                           _%tl193879193896%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193876193886%_ _%g193877193889%_))))))
          (declare (not safe))
          (_%g193875193910%_ _%stx193874%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193812%_ _%stx193813%_)
        (let* ((_%g193815193829%_
                (lambda (_%g193816193826%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193816193826%_))))
               (_%g193814193870%_
                (lambda (_%g193816193832%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193816193832%_))
                      (let ((_%e193821193834%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193816193832%_))))
                        (let ((_%hd193820193837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193821193834%_)))
                              (_%tl193819193839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193821193834%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193819193839%_))
                              (let ((_%e193824193842%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193819193839%_))))
                                (let ((_%hd193823193845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193824193842%_)))
                                      (_%tl193822193847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193824193842%_))))
                                  ((lambda (_%L193850%_ _%L193851%_)
                                     (let* ((_%ctx193864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193851%_)))
                                            (_%code193866%_
                                             (##structure-ref
                                              _%ctx193864%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194482
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193812%_
                                                  _%code193866%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194482
                                        gx#current-expander-context
                                        _%ctx193864%_)))
                                   _%tl193822193847%_
                                   _%hd193823193845%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193815193829%_ _%g193816193832%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193815193829%_ _%g193816193832%_))))))
          (declare (not safe))
          (_%g193814193870%_ _%stx193813%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193617%_ _%stx193618%_)
        (letrec ((_%generate-e193620%_
                  (lambda (_%id193797%_)
                    (let* ((_%sym193799%_
                            (if (let ((__tmp194483
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194483))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193797%_))
                                '#f))
                           (_%$e193801%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193799%_))))
                      (if _%$e193801%_
                          ((lambda (_%klass193804%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193799%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193799%_
                                                     (cons (let ((__method194449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193804%_ 'typedecl))))
                     (if __method194449
                         (__method194449 _%klass193804%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193804%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193799%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193799%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193801%_)
                          (let ((_%$e193806%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193799%_))))
                            (if _%$e193806%_
                                ((lambda (_%type193809%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193799%_
                                      '" "
                                      _%type193809%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193809%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193799%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193799%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193809%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193799%_
                                                   (cons (let ((__method194450
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193809%_ 'typedecl))))
                   (if __method194450
                       (__method194450 _%type193809%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193809%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193806%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194061194062%_ _%stx193618%_)
                 (_%g193623193661%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194061194062%_)))))
            (let ((_%__kont194063194064%_
                   (lambda (_%L193779%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193620%_ _%L193779%_))))
                  (_%__kont194065194066%_
                   (lambda (_%L193714%_)
                     (let ((_%types193740%_
                            (map _%generate-e193620%_
                                 (let ((__tmp194484
                                        (lambda (_%g193732193735%_
                                                 _%g193733193737%_)
                                          (cons _%g193732193735%_
                                                _%g193733193737%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194484 '() _%L193714%_)))))
                       (cons 'begin _%types193740%_)))))
              (let ((_%__match194116194117%_
                     (lambda (_%e193641193666%_
                              _%hd193640193669%_
                              _%tl193639193671%_
                              _%e193644193674%_
                              _%hd193643193677%_
                              _%tl193642193679%_
                              _%__splice194067194068%_
                              _%target193645193682%_
                              _%tl193647193684%_)
                       (letrec ((_%loop193648193687%_
                                 (lambda (_%hd193646193690%_
                                          _%id193652193692%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193646193690%_))
                                       (let ((_%e193649193695%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193646193690%_))))
                                         (let ((_%lp-tl193651193700%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193649193695%_)))
                                               (_%lp-hd193650193698%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193649193695%_))))
                                           (let ((__tmp194485
                                                  (cons _%lp-hd193650193698%_
                                                        _%id193652193692%_)))
                                             (declare (not safe))
                                             (_%loop193648193687%_
                                              _%lp-tl193651193700%_
                                              __tmp194485))))
                                       (let ((_%id193653193703%_
                                              (reverse _%id193652193692%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193642193679%_))
                                             (let ((_%e193656193706%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193642193679%_))))
                                               (let ((_%tl193654193711%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193656193706%_)))
                                                     (_%hd193655193709%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193656193706%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193654193711%_))
                                                     (_%__kont194065194066%_
                                                      _%id193653193703%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193623193661%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193623193661%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193648193687%_
                            _%target193645193682%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194061194062%_))
                    (let ((_%e193628193747%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194061194062%_))))
                      (let ((_%tl193626193752%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193628193747%_)))
                            (_%hd193627193750%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193628193747%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193626193752%_))
                            (let ((_%e193631193755%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193626193752%_))))
                              (let ((_%tl193629193760%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193631193755%_)))
                                    (_%hd193630193758%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193631193755%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193630193758%_))
                                    (let ((_%e193634193763%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193630193758%_))))
                                      (let ((_%tl193632193768%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193634193763%_)))
                                            (_%hd193633193766%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193634193763%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193632193768%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193629193760%_))
                                                (let ((_%e193637193771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193629193760%_))))
                                                  (let ((_%tl193635193776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193637193771%_)))
                                                        (_%hd193636193774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193637193771%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193635193776%_))
                                                        (_%__kont194063194064%_
                                                         _%hd193633193766%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193630193758%_))
                                                            (let ((_%__splice194067194068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193630193758%_ '0))))
                      (let ((_%tl193647193684%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194067194068%_ '1)))
                            (_%target193645193682%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194067194068%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193647193684%_))
                            (_%__match194116194117%_
                             _%e193628193747%_
                             _%hd193627193750%_
                             _%tl193626193752%_
                             _%e193631193755%_
                             _%hd193630193758%_
                             _%tl193629193760%_
                             _%__splice194067194068%_
                             _%target193645193682%_
                             _%tl193647193684%_)
                            (let ()
                              (declare (not safe))
                              (_%g193623193661%_)))))
                    (let () (declare (not safe)) (_%g193623193661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193630193758%_))
                                                    (let ((_%__splice194067194068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193630193758%_
                                                              '0))))
                                                      (let ((_%tl193647193684%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194067194068%_ '1)))
                    (_%target193645193682%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194067194068%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193647193684%_))
                    (_%__match194116194117%_
                     _%e193628193747%_
                     _%hd193627193750%_
                     _%tl193626193752%_
                     _%e193631193755%_
                     _%hd193630193758%_
                     _%tl193629193760%_
                     _%__splice194067194068%_
                     _%target193645193682%_
                     _%tl193647193684%_)
                    (let () (declare (not safe)) (_%g193623193661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193623193661%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193630193758%_))
                                                (let ((_%__splice194067194068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193630193758%_
                                                          '0))))
                                                  (let ((_%tl193647193684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194067194068%_
                                                            '1)))
                                                        (_%target193645193682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194067194068%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193647193684%_))
                                                        (_%__match194116194117%_
                                                         _%e193628193747%_
                                                         _%hd193627193750%_
                                                         _%tl193626193752%_
                                                         _%e193631193755%_
                                                         _%hd193630193758%_
                                                         _%tl193629193760%_
                                                         _%__splice194067194068%_
                                                         _%target193645193682%_
                                                         _%tl193647193684%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193623193661%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193623193661%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193630193758%_))
                                        (let ((_%__splice194067194068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193630193758%_
                                                  '0))))
                                          (let ((_%tl193647193684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194067194068%_
                                                    '1)))
                                                (_%target193645193682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194067194068%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193647193684%_))
                                                (_%__match194116194117%_
                                                 _%e193628193747%_
                                                 _%hd193627193750%_
                                                 _%tl193626193752%_
                                                 _%e193631193755%_
                                                 _%hd193630193758%_
                                                 _%tl193629193760%_
                                                 _%__splice194067194068%_
                                                 _%target193645193682%_
                                                 _%tl193647193684%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193623193661%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193623193661%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193623193661%_)))))
                    (let () (declare (not safe)) (_%g193623193661%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193170%_ _%stx193171%_)
        (let* ((_%__stx194119194120%_ _%stx193171%_)
               (_%g193175193277%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194119194120%_)))))
          (let ((_%__kont194121194122%_
                 (lambda (_%L193567%_
                          _%L193568%_
                          _%L193569%_
                          _%L193570%_
                          _%L193571%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193570%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193569%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193568%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193567%_))
                                                 '())))))))
                (_%__kont194123194124%_
                 (lambda (_%L193393%_ _%L193394%_ _%L193395%_ _%L193396%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193395%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193394%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193393%_))
                                           (cons '#f '())))))))
                (_%__kont194125194126%_ (lambda () '(begin))))
            (let ((_%__match194254194255%_
                   (lambda (_%e193184193439%_
                            _%hd193183193442%_
                            _%tl193182193444%_
                            _%e193187193447%_
                            _%hd193186193450%_
                            _%tl193185193452%_
                            _%e193190193455%_
                            _%hd193189193458%_
                            _%tl193188193460%_
                            _%e193193193463%_
                            _%hd193192193466%_
                            _%tl193191193468%_
                            _%e193196193471%_
                            _%hd193195193474%_
                            _%tl193194193476%_
                            _%e193199193479%_
                            _%hd193198193482%_
                            _%tl193197193484%_
                            _%e193202193487%_
                            _%hd193201193490%_
                            _%tl193200193492%_
                            _%e193205193495%_
                            _%hd193204193498%_
                            _%tl193203193500%_
                            _%e193208193503%_
                            _%hd193207193506%_
                            _%tl193206193508%_
                            _%e193211193511%_
                            _%hd193210193514%_
                            _%tl193209193516%_
                            _%e193214193519%_
                            _%hd193213193522%_
                            _%tl193212193524%_
                            _%e193217193527%_
                            _%hd193216193530%_
                            _%tl193215193532%_
                            _%e193220193535%_
                            _%hd193219193538%_
                            _%tl193218193540%_
                            _%e193223193543%_
                            _%hd193222193546%_
                            _%tl193221193548%_
                            _%e193226193551%_
                            _%hd193225193554%_
                            _%tl193224193556%_
                            _%e193229193559%_
                            _%hd193228193562%_
                            _%tl193227193564%_)
                     (let ((_%L193567%_ _%hd193228193562%_)
                           (_%L193568%_ _%hd193219193538%_)
                           (_%L193569%_ _%hd193210193514%_)
                           (_%L193570%_ _%hd193201193490%_)
                           (_%L193571%_ _%hd193192193466%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193571%_
                              'bind-method!))
                           (_%__kont194121194122%_
                            _%L193567%_
                            _%L193568%_
                            _%L193569%_
                            _%L193570%_
                            _%L193571%_)
                           (_%__kont194125194126%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194119194120%_))
                  (let ((_%e193184193439%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194119194120%_))))
                    (let ((_%tl193182193444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193184193439%_)))
                          (_%hd193183193442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193184193439%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193182193444%_))
                          (let ((_%e193187193447%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193182193444%_))))
                            (let ((_%tl193185193452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193187193447%_)))
                                  (_%hd193186193450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193187193447%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193186193450%_))
                                  (let ((_%e193190193455%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193186193450%_))))
                                    (let ((_%tl193188193460%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193190193455%_)))
                                          (_%hd193189193458%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193190193455%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193189193458%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193189193458%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193188193460%_))
                                                  (let ((_%e193193193463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193188193460%_))))
                                                    (let ((_%tl193191193468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193193193463%_)))
                                                          (_%hd193192193466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193193193463%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193191193468%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193185193452%_))
                      (let ((_%e193196193471%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193185193452%_))))
                        (let ((_%tl193194193476%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193196193471%_)))
                              (_%hd193195193474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193196193471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193195193474%_))
                              (let ((_%e193199193479%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193195193474%_))))
                                (let ((_%tl193197193484%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193199193479%_)))
                                      (_%hd193198193482%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193199193479%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193198193482%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193198193482%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193197193484%_))
                                              (let ((_%e193202193487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193197193484%_))))
                                                (let ((_%tl193200193492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193202193487%_)))
                                                      (_%hd193201193490%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193202193487%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193200193492%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193194193476%_))
                                                          (let ((_%e193205193495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193194193476%_))))
                    (let ((_%tl193203193500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193205193495%_)))
                          (_%hd193204193498%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193205193495%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193204193498%_))
                          (let ((_%e193208193503%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193204193498%_))))
                            (let ((_%tl193206193508%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193208193503%_)))
                                  (_%hd193207193506%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193208193503%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193207193506%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193207193506%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193206193508%_))
                                          (let ((_%e193211193511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193206193508%_))))
                                            (let ((_%tl193209193516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193211193511%_)))
                                                  (_%hd193210193514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193211193511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193209193516%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193203193500%_))
                                                      (let ((_%e193214193519%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193203193500%_))))
                (let ((_%tl193212193524%_
                       (let () (declare (not safe)) (##cdr _%e193214193519%_)))
                      (_%hd193213193522%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193214193519%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193213193522%_))
                      (let ((_%e193217193527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193213193522%_))))
                        (let ((_%tl193215193532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193217193527%_)))
                              (_%hd193216193530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193217193527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193216193530%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193216193530%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193215193532%_))
                                      (let ((_%e193220193535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193215193532%_))))
                                        (let ((_%tl193218193540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193220193535%_)))
                                              (_%hd193219193538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193220193535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193218193540%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193212193524%_))
                                                  (let ((_%e193223193543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193212193524%_))))
                                                    (let ((_%tl193221193548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193223193543%_)))
                                                          (_%hd193222193546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193223193543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193222193546%_))
                                                          (let ((_%e193226193551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193222193546%_))))
                    (let ((_%tl193224193556%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193226193551%_)))
                          (_%hd193225193554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193226193551%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193225193554%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193225193554%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193224193556%_))
                                  (let ((_%e193229193559%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193224193556%_))))
                                    (let ((_%tl193227193564%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193229193559%_)))
                                          (_%hd193228193562%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193229193559%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193227193564%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193221193548%_))
                                              (_%__match194254194255%_
                                               _%e193184193439%_
                                               _%hd193183193442%_
                                               _%tl193182193444%_
                                               _%e193187193447%_
                                               _%hd193186193450%_
                                               _%tl193185193452%_
                                               _%e193190193455%_
                                               _%hd193189193458%_
                                               _%tl193188193460%_
                                               _%e193193193463%_
                                               _%hd193192193466%_
                                               _%tl193191193468%_
                                               _%e193196193471%_
                                               _%hd193195193474%_
                                               _%tl193194193476%_
                                               _%e193199193479%_
                                               _%hd193198193482%_
                                               _%tl193197193484%_
                                               _%e193202193487%_
                                               _%hd193201193490%_
                                               _%tl193200193492%_
                                               _%e193205193495%_
                                               _%hd193204193498%_
                                               _%tl193203193500%_
                                               _%e193208193503%_
                                               _%hd193207193506%_
                                               _%tl193206193508%_
                                               _%e193211193511%_
                                               _%hd193210193514%_
                                               _%tl193209193516%_
                                               _%e193214193519%_
                                               _%hd193213193522%_
                                               _%tl193212193524%_
                                               _%e193217193527%_
                                               _%hd193216193530%_
                                               _%tl193215193532%_
                                               _%e193220193535%_
                                               _%hd193219193538%_
                                               _%tl193218193540%_
                                               _%e193223193543%_
                                               _%hd193222193546%_
                                               _%tl193221193548%_
                                               _%e193226193551%_
                                               _%hd193225193554%_
                                               _%tl193224193556%_
                                               _%e193229193559%_
                                               _%hd193228193562%_
                                               _%tl193227193564%_)
                                              (_%__kont194125194126%_))
                                          (_%__kont194125194126%_))))
                                  (_%__kont194125194126%_))
                              (_%__kont194125194126%_))
                          (_%__kont194125194126%_))))
                  (_%__kont194125194126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193212193524%_))
                                                      (if (let ((__tmp194486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194486 'bind-method!))
                  (let ((_%L193393%_ _%hd193219193538%_)
                        (_%L193394%_ _%hd193210193514%_)
                        (_%L193395%_ _%hd193201193490%_)
                        (_%L193396%_ _%hd193192193466%_))
                    (_%__kont194123194124%_
                     _%L193393%_
                     _%L193394%_
                     _%L193395%_
                     _%L193396%_))
                  (_%__kont194125194126%_))
              (_%__kont194125194126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194125194126%_))))
                                      (_%__kont194125194126%_))
                                  (_%__kont194125194126%_))
                              (_%__kont194125194126%_))))
                      (_%__kont194125194126%_))))
              (_%__kont194125194126%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194125194126%_))))
                                          (_%__kont194125194126%_))
                                      (_%__kont194125194126%_))
                                  (_%__kont194125194126%_))))
                          (_%__kont194125194126%_))))
                  (_%__kont194125194126%_))
              (_%__kont194125194126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194125194126%_))
                                          (_%__kont194125194126%_))
                                      (_%__kont194125194126%_))))
                              (_%__kont194125194126%_))))
                      (_%__kont194125194126%_))
                  (_%__kont194125194126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194125194126%_))
                                              (_%__kont194125194126%_))
                                          (_%__kont194125194126%_))))
                                  (_%__kont194125194126%_))))
                          (_%__kont194125194126%_))))
                  (_%__kont194125194126%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192994%_ _%stx192995%_)
        (let* ((_%__stx194363194364%_ _%stx192995%_)
               (_%g192998193038%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194363194364%_)))))
          (let ((_%__kont194365194366%_
                 (lambda (_%L193144%_ _%L193145%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193145%_))
                               (cons _%L193144%_ '())))))
                (_%__kont194367194368%_
                 (lambda (_%L193067%_ _%L193068%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194363194364%_))
                (let ((_%e193004193088%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194363194364%_))))
                  (let ((_%tl193002193093%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193004193088%_)))
                        (_%hd193003193091%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193004193088%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193002193093%_))
                        (let ((_%e193007193096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193002193093%_))))
                          (let ((_%tl193005193101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193007193096%_)))
                                (_%hd193006193099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193007193096%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193006193099%_))
                                (let ((_%e193010193104%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193006193099%_))))
                                  (let ((_%tl193008193109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193010193104%_)))
                                        (_%hd193009193107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193010193104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193009193107%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193009193107%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193008193109%_))
                                                (let ((_%e193013193112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193008193109%_))))
                                                  (let ((_%tl193011193117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193013193112%_)))
                                                        (_%hd193012193115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193013193112%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193011193117%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193005193101%_))
                                                            (let ((_%e193016193120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193005193101%_))))
                      (let ((_%tl193014193125%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193016193120%_)))
                            (_%hd193015193123%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193016193120%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193015193123%_))
                            (let ((_%e193019193128%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193015193123%_))))
                              (let ((_%tl193017193133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193019193128%_)))
                                    (_%hd193018193131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193019193128%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193018193131%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193018193131%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193017193133%_))
                                            (let ((_%e193022193136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193017193133%_))))
                                              (let ((_%tl193020193141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193022193136%_)))
                                                    (_%hd193021193139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193022193136%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193020193141%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193014193125%_))
                                                        (_%__kont194365194366%_
                                                         _%hd193021193139%_
                                                         _%hd193012193115%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192998193038%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193014193125%_))
                                                        (_%__kont194367194368%_
                                                         _%hd193015193123%_
                                                         _%hd193006193099%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192998193038%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193014193125%_))
                                                (_%__kont194367194368%_
                                                 _%hd193015193123%_
                                                 _%hd193006193099%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192998193038%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193014193125%_))
                                            (_%__kont194367194368%_
                                             _%hd193015193123%_
                                             _%hd193006193099%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192998193038%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193014193125%_))
                                        (_%__kont194367194368%_
                                         _%hd193015193123%_
                                         _%hd193006193099%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192998193038%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193014193125%_))
                                (_%__kont194367194368%_
                                 _%hd193015193123%_
                                 _%hd193006193099%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192998193038%_))))))
                    (let () (declare (not safe)) (_%g192998193038%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193005193101%_))
                    (let ((_%e193033193059%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193005193101%_))))
                      (let ((_%tl193031193064%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193033193059%_)))
                            (_%hd193032193062%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193033193059%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193031193064%_))
                            (_%__kont194367194368%_
                             _%hd193032193062%_
                             _%hd193006193099%_)
                            (let ()
                              (declare (not safe))
                              (_%g192998193038%_)))))
                    (let () (declare (not safe)) (_%g192998193038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193005193101%_))
                                                    (let ((_%e193033193059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193005193101%_))))
                                                      (let ((_%tl193031193064%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193033193059%_)))
                    (_%hd193032193062%_
                     (let () (declare (not safe)) (##car _%e193033193059%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193031193064%_))
                    (_%__kont194367194368%_
                     _%hd193032193062%_
                     _%hd193006193099%_)
                    (let () (declare (not safe)) (_%g192998193038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192998193038%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193005193101%_))
                                                (let ((_%e193033193059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193005193101%_))))
                                                  (let ((_%tl193031193064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193033193059%_)))
                                                        (_%hd193032193062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193033193059%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193031193064%_))
                                                        (_%__kont194367194368%_
                                                         _%hd193032193062%_
                                                         _%hd193006193099%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192998193038%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192998193038%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193005193101%_))
                                            (let ((_%e193033193059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193005193101%_))))
                                              (let ((_%tl193031193064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193033193059%_)))
                                                    (_%hd193032193062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193033193059%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193031193064%_))
                                                    (_%__kont194367194368%_
                                                     _%hd193032193062%_
                                                     _%hd193006193099%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192998193038%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192998193038%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193005193101%_))
                                    (let ((_%e193033193059%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193005193101%_))))
                                      (let ((_%tl193031193064%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193033193059%_)))
                                            (_%hd193032193062%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193033193059%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193031193064%_))
                                            (_%__kont194367194368%_
                                             _%hd193032193062%_
                                             _%hd193006193099%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192998193038%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192998193038%_))))))
                        (let () (declare (not safe)) (_%g192998193038%_)))))
                (let () (declare (not safe)) (_%g192998193038%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192981%_)
        (let ((_%self192984%_ _%self192981%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192984%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192754%_)
        (let ((_%self192757%_ _%self192754%_))
          (let* ((_%self192766192782%_ _%self192757%_)
                 (_%E192768192786%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192766192782%_
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
                 (_%K192769192801%_
                  (lambda (_%methods192789%_
                           _%metaclass192790%_
                           _%system?192791%_
                           _%final?192792%_
                           _%struct?192793%_
                           _%constructor192794%_
                           _%fields192795%_
                           _%slots192796%_
                           _%precendence-list192797%_
                           _%super192798%_
                           _%id192799%_)
                    (cons '@class
                          (cons _%id192799%_
                                (cons _%super192798%_
                                      (cons _%precendence-list192797%_
                                            (cons _%slots192796%_
                                                  (cons _%fields192795%_
                                                        (cons _%constructor192794%_
                                                              (cons _%struct?192793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192792%_
                                  (cons _%system?192791%_
                                        (cons _%metaclass192790%_
                                              (cons (if _%methods192789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192789%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192770192804%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '1
                           '#f
                           '#f)))
                       (_%id192807%_ _%e192770192804%_)
                       (_%e192771192809%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '2
                           '#f
                           '#f)))
                       (_%super192812%_ _%e192771192809%_)
                       (_%e192772192814%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192817%_ _%e192772192814%_)
                       (_%e192773192819%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192822%_ _%e192773192819%_)
                       (_%e192774192824%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192827%_ _%e192774192824%_)
                       (_%e192775192829%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192832%_ _%e192775192829%_)
                       (_%e192776192834%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192837%_ _%e192776192834%_)
                       (_%e192777192839%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192842%_ _%e192777192839%_)
                       (_%e192778192844%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192847%_ _%e192778192844%_)
                       (_%e192779192849%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192852%_ _%e192779192849%_)
                       (_%e192780192854%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192766192782%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192857%_ _%e192780192854%_))
                  (declare (not safe))
                  (_%K192769192801%_
                   _%methods192857%_
                   _%metaclass192852%_
                   _%system?192847%_
                   _%final?192842%_
                   _%struct?192837%_
                   _%constructor192832%_
                   _%fields192827%_
                   _%slots192822%_
                   _%precendence-list192817%_
                   _%super192812%_
                   _%id192807%_))
                (let () (declare (not safe)) (_%E192768192786%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192619%_)
        (let ((_%self192622%_ _%self192619%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192622%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192484%_)
        (let ((_%self192487%_ _%self192484%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192487%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192349%_)
        (let ((_%self192352%_ _%self192349%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192352%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192352%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192352%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192214%_)
        (let ((_%self192217%_ _%self192214%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192217%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192217%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192217%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192079%_)
        (let ((_%self192082%_ _%self192079%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192082%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192082%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self191892%_)
        (let ((_%self191895%_ _%self191892%_))
          (let* ((_%self191904191913%_ _%self191895%_)
                 (_%E191906191917%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191904191913%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191907191936%_
                  (lambda (_%dispatch191920%_
                           _%arity191921%_
                           _%signature191922%_)
                    (if _%signature191922%_
                        (let ((_%signature191924%_ _%signature191922%_))
                          (cons '@lambda
                                (cons _%arity191921%_
                                      (cons _%dispatch191920%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature191924%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature191924%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature191924%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature191924%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity191921%_
                                    (cons _%dispatch191920%_ '())))))))
            (if '#t
                (let* ((_%e191908191939%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191904191913%_
                           '1
                           '#f
                           '#f)))
                       (_%e191909191942%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191904191913%_
                           '2
                           '#f
                           '#f)))
                       (_%signature191945%_ _%e191909191942%_)
                       (_%e191910191947%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191904191913%_
                           '3
                           '#f
                           '#f)))
                       (_%arity191950%_ _%e191910191947%_)
                       (_%e191911191952%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191904191913%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch191955%_ _%e191911191952%_))
                  (declare (not safe))
                  (_%K191907191936%_
                   _%dispatch191955%_
                   _%arity191950%_
                   _%signature191945%_))
                (let () (declare (not safe)) (_%E191906191917%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191753%_)
        (let ((_%self191756%_ _%self191753%_))
          (letrec ((_%clause-e191766%_
                    (lambda (_%clause191768%_)
                      (cdr (let ((__method194451
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191768%_
                                     'typedecl))))
                             (if __method194451
                                 (__method194451 _%clause191768%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191768%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191766%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191756%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self191618%_)
        (let ((_%self191621%_ _%self191618%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191621%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191621%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self191483%_)
        (let ((_%self191486%_ _%self191483%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191486%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191486%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self191348%_)
        (let ((_%self191351%_ _%self191348%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191351%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
