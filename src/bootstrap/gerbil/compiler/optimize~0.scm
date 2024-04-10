(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712757961)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193543
                   (let ((__obj193537
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193537)
                     __obj193537)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193543)))))
    (define gxc#optimize!
      (lambda (_%ctx193146%_)
        (let ((__tmp193546
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx193146%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx193146%_)
                 (let ((__tmp193548
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193547
                        (##structure-ref
                         _%ctx193146%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193548 __tmp193547 '#t))
                 (let ((_%code193149%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx193146%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx193146%_
                    _%code193149%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193545 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193544 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193546
           gxc#current-compile-mutators
           __tmp193545
           gxc#current-compile-local-type
           __tmp193544))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193132%_)
        (letrec ((_%load-it!193134%_
                  (lambda (_%id193144%_)
                    (if (let ((__tmp193549
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193549 _%id193144%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id193144%_)
                          (let ((__tmp193550
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193550 _%id193144%_ '#t)))))))
          (let* ((_%modid193136%_
                  (##structure-ref
                   _%ctx193132%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193138%_ (symbol->string _%modid193136%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193138%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193138%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193134%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193134%_
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
      (lambda (_%ctx193069%_)
        (letrec* ((_%deps193071%_
                   (let* ((_%imports193122%_
                           (##structure-ref
                            _%ctx193069%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193124%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193069%_))))
                     (if _%$e193124%_
                         ((lambda (_%g193126193128%_)
                            (cons _%g193126193128%_ _%imports193122%_))
                          _%$e193124%_)
                         _%imports193122%_))))
          (let _%lp193073%_ ((_%rest193075%_ _%deps193071%_))
            (let* ((_%rest193076193084%_ _%rest193075%_)
                   (_%else193078193092%_ (lambda () '#!void))
                   (_%K193080193110%_
                    (lambda (_%rest193095%_ _%hd193096%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193096%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193552
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193551
                                       (##structure-ref
                                        _%hd193096%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193552 __tmp193551))
                                '#!void
                                (begin
                                  (let ((_%$e193099%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193096%_))))
                                    (if _%$e193099%_
                                        ((lambda (_%pre193102%_)
                                           (_%lp193073%_
                                            (cons _%pre193102%_
                                                  (##structure-ref
                                                   _%hd193096%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e193099%_)
                                        (_%lp193073%_
                                         (##structure-ref
                                          _%hd193096%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd193096%_)))
                            (_%lp193073%_ _%rest193095%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193096%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193554
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193553
                                           (##structure-ref
                                            _%hd193096%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193554 __tmp193553))
                                    '#!void
                                    (begin
                                      (_%lp193073%_
                                       (##structure-ref
                                        _%hd193096%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd193096%_)))
                                (_%lp193073%_ _%rest193095%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193096%_
                                     'gx#module-import::t))
                                  (_%lp193073%_
                                   (cons (##direct-structure-ref
                                          _%hd193096%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest193095%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193096%_
                                         'gx#module-export::t))
                                      (_%lp193073%_
                                       (cons (##direct-structure-ref
                                              _%hd193096%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest193095%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193096%_
                                             'gx#import-set::t))
                                          (_%lp193073%_
                                           (cons (##direct-structure-ref
                                                  _%hd193096%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest193095%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193096%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193076193084%_))
                  (let ((_%hd193081193113%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193076193084%_)))
                        (_%tl193082193115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193076193084%_))))
                    (let* ((_%hd193118%_ _%hd193081193113%_)
                           (_%rest193120%_ _%tl193082193115%_))
                      (_%K193080193110%_ _%rest193120%_ _%hd193118%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193049%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193049%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx193049%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht193051%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193053%_
                    (##structure-ref
                     _%ctx193049%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193055%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193051%_ _%id193053%_)))
                   (_%$e193058%_ _%mod193055%_))
              (if _%$e193058%_
                  _%$e193058%_
                  (let* ((_%mod193061%_
                          (gxc#optimizer-import-ssxi _%ctx193049%_))
                         (_%val193066%_
                          (let ((_%$e193063%_ _%mod193061%_))
                            (if _%$e193063%_ _%$e193063%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193051%_ _%id193053%_ _%val193066%_))
                    _%val193066%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193047%_)
        (if (##structure-ref _%ctx193047%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx193047%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193024%_)
        (letrec ((_%catch-e193026%_
                  (lambda (_%exn193045%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193045%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193045%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193024%_))))
                    '#f))
                 (_%import-e193027%_
                  (lambda ()
                    (let* ((_%str-id193030%_
                            (let ((__tmp193555
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193024%_))))
                              (declare (not safe))
                              (##string-append __tmp193555 '".ssxi")))
                           (_%artefact-path193038%_
                            (let ((_%odir193031193033%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193031193033%_
                                  (let ((_%odir193036%_ _%odir193031193033%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193030%_
                                        '".ss"))
                                     _%odir193036%_))
                                  '#f)))
                           (_%library-path193040%_
                            (let ((__tmp193556
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193030%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193556)))
                           (_%ssxi-path193042%_
                            (if (and _%artefact-path193038%_
                                     (file-exists? _%artefact-path193038%_))
                                _%artefact-path193038%_
                                _%library-path193040%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193042%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193042%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193026%_ _%import-e193027%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193015%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193015%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193015%_))
        (let* ((_%stx193017%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193015%_)))
               (_%stx193019%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193017%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193019%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx193019%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193019%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193019%_))
          (let ((_%stx193022%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193019%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193022%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193558 (list gxc#::generate-runtime-empty::t))
            (__tmp193557 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193558
         '()
         __tmp193557
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193012%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193012%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193559
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
        (__make-promise __tmp193559)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193004%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193007%_
                (let ((__obj193539
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193539))
               (__tmp193560
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193007%_ _%stx193004%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193560
           gxc#current-compile-method
           _%self193007%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192964%_ _%stx192965%_)
        (let* ((_%g192967192977%_
                (lambda (_%g192968192974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192968192974%_))))
               (_%g192966193001%_
                (lambda (_%g192968192980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192968192980%_))
                      (let ((_%e192970192982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192968192980%_))))
                        (let ((_%hd192971192985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192970192982%_)))
                              (_%tl192972192987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192970192982%_))))
                          ((lambda (_%L192990%_)
                             (let ((__tmp193563
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192964%_
                                         _%stx192965%_))))
                                   (__tmp193561
                                    (let ((__tmp193562
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193562 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193563
                                gx#current-expander-phi
                                __tmp193561)))
                           _%tl192972192987%_)))
                      (_%g192967192977%_ _%g192968192980%_)))))
          (_%g192966193001%_ _%stx192965%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192903%_ _%stx192904%_)
        (let* ((_%g192906192920%_
                (lambda (_%g192907192917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192907192917%_))))
               (_%g192905192961%_
                (lambda (_%g192907192923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192907192923%_))
                      (let ((_%e192910192925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192907192923%_))))
                        (let ((_%hd192911192928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192910192925%_)))
                              (_%tl192912192930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192910192925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192912192930%_))
                              (let ((_%e192913192933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192912192930%_))))
                                (let ((_%hd192914192936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192913192933%_)))
                                      (_%tl192915192938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192913192933%_))))
                                  ((lambda (_%L192941%_ _%L192942%_)
                                     (let* ((_%ctx192955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192942%_)))
                                            (_%code192957%_
                                             (##structure-ref
                                              _%ctx192955%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193564
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192903%_
                                                  _%code192957%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193564
                                        gx#current-expander-context
                                        _%ctx192955%_)))
                                   _%tl192915192938%_
                                   _%hd192914192936%_)))
                              (_%g192906192920%_ _%g192907192923%_))))
                      (_%g192906192920%_ _%g192907192923%_)))))
          (_%g192905192961%_ _%stx192904%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192708%_ _%stx192709%_)
        (letrec ((_%generate-e192711%_
                  (lambda (_%id192888%_)
                    (let* ((_%sym192890%_
                            (if (let ((__tmp193565
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193565))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192888%_))
                                '#f))
                           (_%$e192892%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192890%_))))
                      (if _%$e192892%_
                          ((lambda (_%klass192895%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192890%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192890%_
                                                     (cons (let ((__method193540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192895%_ 'typedecl))))
                     (if __method193540
                         (__method193540 _%klass192895%_)
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass192895%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192890%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192890%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192892%_)
                          (let ((_%$e192897%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192890%_))))
                            (if _%$e192897%_
                                ((lambda (_%type192900%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192890%_
                                      '" "
                                      _%type192900%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192900%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192890%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192890%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192900%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192890%_
                                                   (cons (let ((__method193541
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192900%_ 'typedecl))))
                   (if __method193541
                       (__method193541 _%type192900%_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type192900%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192897%_)
                                '(begin))))))))
          (let* ((_%__stx193152193153%_ _%stx192709%_)
                 (_%g192714192752%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193152193153%_)))))
            (let ((_%__kont193154193155%_
                   (lambda (_%L192870%_) (_%generate-e192711%_ _%L192870%_)))
                  (_%__kont193156193157%_
                   (lambda (_%L192805%_)
                     (let ((_%types192831%_
                            (map _%generate-e192711%_
                                 (let ((__tmp193566
                                        (lambda (_%g192823192826%_
                                                 _%g192824192828%_)
                                          (cons _%g192823192826%_
                                                _%g192824192828%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193566 '() _%L192805%_)))))
                       (cons 'begin _%types192831%_)))))
              (let ((_%__match193207193208%_
                     (lambda (_%e192730192757%_
                              _%hd192731192760%_
                              _%tl192732192762%_
                              _%e192733192765%_
                              _%hd192734192768%_
                              _%tl192735192770%_
                              _%__splice193158193159%_
                              _%target192736192773%_
                              _%tl192738192775%_)
                       (letrec ((_%loop192739192778%_
                                 (lambda (_%hd192737192781%_
                                          _%id192743192783%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192737192781%_))
                                       (let ((_%e192740192786%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192737192781%_))))
                                         (let ((_%lp-tl192742192791%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192740192786%_)))
                                               (_%lp-hd192741192789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192740192786%_))))
                                           (_%loop192739192778%_
                                            _%lp-tl192742192791%_
                                            (cons _%lp-hd192741192789%_
                                                  _%id192743192783%_))))
                                       (let ((_%id192744192794%_
                                              (reverse _%id192743192783%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192735192770%_))
                                             (let ((_%e192745192797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192735192770%_))))
                                               (let ((_%tl192747192802%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192745192797%_)))
                                                     (_%hd192746192800%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192745192797%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192747192802%_))
                                                     (_%__kont193156193157%_
                                                      _%id192744192794%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192714192752%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192714192752%_))))))))
                         (_%loop192739192778%_ _%target192736192773%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193152193153%_))
                    (let ((_%e192717192838%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193152193153%_))))
                      (let ((_%tl192719192843%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192717192838%_)))
                            (_%hd192718192841%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192717192838%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192719192843%_))
                            (let ((_%e192720192846%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192719192843%_))))
                              (let ((_%tl192722192851%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192720192846%_)))
                                    (_%hd192721192849%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192720192846%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192721192849%_))
                                    (let ((_%e192723192854%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192721192849%_))))
                                      (let ((_%tl192725192859%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192723192854%_)))
                                            (_%hd192724192857%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192723192854%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192725192859%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192722192851%_))
                                                (let ((_%e192726192862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192722192851%_))))
                                                  (let ((_%tl192728192867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192726192862%_)))
                                                        (_%hd192727192865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192726192862%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192728192867%_))
                                                        (_%__kont193154193155%_
                                                         _%hd192724192857%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192721192849%_))
                                                            (let ((_%__splice193158193159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192721192849%_ '0))))
                      (let ((_%tl192738192775%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193158193159%_ '1)))
                            (_%target192736192773%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193158193159%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192738192775%_))
                            (_%__match193207193208%_
                             _%e192717192838%_
                             _%hd192718192841%_
                             _%tl192719192843%_
                             _%e192720192846%_
                             _%hd192721192849%_
                             _%tl192722192851%_
                             _%__splice193158193159%_
                             _%target192736192773%_
                             _%tl192738192775%_)
                            (let ()
                              (declare (not safe))
                              (_%g192714192752%_)))))
                    (let () (declare (not safe)) (_%g192714192752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192721192849%_))
                                                    (let ((_%__splice193158193159%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192721192849%_
                                                              '0))))
                                                      (let ((_%tl192738192775%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193158193159%_ '1)))
                    (_%target192736192773%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193158193159%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192738192775%_))
                    (_%__match193207193208%_
                     _%e192717192838%_
                     _%hd192718192841%_
                     _%tl192719192843%_
                     _%e192720192846%_
                     _%hd192721192849%_
                     _%tl192722192851%_
                     _%__splice193158193159%_
                     _%target192736192773%_
                     _%tl192738192775%_)
                    (let () (declare (not safe)) (_%g192714192752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192714192752%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192721192849%_))
                                                (let ((_%__splice193158193159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192721192849%_
                                                          '0))))
                                                  (let ((_%tl192738192775%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193158193159%_
                                                            '1)))
                                                        (_%target192736192773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193158193159%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192738192775%_))
                                                        (_%__match193207193208%_
                                                         _%e192717192838%_
                                                         _%hd192718192841%_
                                                         _%tl192719192843%_
                                                         _%e192720192846%_
                                                         _%hd192721192849%_
                                                         _%tl192722192851%_
                                                         _%__splice193158193159%_
                                                         _%target192736192773%_
                                                         _%tl192738192775%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192714192752%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192714192752%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192721192849%_))
                                        (let ((_%__splice193158193159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192721192849%_
                                                  '0))))
                                          (let ((_%tl192738192775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193158193159%_
                                                    '1)))
                                                (_%target192736192773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193158193159%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192738192775%_))
                                                (_%__match193207193208%_
                                                 _%e192717192838%_
                                                 _%hd192718192841%_
                                                 _%tl192719192843%_
                                                 _%e192720192846%_
                                                 _%hd192721192849%_
                                                 _%tl192722192851%_
                                                 _%__splice193158193159%_
                                                 _%target192736192773%_
                                                 _%tl192738192775%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192714192752%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192714192752%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192714192752%_)))))
                    (let () (declare (not safe)) (_%g192714192752%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192261%_ _%stx192262%_)
        (let* ((_%__stx193210193211%_ _%stx192262%_)
               (_%g192266192368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193210193211%_)))))
          (let ((_%__kont193212193213%_
                 (lambda (_%L192658%_
                          _%L192659%_
                          _%L192660%_
                          _%L192661%_
                          _%L192662%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192661%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192660%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192659%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192658%_))
                                                 '())))))))
                (_%__kont193214193215%_
                 (lambda (_%L192484%_ _%L192485%_ _%L192486%_ _%L192487%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192486%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192485%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192484%_))
                                           (cons '#f '())))))))
                (_%__kont193216193217%_ (lambda () '(begin))))
            (let ((_%__match193345193346%_
                   (lambda (_%e192273192530%_
                            _%hd192274192533%_
                            _%tl192275192535%_
                            _%e192276192538%_
                            _%hd192277192541%_
                            _%tl192278192543%_
                            _%e192279192546%_
                            _%hd192280192549%_
                            _%tl192281192551%_
                            _%e192282192554%_
                            _%hd192283192557%_
                            _%tl192284192559%_
                            _%e192285192562%_
                            _%hd192286192565%_
                            _%tl192287192567%_
                            _%e192288192570%_
                            _%hd192289192573%_
                            _%tl192290192575%_
                            _%e192291192578%_
                            _%hd192292192581%_
                            _%tl192293192583%_
                            _%e192294192586%_
                            _%hd192295192589%_
                            _%tl192296192591%_
                            _%e192297192594%_
                            _%hd192298192597%_
                            _%tl192299192599%_
                            _%e192300192602%_
                            _%hd192301192605%_
                            _%tl192302192607%_
                            _%e192303192610%_
                            _%hd192304192613%_
                            _%tl192305192615%_
                            _%e192306192618%_
                            _%hd192307192621%_
                            _%tl192308192623%_
                            _%e192309192626%_
                            _%hd192310192629%_
                            _%tl192311192631%_
                            _%e192312192634%_
                            _%hd192313192637%_
                            _%tl192314192639%_
                            _%e192315192642%_
                            _%hd192316192645%_
                            _%tl192317192647%_
                            _%e192318192650%_
                            _%hd192319192653%_
                            _%tl192320192655%_)
                     (let ((_%L192658%_ _%hd192319192653%_)
                           (_%L192659%_ _%hd192310192629%_)
                           (_%L192660%_ _%hd192301192605%_)
                           (_%L192661%_ _%hd192292192581%_)
                           (_%L192662%_ _%hd192283192557%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192662%_
                              'bind-method!))
                           (_%__kont193212193213%_
                            _%L192658%_
                            _%L192659%_
                            _%L192660%_
                            _%L192661%_
                            _%L192662%_)
                           (_%__kont193216193217%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193210193211%_))
                  (let ((_%e192273192530%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193210193211%_))))
                    (let ((_%tl192275192535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192273192530%_)))
                          (_%hd192274192533%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192273192530%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192275192535%_))
                          (let ((_%e192276192538%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192275192535%_))))
                            (let ((_%tl192278192543%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192276192538%_)))
                                  (_%hd192277192541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192276192538%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192277192541%_))
                                  (let ((_%e192279192546%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192277192541%_))))
                                    (let ((_%tl192281192551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192279192546%_)))
                                          (_%hd192280192549%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192279192546%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192280192549%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192280192549%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192281192551%_))
                                                  (let ((_%e192282192554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192281192551%_))))
                                                    (let ((_%tl192284192559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192282192554%_)))
                                                          (_%hd192283192557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192282192554%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192284192559%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192278192543%_))
                      (let ((_%e192285192562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192278192543%_))))
                        (let ((_%tl192287192567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192285192562%_)))
                              (_%hd192286192565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192285192562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192286192565%_))
                              (let ((_%e192288192570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192286192565%_))))
                                (let ((_%tl192290192575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192288192570%_)))
                                      (_%hd192289192573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192288192570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192289192573%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192289192573%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192290192575%_))
                                              (let ((_%e192291192578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192290192575%_))))
                                                (let ((_%tl192293192583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192291192578%_)))
                                                      (_%hd192292192581%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192291192578%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192293192583%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192287192567%_))
                                                          (let ((_%e192294192586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192287192567%_))))
                    (let ((_%tl192296192591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192294192586%_)))
                          (_%hd192295192589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192294192586%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192295192589%_))
                          (let ((_%e192297192594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192295192589%_))))
                            (let ((_%tl192299192599%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192297192594%_)))
                                  (_%hd192298192597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192297192594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192298192597%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192298192597%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192299192599%_))
                                          (let ((_%e192300192602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192299192599%_))))
                                            (let ((_%tl192302192607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192300192602%_)))
                                                  (_%hd192301192605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192300192602%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192302192607%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192296192591%_))
                                                      (let ((_%e192303192610%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192296192591%_))))
                (let ((_%tl192305192615%_
                       (let () (declare (not safe)) (##cdr _%e192303192610%_)))
                      (_%hd192304192613%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192303192610%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192304192613%_))
                      (let ((_%e192306192618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192304192613%_))))
                        (let ((_%tl192308192623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192306192618%_)))
                              (_%hd192307192621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192306192618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192307192621%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192307192621%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192308192623%_))
                                      (let ((_%e192309192626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192308192623%_))))
                                        (let ((_%tl192311192631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192309192626%_)))
                                              (_%hd192310192629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192309192626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192311192631%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192305192615%_))
                                                  (let ((_%e192312192634%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192305192615%_))))
                                                    (let ((_%tl192314192639%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192312192634%_)))
                                                          (_%hd192313192637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192312192634%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192313192637%_))
                                                          (let ((_%e192315192642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192313192637%_))))
                    (let ((_%tl192317192647%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192315192642%_)))
                          (_%hd192316192645%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192315192642%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192316192645%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192316192645%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192317192647%_))
                                  (let ((_%e192318192650%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192317192647%_))))
                                    (let ((_%tl192320192655%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192318192650%_)))
                                          (_%hd192319192653%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192318192650%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192320192655%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192314192639%_))
                                              (_%__match193345193346%_
                                               _%e192273192530%_
                                               _%hd192274192533%_
                                               _%tl192275192535%_
                                               _%e192276192538%_
                                               _%hd192277192541%_
                                               _%tl192278192543%_
                                               _%e192279192546%_
                                               _%hd192280192549%_
                                               _%tl192281192551%_
                                               _%e192282192554%_
                                               _%hd192283192557%_
                                               _%tl192284192559%_
                                               _%e192285192562%_
                                               _%hd192286192565%_
                                               _%tl192287192567%_
                                               _%e192288192570%_
                                               _%hd192289192573%_
                                               _%tl192290192575%_
                                               _%e192291192578%_
                                               _%hd192292192581%_
                                               _%tl192293192583%_
                                               _%e192294192586%_
                                               _%hd192295192589%_
                                               _%tl192296192591%_
                                               _%e192297192594%_
                                               _%hd192298192597%_
                                               _%tl192299192599%_
                                               _%e192300192602%_
                                               _%hd192301192605%_
                                               _%tl192302192607%_
                                               _%e192303192610%_
                                               _%hd192304192613%_
                                               _%tl192305192615%_
                                               _%e192306192618%_
                                               _%hd192307192621%_
                                               _%tl192308192623%_
                                               _%e192309192626%_
                                               _%hd192310192629%_
                                               _%tl192311192631%_
                                               _%e192312192634%_
                                               _%hd192313192637%_
                                               _%tl192314192639%_
                                               _%e192315192642%_
                                               _%hd192316192645%_
                                               _%tl192317192647%_
                                               _%e192318192650%_
                                               _%hd192319192653%_
                                               _%tl192320192655%_)
                                              (_%__kont193216193217%_))
                                          (_%__kont193216193217%_))))
                                  (_%__kont193216193217%_))
                              (_%__kont193216193217%_))
                          (_%__kont193216193217%_))))
                  (_%__kont193216193217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192305192615%_))
                                                      (if (let ((__tmp193567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193567 'bind-method!))
                  (let ((_%L192484%_ _%hd192310192629%_)
                        (_%L192485%_ _%hd192301192605%_)
                        (_%L192486%_ _%hd192292192581%_)
                        (_%L192487%_ _%hd192283192557%_))
                    (_%__kont193214193215%_
                     _%L192484%_
                     _%L192485%_
                     _%L192486%_
                     _%L192487%_))
                  (_%__kont193216193217%_))
              (_%__kont193216193217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193216193217%_))))
                                      (_%__kont193216193217%_))
                                  (_%__kont193216193217%_))
                              (_%__kont193216193217%_))))
                      (_%__kont193216193217%_))))
              (_%__kont193216193217%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193216193217%_))))
                                          (_%__kont193216193217%_))
                                      (_%__kont193216193217%_))
                                  (_%__kont193216193217%_))))
                          (_%__kont193216193217%_))))
                  (_%__kont193216193217%_))
              (_%__kont193216193217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193216193217%_))
                                          (_%__kont193216193217%_))
                                      (_%__kont193216193217%_))))
                              (_%__kont193216193217%_))))
                      (_%__kont193216193217%_))
                  (_%__kont193216193217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193216193217%_))
                                              (_%__kont193216193217%_))
                                          (_%__kont193216193217%_))))
                                  (_%__kont193216193217%_))))
                          (_%__kont193216193217%_))))
                  (_%__kont193216193217%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192085%_ _%stx192086%_)
        (let* ((_%__stx193454193455%_ _%stx192086%_)
               (_%g192089192129%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193454193455%_)))))
          (let ((_%__kont193456193457%_
                 (lambda (_%L192235%_ _%L192236%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192236%_))
                               (cons _%L192235%_ '())))))
                (_%__kont193458193459%_
                 (lambda (_%L192158%_ _%L192159%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193454193455%_))
                (let ((_%e192093192179%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193454193455%_))))
                  (let ((_%tl192095192184%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192093192179%_)))
                        (_%hd192094192182%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192093192179%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192095192184%_))
                        (let ((_%e192096192187%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192095192184%_))))
                          (let ((_%tl192098192192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192096192187%_)))
                                (_%hd192097192190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192096192187%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192097192190%_))
                                (let ((_%e192099192195%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192097192190%_))))
                                  (let ((_%tl192101192200%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192099192195%_)))
                                        (_%hd192100192198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192099192195%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192100192198%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192100192198%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192101192200%_))
                                                (let ((_%e192102192203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192101192200%_))))
                                                  (let ((_%tl192104192208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192102192203%_)))
                                                        (_%hd192103192206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192102192203%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192104192208%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192098192192%_))
                                                            (let ((_%e192105192211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192098192192%_))))
                      (let ((_%tl192107192216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192105192211%_)))
                            (_%hd192106192214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192105192211%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192106192214%_))
                            (let ((_%e192108192219%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192106192214%_))))
                              (let ((_%tl192110192224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192108192219%_)))
                                    (_%hd192109192222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192108192219%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192109192222%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192109192222%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192110192224%_))
                                            (let ((_%e192111192227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192110192224%_))))
                                              (let ((_%tl192113192232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192111192227%_)))
                                                    (_%hd192112192230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192111192227%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192113192232%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192107192216%_))
                                                        (_%__kont193456193457%_
                                                         _%hd192112192230%_
                                                         _%hd192103192206%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192089192129%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192107192216%_))
                                                        (_%__kont193458193459%_
                                                         _%hd192106192214%_
                                                         _%hd192097192190%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192089192129%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192107192216%_))
                                                (_%__kont193458193459%_
                                                 _%hd192106192214%_
                                                 _%hd192097192190%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192089192129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192107192216%_))
                                            (_%__kont193458193459%_
                                             _%hd192106192214%_
                                             _%hd192097192190%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192089192129%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192107192216%_))
                                        (_%__kont193458193459%_
                                         _%hd192106192214%_
                                         _%hd192097192190%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192089192129%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192107192216%_))
                                (_%__kont193458193459%_
                                 _%hd192106192214%_
                                 _%hd192097192190%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192089192129%_))))))
                    (let () (declare (not safe)) (_%g192089192129%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192098192192%_))
                    (let ((_%e192122192150%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192098192192%_))))
                      (let ((_%tl192124192155%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192122192150%_)))
                            (_%hd192123192153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192122192150%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192124192155%_))
                            (_%__kont193458193459%_
                             _%hd192123192153%_
                             _%hd192097192190%_)
                            (let ()
                              (declare (not safe))
                              (_%g192089192129%_)))))
                    (let () (declare (not safe)) (_%g192089192129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192098192192%_))
                                                    (let ((_%e192122192150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192098192192%_))))
                                                      (let ((_%tl192124192155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192122192150%_)))
                    (_%hd192123192153%_
                     (let () (declare (not safe)) (##car _%e192122192150%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192124192155%_))
                    (_%__kont193458193459%_
                     _%hd192123192153%_
                     _%hd192097192190%_)
                    (let () (declare (not safe)) (_%g192089192129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192089192129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192098192192%_))
                                                (let ((_%e192122192150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192098192192%_))))
                                                  (let ((_%tl192124192155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192122192150%_)))
                                                        (_%hd192123192153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192122192150%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192124192155%_))
                                                        (_%__kont193458193459%_
                                                         _%hd192123192153%_
                                                         _%hd192097192190%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192089192129%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192089192129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192098192192%_))
                                            (let ((_%e192122192150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192098192192%_))))
                                              (let ((_%tl192124192155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192122192150%_)))
                                                    (_%hd192123192153%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192122192150%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192124192155%_))
                                                    (_%__kont193458193459%_
                                                     _%hd192123192153%_
                                                     _%hd192097192190%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192089192129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192089192129%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192098192192%_))
                                    (let ((_%e192122192150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192098192192%_))))
                                      (let ((_%tl192124192155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192122192150%_)))
                                            (_%hd192123192153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192122192150%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192124192155%_))
                                            (_%__kont193458193459%_
                                             _%hd192123192153%_
                                             _%hd192097192190%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192089192129%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192089192129%_))))))
                        (let () (declare (not safe)) (_%g192089192129%_)))))
                (let () (declare (not safe)) (_%g192089192129%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192072%_)
        (let ((_%self192075%_ _%self192072%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192075%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191845%_)
        (let* ((_%self191848%_ _%self191845%_)
               (_%self191857191873%_ _%self191848%_)
               (_%E191859191877%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191857191873%_
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
               (_%K191860191892%_
                (lambda (_%methods191880%_
                         _%metaclass191881%_
                         _%system?191882%_
                         _%final?191883%_
                         _%struct?191884%_
                         _%constructor191885%_
                         _%fields191886%_
                         _%slots191887%_
                         _%precendence-list191888%_
                         _%super191889%_
                         _%id191890%_)
                  (cons '@class
                        (cons _%id191890%_
                              (cons _%super191889%_
                                    (cons _%precendence-list191888%_
                                          (cons _%slots191887%_
                                                (cons _%fields191886%_
                                                      (cons _%constructor191885%_
                                                            (cons _%struct?191884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191883%_
                                (cons _%system?191882%_
                                      (cons _%metaclass191881%_
                                            (cons (if _%methods191880%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191880%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191861191895%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '1
                         '#f
                         '#f)))
                     (_%id191898%_ _%e191861191895%_)
                     (_%e191862191900%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '2
                         '#f
                         '#f)))
                     (_%super191903%_ _%e191862191900%_)
                     (_%e191863191905%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191908%_ _%e191863191905%_)
                     (_%e191864191910%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191913%_ _%e191864191910%_)
                     (_%e191865191915%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191918%_ _%e191865191915%_)
                     (_%e191866191920%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191923%_ _%e191866191920%_)
                     (_%e191867191925%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191928%_ _%e191867191925%_)
                     (_%e191868191930%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191933%_ _%e191868191930%_)
                     (_%e191869191935%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191938%_ _%e191869191935%_)
                     (_%e191870191940%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191943%_ _%e191870191940%_)
                     (_%e191871191945%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191857191873%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191948%_ _%e191871191945%_))
                (_%K191860191892%_
                 _%methods191948%_
                 _%metaclass191943%_
                 _%system?191938%_
                 _%final?191933%_
                 _%struct?191928%_
                 _%constructor191923%_
                 _%fields191918%_
                 _%slots191913%_
                 _%precendence-list191908%_
                 _%super191903%_
                 _%id191898%_))
              (_%E191859191877%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191710%_)
        (let ((_%self191713%_ _%self191710%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191713%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191575%_)
        (let ((_%self191578%_ _%self191575%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191578%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191440%_)
        (let ((_%self191443%_ _%self191440%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191443%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191443%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191443%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191305%_)
        (let ((_%self191308%_ _%self191305%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191308%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191308%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191308%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191170%_)
        (let ((_%self191173%_ _%self191170%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191173%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191173%_
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
      (lambda (_%self190983%_)
        (let* ((_%self190986%_ _%self190983%_)
               (_%self190995191004%_ _%self190986%_)
               (_%E190997191008%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190995191004%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190998191027%_
                (lambda (_%dispatch191011%_
                         _%arity191012%_
                         _%signature191013%_)
                  (if _%signature191013%_
                      (let ((_%signature191015%_ _%signature191013%_))
                        (cons '@lambda
                              (cons _%arity191012%_
                                    (cons _%dispatch191011%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature191015%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature191015%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature191015%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature191015%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature191015%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity191012%_
                                  (cons _%dispatch191011%_ '())))))))
          (if '#t
              (let* ((_%e190999191030%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190995191004%_
                         '1
                         '#f
                         '#f)))
                     (_%e191000191033%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190995191004%_
                         '2
                         '#f
                         '#f)))
                     (_%signature191036%_ _%e191000191033%_)
                     (_%e191001191038%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190995191004%_
                         '3
                         '#f
                         '#f)))
                     (_%arity191041%_ _%e191001191038%_)
                     (_%e191002191043%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190995191004%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch191046%_ _%e191002191043%_))
                (_%K190998191027%_
                 _%dispatch191046%_
                 _%arity191041%_
                 _%signature191036%_))
              (_%E190997191008%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190844%_)
        (let ((_%self190847%_ _%self190844%_))
          (letrec ((_%clause-e190857%_
                    (lambda (_%clause190859%_)
                      (cdr (let ((__method193542
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190859%_
                                     'typedecl))))
                             (if __method193542
                                 (__method193542 _%clause190859%_)
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause190859%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e190857%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190847%_
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
      (lambda (_%self190709%_)
        (let ((_%self190712%_ _%self190709%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190712%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190712%_
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
      (lambda (_%self190574%_)
        (let ((_%self190577%_ _%self190574%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190577%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190577%_
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
      (lambda (_%self190439%_)
        (let ((_%self190442%_ _%self190439%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190442%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
