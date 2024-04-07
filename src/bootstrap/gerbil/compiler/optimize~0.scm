(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712507496)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194453
                   (let ((__obj194447
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194447)
                     __obj194447)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194453)))))
    (define gxc#optimize!
      (lambda (_%ctx194056%_)
        (let ((__tmp194456
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx194056%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx194056%_))
                 (let ((__tmp194458
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194457
                        (##structure-ref
                         _%ctx194056%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194458 __tmp194457 '#t))
                 (let ((_%code194059%_
                        (let ((__tmp194459
                               (##structure-ref
                                _%ctx194056%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp194459))))
                   (##structure-set!
                    _%ctx194056%_
                    _%code194059%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194455 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194454 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194456
           gxc#current-compile-mutators
           __tmp194455
           gxc#current-compile-local-type
           __tmp194454))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194042%_)
        (letrec ((_%load-it!194044%_
                  (lambda (_%id194054%_)
                    (if (let ((__tmp194460
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194460 _%id194054%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id194054%_))
                          (let ((__tmp194461
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194461 _%id194054%_ '#t)))))))
          (let* ((_%modid194046%_
                  (##structure-ref
                   _%ctx194042%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194048%_ (symbol->string _%modid194046%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194048%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194048%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194044%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194044%_
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
      (lambda (_%ctx193979%_)
        (letrec* ((_%deps193981%_
                   (let* ((_%imports194032%_
                           (##structure-ref
                            _%ctx193979%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194034%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193979%_))))
                     (if _%$e194034%_
                         ((lambda (_%g194036194038%_)
                            (cons _%g194036194038%_ _%imports194032%_))
                          _%$e194034%_)
                         (let () _%imports194032%_)))))
          (let _%lp193983%_ ((_%rest193985%_ _%deps193981%_))
            (let* ((_%rest193986193994%_ _%rest193985%_)
                   (_%else193988194002%_ (lambda () '#!void))
                   (_%K193990194020%_
                    (lambda (_%rest194005%_ _%hd194006%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194006%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194463
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194462
                                       (##structure-ref
                                        _%hd194006%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194463 __tmp194462))
                                '#!void
                                (begin
                                  (let ((_%$e194009%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194006%_))))
                                    (if _%$e194009%_
                                        ((lambda (_%pre194012%_)
                                           (let ((__tmp194464
                                                  (cons _%pre194012%_
                                                        (##structure-ref
                                                         _%hd194006%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp193983%_ __tmp194464)))
                                         _%$e194009%_)
                                        (let ((__tmp194465
                                               (##structure-ref
                                                _%hd194006%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp193983%_ __tmp194465))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd194006%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp193983%_ _%rest194005%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194006%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194467
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194466
                                           (##structure-ref
                                            _%hd194006%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194467 __tmp194466))
                                    '#!void
                                    (begin
                                      (let ((__tmp194468
                                             (##structure-ref
                                              _%hd194006%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp193983%_ __tmp194468))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd194006%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp193983%_ _%rest194005%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194006%_
                                     'gx#module-import::t))
                                  (let ((__tmp194469
                                         (cons (##direct-structure-ref
                                                _%hd194006%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest194005%_)))
                                    (declare (not safe))
                                    (_%lp193983%_ __tmp194469))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194006%_
                                         'gx#module-export::t))
                                      (let ((__tmp194470
                                             (cons (##direct-structure-ref
                                                    _%hd194006%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest194005%_)))
                                        (declare (not safe))
                                        (_%lp193983%_ __tmp194470))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194006%_
                                             'gx#import-set::t))
                                          (let ((__tmp194471
                                                 (cons (##direct-structure-ref
                                                        _%hd194006%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest194005%_)))
                                            (declare (not safe))
                                            (_%lp193983%_ __tmp194471))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194006%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193986193994%_))
                  (let ((_%hd193991194023%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193986193994%_)))
                        (_%tl193992194025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193986193994%_))))
                    (let* ((_%hd194028%_ _%hd193991194023%_)
                           (_%rest194030%_ _%tl193992194025%_))
                      (declare (not safe))
                      (_%K193990194020%_ _%rest194030%_ _%hd194028%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193959%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193959%_
                    'gx#module-context::t))
                 (let ((__tmp194472
                        (##structure-ref
                         _%ctx193959%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp194472)))
            '#!void
            (let* ((_%ht193961%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193963%_
                    (##structure-ref
                     _%ctx193959%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193965%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193961%_ _%id193963%_)))
                   (_%$e193968%_ _%mod193965%_))
              (if _%$e193968%_
                  _%$e193968%_
                  (let* ((_%mod193971%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx193959%_)))
                         (_%val193976%_
                          (let ((_%$e193973%_ _%mod193971%_))
                            (if _%$e193973%_ _%$e193973%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193961%_ _%id193963%_ _%val193976%_))
                    _%val193976%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193957%_)
        (if (##structure-ref _%ctx193957%_ '1 gx#expander-context::t '#f)
            (let ((__tmp194473
                   (##structure-ref
                    _%ctx193957%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp194473))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193934%_)
        (letrec ((_%catch-e193936%_
                  (lambda (_%exn193955%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193955%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193955%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193934%_))))
                    '#f))
                 (_%import-e193937%_
                  (lambda ()
                    (let* ((_%str-id193940%_
                            (let ((__tmp194474
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193934%_))))
                              (declare (not safe))
                              (##string-append __tmp194474 '".ssxi")))
                           (_%artefact-path193948%_
                            (let ((_%odir193941193943%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193941193943%_
                                  (let ((_%odir193946%_ _%odir193941193943%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193940%_
                                        '".ss"))
                                     _%odir193946%_))
                                  '#f)))
                           (_%library-path193950%_
                            (let ((__tmp194475
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193940%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194475)))
                           (_%ssxi-path193952%_
                            (if (and _%artefact-path193948%_
                                     (file-exists? _%artefact-path193948%_))
                                _%artefact-path193948%_
                                _%library-path193950%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193952%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193952%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193936%_ _%import-e193937%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193925%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193925%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193925%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193925%_))
        (let* ((_%stx193927%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193925%_)))
               (_%stx193929%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193927%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193929%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193929%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193929%_))
          (let ((_%stx193932%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193929%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193932%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194477 (list gxc#::generate-runtime-empty::t))
            (__tmp194476 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194477
         '()
         __tmp194476
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193922%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193922%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194478
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
        (__make-promise __tmp194478)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193914%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193917%_
                (let ((__obj194449
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194449))
               (__tmp194479
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193917%_ _%stx193914%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194479
           gxc#current-compile-method
           _%self193917%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193874%_ _%stx193875%_)
        (let* ((_%g193877193887%_
                (lambda (_%g193878193884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193878193884%_))))
               (_%g193876193911%_
                (lambda (_%g193878193890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193878193890%_))
                      (let ((_%e193882193892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193878193890%_))))
                        (let ((_%hd193881193895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193882193892%_)))
                              (_%tl193880193897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193882193892%_))))
                          ((lambda (_%L193900%_)
                             (let ((__tmp194482
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193874%_
                                         _%stx193875%_))))
                                   (__tmp194480
                                    (let ((__tmp194481
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194481 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194482
                                gx#current-expander-phi
                                __tmp194480)))
                           _%tl193880193897%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193877193887%_ _%g193878193890%_))))))
          (declare (not safe))
          (_%g193876193911%_ _%stx193875%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193813%_ _%stx193814%_)
        (let* ((_%g193816193830%_
                (lambda (_%g193817193827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193817193827%_))))
               (_%g193815193871%_
                (lambda (_%g193817193833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193817193833%_))
                      (let ((_%e193822193835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193817193833%_))))
                        (let ((_%hd193821193838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193822193835%_)))
                              (_%tl193820193840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193822193835%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193820193840%_))
                              (let ((_%e193825193843%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193820193840%_))))
                                (let ((_%hd193824193846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193825193843%_)))
                                      (_%tl193823193848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193825193843%_))))
                                  ((lambda (_%L193851%_ _%L193852%_)
                                     (let* ((_%ctx193865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193852%_)))
                                            (_%code193867%_
                                             (##structure-ref
                                              _%ctx193865%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194483
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193813%_
                                                  _%code193867%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194483
                                        gx#current-expander-context
                                        _%ctx193865%_)))
                                   _%tl193823193848%_
                                   _%hd193824193846%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193816193830%_ _%g193817193833%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193816193830%_ _%g193817193833%_))))))
          (declare (not safe))
          (_%g193815193871%_ _%stx193814%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193618%_ _%stx193619%_)
        (letrec ((_%generate-e193621%_
                  (lambda (_%id193798%_)
                    (let* ((_%sym193800%_
                            (if (let ((__tmp194484
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194484))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193798%_))
                                '#f))
                           (_%$e193802%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193800%_))))
                      (if _%$e193802%_
                          ((lambda (_%klass193805%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193800%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193800%_
                                                     (cons (let ((__method194450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193805%_ 'typedecl))))
                     (if __method194450
                         (__method194450 _%klass193805%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193805%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193800%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193800%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193802%_)
                          (let ((_%$e193807%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193800%_))))
                            (if _%$e193807%_
                                ((lambda (_%type193810%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193800%_
                                      '" "
                                      _%type193810%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193810%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193800%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193800%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193810%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193800%_
                                                   (cons (let ((__method194451
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193810%_ 'typedecl))))
                   (if __method194451
                       (__method194451 _%type193810%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193810%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193807%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx194062194063%_ _%stx193619%_)
                 (_%g193624193662%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194062194063%_)))))
            (let ((_%__kont194064194065%_
                   (lambda (_%L193780%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e193621%_ _%L193780%_))))
                  (_%__kont194066194067%_
                   (lambda (_%L193715%_)
                     (let ((_%types193741%_
                            (map _%generate-e193621%_
                                 (let ((__tmp194485
                                        (lambda (_%g193733193736%_
                                                 _%g193734193738%_)
                                          (cons _%g193733193736%_
                                                _%g193734193738%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194485 '() _%L193715%_)))))
                       (cons 'begin _%types193741%_)))))
              (let ((_%__match194117194118%_
                     (lambda (_%e193642193667%_
                              _%hd193641193670%_
                              _%tl193640193672%_
                              _%e193645193675%_
                              _%hd193644193678%_
                              _%tl193643193680%_
                              _%__splice194068194069%_
                              _%target193646193683%_
                              _%tl193648193685%_)
                       (letrec ((_%loop193649193688%_
                                 (lambda (_%hd193647193691%_
                                          _%id193653193693%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193647193691%_))
                                       (let ((_%e193650193696%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193647193691%_))))
                                         (let ((_%lp-tl193652193701%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193650193696%_)))
                                               (_%lp-hd193651193699%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193650193696%_))))
                                           (let ((__tmp194486
                                                  (cons _%lp-hd193651193699%_
                                                        _%id193653193693%_)))
                                             (declare (not safe))
                                             (_%loop193649193688%_
                                              _%lp-tl193652193701%_
                                              __tmp194486))))
                                       (let ((_%id193654193704%_
                                              (reverse _%id193653193693%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193643193680%_))
                                             (let ((_%e193657193707%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193643193680%_))))
                                               (let ((_%tl193655193712%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193657193707%_)))
                                                     (_%hd193656193710%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193657193707%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193655193712%_))
                                                     (_%__kont194066194067%_
                                                      _%id193654193704%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193624193662%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193624193662%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop193649193688%_
                            _%target193646193683%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194062194063%_))
                    (let ((_%e193629193748%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194062194063%_))))
                      (let ((_%tl193627193753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193629193748%_)))
                            (_%hd193628193751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193629193748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193627193753%_))
                            (let ((_%e193632193756%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193627193753%_))))
                              (let ((_%tl193630193761%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193632193756%_)))
                                    (_%hd193631193759%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193632193756%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193631193759%_))
                                    (let ((_%e193635193764%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193631193759%_))))
                                      (let ((_%tl193633193769%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193635193764%_)))
                                            (_%hd193634193767%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193635193764%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193633193769%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193630193761%_))
                                                (let ((_%e193638193772%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193630193761%_))))
                                                  (let ((_%tl193636193777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193638193772%_)))
                                                        (_%hd193637193775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193638193772%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193636193777%_))
                                                        (_%__kont194064194065%_
                                                         _%hd193634193767%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193631193759%_))
                                                            (let ((_%__splice194068194069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193631193759%_ '0))))
                      (let ((_%tl193648193685%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194068194069%_ '1)))
                            (_%target193646193683%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194068194069%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193648193685%_))
                            (_%__match194117194118%_
                             _%e193629193748%_
                             _%hd193628193751%_
                             _%tl193627193753%_
                             _%e193632193756%_
                             _%hd193631193759%_
                             _%tl193630193761%_
                             _%__splice194068194069%_
                             _%target193646193683%_
                             _%tl193648193685%_)
                            (let ()
                              (declare (not safe))
                              (_%g193624193662%_)))))
                    (let () (declare (not safe)) (_%g193624193662%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193631193759%_))
                                                    (let ((_%__splice194068194069%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193631193759%_
                                                              '0))))
                                                      (let ((_%tl193648193685%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194068194069%_ '1)))
                    (_%target193646193683%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194068194069%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193648193685%_))
                    (_%__match194117194118%_
                     _%e193629193748%_
                     _%hd193628193751%_
                     _%tl193627193753%_
                     _%e193632193756%_
                     _%hd193631193759%_
                     _%tl193630193761%_
                     _%__splice194068194069%_
                     _%target193646193683%_
                     _%tl193648193685%_)
                    (let () (declare (not safe)) (_%g193624193662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193624193662%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193631193759%_))
                                                (let ((_%__splice194068194069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193631193759%_
                                                          '0))))
                                                  (let ((_%tl193648193685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194068194069%_
                                                            '1)))
                                                        (_%target193646193683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194068194069%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193648193685%_))
                                                        (_%__match194117194118%_
                                                         _%e193629193748%_
                                                         _%hd193628193751%_
                                                         _%tl193627193753%_
                                                         _%e193632193756%_
                                                         _%hd193631193759%_
                                                         _%tl193630193761%_
                                                         _%__splice194068194069%_
                                                         _%target193646193683%_
                                                         _%tl193648193685%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193624193662%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193624193662%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193631193759%_))
                                        (let ((_%__splice194068194069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193631193759%_
                                                  '0))))
                                          (let ((_%tl193648193685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194068194069%_
                                                    '1)))
                                                (_%target193646193683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194068194069%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193648193685%_))
                                                (_%__match194117194118%_
                                                 _%e193629193748%_
                                                 _%hd193628193751%_
                                                 _%tl193627193753%_
                                                 _%e193632193756%_
                                                 _%hd193631193759%_
                                                 _%tl193630193761%_
                                                 _%__splice194068194069%_
                                                 _%target193646193683%_
                                                 _%tl193648193685%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193624193662%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193624193662%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193624193662%_)))))
                    (let () (declare (not safe)) (_%g193624193662%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193171%_ _%stx193172%_)
        (let* ((_%__stx194120194121%_ _%stx193172%_)
               (_%g193176193278%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194120194121%_)))))
          (let ((_%__kont194122194123%_
                 (lambda (_%L193568%_
                          _%L193569%_
                          _%L193570%_
                          _%L193571%_
                          _%L193572%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193571%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193570%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193569%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193568%_))
                                                 '())))))))
                (_%__kont194124194125%_
                 (lambda (_%L193394%_ _%L193395%_ _%L193396%_ _%L193397%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193396%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193395%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193394%_))
                                           (cons '#f '())))))))
                (_%__kont194126194127%_ (lambda () '(begin))))
            (let ((_%__match194255194256%_
                   (lambda (_%e193185193440%_
                            _%hd193184193443%_
                            _%tl193183193445%_
                            _%e193188193448%_
                            _%hd193187193451%_
                            _%tl193186193453%_
                            _%e193191193456%_
                            _%hd193190193459%_
                            _%tl193189193461%_
                            _%e193194193464%_
                            _%hd193193193467%_
                            _%tl193192193469%_
                            _%e193197193472%_
                            _%hd193196193475%_
                            _%tl193195193477%_
                            _%e193200193480%_
                            _%hd193199193483%_
                            _%tl193198193485%_
                            _%e193203193488%_
                            _%hd193202193491%_
                            _%tl193201193493%_
                            _%e193206193496%_
                            _%hd193205193499%_
                            _%tl193204193501%_
                            _%e193209193504%_
                            _%hd193208193507%_
                            _%tl193207193509%_
                            _%e193212193512%_
                            _%hd193211193515%_
                            _%tl193210193517%_
                            _%e193215193520%_
                            _%hd193214193523%_
                            _%tl193213193525%_
                            _%e193218193528%_
                            _%hd193217193531%_
                            _%tl193216193533%_
                            _%e193221193536%_
                            _%hd193220193539%_
                            _%tl193219193541%_
                            _%e193224193544%_
                            _%hd193223193547%_
                            _%tl193222193549%_
                            _%e193227193552%_
                            _%hd193226193555%_
                            _%tl193225193557%_
                            _%e193230193560%_
                            _%hd193229193563%_
                            _%tl193228193565%_)
                     (let ((_%L193568%_ _%hd193229193563%_)
                           (_%L193569%_ _%hd193220193539%_)
                           (_%L193570%_ _%hd193211193515%_)
                           (_%L193571%_ _%hd193202193491%_)
                           (_%L193572%_ _%hd193193193467%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193572%_
                              'bind-method!))
                           (_%__kont194122194123%_
                            _%L193568%_
                            _%L193569%_
                            _%L193570%_
                            _%L193571%_
                            _%L193572%_)
                           (_%__kont194126194127%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194120194121%_))
                  (let ((_%e193185193440%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194120194121%_))))
                    (let ((_%tl193183193445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193185193440%_)))
                          (_%hd193184193443%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193185193440%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193183193445%_))
                          (let ((_%e193188193448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193183193445%_))))
                            (let ((_%tl193186193453%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193188193448%_)))
                                  (_%hd193187193451%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193188193448%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193187193451%_))
                                  (let ((_%e193191193456%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193187193451%_))))
                                    (let ((_%tl193189193461%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193191193456%_)))
                                          (_%hd193190193459%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193191193456%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193190193459%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193190193459%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193189193461%_))
                                                  (let ((_%e193194193464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193189193461%_))))
                                                    (let ((_%tl193192193469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193194193464%_)))
                                                          (_%hd193193193467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193194193464%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193192193469%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193186193453%_))
                      (let ((_%e193197193472%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193186193453%_))))
                        (let ((_%tl193195193477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193197193472%_)))
                              (_%hd193196193475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193197193472%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193196193475%_))
                              (let ((_%e193200193480%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193196193475%_))))
                                (let ((_%tl193198193485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193200193480%_)))
                                      (_%hd193199193483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193200193480%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193199193483%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193199193483%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193198193485%_))
                                              (let ((_%e193203193488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193198193485%_))))
                                                (let ((_%tl193201193493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193203193488%_)))
                                                      (_%hd193202193491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193203193488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193201193493%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193195193477%_))
                                                          (let ((_%e193206193496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193195193477%_))))
                    (let ((_%tl193204193501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193206193496%_)))
                          (_%hd193205193499%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193206193496%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193205193499%_))
                          (let ((_%e193209193504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193205193499%_))))
                            (let ((_%tl193207193509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193209193504%_)))
                                  (_%hd193208193507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193209193504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193208193507%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193208193507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193207193509%_))
                                          (let ((_%e193212193512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193207193509%_))))
                                            (let ((_%tl193210193517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193212193512%_)))
                                                  (_%hd193211193515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193212193512%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193210193517%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193204193501%_))
                                                      (let ((_%e193215193520%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193204193501%_))))
                (let ((_%tl193213193525%_
                       (let () (declare (not safe)) (##cdr _%e193215193520%_)))
                      (_%hd193214193523%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193215193520%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193214193523%_))
                      (let ((_%e193218193528%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193214193523%_))))
                        (let ((_%tl193216193533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193218193528%_)))
                              (_%hd193217193531%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193218193528%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193217193531%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193217193531%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193216193533%_))
                                      (let ((_%e193221193536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193216193533%_))))
                                        (let ((_%tl193219193541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193221193536%_)))
                                              (_%hd193220193539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193221193536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193219193541%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193213193525%_))
                                                  (let ((_%e193224193544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193213193525%_))))
                                                    (let ((_%tl193222193549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193224193544%_)))
                                                          (_%hd193223193547%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193224193544%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193223193547%_))
                                                          (let ((_%e193227193552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193223193547%_))))
                    (let ((_%tl193225193557%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193227193552%_)))
                          (_%hd193226193555%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193227193552%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193226193555%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193226193555%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193225193557%_))
                                  (let ((_%e193230193560%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193225193557%_))))
                                    (let ((_%tl193228193565%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193230193560%_)))
                                          (_%hd193229193563%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193230193560%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193228193565%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193222193549%_))
                                              (_%__match194255194256%_
                                               _%e193185193440%_
                                               _%hd193184193443%_
                                               _%tl193183193445%_
                                               _%e193188193448%_
                                               _%hd193187193451%_
                                               _%tl193186193453%_
                                               _%e193191193456%_
                                               _%hd193190193459%_
                                               _%tl193189193461%_
                                               _%e193194193464%_
                                               _%hd193193193467%_
                                               _%tl193192193469%_
                                               _%e193197193472%_
                                               _%hd193196193475%_
                                               _%tl193195193477%_
                                               _%e193200193480%_
                                               _%hd193199193483%_
                                               _%tl193198193485%_
                                               _%e193203193488%_
                                               _%hd193202193491%_
                                               _%tl193201193493%_
                                               _%e193206193496%_
                                               _%hd193205193499%_
                                               _%tl193204193501%_
                                               _%e193209193504%_
                                               _%hd193208193507%_
                                               _%tl193207193509%_
                                               _%e193212193512%_
                                               _%hd193211193515%_
                                               _%tl193210193517%_
                                               _%e193215193520%_
                                               _%hd193214193523%_
                                               _%tl193213193525%_
                                               _%e193218193528%_
                                               _%hd193217193531%_
                                               _%tl193216193533%_
                                               _%e193221193536%_
                                               _%hd193220193539%_
                                               _%tl193219193541%_
                                               _%e193224193544%_
                                               _%hd193223193547%_
                                               _%tl193222193549%_
                                               _%e193227193552%_
                                               _%hd193226193555%_
                                               _%tl193225193557%_
                                               _%e193230193560%_
                                               _%hd193229193563%_
                                               _%tl193228193565%_)
                                              (_%__kont194126194127%_))
                                          (_%__kont194126194127%_))))
                                  (_%__kont194126194127%_))
                              (_%__kont194126194127%_))
                          (_%__kont194126194127%_))))
                  (_%__kont194126194127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193213193525%_))
                                                      (if (let ((__tmp194487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194487 'bind-method!))
                  (let ((_%L193394%_ _%hd193220193539%_)
                        (_%L193395%_ _%hd193211193515%_)
                        (_%L193396%_ _%hd193202193491%_)
                        (_%L193397%_ _%hd193193193467%_))
                    (_%__kont194124194125%_
                     _%L193394%_
                     _%L193395%_
                     _%L193396%_
                     _%L193397%_))
                  (_%__kont194126194127%_))
              (_%__kont194126194127%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194126194127%_))))
                                      (_%__kont194126194127%_))
                                  (_%__kont194126194127%_))
                              (_%__kont194126194127%_))))
                      (_%__kont194126194127%_))))
              (_%__kont194126194127%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194126194127%_))))
                                          (_%__kont194126194127%_))
                                      (_%__kont194126194127%_))
                                  (_%__kont194126194127%_))))
                          (_%__kont194126194127%_))))
                  (_%__kont194126194127%_))
              (_%__kont194126194127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194126194127%_))
                                          (_%__kont194126194127%_))
                                      (_%__kont194126194127%_))))
                              (_%__kont194126194127%_))))
                      (_%__kont194126194127%_))
                  (_%__kont194126194127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194126194127%_))
                                              (_%__kont194126194127%_))
                                          (_%__kont194126194127%_))))
                                  (_%__kont194126194127%_))))
                          (_%__kont194126194127%_))))
                  (_%__kont194126194127%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192995%_ _%stx192996%_)
        (let* ((_%__stx194364194365%_ _%stx192996%_)
               (_%g192999193039%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194364194365%_)))))
          (let ((_%__kont194366194367%_
                 (lambda (_%L193145%_ _%L193146%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193146%_))
                               (cons _%L193145%_ '())))))
                (_%__kont194368194369%_
                 (lambda (_%L193068%_ _%L193069%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194364194365%_))
                (let ((_%e193005193089%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194364194365%_))))
                  (let ((_%tl193003193094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193005193089%_)))
                        (_%hd193004193092%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193005193089%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193003193094%_))
                        (let ((_%e193008193097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193003193094%_))))
                          (let ((_%tl193006193102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193008193097%_)))
                                (_%hd193007193100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193008193097%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193007193100%_))
                                (let ((_%e193011193105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193007193100%_))))
                                  (let ((_%tl193009193110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193011193105%_)))
                                        (_%hd193010193108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193011193105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193010193108%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193010193108%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193009193110%_))
                                                (let ((_%e193014193113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193009193110%_))))
                                                  (let ((_%tl193012193118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193014193113%_)))
                                                        (_%hd193013193116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193014193113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193012193118%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193006193102%_))
                                                            (let ((_%e193017193121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193006193102%_))))
                      (let ((_%tl193015193126%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193017193121%_)))
                            (_%hd193016193124%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193017193121%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193016193124%_))
                            (let ((_%e193020193129%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193016193124%_))))
                              (let ((_%tl193018193134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193020193129%_)))
                                    (_%hd193019193132%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193020193129%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193019193132%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193019193132%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193018193134%_))
                                            (let ((_%e193023193137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193018193134%_))))
                                              (let ((_%tl193021193142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193023193137%_)))
                                                    (_%hd193022193140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193023193137%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193021193142%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193015193126%_))
                                                        (_%__kont194366194367%_
                                                         _%hd193022193140%_
                                                         _%hd193013193116%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192999193039%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193015193126%_))
                                                        (_%__kont194368194369%_
                                                         _%hd193016193124%_
                                                         _%hd193007193100%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192999193039%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193015193126%_))
                                                (_%__kont194368194369%_
                                                 _%hd193016193124%_
                                                 _%hd193007193100%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192999193039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193015193126%_))
                                            (_%__kont194368194369%_
                                             _%hd193016193124%_
                                             _%hd193007193100%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192999193039%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193015193126%_))
                                        (_%__kont194368194369%_
                                         _%hd193016193124%_
                                         _%hd193007193100%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192999193039%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193015193126%_))
                                (_%__kont194368194369%_
                                 _%hd193016193124%_
                                 _%hd193007193100%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192999193039%_))))))
                    (let () (declare (not safe)) (_%g192999193039%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193006193102%_))
                    (let ((_%e193034193060%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193006193102%_))))
                      (let ((_%tl193032193065%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193034193060%_)))
                            (_%hd193033193063%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193034193060%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193032193065%_))
                            (_%__kont194368194369%_
                             _%hd193033193063%_
                             _%hd193007193100%_)
                            (let ()
                              (declare (not safe))
                              (_%g192999193039%_)))))
                    (let () (declare (not safe)) (_%g192999193039%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193006193102%_))
                                                    (let ((_%e193034193060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193006193102%_))))
                                                      (let ((_%tl193032193065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193034193060%_)))
                    (_%hd193033193063%_
                     (let () (declare (not safe)) (##car _%e193034193060%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193032193065%_))
                    (_%__kont194368194369%_
                     _%hd193033193063%_
                     _%hd193007193100%_)
                    (let () (declare (not safe)) (_%g192999193039%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192999193039%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193006193102%_))
                                                (let ((_%e193034193060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193006193102%_))))
                                                  (let ((_%tl193032193065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193034193060%_)))
                                                        (_%hd193033193063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193034193060%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193032193065%_))
                                                        (_%__kont194368194369%_
                                                         _%hd193033193063%_
                                                         _%hd193007193100%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192999193039%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192999193039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193006193102%_))
                                            (let ((_%e193034193060%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193006193102%_))))
                                              (let ((_%tl193032193065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193034193060%_)))
                                                    (_%hd193033193063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193034193060%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193032193065%_))
                                                    (_%__kont194368194369%_
                                                     _%hd193033193063%_
                                                     _%hd193007193100%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192999193039%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192999193039%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193006193102%_))
                                    (let ((_%e193034193060%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193006193102%_))))
                                      (let ((_%tl193032193065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193034193060%_)))
                                            (_%hd193033193063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193034193060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193032193065%_))
                                            (_%__kont194368194369%_
                                             _%hd193033193063%_
                                             _%hd193007193100%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192999193039%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192999193039%_))))))
                        (let () (declare (not safe)) (_%g192999193039%_)))))
                (let () (declare (not safe)) (_%g192999193039%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192982%_)
        (let ((_%self192985%_ _%self192982%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192985%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192755%_)
        (let ((_%self192758%_ _%self192755%_))
          (let* ((_%self192767192783%_ _%self192758%_)
                 (_%E192769192787%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192767192783%_
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
                 (_%K192770192802%_
                  (lambda (_%methods192790%_
                           _%metaclass192791%_
                           _%system?192792%_
                           _%final?192793%_
                           _%struct?192794%_
                           _%constructor192795%_
                           _%fields192796%_
                           _%slots192797%_
                           _%precendence-list192798%_
                           _%super192799%_
                           _%id192800%_)
                    (cons '@class
                          (cons _%id192800%_
                                (cons _%super192799%_
                                      (cons _%precendence-list192798%_
                                            (cons _%slots192797%_
                                                  (cons _%fields192796%_
                                                        (cons _%constructor192795%_
                                                              (cons _%struct?192794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192793%_
                                  (cons _%system?192792%_
                                        (cons _%metaclass192791%_
                                              (cons (if _%methods192790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192790%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192771192805%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '1
                           '#f
                           '#f)))
                       (_%id192808%_ _%e192771192805%_)
                       (_%e192772192810%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '2
                           '#f
                           '#f)))
                       (_%super192813%_ _%e192772192810%_)
                       (_%e192773192815%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192818%_ _%e192773192815%_)
                       (_%e192774192820%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192823%_ _%e192774192820%_)
                       (_%e192775192825%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192828%_ _%e192775192825%_)
                       (_%e192776192830%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192833%_ _%e192776192830%_)
                       (_%e192777192835%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192838%_ _%e192777192835%_)
                       (_%e192778192840%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192843%_ _%e192778192840%_)
                       (_%e192779192845%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192848%_ _%e192779192845%_)
                       (_%e192780192850%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192853%_ _%e192780192850%_)
                       (_%e192781192855%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192767192783%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192858%_ _%e192781192855%_))
                  (declare (not safe))
                  (_%K192770192802%_
                   _%methods192858%_
                   _%metaclass192853%_
                   _%system?192848%_
                   _%final?192843%_
                   _%struct?192838%_
                   _%constructor192833%_
                   _%fields192828%_
                   _%slots192823%_
                   _%precendence-list192818%_
                   _%super192813%_
                   _%id192808%_))
                (let () (declare (not safe)) (_%E192769192787%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192620%_)
        (let ((_%self192623%_ _%self192620%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192623%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192485%_)
        (let ((_%self192488%_ _%self192485%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192488%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192350%_)
        (let ((_%self192353%_ _%self192350%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192353%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192353%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192353%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192215%_)
        (let ((_%self192218%_ _%self192215%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192218%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192218%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192218%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192080%_)
        (let ((_%self192083%_ _%self192080%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192083%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192083%_
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
      (lambda (_%self191893%_)
        (let ((_%self191896%_ _%self191893%_))
          (let* ((_%self191905191914%_ _%self191896%_)
                 (_%E191907191918%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191905191914%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191908191937%_
                  (lambda (_%dispatch191921%_
                           _%arity191922%_
                           _%signature191923%_)
                    (if _%signature191923%_
                        (let ((_%signature191925%_ _%signature191923%_))
                          (cons '@lambda
                                (cons _%arity191922%_
                                      (cons _%dispatch191921%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature191925%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature191925%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature191925%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature191925%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity191922%_
                                    (cons _%dispatch191921%_ '())))))))
            (if '#t
                (let* ((_%e191909191940%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191905191914%_
                           '1
                           '#f
                           '#f)))
                       (_%e191910191943%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191905191914%_
                           '2
                           '#f
                           '#f)))
                       (_%signature191946%_ _%e191910191943%_)
                       (_%e191911191948%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191905191914%_
                           '3
                           '#f
                           '#f)))
                       (_%arity191951%_ _%e191911191948%_)
                       (_%e191912191953%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191905191914%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch191956%_ _%e191912191953%_))
                  (declare (not safe))
                  (_%K191908191937%_
                   _%dispatch191956%_
                   _%arity191951%_
                   _%signature191946%_))
                (let () (declare (not safe)) (_%E191907191918%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191754%_)
        (let ((_%self191757%_ _%self191754%_))
          (letrec ((_%clause-e191767%_
                    (lambda (_%clause191769%_)
                      (cdr (let ((__method194452
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191769%_
                                     'typedecl))))
                             (if __method194452
                                 (__method194452 _%clause191769%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191769%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191767%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191757%_
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
      (lambda (_%self191619%_)
        (let ((_%self191622%_ _%self191619%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191622%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191622%_
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
      (lambda (_%self191484%_)
        (let ((_%self191487%_ _%self191484%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191487%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191487%_
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
      (lambda (_%self191349%_)
        (let ((_%self191352%_ _%self191349%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191352%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
