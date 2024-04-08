(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712602661)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193475
                   (let ((__obj193469
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193469)
                     __obj193469)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193475)))))
    (define gxc#optimize!
      (lambda (_%ctx193078%_)
        (let ((__tmp193478
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx193078%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx193078%_)
                 (let ((__tmp193480
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193479
                        (##structure-ref
                         _%ctx193078%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193480 __tmp193479 '#t))
                 (let ((_%code193081%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx193078%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx193078%_
                    _%code193081%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193477 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193476 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193478
           gxc#current-compile-mutators
           __tmp193477
           gxc#current-compile-local-type
           __tmp193476))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193064%_)
        (letrec ((_%load-it!193066%_
                  (lambda (_%id193076%_)
                    (if (let ((__tmp193481
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193481 _%id193076%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id193076%_)
                          (let ((__tmp193482
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193482 _%id193076%_ '#t)))))))
          (let* ((_%modid193068%_
                  (##structure-ref
                   _%ctx193064%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193070%_ (symbol->string _%modid193068%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193070%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193070%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193066%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193066%_
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
      (lambda (_%ctx193001%_)
        (letrec* ((_%deps193003%_
                   (let* ((_%imports193054%_
                           (##structure-ref
                            _%ctx193001%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193056%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193001%_))))
                     (if _%$e193056%_
                         ((lambda (_%g193058193060%_)
                            (cons _%g193058193060%_ _%imports193054%_))
                          _%$e193056%_)
                         _%imports193054%_))))
          (let _%lp193005%_ ((_%rest193007%_ _%deps193003%_))
            (let* ((_%rest193008193016%_ _%rest193007%_)
                   (_%else193010193024%_ (lambda () '#!void))
                   (_%K193012193042%_
                    (lambda (_%rest193027%_ _%hd193028%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193028%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193484
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193483
                                       (##structure-ref
                                        _%hd193028%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193484 __tmp193483))
                                '#!void
                                (begin
                                  (let ((_%$e193031%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193028%_))))
                                    (if _%$e193031%_
                                        ((lambda (_%pre193034%_)
                                           (_%lp193005%_
                                            (cons _%pre193034%_
                                                  (##structure-ref
                                                   _%hd193028%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e193031%_)
                                        (_%lp193005%_
                                         (##structure-ref
                                          _%hd193028%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd193028%_)))
                            (_%lp193005%_ _%rest193027%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193028%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193486
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193485
                                           (##structure-ref
                                            _%hd193028%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193486 __tmp193485))
                                    '#!void
                                    (begin
                                      (_%lp193005%_
                                       (##structure-ref
                                        _%hd193028%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd193028%_)))
                                (_%lp193005%_ _%rest193027%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193028%_
                                     'gx#module-import::t))
                                  (_%lp193005%_
                                   (cons (##direct-structure-ref
                                          _%hd193028%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest193027%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193028%_
                                         'gx#module-export::t))
                                      (_%lp193005%_
                                       (cons (##direct-structure-ref
                                              _%hd193028%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest193027%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193028%_
                                             'gx#import-set::t))
                                          (_%lp193005%_
                                           (cons (##direct-structure-ref
                                                  _%hd193028%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest193027%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193028%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193008193016%_))
                  (let ((_%hd193013193045%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193008193016%_)))
                        (_%tl193014193047%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193008193016%_))))
                    (let* ((_%hd193050%_ _%hd193013193045%_)
                           (_%rest193052%_ _%tl193014193047%_))
                      (_%K193012193042%_ _%rest193052%_ _%hd193050%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192981%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192981%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx192981%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht192983%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192985%_
                    (##structure-ref
                     _%ctx192981%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192987%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192983%_ _%id192985%_)))
                   (_%$e192990%_ _%mod192987%_))
              (if _%$e192990%_
                  _%$e192990%_
                  (let* ((_%mod192993%_
                          (gxc#optimizer-import-ssxi _%ctx192981%_))
                         (_%val192998%_
                          (let ((_%$e192995%_ _%mod192993%_))
                            (if _%$e192995%_ _%$e192995%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht192983%_ _%id192985%_ _%val192998%_))
                    _%val192998%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192979%_)
        (if (##structure-ref _%ctx192979%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx192979%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192956%_)
        (letrec ((_%catch-e192958%_
                  (lambda (_%exn192977%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn192977%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn192977%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192956%_))))
                    '#f))
                 (_%import-e192959%_
                  (lambda ()
                    (let* ((_%str-id192962%_
                            (let ((__tmp193487
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192956%_))))
                              (declare (not safe))
                              (##string-append __tmp193487 '".ssxi")))
                           (_%artefact-path192970%_
                            (let ((_%odir192963192965%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192963192965%_
                                  (let ((_%odir192968%_ _%odir192963192965%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192962%_
                                        '".ss"))
                                     _%odir192968%_))
                                  '#f)))
                           (_%library-path192972%_
                            (let ((__tmp193488
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192962%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193488)))
                           (_%ssxi-path192974%_
                            (if (and _%artefact-path192970%_
                                     (file-exists? _%artefact-path192970%_))
                                _%artefact-path192970%_
                                _%library-path192972%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192974%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192974%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192958%_ _%import-e192959%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192947%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192947%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192947%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192947%_))
        (let* ((_%stx192949%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192947%_)))
               (_%stx192951%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192949%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192951%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192951%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192951%_))
          (let ((_%stx192954%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192951%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192954%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193490 (list gxc#::generate-runtime-empty::t))
            (__tmp193489 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193490
         '()
         __tmp193489
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192944%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192944%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193491
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
        (__make-promise __tmp193491)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192936%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192939%_
                (let ((__obj193471
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193471))
               (__tmp193492
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192939%_ _%stx192936%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193492
           gxc#current-compile-method
           _%self192939%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192896%_ _%stx192897%_)
        (let* ((_%g192899192909%_
                (lambda (_%g192900192906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192900192906%_))))
               (_%g192898192933%_
                (lambda (_%g192900192912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192900192912%_))
                      (let ((_%e192902192914%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192900192912%_))))
                        (let ((_%hd192903192917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192902192914%_)))
                              (_%tl192904192919%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192902192914%_))))
                          ((lambda (_%L192922%_)
                             (let ((__tmp193495
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192896%_
                                         _%stx192897%_))))
                                   (__tmp193493
                                    (let ((__tmp193494
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193494 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193495
                                gx#current-expander-phi
                                __tmp193493)))
                           _%tl192904192919%_)))
                      (_%g192899192909%_ _%g192900192912%_)))))
          (_%g192898192933%_ _%stx192897%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192835%_ _%stx192836%_)
        (let* ((_%g192838192852%_
                (lambda (_%g192839192849%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192839192849%_))))
               (_%g192837192893%_
                (lambda (_%g192839192855%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192839192855%_))
                      (let ((_%e192842192857%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192839192855%_))))
                        (let ((_%hd192843192860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192842192857%_)))
                              (_%tl192844192862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192842192857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192844192862%_))
                              (let ((_%e192845192865%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192844192862%_))))
                                (let ((_%hd192846192868%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192845192865%_)))
                                      (_%tl192847192870%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192845192865%_))))
                                  ((lambda (_%L192873%_ _%L192874%_)
                                     (let* ((_%ctx192887%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192874%_)))
                                            (_%code192889%_
                                             (##structure-ref
                                              _%ctx192887%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193496
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192835%_
                                                  _%code192889%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193496
                                        gx#current-expander-context
                                        _%ctx192887%_)))
                                   _%tl192847192870%_
                                   _%hd192846192868%_)))
                              (_%g192838192852%_ _%g192839192855%_))))
                      (_%g192838192852%_ _%g192839192855%_)))))
          (_%g192837192893%_ _%stx192836%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192640%_ _%stx192641%_)
        (letrec ((_%generate-e192643%_
                  (lambda (_%id192820%_)
                    (let* ((_%sym192822%_
                            (if (let ((__tmp193497
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193497))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192820%_))
                                '#f))
                           (_%$e192824%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192822%_))))
                      (if _%$e192824%_
                          ((lambda (_%klass192827%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192822%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192822%_
                                                     (cons (let ((__method193472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192827%_ 'typedecl))))
                     (if __method193472
                         (__method193472 _%klass192827%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192827%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192822%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192822%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192824%_)
                          (let ((_%$e192829%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192822%_))))
                            (if _%$e192829%_
                                ((lambda (_%type192832%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192822%_
                                      '" "
                                      _%type192832%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192832%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192822%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192822%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192832%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192822%_
                                                   (cons (let ((__method193473
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192832%_ 'typedecl))))
                   (if __method193473
                       (__method193473 _%type192832%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192832%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192829%_)
                                '(begin))))))))
          (let* ((_%__stx193084193085%_ _%stx192641%_)
                 (_%g192646192684%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193084193085%_)))))
            (let ((_%__kont193086193087%_
                   (lambda (_%L192802%_) (_%generate-e192643%_ _%L192802%_)))
                  (_%__kont193088193089%_
                   (lambda (_%L192737%_)
                     (let ((_%types192763%_
                            (map _%generate-e192643%_
                                 (let ((__tmp193498
                                        (lambda (_%g192755192758%_
                                                 _%g192756192760%_)
                                          (cons _%g192755192758%_
                                                _%g192756192760%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193498 '() _%L192737%_)))))
                       (cons 'begin _%types192763%_)))))
              (let ((_%__match193139193140%_
                     (lambda (_%e192662192689%_
                              _%hd192663192692%_
                              _%tl192664192694%_
                              _%e192665192697%_
                              _%hd192666192700%_
                              _%tl192667192702%_
                              _%__splice193090193091%_
                              _%target192668192705%_
                              _%tl192670192707%_)
                       (letrec ((_%loop192671192710%_
                                 (lambda (_%hd192669192713%_
                                          _%id192675192715%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192669192713%_))
                                       (let ((_%e192672192718%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192669192713%_))))
                                         (let ((_%lp-tl192674192723%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192672192718%_)))
                                               (_%lp-hd192673192721%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192672192718%_))))
                                           (_%loop192671192710%_
                                            _%lp-tl192674192723%_
                                            (cons _%lp-hd192673192721%_
                                                  _%id192675192715%_))))
                                       (let ((_%id192676192726%_
                                              (reverse _%id192675192715%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192667192702%_))
                                             (let ((_%e192677192729%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192667192702%_))))
                                               (let ((_%tl192679192734%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192677192729%_)))
                                                     (_%hd192678192732%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192677192729%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192679192734%_))
                                                     (_%__kont193088193089%_
                                                      _%id192676192726%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192646192684%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192646192684%_))))))))
                         (_%loop192671192710%_ _%target192668192705%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193084193085%_))
                    (let ((_%e192649192770%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193084193085%_))))
                      (let ((_%tl192651192775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192649192770%_)))
                            (_%hd192650192773%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192649192770%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192651192775%_))
                            (let ((_%e192652192778%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192651192775%_))))
                              (let ((_%tl192654192783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192652192778%_)))
                                    (_%hd192653192781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192652192778%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192653192781%_))
                                    (let ((_%e192655192786%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192653192781%_))))
                                      (let ((_%tl192657192791%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192655192786%_)))
                                            (_%hd192656192789%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192655192786%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192657192791%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192654192783%_))
                                                (let ((_%e192658192794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192654192783%_))))
                                                  (let ((_%tl192660192799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192658192794%_)))
                                                        (_%hd192659192797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192658192794%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192660192799%_))
                                                        (_%__kont193086193087%_
                                                         _%hd192656192789%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192653192781%_))
                                                            (let ((_%__splice193090193091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192653192781%_ '0))))
                      (let ((_%tl192670192707%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193090193091%_ '1)))
                            (_%target192668192705%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193090193091%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192670192707%_))
                            (_%__match193139193140%_
                             _%e192649192770%_
                             _%hd192650192773%_
                             _%tl192651192775%_
                             _%e192652192778%_
                             _%hd192653192781%_
                             _%tl192654192783%_
                             _%__splice193090193091%_
                             _%target192668192705%_
                             _%tl192670192707%_)
                            (let ()
                              (declare (not safe))
                              (_%g192646192684%_)))))
                    (let () (declare (not safe)) (_%g192646192684%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192653192781%_))
                                                    (let ((_%__splice193090193091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192653192781%_
                                                              '0))))
                                                      (let ((_%tl192670192707%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193090193091%_ '1)))
                    (_%target192668192705%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193090193091%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192670192707%_))
                    (_%__match193139193140%_
                     _%e192649192770%_
                     _%hd192650192773%_
                     _%tl192651192775%_
                     _%e192652192778%_
                     _%hd192653192781%_
                     _%tl192654192783%_
                     _%__splice193090193091%_
                     _%target192668192705%_
                     _%tl192670192707%_)
                    (let () (declare (not safe)) (_%g192646192684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192646192684%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192653192781%_))
                                                (let ((_%__splice193090193091%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192653192781%_
                                                          '0))))
                                                  (let ((_%tl192670192707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193090193091%_
                                                            '1)))
                                                        (_%target192668192705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193090193091%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192670192707%_))
                                                        (_%__match193139193140%_
                                                         _%e192649192770%_
                                                         _%hd192650192773%_
                                                         _%tl192651192775%_
                                                         _%e192652192778%_
                                                         _%hd192653192781%_
                                                         _%tl192654192783%_
                                                         _%__splice193090193091%_
                                                         _%target192668192705%_
                                                         _%tl192670192707%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192646192684%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192646192684%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192653192781%_))
                                        (let ((_%__splice193090193091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192653192781%_
                                                  '0))))
                                          (let ((_%tl192670192707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193090193091%_
                                                    '1)))
                                                (_%target192668192705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193090193091%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192670192707%_))
                                                (_%__match193139193140%_
                                                 _%e192649192770%_
                                                 _%hd192650192773%_
                                                 _%tl192651192775%_
                                                 _%e192652192778%_
                                                 _%hd192653192781%_
                                                 _%tl192654192783%_
                                                 _%__splice193090193091%_
                                                 _%target192668192705%_
                                                 _%tl192670192707%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192646192684%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192646192684%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192646192684%_)))))
                    (let () (declare (not safe)) (_%g192646192684%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192193%_ _%stx192194%_)
        (let* ((_%__stx193142193143%_ _%stx192194%_)
               (_%g192198192300%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193142193143%_)))))
          (let ((_%__kont193144193145%_
                 (lambda (_%L192590%_
                          _%L192591%_
                          _%L192592%_
                          _%L192593%_
                          _%L192594%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192593%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192592%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192591%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192590%_))
                                                 '())))))))
                (_%__kont193146193147%_
                 (lambda (_%L192416%_ _%L192417%_ _%L192418%_ _%L192419%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192418%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192417%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192416%_))
                                           (cons '#f '())))))))
                (_%__kont193148193149%_ (lambda () '(begin))))
            (let ((_%__match193277193278%_
                   (lambda (_%e192205192462%_
                            _%hd192206192465%_
                            _%tl192207192467%_
                            _%e192208192470%_
                            _%hd192209192473%_
                            _%tl192210192475%_
                            _%e192211192478%_
                            _%hd192212192481%_
                            _%tl192213192483%_
                            _%e192214192486%_
                            _%hd192215192489%_
                            _%tl192216192491%_
                            _%e192217192494%_
                            _%hd192218192497%_
                            _%tl192219192499%_
                            _%e192220192502%_
                            _%hd192221192505%_
                            _%tl192222192507%_
                            _%e192223192510%_
                            _%hd192224192513%_
                            _%tl192225192515%_
                            _%e192226192518%_
                            _%hd192227192521%_
                            _%tl192228192523%_
                            _%e192229192526%_
                            _%hd192230192529%_
                            _%tl192231192531%_
                            _%e192232192534%_
                            _%hd192233192537%_
                            _%tl192234192539%_
                            _%e192235192542%_
                            _%hd192236192545%_
                            _%tl192237192547%_
                            _%e192238192550%_
                            _%hd192239192553%_
                            _%tl192240192555%_
                            _%e192241192558%_
                            _%hd192242192561%_
                            _%tl192243192563%_
                            _%e192244192566%_
                            _%hd192245192569%_
                            _%tl192246192571%_
                            _%e192247192574%_
                            _%hd192248192577%_
                            _%tl192249192579%_
                            _%e192250192582%_
                            _%hd192251192585%_
                            _%tl192252192587%_)
                     (let ((_%L192590%_ _%hd192251192585%_)
                           (_%L192591%_ _%hd192242192561%_)
                           (_%L192592%_ _%hd192233192537%_)
                           (_%L192593%_ _%hd192224192513%_)
                           (_%L192594%_ _%hd192215192489%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192594%_
                              'bind-method!))
                           (_%__kont193144193145%_
                            _%L192590%_
                            _%L192591%_
                            _%L192592%_
                            _%L192593%_
                            _%L192594%_)
                           (_%__kont193148193149%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193142193143%_))
                  (let ((_%e192205192462%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193142193143%_))))
                    (let ((_%tl192207192467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192205192462%_)))
                          (_%hd192206192465%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192205192462%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192207192467%_))
                          (let ((_%e192208192470%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192207192467%_))))
                            (let ((_%tl192210192475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192208192470%_)))
                                  (_%hd192209192473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192208192470%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192209192473%_))
                                  (let ((_%e192211192478%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192209192473%_))))
                                    (let ((_%tl192213192483%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192211192478%_)))
                                          (_%hd192212192481%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192211192478%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192212192481%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192212192481%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192213192483%_))
                                                  (let ((_%e192214192486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192213192483%_))))
                                                    (let ((_%tl192216192491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192214192486%_)))
                                                          (_%hd192215192489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192214192486%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192216192491%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192210192475%_))
                      (let ((_%e192217192494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192210192475%_))))
                        (let ((_%tl192219192499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192217192494%_)))
                              (_%hd192218192497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192217192494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192218192497%_))
                              (let ((_%e192220192502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192218192497%_))))
                                (let ((_%tl192222192507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192220192502%_)))
                                      (_%hd192221192505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192220192502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192221192505%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192221192505%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192222192507%_))
                                              (let ((_%e192223192510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192222192507%_))))
                                                (let ((_%tl192225192515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192223192510%_)))
                                                      (_%hd192224192513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192223192510%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192225192515%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192219192499%_))
                                                          (let ((_%e192226192518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192219192499%_))))
                    (let ((_%tl192228192523%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192226192518%_)))
                          (_%hd192227192521%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192226192518%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192227192521%_))
                          (let ((_%e192229192526%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192227192521%_))))
                            (let ((_%tl192231192531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192229192526%_)))
                                  (_%hd192230192529%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192229192526%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192230192529%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192230192529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192231192531%_))
                                          (let ((_%e192232192534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192231192531%_))))
                                            (let ((_%tl192234192539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192232192534%_)))
                                                  (_%hd192233192537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192232192534%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192234192539%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192228192523%_))
                                                      (let ((_%e192235192542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192228192523%_))))
                (let ((_%tl192237192547%_
                       (let () (declare (not safe)) (##cdr _%e192235192542%_)))
                      (_%hd192236192545%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192235192542%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192236192545%_))
                      (let ((_%e192238192550%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192236192545%_))))
                        (let ((_%tl192240192555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192238192550%_)))
                              (_%hd192239192553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192238192550%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192239192553%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192239192553%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192240192555%_))
                                      (let ((_%e192241192558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192240192555%_))))
                                        (let ((_%tl192243192563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192241192558%_)))
                                              (_%hd192242192561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192241192558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192243192563%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192237192547%_))
                                                  (let ((_%e192244192566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192237192547%_))))
                                                    (let ((_%tl192246192571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192244192566%_)))
                                                          (_%hd192245192569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192244192566%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192245192569%_))
                                                          (let ((_%e192247192574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192245192569%_))))
                    (let ((_%tl192249192579%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192247192574%_)))
                          (_%hd192248192577%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192247192574%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192248192577%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192248192577%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192249192579%_))
                                  (let ((_%e192250192582%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192249192579%_))))
                                    (let ((_%tl192252192587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192250192582%_)))
                                          (_%hd192251192585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192250192582%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192252192587%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192246192571%_))
                                              (_%__match193277193278%_
                                               _%e192205192462%_
                                               _%hd192206192465%_
                                               _%tl192207192467%_
                                               _%e192208192470%_
                                               _%hd192209192473%_
                                               _%tl192210192475%_
                                               _%e192211192478%_
                                               _%hd192212192481%_
                                               _%tl192213192483%_
                                               _%e192214192486%_
                                               _%hd192215192489%_
                                               _%tl192216192491%_
                                               _%e192217192494%_
                                               _%hd192218192497%_
                                               _%tl192219192499%_
                                               _%e192220192502%_
                                               _%hd192221192505%_
                                               _%tl192222192507%_
                                               _%e192223192510%_
                                               _%hd192224192513%_
                                               _%tl192225192515%_
                                               _%e192226192518%_
                                               _%hd192227192521%_
                                               _%tl192228192523%_
                                               _%e192229192526%_
                                               _%hd192230192529%_
                                               _%tl192231192531%_
                                               _%e192232192534%_
                                               _%hd192233192537%_
                                               _%tl192234192539%_
                                               _%e192235192542%_
                                               _%hd192236192545%_
                                               _%tl192237192547%_
                                               _%e192238192550%_
                                               _%hd192239192553%_
                                               _%tl192240192555%_
                                               _%e192241192558%_
                                               _%hd192242192561%_
                                               _%tl192243192563%_
                                               _%e192244192566%_
                                               _%hd192245192569%_
                                               _%tl192246192571%_
                                               _%e192247192574%_
                                               _%hd192248192577%_
                                               _%tl192249192579%_
                                               _%e192250192582%_
                                               _%hd192251192585%_
                                               _%tl192252192587%_)
                                              (_%__kont193148193149%_))
                                          (_%__kont193148193149%_))))
                                  (_%__kont193148193149%_))
                              (_%__kont193148193149%_))
                          (_%__kont193148193149%_))))
                  (_%__kont193148193149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192237192547%_))
                                                      (if (let ((__tmp193499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193499 'bind-method!))
                  (let ((_%L192416%_ _%hd192242192561%_)
                        (_%L192417%_ _%hd192233192537%_)
                        (_%L192418%_ _%hd192224192513%_)
                        (_%L192419%_ _%hd192215192489%_))
                    (_%__kont193146193147%_
                     _%L192416%_
                     _%L192417%_
                     _%L192418%_
                     _%L192419%_))
                  (_%__kont193148193149%_))
              (_%__kont193148193149%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193148193149%_))))
                                      (_%__kont193148193149%_))
                                  (_%__kont193148193149%_))
                              (_%__kont193148193149%_))))
                      (_%__kont193148193149%_))))
              (_%__kont193148193149%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193148193149%_))))
                                          (_%__kont193148193149%_))
                                      (_%__kont193148193149%_))
                                  (_%__kont193148193149%_))))
                          (_%__kont193148193149%_))))
                  (_%__kont193148193149%_))
              (_%__kont193148193149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193148193149%_))
                                          (_%__kont193148193149%_))
                                      (_%__kont193148193149%_))))
                              (_%__kont193148193149%_))))
                      (_%__kont193148193149%_))
                  (_%__kont193148193149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193148193149%_))
                                              (_%__kont193148193149%_))
                                          (_%__kont193148193149%_))))
                                  (_%__kont193148193149%_))))
                          (_%__kont193148193149%_))))
                  (_%__kont193148193149%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192017%_ _%stx192018%_)
        (let* ((_%__stx193386193387%_ _%stx192018%_)
               (_%g192021192061%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193386193387%_)))))
          (let ((_%__kont193388193389%_
                 (lambda (_%L192167%_ _%L192168%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192168%_))
                               (cons _%L192167%_ '())))))
                (_%__kont193390193391%_
                 (lambda (_%L192090%_ _%L192091%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193386193387%_))
                (let ((_%e192025192111%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193386193387%_))))
                  (let ((_%tl192027192116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192025192111%_)))
                        (_%hd192026192114%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192025192111%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192027192116%_))
                        (let ((_%e192028192119%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192027192116%_))))
                          (let ((_%tl192030192124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192028192119%_)))
                                (_%hd192029192122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192028192119%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192029192122%_))
                                (let ((_%e192031192127%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192029192122%_))))
                                  (let ((_%tl192033192132%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192031192127%_)))
                                        (_%hd192032192130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192031192127%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192032192130%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192032192130%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192033192132%_))
                                                (let ((_%e192034192135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192033192132%_))))
                                                  (let ((_%tl192036192140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192034192135%_)))
                                                        (_%hd192035192138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192034192135%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192036192140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192030192124%_))
                                                            (let ((_%e192037192143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192030192124%_))))
                      (let ((_%tl192039192148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192037192143%_)))
                            (_%hd192038192146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192037192143%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192038192146%_))
                            (let ((_%e192040192151%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192038192146%_))))
                              (let ((_%tl192042192156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192040192151%_)))
                                    (_%hd192041192154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192040192151%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192041192154%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192041192154%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192042192156%_))
                                            (let ((_%e192043192159%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192042192156%_))))
                                              (let ((_%tl192045192164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192043192159%_)))
                                                    (_%hd192044192162%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192043192159%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192045192164%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192039192148%_))
                                                        (_%__kont193388193389%_
                                                         _%hd192044192162%_
                                                         _%hd192035192138%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192021192061%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192039192148%_))
                                                        (_%__kont193390193391%_
                                                         _%hd192038192146%_
                                                         _%hd192029192122%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192021192061%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192039192148%_))
                                                (_%__kont193390193391%_
                                                 _%hd192038192146%_
                                                 _%hd192029192122%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192021192061%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192039192148%_))
                                            (_%__kont193390193391%_
                                             _%hd192038192146%_
                                             _%hd192029192122%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192021192061%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192039192148%_))
                                        (_%__kont193390193391%_
                                         _%hd192038192146%_
                                         _%hd192029192122%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192021192061%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192039192148%_))
                                (_%__kont193390193391%_
                                 _%hd192038192146%_
                                 _%hd192029192122%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192021192061%_))))))
                    (let () (declare (not safe)) (_%g192021192061%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192030192124%_))
                    (let ((_%e192054192082%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192030192124%_))))
                      (let ((_%tl192056192087%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192054192082%_)))
                            (_%hd192055192085%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192054192082%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192056192087%_))
                            (_%__kont193390193391%_
                             _%hd192055192085%_
                             _%hd192029192122%_)
                            (let ()
                              (declare (not safe))
                              (_%g192021192061%_)))))
                    (let () (declare (not safe)) (_%g192021192061%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192030192124%_))
                                                    (let ((_%e192054192082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192030192124%_))))
                                                      (let ((_%tl192056192087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192054192082%_)))
                    (_%hd192055192085%_
                     (let () (declare (not safe)) (##car _%e192054192082%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192056192087%_))
                    (_%__kont193390193391%_
                     _%hd192055192085%_
                     _%hd192029192122%_)
                    (let () (declare (not safe)) (_%g192021192061%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192021192061%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192030192124%_))
                                                (let ((_%e192054192082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192030192124%_))))
                                                  (let ((_%tl192056192087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192054192082%_)))
                                                        (_%hd192055192085%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192054192082%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192056192087%_))
                                                        (_%__kont193390193391%_
                                                         _%hd192055192085%_
                                                         _%hd192029192122%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192021192061%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192021192061%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192030192124%_))
                                            (let ((_%e192054192082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192030192124%_))))
                                              (let ((_%tl192056192087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192054192082%_)))
                                                    (_%hd192055192085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192054192082%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192056192087%_))
                                                    (_%__kont193390193391%_
                                                     _%hd192055192085%_
                                                     _%hd192029192122%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192021192061%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192021192061%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192030192124%_))
                                    (let ((_%e192054192082%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192030192124%_))))
                                      (let ((_%tl192056192087%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192054192082%_)))
                                            (_%hd192055192085%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192054192082%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192056192087%_))
                                            (_%__kont193390193391%_
                                             _%hd192055192085%_
                                             _%hd192029192122%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192021192061%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192021192061%_))))))
                        (let () (declare (not safe)) (_%g192021192061%_)))))
                (let () (declare (not safe)) (_%g192021192061%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192004%_)
        (let ((_%self192007%_ _%self192004%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192007%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191777%_)
        (let* ((_%self191780%_ _%self191777%_)
               (_%self191789191805%_ _%self191780%_)
               (_%E191791191809%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191789191805%_
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
               (_%K191792191824%_
                (lambda (_%methods191812%_
                         _%metaclass191813%_
                         _%system?191814%_
                         _%final?191815%_
                         _%struct?191816%_
                         _%constructor191817%_
                         _%fields191818%_
                         _%slots191819%_
                         _%precendence-list191820%_
                         _%super191821%_
                         _%id191822%_)
                  (cons '@class
                        (cons _%id191822%_
                              (cons _%super191821%_
                                    (cons _%precendence-list191820%_
                                          (cons _%slots191819%_
                                                (cons _%fields191818%_
                                                      (cons _%constructor191817%_
                                                            (cons _%struct?191816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191815%_
                                (cons _%system?191814%_
                                      (cons _%metaclass191813%_
                                            (cons (if _%methods191812%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191812%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191793191827%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '1
                         '#f
                         '#f)))
                     (_%id191830%_ _%e191793191827%_)
                     (_%e191794191832%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '2
                         '#f
                         '#f)))
                     (_%super191835%_ _%e191794191832%_)
                     (_%e191795191837%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191840%_ _%e191795191837%_)
                     (_%e191796191842%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191845%_ _%e191796191842%_)
                     (_%e191797191847%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191850%_ _%e191797191847%_)
                     (_%e191798191852%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191855%_ _%e191798191852%_)
                     (_%e191799191857%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191860%_ _%e191799191857%_)
                     (_%e191800191862%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191865%_ _%e191800191862%_)
                     (_%e191801191867%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191870%_ _%e191801191867%_)
                     (_%e191802191872%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191875%_ _%e191802191872%_)
                     (_%e191803191877%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191789191805%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191880%_ _%e191803191877%_))
                (_%K191792191824%_
                 _%methods191880%_
                 _%metaclass191875%_
                 _%system?191870%_
                 _%final?191865%_
                 _%struct?191860%_
                 _%constructor191855%_
                 _%fields191850%_
                 _%slots191845%_
                 _%precendence-list191840%_
                 _%super191835%_
                 _%id191830%_))
              (_%E191791191809%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191642%_)
        (let ((_%self191645%_ _%self191642%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191645%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191507%_)
        (let ((_%self191510%_ _%self191507%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191510%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191372%_)
        (let ((_%self191375%_ _%self191372%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191375%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191375%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191375%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191237%_)
        (let ((_%self191240%_ _%self191237%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191240%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191240%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191240%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191102%_)
        (let ((_%self191105%_ _%self191102%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191105%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191105%_
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
      (lambda (_%self190915%_)
        (let* ((_%self190918%_ _%self190915%_)
               (_%self190927190936%_ _%self190918%_)
               (_%E190929190940%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190927190936%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190930190959%_
                (lambda (_%dispatch190943%_
                         _%arity190944%_
                         _%signature190945%_)
                  (if _%signature190945%_
                      (let ((_%signature190947%_ _%signature190945%_))
                        (cons '@lambda
                              (cons _%arity190944%_
                                    (cons _%dispatch190943%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190947%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature190947%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature190947%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature190947%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature190947%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity190944%_
                                  (cons _%dispatch190943%_ '())))))))
          (if '#t
              (let* ((_%e190931190962%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190927190936%_
                         '1
                         '#f
                         '#f)))
                     (_%e190932190965%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190927190936%_
                         '2
                         '#f
                         '#f)))
                     (_%signature190968%_ _%e190932190965%_)
                     (_%e190933190970%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190927190936%_
                         '3
                         '#f
                         '#f)))
                     (_%arity190973%_ _%e190933190970%_)
                     (_%e190934190975%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190927190936%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch190978%_ _%e190934190975%_))
                (_%K190930190959%_
                 _%dispatch190978%_
                 _%arity190973%_
                 _%signature190968%_))
              (_%E190929190940%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190776%_)
        (let ((_%self190779%_ _%self190776%_))
          (letrec ((_%clause-e190789%_
                    (lambda (_%clause190791%_)
                      (cdr (let ((__method193474
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190791%_
                                     'typedecl))))
                             (if __method193474
                                 (__method193474 _%clause190791%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190791%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190789%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190779%_
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
      (lambda (_%self190641%_)
        (let ((_%self190644%_ _%self190641%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190644%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190644%_
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
      (lambda (_%self190506%_)
        (let ((_%self190509%_ _%self190506%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190509%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190509%_
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
      (lambda (_%self190371%_)
        (let ((_%self190374%_ _%self190371%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190374%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
