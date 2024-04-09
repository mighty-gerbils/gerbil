(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712643214)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193474
                   (let ((__obj193468
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193468)
                     __obj193468)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193474)))))
    (define gxc#optimize!
      (lambda (_%ctx193077%_)
        (let ((__tmp193477
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx193077%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx193077%_)
                 (let ((__tmp193479
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193478
                        (##structure-ref
                         _%ctx193077%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193479 __tmp193478 '#t))
                 (let ((_%code193080%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx193077%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx193077%_
                    _%code193080%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193476 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193475 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193477
           gxc#current-compile-mutators
           __tmp193476
           gxc#current-compile-local-type
           __tmp193475))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193063%_)
        (letrec ((_%load-it!193065%_
                  (lambda (_%id193075%_)
                    (if (let ((__tmp193480
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193480 _%id193075%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id193075%_)
                          (let ((__tmp193481
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193481 _%id193075%_ '#t)))))))
          (let* ((_%modid193067%_
                  (##structure-ref
                   _%ctx193063%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193069%_ (symbol->string _%modid193067%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193069%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193069%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193065%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193065%_
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
      (lambda (_%ctx193000%_)
        (letrec* ((_%deps193002%_
                   (let* ((_%imports193053%_
                           (##structure-ref
                            _%ctx193000%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193055%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193000%_))))
                     (if _%$e193055%_
                         ((lambda (_%g193057193059%_)
                            (cons _%g193057193059%_ _%imports193053%_))
                          _%$e193055%_)
                         _%imports193053%_))))
          (let _%lp193004%_ ((_%rest193006%_ _%deps193002%_))
            (let* ((_%rest193007193015%_ _%rest193006%_)
                   (_%else193009193023%_ (lambda () '#!void))
                   (_%K193011193041%_
                    (lambda (_%rest193026%_ _%hd193027%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193027%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193483
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193482
                                       (##structure-ref
                                        _%hd193027%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193483 __tmp193482))
                                '#!void
                                (begin
                                  (let ((_%$e193030%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193027%_))))
                                    (if _%$e193030%_
                                        ((lambda (_%pre193033%_)
                                           (_%lp193004%_
                                            (cons _%pre193033%_
                                                  (##structure-ref
                                                   _%hd193027%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e193030%_)
                                        (_%lp193004%_
                                         (##structure-ref
                                          _%hd193027%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd193027%_)))
                            (_%lp193004%_ _%rest193026%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193027%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193485
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193484
                                           (##structure-ref
                                            _%hd193027%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193485 __tmp193484))
                                    '#!void
                                    (begin
                                      (_%lp193004%_
                                       (##structure-ref
                                        _%hd193027%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd193027%_)))
                                (_%lp193004%_ _%rest193026%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193027%_
                                     'gx#module-import::t))
                                  (_%lp193004%_
                                   (cons (##direct-structure-ref
                                          _%hd193027%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest193026%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193027%_
                                         'gx#module-export::t))
                                      (_%lp193004%_
                                       (cons (##direct-structure-ref
                                              _%hd193027%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest193026%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193027%_
                                             'gx#import-set::t))
                                          (_%lp193004%_
                                           (cons (##direct-structure-ref
                                                  _%hd193027%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest193026%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193027%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193007193015%_))
                  (let ((_%hd193012193044%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193007193015%_)))
                        (_%tl193013193046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193007193015%_))))
                    (let* ((_%hd193049%_ _%hd193012193044%_)
                           (_%rest193051%_ _%tl193013193046%_))
                      (_%K193011193041%_ _%rest193051%_ _%hd193049%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192980%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192980%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx192980%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht192982%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192984%_
                    (##structure-ref
                     _%ctx192980%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192986%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192982%_ _%id192984%_)))
                   (_%$e192989%_ _%mod192986%_))
              (if _%$e192989%_
                  _%$e192989%_
                  (let* ((_%mod192992%_
                          (gxc#optimizer-import-ssxi _%ctx192980%_))
                         (_%val192997%_
                          (let ((_%$e192994%_ _%mod192992%_))
                            (if _%$e192994%_ _%$e192994%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht192982%_ _%id192984%_ _%val192997%_))
                    _%val192997%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192978%_)
        (if (##structure-ref _%ctx192978%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx192978%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192955%_)
        (letrec ((_%catch-e192957%_
                  (lambda (_%exn192976%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn192976%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn192976%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192955%_))))
                    '#f))
                 (_%import-e192958%_
                  (lambda ()
                    (let* ((_%str-id192961%_
                            (let ((__tmp193486
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192955%_))))
                              (declare (not safe))
                              (##string-append __tmp193486 '".ssxi")))
                           (_%artefact-path192969%_
                            (let ((_%odir192962192964%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192962192964%_
                                  (let ((_%odir192967%_ _%odir192962192964%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192961%_
                                        '".ss"))
                                     _%odir192967%_))
                                  '#f)))
                           (_%library-path192971%_
                            (let ((__tmp193487
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192961%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193487)))
                           (_%ssxi-path192973%_
                            (if (and _%artefact-path192969%_
                                     (file-exists? _%artefact-path192969%_))
                                _%artefact-path192969%_
                                _%library-path192971%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192973%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192973%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192957%_ _%import-e192958%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192946%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192946%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192946%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192946%_))
        (let* ((_%stx192948%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192946%_)))
               (_%stx192950%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192948%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192950%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192950%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192950%_))
          (let ((_%stx192953%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192950%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192953%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193489 (list gxc#::generate-runtime-empty::t))
            (__tmp193488 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193489
         '()
         __tmp193488
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192943%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192943%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193490
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
        (__make-promise __tmp193490)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192935%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192938%_
                (let ((__obj193470
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193470))
               (__tmp193491
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192938%_ _%stx192935%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193491
           gxc#current-compile-method
           _%self192938%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192895%_ _%stx192896%_)
        (let* ((_%g192898192908%_
                (lambda (_%g192899192905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192899192905%_))))
               (_%g192897192932%_
                (lambda (_%g192899192911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192899192911%_))
                      (let ((_%e192901192913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192899192911%_))))
                        (let ((_%hd192902192916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192901192913%_)))
                              (_%tl192903192918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192901192913%_))))
                          ((lambda (_%L192921%_)
                             (let ((__tmp193494
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192895%_
                                         _%stx192896%_))))
                                   (__tmp193492
                                    (let ((__tmp193493
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193493 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193494
                                gx#current-expander-phi
                                __tmp193492)))
                           _%tl192903192918%_)))
                      (_%g192898192908%_ _%g192899192911%_)))))
          (_%g192897192932%_ _%stx192896%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192834%_ _%stx192835%_)
        (let* ((_%g192837192851%_
                (lambda (_%g192838192848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192838192848%_))))
               (_%g192836192892%_
                (lambda (_%g192838192854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192838192854%_))
                      (let ((_%e192841192856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192838192854%_))))
                        (let ((_%hd192842192859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192841192856%_)))
                              (_%tl192843192861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192841192856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192843192861%_))
                              (let ((_%e192844192864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192843192861%_))))
                                (let ((_%hd192845192867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192844192864%_)))
                                      (_%tl192846192869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192844192864%_))))
                                  ((lambda (_%L192872%_ _%L192873%_)
                                     (let* ((_%ctx192886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192873%_)))
                                            (_%code192888%_
                                             (##structure-ref
                                              _%ctx192886%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193495
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192834%_
                                                  _%code192888%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193495
                                        gx#current-expander-context
                                        _%ctx192886%_)))
                                   _%tl192846192869%_
                                   _%hd192845192867%_)))
                              (_%g192837192851%_ _%g192838192854%_))))
                      (_%g192837192851%_ _%g192838192854%_)))))
          (_%g192836192892%_ _%stx192835%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192639%_ _%stx192640%_)
        (letrec ((_%generate-e192642%_
                  (lambda (_%id192819%_)
                    (let* ((_%sym192821%_
                            (if (let ((__tmp193496
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193496))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192819%_))
                                '#f))
                           (_%$e192823%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192821%_))))
                      (if _%$e192823%_
                          ((lambda (_%klass192826%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192821%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192821%_
                                                     (cons (let ((__method193471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192826%_ 'typedecl))))
                     (if __method193471
                         (__method193471 _%klass192826%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192826%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192821%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192821%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192823%_)
                          (let ((_%$e192828%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192821%_))))
                            (if _%$e192828%_
                                ((lambda (_%type192831%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192821%_
                                      '" "
                                      _%type192831%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192831%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192821%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192821%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192831%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192821%_
                                                   (cons (let ((__method193472
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192831%_ 'typedecl))))
                   (if __method193472
                       (__method193472 _%type192831%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192831%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192828%_)
                                '(begin))))))))
          (let* ((_%__stx193083193084%_ _%stx192640%_)
                 (_%g192645192683%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193083193084%_)))))
            (let ((_%__kont193085193086%_
                   (lambda (_%L192801%_) (_%generate-e192642%_ _%L192801%_)))
                  (_%__kont193087193088%_
                   (lambda (_%L192736%_)
                     (let ((_%types192762%_
                            (map _%generate-e192642%_
                                 (let ((__tmp193497
                                        (lambda (_%g192754192757%_
                                                 _%g192755192759%_)
                                          (cons _%g192754192757%_
                                                _%g192755192759%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193497 '() _%L192736%_)))))
                       (cons 'begin _%types192762%_)))))
              (let ((_%__match193138193139%_
                     (lambda (_%e192661192688%_
                              _%hd192662192691%_
                              _%tl192663192693%_
                              _%e192664192696%_
                              _%hd192665192699%_
                              _%tl192666192701%_
                              _%__splice193089193090%_
                              _%target192667192704%_
                              _%tl192669192706%_)
                       (letrec ((_%loop192670192709%_
                                 (lambda (_%hd192668192712%_
                                          _%id192674192714%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192668192712%_))
                                       (let ((_%e192671192717%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192668192712%_))))
                                         (let ((_%lp-tl192673192722%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192671192717%_)))
                                               (_%lp-hd192672192720%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192671192717%_))))
                                           (_%loop192670192709%_
                                            _%lp-tl192673192722%_
                                            (cons _%lp-hd192672192720%_
                                                  _%id192674192714%_))))
                                       (let ((_%id192675192725%_
                                              (reverse _%id192674192714%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192666192701%_))
                                             (let ((_%e192676192728%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192666192701%_))))
                                               (let ((_%tl192678192733%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192676192728%_)))
                                                     (_%hd192677192731%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192676192728%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192678192733%_))
                                                     (_%__kont193087193088%_
                                                      _%id192675192725%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192645192683%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192645192683%_))))))))
                         (_%loop192670192709%_ _%target192667192704%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193083193084%_))
                    (let ((_%e192648192769%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193083193084%_))))
                      (let ((_%tl192650192774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192648192769%_)))
                            (_%hd192649192772%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192648192769%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192650192774%_))
                            (let ((_%e192651192777%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192650192774%_))))
                              (let ((_%tl192653192782%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192651192777%_)))
                                    (_%hd192652192780%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192651192777%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192652192780%_))
                                    (let ((_%e192654192785%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192652192780%_))))
                                      (let ((_%tl192656192790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192654192785%_)))
                                            (_%hd192655192788%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192654192785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192656192790%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192653192782%_))
                                                (let ((_%e192657192793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192653192782%_))))
                                                  (let ((_%tl192659192798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192657192793%_)))
                                                        (_%hd192658192796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192657192793%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192659192798%_))
                                                        (_%__kont193085193086%_
                                                         _%hd192655192788%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192652192780%_))
                                                            (let ((_%__splice193089193090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192652192780%_ '0))))
                      (let ((_%tl192669192706%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193089193090%_ '1)))
                            (_%target192667192704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193089193090%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192669192706%_))
                            (_%__match193138193139%_
                             _%e192648192769%_
                             _%hd192649192772%_
                             _%tl192650192774%_
                             _%e192651192777%_
                             _%hd192652192780%_
                             _%tl192653192782%_
                             _%__splice193089193090%_
                             _%target192667192704%_
                             _%tl192669192706%_)
                            (let ()
                              (declare (not safe))
                              (_%g192645192683%_)))))
                    (let () (declare (not safe)) (_%g192645192683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192652192780%_))
                                                    (let ((_%__splice193089193090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192652192780%_
                                                              '0))))
                                                      (let ((_%tl192669192706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193089193090%_ '1)))
                    (_%target192667192704%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193089193090%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192669192706%_))
                    (_%__match193138193139%_
                     _%e192648192769%_
                     _%hd192649192772%_
                     _%tl192650192774%_
                     _%e192651192777%_
                     _%hd192652192780%_
                     _%tl192653192782%_
                     _%__splice193089193090%_
                     _%target192667192704%_
                     _%tl192669192706%_)
                    (let () (declare (not safe)) (_%g192645192683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192645192683%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192652192780%_))
                                                (let ((_%__splice193089193090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192652192780%_
                                                          '0))))
                                                  (let ((_%tl192669192706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193089193090%_
                                                            '1)))
                                                        (_%target192667192704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193089193090%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192669192706%_))
                                                        (_%__match193138193139%_
                                                         _%e192648192769%_
                                                         _%hd192649192772%_
                                                         _%tl192650192774%_
                                                         _%e192651192777%_
                                                         _%hd192652192780%_
                                                         _%tl192653192782%_
                                                         _%__splice193089193090%_
                                                         _%target192667192704%_
                                                         _%tl192669192706%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192645192683%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192645192683%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192652192780%_))
                                        (let ((_%__splice193089193090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192652192780%_
                                                  '0))))
                                          (let ((_%tl192669192706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193089193090%_
                                                    '1)))
                                                (_%target192667192704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193089193090%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192669192706%_))
                                                (_%__match193138193139%_
                                                 _%e192648192769%_
                                                 _%hd192649192772%_
                                                 _%tl192650192774%_
                                                 _%e192651192777%_
                                                 _%hd192652192780%_
                                                 _%tl192653192782%_
                                                 _%__splice193089193090%_
                                                 _%target192667192704%_
                                                 _%tl192669192706%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192645192683%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192645192683%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192645192683%_)))))
                    (let () (declare (not safe)) (_%g192645192683%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192192%_ _%stx192193%_)
        (let* ((_%__stx193141193142%_ _%stx192193%_)
               (_%g192197192299%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193141193142%_)))))
          (let ((_%__kont193143193144%_
                 (lambda (_%L192589%_
                          _%L192590%_
                          _%L192591%_
                          _%L192592%_
                          _%L192593%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192592%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192591%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192590%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192589%_))
                                                 '())))))))
                (_%__kont193145193146%_
                 (lambda (_%L192415%_ _%L192416%_ _%L192417%_ _%L192418%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192417%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192416%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192415%_))
                                           (cons '#f '())))))))
                (_%__kont193147193148%_ (lambda () '(begin))))
            (let ((_%__match193276193277%_
                   (lambda (_%e192204192461%_
                            _%hd192205192464%_
                            _%tl192206192466%_
                            _%e192207192469%_
                            _%hd192208192472%_
                            _%tl192209192474%_
                            _%e192210192477%_
                            _%hd192211192480%_
                            _%tl192212192482%_
                            _%e192213192485%_
                            _%hd192214192488%_
                            _%tl192215192490%_
                            _%e192216192493%_
                            _%hd192217192496%_
                            _%tl192218192498%_
                            _%e192219192501%_
                            _%hd192220192504%_
                            _%tl192221192506%_
                            _%e192222192509%_
                            _%hd192223192512%_
                            _%tl192224192514%_
                            _%e192225192517%_
                            _%hd192226192520%_
                            _%tl192227192522%_
                            _%e192228192525%_
                            _%hd192229192528%_
                            _%tl192230192530%_
                            _%e192231192533%_
                            _%hd192232192536%_
                            _%tl192233192538%_
                            _%e192234192541%_
                            _%hd192235192544%_
                            _%tl192236192546%_
                            _%e192237192549%_
                            _%hd192238192552%_
                            _%tl192239192554%_
                            _%e192240192557%_
                            _%hd192241192560%_
                            _%tl192242192562%_
                            _%e192243192565%_
                            _%hd192244192568%_
                            _%tl192245192570%_
                            _%e192246192573%_
                            _%hd192247192576%_
                            _%tl192248192578%_
                            _%e192249192581%_
                            _%hd192250192584%_
                            _%tl192251192586%_)
                     (let ((_%L192589%_ _%hd192250192584%_)
                           (_%L192590%_ _%hd192241192560%_)
                           (_%L192591%_ _%hd192232192536%_)
                           (_%L192592%_ _%hd192223192512%_)
                           (_%L192593%_ _%hd192214192488%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192593%_
                              'bind-method!))
                           (_%__kont193143193144%_
                            _%L192589%_
                            _%L192590%_
                            _%L192591%_
                            _%L192592%_
                            _%L192593%_)
                           (_%__kont193147193148%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193141193142%_))
                  (let ((_%e192204192461%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193141193142%_))))
                    (let ((_%tl192206192466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192204192461%_)))
                          (_%hd192205192464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192204192461%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192206192466%_))
                          (let ((_%e192207192469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192206192466%_))))
                            (let ((_%tl192209192474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192207192469%_)))
                                  (_%hd192208192472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192207192469%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192208192472%_))
                                  (let ((_%e192210192477%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192208192472%_))))
                                    (let ((_%tl192212192482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192210192477%_)))
                                          (_%hd192211192480%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192210192477%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192211192480%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192211192480%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192212192482%_))
                                                  (let ((_%e192213192485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192212192482%_))))
                                                    (let ((_%tl192215192490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192213192485%_)))
                                                          (_%hd192214192488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192213192485%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192215192490%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192209192474%_))
                      (let ((_%e192216192493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192209192474%_))))
                        (let ((_%tl192218192498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192216192493%_)))
                              (_%hd192217192496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192216192493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192217192496%_))
                              (let ((_%e192219192501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192217192496%_))))
                                (let ((_%tl192221192506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192219192501%_)))
                                      (_%hd192220192504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192219192501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192220192504%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192220192504%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192221192506%_))
                                              (let ((_%e192222192509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192221192506%_))))
                                                (let ((_%tl192224192514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192222192509%_)))
                                                      (_%hd192223192512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192222192509%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192224192514%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192218192498%_))
                                                          (let ((_%e192225192517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192218192498%_))))
                    (let ((_%tl192227192522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192225192517%_)))
                          (_%hd192226192520%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192225192517%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192226192520%_))
                          (let ((_%e192228192525%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192226192520%_))))
                            (let ((_%tl192230192530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192228192525%_)))
                                  (_%hd192229192528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192228192525%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192229192528%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192229192528%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192230192530%_))
                                          (let ((_%e192231192533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192230192530%_))))
                                            (let ((_%tl192233192538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192231192533%_)))
                                                  (_%hd192232192536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192231192533%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192233192538%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192227192522%_))
                                                      (let ((_%e192234192541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192227192522%_))))
                (let ((_%tl192236192546%_
                       (let () (declare (not safe)) (##cdr _%e192234192541%_)))
                      (_%hd192235192544%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192234192541%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192235192544%_))
                      (let ((_%e192237192549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192235192544%_))))
                        (let ((_%tl192239192554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192237192549%_)))
                              (_%hd192238192552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192237192549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192238192552%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192238192552%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192239192554%_))
                                      (let ((_%e192240192557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192239192554%_))))
                                        (let ((_%tl192242192562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192240192557%_)))
                                              (_%hd192241192560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192240192557%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192242192562%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192236192546%_))
                                                  (let ((_%e192243192565%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192236192546%_))))
                                                    (let ((_%tl192245192570%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192243192565%_)))
                                                          (_%hd192244192568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192243192565%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192244192568%_))
                                                          (let ((_%e192246192573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192244192568%_))))
                    (let ((_%tl192248192578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192246192573%_)))
                          (_%hd192247192576%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192246192573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192247192576%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192247192576%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192248192578%_))
                                  (let ((_%e192249192581%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192248192578%_))))
                                    (let ((_%tl192251192586%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192249192581%_)))
                                          (_%hd192250192584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192249192581%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192251192586%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192245192570%_))
                                              (_%__match193276193277%_
                                               _%e192204192461%_
                                               _%hd192205192464%_
                                               _%tl192206192466%_
                                               _%e192207192469%_
                                               _%hd192208192472%_
                                               _%tl192209192474%_
                                               _%e192210192477%_
                                               _%hd192211192480%_
                                               _%tl192212192482%_
                                               _%e192213192485%_
                                               _%hd192214192488%_
                                               _%tl192215192490%_
                                               _%e192216192493%_
                                               _%hd192217192496%_
                                               _%tl192218192498%_
                                               _%e192219192501%_
                                               _%hd192220192504%_
                                               _%tl192221192506%_
                                               _%e192222192509%_
                                               _%hd192223192512%_
                                               _%tl192224192514%_
                                               _%e192225192517%_
                                               _%hd192226192520%_
                                               _%tl192227192522%_
                                               _%e192228192525%_
                                               _%hd192229192528%_
                                               _%tl192230192530%_
                                               _%e192231192533%_
                                               _%hd192232192536%_
                                               _%tl192233192538%_
                                               _%e192234192541%_
                                               _%hd192235192544%_
                                               _%tl192236192546%_
                                               _%e192237192549%_
                                               _%hd192238192552%_
                                               _%tl192239192554%_
                                               _%e192240192557%_
                                               _%hd192241192560%_
                                               _%tl192242192562%_
                                               _%e192243192565%_
                                               _%hd192244192568%_
                                               _%tl192245192570%_
                                               _%e192246192573%_
                                               _%hd192247192576%_
                                               _%tl192248192578%_
                                               _%e192249192581%_
                                               _%hd192250192584%_
                                               _%tl192251192586%_)
                                              (_%__kont193147193148%_))
                                          (_%__kont193147193148%_))))
                                  (_%__kont193147193148%_))
                              (_%__kont193147193148%_))
                          (_%__kont193147193148%_))))
                  (_%__kont193147193148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192236192546%_))
                                                      (if (let ((__tmp193498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193498 'bind-method!))
                  (let ((_%L192415%_ _%hd192241192560%_)
                        (_%L192416%_ _%hd192232192536%_)
                        (_%L192417%_ _%hd192223192512%_)
                        (_%L192418%_ _%hd192214192488%_))
                    (_%__kont193145193146%_
                     _%L192415%_
                     _%L192416%_
                     _%L192417%_
                     _%L192418%_))
                  (_%__kont193147193148%_))
              (_%__kont193147193148%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193147193148%_))))
                                      (_%__kont193147193148%_))
                                  (_%__kont193147193148%_))
                              (_%__kont193147193148%_))))
                      (_%__kont193147193148%_))))
              (_%__kont193147193148%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193147193148%_))))
                                          (_%__kont193147193148%_))
                                      (_%__kont193147193148%_))
                                  (_%__kont193147193148%_))))
                          (_%__kont193147193148%_))))
                  (_%__kont193147193148%_))
              (_%__kont193147193148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193147193148%_))
                                          (_%__kont193147193148%_))
                                      (_%__kont193147193148%_))))
                              (_%__kont193147193148%_))))
                      (_%__kont193147193148%_))
                  (_%__kont193147193148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193147193148%_))
                                              (_%__kont193147193148%_))
                                          (_%__kont193147193148%_))))
                                  (_%__kont193147193148%_))))
                          (_%__kont193147193148%_))))
                  (_%__kont193147193148%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192016%_ _%stx192017%_)
        (let* ((_%__stx193385193386%_ _%stx192017%_)
               (_%g192020192060%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193385193386%_)))))
          (let ((_%__kont193387193388%_
                 (lambda (_%L192166%_ _%L192167%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192167%_))
                               (cons _%L192166%_ '())))))
                (_%__kont193389193390%_
                 (lambda (_%L192089%_ _%L192090%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193385193386%_))
                (let ((_%e192024192110%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193385193386%_))))
                  (let ((_%tl192026192115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192024192110%_)))
                        (_%hd192025192113%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192024192110%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192026192115%_))
                        (let ((_%e192027192118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192026192115%_))))
                          (let ((_%tl192029192123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192027192118%_)))
                                (_%hd192028192121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192027192118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192028192121%_))
                                (let ((_%e192030192126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192028192121%_))))
                                  (let ((_%tl192032192131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192030192126%_)))
                                        (_%hd192031192129%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192030192126%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192031192129%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192031192129%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192032192131%_))
                                                (let ((_%e192033192134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192032192131%_))))
                                                  (let ((_%tl192035192139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192033192134%_)))
                                                        (_%hd192034192137%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192033192134%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192035192139%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192029192123%_))
                                                            (let ((_%e192036192142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192029192123%_))))
                      (let ((_%tl192038192147%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192036192142%_)))
                            (_%hd192037192145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192036192142%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192037192145%_))
                            (let ((_%e192039192150%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192037192145%_))))
                              (let ((_%tl192041192155%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192039192150%_)))
                                    (_%hd192040192153%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192039192150%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192040192153%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192040192153%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192041192155%_))
                                            (let ((_%e192042192158%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192041192155%_))))
                                              (let ((_%tl192044192163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192042192158%_)))
                                                    (_%hd192043192161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192042192158%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192044192163%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192038192147%_))
                                                        (_%__kont193387193388%_
                                                         _%hd192043192161%_
                                                         _%hd192034192137%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192020192060%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192038192147%_))
                                                        (_%__kont193389193390%_
                                                         _%hd192037192145%_
                                                         _%hd192028192121%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192020192060%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192038192147%_))
                                                (_%__kont193389193390%_
                                                 _%hd192037192145%_
                                                 _%hd192028192121%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192020192060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192038192147%_))
                                            (_%__kont193389193390%_
                                             _%hd192037192145%_
                                             _%hd192028192121%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192020192060%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192038192147%_))
                                        (_%__kont193389193390%_
                                         _%hd192037192145%_
                                         _%hd192028192121%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192020192060%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192038192147%_))
                                (_%__kont193389193390%_
                                 _%hd192037192145%_
                                 _%hd192028192121%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192020192060%_))))))
                    (let () (declare (not safe)) (_%g192020192060%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192029192123%_))
                    (let ((_%e192053192081%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192029192123%_))))
                      (let ((_%tl192055192086%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192053192081%_)))
                            (_%hd192054192084%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192053192081%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192055192086%_))
                            (_%__kont193389193390%_
                             _%hd192054192084%_
                             _%hd192028192121%_)
                            (let ()
                              (declare (not safe))
                              (_%g192020192060%_)))))
                    (let () (declare (not safe)) (_%g192020192060%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192029192123%_))
                                                    (let ((_%e192053192081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192029192123%_))))
                                                      (let ((_%tl192055192086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192053192081%_)))
                    (_%hd192054192084%_
                     (let () (declare (not safe)) (##car _%e192053192081%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192055192086%_))
                    (_%__kont193389193390%_
                     _%hd192054192084%_
                     _%hd192028192121%_)
                    (let () (declare (not safe)) (_%g192020192060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192020192060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192029192123%_))
                                                (let ((_%e192053192081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192029192123%_))))
                                                  (let ((_%tl192055192086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192053192081%_)))
                                                        (_%hd192054192084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192053192081%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192055192086%_))
                                                        (_%__kont193389193390%_
                                                         _%hd192054192084%_
                                                         _%hd192028192121%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192020192060%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192020192060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192029192123%_))
                                            (let ((_%e192053192081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192029192123%_))))
                                              (let ((_%tl192055192086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192053192081%_)))
                                                    (_%hd192054192084%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192053192081%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192055192086%_))
                                                    (_%__kont193389193390%_
                                                     _%hd192054192084%_
                                                     _%hd192028192121%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192020192060%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192020192060%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192029192123%_))
                                    (let ((_%e192053192081%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192029192123%_))))
                                      (let ((_%tl192055192086%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192053192081%_)))
                                            (_%hd192054192084%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192053192081%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192055192086%_))
                                            (_%__kont193389193390%_
                                             _%hd192054192084%_
                                             _%hd192028192121%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192020192060%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192020192060%_))))))
                        (let () (declare (not safe)) (_%g192020192060%_)))))
                (let () (declare (not safe)) (_%g192020192060%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192003%_)
        (let ((_%self192006%_ _%self192003%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192006%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191776%_)
        (let* ((_%self191779%_ _%self191776%_)
               (_%self191788191804%_ _%self191779%_)
               (_%E191790191808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191788191804%_
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
               (_%K191791191823%_
                (lambda (_%methods191811%_
                         _%metaclass191812%_
                         _%system?191813%_
                         _%final?191814%_
                         _%struct?191815%_
                         _%constructor191816%_
                         _%fields191817%_
                         _%slots191818%_
                         _%precendence-list191819%_
                         _%super191820%_
                         _%id191821%_)
                  (cons '@class
                        (cons _%id191821%_
                              (cons _%super191820%_
                                    (cons _%precendence-list191819%_
                                          (cons _%slots191818%_
                                                (cons _%fields191817%_
                                                      (cons _%constructor191816%_
                                                            (cons _%struct?191815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191814%_
                                (cons _%system?191813%_
                                      (cons _%metaclass191812%_
                                            (cons (if _%methods191811%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191811%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191792191826%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '1
                         '#f
                         '#f)))
                     (_%id191829%_ _%e191792191826%_)
                     (_%e191793191831%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '2
                         '#f
                         '#f)))
                     (_%super191834%_ _%e191793191831%_)
                     (_%e191794191836%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191839%_ _%e191794191836%_)
                     (_%e191795191841%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191844%_ _%e191795191841%_)
                     (_%e191796191846%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191849%_ _%e191796191846%_)
                     (_%e191797191851%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191854%_ _%e191797191851%_)
                     (_%e191798191856%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191859%_ _%e191798191856%_)
                     (_%e191799191861%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191864%_ _%e191799191861%_)
                     (_%e191800191866%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191869%_ _%e191800191866%_)
                     (_%e191801191871%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191874%_ _%e191801191871%_)
                     (_%e191802191876%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191788191804%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191879%_ _%e191802191876%_))
                (_%K191791191823%_
                 _%methods191879%_
                 _%metaclass191874%_
                 _%system?191869%_
                 _%final?191864%_
                 _%struct?191859%_
                 _%constructor191854%_
                 _%fields191849%_
                 _%slots191844%_
                 _%precendence-list191839%_
                 _%super191834%_
                 _%id191829%_))
              (_%E191790191808%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191641%_)
        (let ((_%self191644%_ _%self191641%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191644%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191506%_)
        (let ((_%self191509%_ _%self191506%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191509%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191371%_)
        (let ((_%self191374%_ _%self191371%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191374%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191374%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191374%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191236%_)
        (let ((_%self191239%_ _%self191236%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191239%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191239%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191239%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191101%_)
        (let ((_%self191104%_ _%self191101%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191104%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191104%_
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
      (lambda (_%self190914%_)
        (let* ((_%self190917%_ _%self190914%_)
               (_%self190926190935%_ _%self190917%_)
               (_%E190928190939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190926190935%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190929190958%_
                (lambda (_%dispatch190942%_
                         _%arity190943%_
                         _%signature190944%_)
                  (if _%signature190944%_
                      (let ((_%signature190946%_ _%signature190944%_))
                        (cons '@lambda
                              (cons _%arity190943%_
                                    (cons _%dispatch190942%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190946%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature190946%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature190946%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature190946%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature190946%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity190943%_
                                  (cons _%dispatch190942%_ '())))))))
          (if '#t
              (let* ((_%e190930190961%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190926190935%_
                         '1
                         '#f
                         '#f)))
                     (_%e190931190964%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190926190935%_
                         '2
                         '#f
                         '#f)))
                     (_%signature190967%_ _%e190931190964%_)
                     (_%e190932190969%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190926190935%_
                         '3
                         '#f
                         '#f)))
                     (_%arity190972%_ _%e190932190969%_)
                     (_%e190933190974%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190926190935%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch190977%_ _%e190933190974%_))
                (_%K190929190958%_
                 _%dispatch190977%_
                 _%arity190972%_
                 _%signature190967%_))
              (_%E190928190939%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190775%_)
        (let ((_%self190778%_ _%self190775%_))
          (letrec ((_%clause-e190788%_
                    (lambda (_%clause190790%_)
                      (cdr (let ((__method193473
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190790%_
                                     'typedecl))))
                             (if __method193473
                                 (__method193473 _%clause190790%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190790%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190788%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190778%_
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
      (lambda (_%self190640%_)
        (let ((_%self190643%_ _%self190640%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190643%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190643%_
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
      (lambda (_%self190505%_)
        (let ((_%self190508%_ _%self190505%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190508%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190508%_
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
      (lambda (_%self190370%_)
        (let ((_%self190373%_ _%self190370%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190373%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
