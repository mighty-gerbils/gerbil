(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712697262)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193499
                   (let ((__obj193493
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193493)
                     __obj193493)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193499)))))
    (define gxc#optimize!
      (lambda (_%ctx193102%_)
        (let ((__tmp193502
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx193102%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx193102%_)
                 (let ((__tmp193504
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193503
                        (##structure-ref
                         _%ctx193102%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193504 __tmp193503 '#t))
                 (let ((_%code193105%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx193102%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx193102%_
                    _%code193105%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193501 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193500 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193502
           gxc#current-compile-mutators
           __tmp193501
           gxc#current-compile-local-type
           __tmp193500))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193088%_)
        (letrec ((_%load-it!193090%_
                  (lambda (_%id193100%_)
                    (if (let ((__tmp193505
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193505 _%id193100%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id193100%_)
                          (let ((__tmp193506
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193506 _%id193100%_ '#t)))))))
          (let* ((_%modid193092%_
                  (##structure-ref
                   _%ctx193088%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193094%_ (symbol->string _%modid193092%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193094%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193094%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193090%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193090%_
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
      (lambda (_%ctx193025%_)
        (letrec* ((_%deps193027%_
                   (let* ((_%imports193078%_
                           (##structure-ref
                            _%ctx193025%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193080%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193025%_))))
                     (if _%$e193080%_
                         ((lambda (_%g193082193084%_)
                            (cons _%g193082193084%_ _%imports193078%_))
                          _%$e193080%_)
                         _%imports193078%_))))
          (let _%lp193029%_ ((_%rest193031%_ _%deps193027%_))
            (let* ((_%rest193032193040%_ _%rest193031%_)
                   (_%else193034193048%_ (lambda () '#!void))
                   (_%K193036193066%_
                    (lambda (_%rest193051%_ _%hd193052%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193052%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193508
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193507
                                       (##structure-ref
                                        _%hd193052%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193508 __tmp193507))
                                '#!void
                                (begin
                                  (let ((_%$e193055%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193052%_))))
                                    (if _%$e193055%_
                                        ((lambda (_%pre193058%_)
                                           (_%lp193029%_
                                            (cons _%pre193058%_
                                                  (##structure-ref
                                                   _%hd193052%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e193055%_)
                                        (_%lp193029%_
                                         (##structure-ref
                                          _%hd193052%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd193052%_)))
                            (_%lp193029%_ _%rest193051%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193052%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193510
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193509
                                           (##structure-ref
                                            _%hd193052%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193510 __tmp193509))
                                    '#!void
                                    (begin
                                      (_%lp193029%_
                                       (##structure-ref
                                        _%hd193052%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd193052%_)))
                                (_%lp193029%_ _%rest193051%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193052%_
                                     'gx#module-import::t))
                                  (_%lp193029%_
                                   (cons (##direct-structure-ref
                                          _%hd193052%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest193051%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193052%_
                                         'gx#module-export::t))
                                      (_%lp193029%_
                                       (cons (##direct-structure-ref
                                              _%hd193052%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest193051%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193052%_
                                             'gx#import-set::t))
                                          (_%lp193029%_
                                           (cons (##direct-structure-ref
                                                  _%hd193052%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest193051%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193052%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193032193040%_))
                  (let ((_%hd193037193069%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193032193040%_)))
                        (_%tl193038193071%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193032193040%_))))
                    (let* ((_%hd193074%_ _%hd193037193069%_)
                           (_%rest193076%_ _%tl193038193071%_))
                      (_%K193036193066%_ _%rest193076%_ _%hd193074%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193005%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193005%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx193005%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht193007%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193009%_
                    (##structure-ref
                     _%ctx193005%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193011%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193007%_ _%id193009%_)))
                   (_%$e193014%_ _%mod193011%_))
              (if _%$e193014%_
                  _%$e193014%_
                  (let* ((_%mod193017%_
                          (gxc#optimizer-import-ssxi _%ctx193005%_))
                         (_%val193022%_
                          (let ((_%$e193019%_ _%mod193017%_))
                            (if _%$e193019%_ _%$e193019%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193007%_ _%id193009%_ _%val193022%_))
                    _%val193022%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193003%_)
        (if (##structure-ref _%ctx193003%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx193003%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192980%_)
        (letrec ((_%catch-e192982%_
                  (lambda (_%exn193001%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193001%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193001%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192980%_))))
                    '#f))
                 (_%import-e192983%_
                  (lambda ()
                    (let* ((_%str-id192986%_
                            (let ((__tmp193511
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192980%_))))
                              (declare (not safe))
                              (##string-append __tmp193511 '".ssxi")))
                           (_%artefact-path192994%_
                            (let ((_%odir192987192989%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192987192989%_
                                  (let ((_%odir192992%_ _%odir192987192989%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192986%_
                                        '".ss"))
                                     _%odir192992%_))
                                  '#f)))
                           (_%library-path192996%_
                            (let ((__tmp193512
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192986%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193512)))
                           (_%ssxi-path192998%_
                            (if (and _%artefact-path192994%_
                                     (file-exists? _%artefact-path192994%_))
                                _%artefact-path192994%_
                                _%library-path192996%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192998%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192998%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192982%_ _%import-e192983%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192971%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192971%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192971%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192971%_))
        (let* ((_%stx192973%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192971%_)))
               (_%stx192975%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192973%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192975%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192975%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192975%_))
          (let ((_%stx192978%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192975%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192978%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193514 (list gxc#::generate-runtime-empty::t))
            (__tmp193513 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193514
         '()
         __tmp193513
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192968%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192968%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193515
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
        (__make-promise __tmp193515)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192960%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192963%_
                (let ((__obj193495
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193495))
               (__tmp193516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192963%_ _%stx192960%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193516
           gxc#current-compile-method
           _%self192963%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192920%_ _%stx192921%_)
        (let* ((_%g192923192933%_
                (lambda (_%g192924192930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192924192930%_))))
               (_%g192922192957%_
                (lambda (_%g192924192936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192924192936%_))
                      (let ((_%e192926192938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192924192936%_))))
                        (let ((_%hd192927192941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192926192938%_)))
                              (_%tl192928192943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192926192938%_))))
                          ((lambda (_%L192946%_)
                             (let ((__tmp193519
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192920%_
                                         _%stx192921%_))))
                                   (__tmp193517
                                    (let ((__tmp193518
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193518 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193519
                                gx#current-expander-phi
                                __tmp193517)))
                           _%tl192928192943%_)))
                      (_%g192923192933%_ _%g192924192936%_)))))
          (_%g192922192957%_ _%stx192921%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192859%_ _%stx192860%_)
        (let* ((_%g192862192876%_
                (lambda (_%g192863192873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192863192873%_))))
               (_%g192861192917%_
                (lambda (_%g192863192879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192863192879%_))
                      (let ((_%e192866192881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192863192879%_))))
                        (let ((_%hd192867192884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192866192881%_)))
                              (_%tl192868192886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192866192881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192868192886%_))
                              (let ((_%e192869192889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192868192886%_))))
                                (let ((_%hd192870192892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192869192889%_)))
                                      (_%tl192871192894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192869192889%_))))
                                  ((lambda (_%L192897%_ _%L192898%_)
                                     (let* ((_%ctx192911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192898%_)))
                                            (_%code192913%_
                                             (##structure-ref
                                              _%ctx192911%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193520
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192859%_
                                                  _%code192913%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193520
                                        gx#current-expander-context
                                        _%ctx192911%_)))
                                   _%tl192871192894%_
                                   _%hd192870192892%_)))
                              (_%g192862192876%_ _%g192863192879%_))))
                      (_%g192862192876%_ _%g192863192879%_)))))
          (_%g192861192917%_ _%stx192860%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192664%_ _%stx192665%_)
        (letrec ((_%generate-e192667%_
                  (lambda (_%id192844%_)
                    (let* ((_%sym192846%_
                            (if (let ((__tmp193521
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193521))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192844%_))
                                '#f))
                           (_%$e192848%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192846%_))))
                      (if _%$e192848%_
                          ((lambda (_%klass192851%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192846%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192846%_
                                                     (cons (let ((__method193496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192851%_ 'typedecl))))
                     (if __method193496
                         (__method193496 _%klass192851%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192851%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192846%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192846%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192848%_)
                          (let ((_%$e192853%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192846%_))))
                            (if _%$e192853%_
                                ((lambda (_%type192856%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192846%_
                                      '" "
                                      _%type192856%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192856%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192846%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192846%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192856%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192846%_
                                                   (cons (let ((__method193497
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192856%_ 'typedecl))))
                   (if __method193497
                       (__method193497 _%type192856%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192856%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192853%_)
                                '(begin))))))))
          (let* ((_%__stx193108193109%_ _%stx192665%_)
                 (_%g192670192708%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193108193109%_)))))
            (let ((_%__kont193110193111%_
                   (lambda (_%L192826%_) (_%generate-e192667%_ _%L192826%_)))
                  (_%__kont193112193113%_
                   (lambda (_%L192761%_)
                     (let ((_%types192787%_
                            (map _%generate-e192667%_
                                 (let ((__tmp193522
                                        (lambda (_%g192779192782%_
                                                 _%g192780192784%_)
                                          (cons _%g192779192782%_
                                                _%g192780192784%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193522 '() _%L192761%_)))))
                       (cons 'begin _%types192787%_)))))
              (let ((_%__match193163193164%_
                     (lambda (_%e192686192713%_
                              _%hd192687192716%_
                              _%tl192688192718%_
                              _%e192689192721%_
                              _%hd192690192724%_
                              _%tl192691192726%_
                              _%__splice193114193115%_
                              _%target192692192729%_
                              _%tl192694192731%_)
                       (letrec ((_%loop192695192734%_
                                 (lambda (_%hd192693192737%_
                                          _%id192699192739%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192693192737%_))
                                       (let ((_%e192696192742%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192693192737%_))))
                                         (let ((_%lp-tl192698192747%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192696192742%_)))
                                               (_%lp-hd192697192745%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192696192742%_))))
                                           (_%loop192695192734%_
                                            _%lp-tl192698192747%_
                                            (cons _%lp-hd192697192745%_
                                                  _%id192699192739%_))))
                                       (let ((_%id192700192750%_
                                              (reverse _%id192699192739%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192691192726%_))
                                             (let ((_%e192701192753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192691192726%_))))
                                               (let ((_%tl192703192758%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192701192753%_)))
                                                     (_%hd192702192756%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192701192753%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192703192758%_))
                                                     (_%__kont193112193113%_
                                                      _%id192700192750%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192670192708%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192670192708%_))))))))
                         (_%loop192695192734%_ _%target192692192729%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193108193109%_))
                    (let ((_%e192673192794%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193108193109%_))))
                      (let ((_%tl192675192799%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192673192794%_)))
                            (_%hd192674192797%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192673192794%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192675192799%_))
                            (let ((_%e192676192802%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192675192799%_))))
                              (let ((_%tl192678192807%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192676192802%_)))
                                    (_%hd192677192805%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192676192802%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192677192805%_))
                                    (let ((_%e192679192810%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192677192805%_))))
                                      (let ((_%tl192681192815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192679192810%_)))
                                            (_%hd192680192813%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192679192810%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192681192815%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192678192807%_))
                                                (let ((_%e192682192818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192678192807%_))))
                                                  (let ((_%tl192684192823%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192682192818%_)))
                                                        (_%hd192683192821%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192682192818%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192684192823%_))
                                                        (_%__kont193110193111%_
                                                         _%hd192680192813%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192677192805%_))
                                                            (let ((_%__splice193114193115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192677192805%_ '0))))
                      (let ((_%tl192694192731%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193114193115%_ '1)))
                            (_%target192692192729%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193114193115%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192694192731%_))
                            (_%__match193163193164%_
                             _%e192673192794%_
                             _%hd192674192797%_
                             _%tl192675192799%_
                             _%e192676192802%_
                             _%hd192677192805%_
                             _%tl192678192807%_
                             _%__splice193114193115%_
                             _%target192692192729%_
                             _%tl192694192731%_)
                            (let ()
                              (declare (not safe))
                              (_%g192670192708%_)))))
                    (let () (declare (not safe)) (_%g192670192708%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192677192805%_))
                                                    (let ((_%__splice193114193115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192677192805%_
                                                              '0))))
                                                      (let ((_%tl192694192731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193114193115%_ '1)))
                    (_%target192692192729%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193114193115%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192694192731%_))
                    (_%__match193163193164%_
                     _%e192673192794%_
                     _%hd192674192797%_
                     _%tl192675192799%_
                     _%e192676192802%_
                     _%hd192677192805%_
                     _%tl192678192807%_
                     _%__splice193114193115%_
                     _%target192692192729%_
                     _%tl192694192731%_)
                    (let () (declare (not safe)) (_%g192670192708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192670192708%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192677192805%_))
                                                (let ((_%__splice193114193115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192677192805%_
                                                          '0))))
                                                  (let ((_%tl192694192731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193114193115%_
                                                            '1)))
                                                        (_%target192692192729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193114193115%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192694192731%_))
                                                        (_%__match193163193164%_
                                                         _%e192673192794%_
                                                         _%hd192674192797%_
                                                         _%tl192675192799%_
                                                         _%e192676192802%_
                                                         _%hd192677192805%_
                                                         _%tl192678192807%_
                                                         _%__splice193114193115%_
                                                         _%target192692192729%_
                                                         _%tl192694192731%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192670192708%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192670192708%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192677192805%_))
                                        (let ((_%__splice193114193115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192677192805%_
                                                  '0))))
                                          (let ((_%tl192694192731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193114193115%_
                                                    '1)))
                                                (_%target192692192729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193114193115%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192694192731%_))
                                                (_%__match193163193164%_
                                                 _%e192673192794%_
                                                 _%hd192674192797%_
                                                 _%tl192675192799%_
                                                 _%e192676192802%_
                                                 _%hd192677192805%_
                                                 _%tl192678192807%_
                                                 _%__splice193114193115%_
                                                 _%target192692192729%_
                                                 _%tl192694192731%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192670192708%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192670192708%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192670192708%_)))))
                    (let () (declare (not safe)) (_%g192670192708%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192217%_ _%stx192218%_)
        (let* ((_%__stx193166193167%_ _%stx192218%_)
               (_%g192222192324%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193166193167%_)))))
          (let ((_%__kont193168193169%_
                 (lambda (_%L192614%_
                          _%L192615%_
                          _%L192616%_
                          _%L192617%_
                          _%L192618%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192617%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192616%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192615%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192614%_))
                                                 '())))))))
                (_%__kont193170193171%_
                 (lambda (_%L192440%_ _%L192441%_ _%L192442%_ _%L192443%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192442%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192441%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192440%_))
                                           (cons '#f '())))))))
                (_%__kont193172193173%_ (lambda () '(begin))))
            (let ((_%__match193301193302%_
                   (lambda (_%e192229192486%_
                            _%hd192230192489%_
                            _%tl192231192491%_
                            _%e192232192494%_
                            _%hd192233192497%_
                            _%tl192234192499%_
                            _%e192235192502%_
                            _%hd192236192505%_
                            _%tl192237192507%_
                            _%e192238192510%_
                            _%hd192239192513%_
                            _%tl192240192515%_
                            _%e192241192518%_
                            _%hd192242192521%_
                            _%tl192243192523%_
                            _%e192244192526%_
                            _%hd192245192529%_
                            _%tl192246192531%_
                            _%e192247192534%_
                            _%hd192248192537%_
                            _%tl192249192539%_
                            _%e192250192542%_
                            _%hd192251192545%_
                            _%tl192252192547%_
                            _%e192253192550%_
                            _%hd192254192553%_
                            _%tl192255192555%_
                            _%e192256192558%_
                            _%hd192257192561%_
                            _%tl192258192563%_
                            _%e192259192566%_
                            _%hd192260192569%_
                            _%tl192261192571%_
                            _%e192262192574%_
                            _%hd192263192577%_
                            _%tl192264192579%_
                            _%e192265192582%_
                            _%hd192266192585%_
                            _%tl192267192587%_
                            _%e192268192590%_
                            _%hd192269192593%_
                            _%tl192270192595%_
                            _%e192271192598%_
                            _%hd192272192601%_
                            _%tl192273192603%_
                            _%e192274192606%_
                            _%hd192275192609%_
                            _%tl192276192611%_)
                     (let ((_%L192614%_ _%hd192275192609%_)
                           (_%L192615%_ _%hd192266192585%_)
                           (_%L192616%_ _%hd192257192561%_)
                           (_%L192617%_ _%hd192248192537%_)
                           (_%L192618%_ _%hd192239192513%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192618%_
                              'bind-method!))
                           (_%__kont193168193169%_
                            _%L192614%_
                            _%L192615%_
                            _%L192616%_
                            _%L192617%_
                            _%L192618%_)
                           (_%__kont193172193173%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193166193167%_))
                  (let ((_%e192229192486%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193166193167%_))))
                    (let ((_%tl192231192491%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192229192486%_)))
                          (_%hd192230192489%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192229192486%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192231192491%_))
                          (let ((_%e192232192494%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192231192491%_))))
                            (let ((_%tl192234192499%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192232192494%_)))
                                  (_%hd192233192497%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192232192494%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192233192497%_))
                                  (let ((_%e192235192502%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192233192497%_))))
                                    (let ((_%tl192237192507%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192235192502%_)))
                                          (_%hd192236192505%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192235192502%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192236192505%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192236192505%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192237192507%_))
                                                  (let ((_%e192238192510%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192237192507%_))))
                                                    (let ((_%tl192240192515%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192238192510%_)))
                                                          (_%hd192239192513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192238192510%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192240192515%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192234192499%_))
                      (let ((_%e192241192518%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192234192499%_))))
                        (let ((_%tl192243192523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192241192518%_)))
                              (_%hd192242192521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192241192518%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192242192521%_))
                              (let ((_%e192244192526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192242192521%_))))
                                (let ((_%tl192246192531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192244192526%_)))
                                      (_%hd192245192529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192244192526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192245192529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192245192529%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192246192531%_))
                                              (let ((_%e192247192534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192246192531%_))))
                                                (let ((_%tl192249192539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192247192534%_)))
                                                      (_%hd192248192537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192247192534%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192249192539%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192243192523%_))
                                                          (let ((_%e192250192542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192243192523%_))))
                    (let ((_%tl192252192547%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192250192542%_)))
                          (_%hd192251192545%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192250192542%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192251192545%_))
                          (let ((_%e192253192550%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192251192545%_))))
                            (let ((_%tl192255192555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192253192550%_)))
                                  (_%hd192254192553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192253192550%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192254192553%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192254192553%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192255192555%_))
                                          (let ((_%e192256192558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192255192555%_))))
                                            (let ((_%tl192258192563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192256192558%_)))
                                                  (_%hd192257192561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192256192558%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192258192563%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192252192547%_))
                                                      (let ((_%e192259192566%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192252192547%_))))
                (let ((_%tl192261192571%_
                       (let () (declare (not safe)) (##cdr _%e192259192566%_)))
                      (_%hd192260192569%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192259192566%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192260192569%_))
                      (let ((_%e192262192574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192260192569%_))))
                        (let ((_%tl192264192579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192262192574%_)))
                              (_%hd192263192577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192262192574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192263192577%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192263192577%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192264192579%_))
                                      (let ((_%e192265192582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192264192579%_))))
                                        (let ((_%tl192267192587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192265192582%_)))
                                              (_%hd192266192585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192265192582%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192267192587%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192261192571%_))
                                                  (let ((_%e192268192590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192261192571%_))))
                                                    (let ((_%tl192270192595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192268192590%_)))
                                                          (_%hd192269192593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192268192590%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192269192593%_))
                                                          (let ((_%e192271192598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192269192593%_))))
                    (let ((_%tl192273192603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192271192598%_)))
                          (_%hd192272192601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192271192598%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192272192601%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192272192601%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192273192603%_))
                                  (let ((_%e192274192606%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192273192603%_))))
                                    (let ((_%tl192276192611%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192274192606%_)))
                                          (_%hd192275192609%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192274192606%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192276192611%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192270192595%_))
                                              (_%__match193301193302%_
                                               _%e192229192486%_
                                               _%hd192230192489%_
                                               _%tl192231192491%_
                                               _%e192232192494%_
                                               _%hd192233192497%_
                                               _%tl192234192499%_
                                               _%e192235192502%_
                                               _%hd192236192505%_
                                               _%tl192237192507%_
                                               _%e192238192510%_
                                               _%hd192239192513%_
                                               _%tl192240192515%_
                                               _%e192241192518%_
                                               _%hd192242192521%_
                                               _%tl192243192523%_
                                               _%e192244192526%_
                                               _%hd192245192529%_
                                               _%tl192246192531%_
                                               _%e192247192534%_
                                               _%hd192248192537%_
                                               _%tl192249192539%_
                                               _%e192250192542%_
                                               _%hd192251192545%_
                                               _%tl192252192547%_
                                               _%e192253192550%_
                                               _%hd192254192553%_
                                               _%tl192255192555%_
                                               _%e192256192558%_
                                               _%hd192257192561%_
                                               _%tl192258192563%_
                                               _%e192259192566%_
                                               _%hd192260192569%_
                                               _%tl192261192571%_
                                               _%e192262192574%_
                                               _%hd192263192577%_
                                               _%tl192264192579%_
                                               _%e192265192582%_
                                               _%hd192266192585%_
                                               _%tl192267192587%_
                                               _%e192268192590%_
                                               _%hd192269192593%_
                                               _%tl192270192595%_
                                               _%e192271192598%_
                                               _%hd192272192601%_
                                               _%tl192273192603%_
                                               _%e192274192606%_
                                               _%hd192275192609%_
                                               _%tl192276192611%_)
                                              (_%__kont193172193173%_))
                                          (_%__kont193172193173%_))))
                                  (_%__kont193172193173%_))
                              (_%__kont193172193173%_))
                          (_%__kont193172193173%_))))
                  (_%__kont193172193173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192261192571%_))
                                                      (if (let ((__tmp193523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193523 'bind-method!))
                  (let ((_%L192440%_ _%hd192266192585%_)
                        (_%L192441%_ _%hd192257192561%_)
                        (_%L192442%_ _%hd192248192537%_)
                        (_%L192443%_ _%hd192239192513%_))
                    (_%__kont193170193171%_
                     _%L192440%_
                     _%L192441%_
                     _%L192442%_
                     _%L192443%_))
                  (_%__kont193172193173%_))
              (_%__kont193172193173%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193172193173%_))))
                                      (_%__kont193172193173%_))
                                  (_%__kont193172193173%_))
                              (_%__kont193172193173%_))))
                      (_%__kont193172193173%_))))
              (_%__kont193172193173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193172193173%_))))
                                          (_%__kont193172193173%_))
                                      (_%__kont193172193173%_))
                                  (_%__kont193172193173%_))))
                          (_%__kont193172193173%_))))
                  (_%__kont193172193173%_))
              (_%__kont193172193173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193172193173%_))
                                          (_%__kont193172193173%_))
                                      (_%__kont193172193173%_))))
                              (_%__kont193172193173%_))))
                      (_%__kont193172193173%_))
                  (_%__kont193172193173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193172193173%_))
                                              (_%__kont193172193173%_))
                                          (_%__kont193172193173%_))))
                                  (_%__kont193172193173%_))))
                          (_%__kont193172193173%_))))
                  (_%__kont193172193173%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192041%_ _%stx192042%_)
        (let* ((_%__stx193410193411%_ _%stx192042%_)
               (_%g192045192085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193410193411%_)))))
          (let ((_%__kont193412193413%_
                 (lambda (_%L192191%_ _%L192192%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192192%_))
                               (cons _%L192191%_ '())))))
                (_%__kont193414193415%_
                 (lambda (_%L192114%_ _%L192115%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193410193411%_))
                (let ((_%e192049192135%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193410193411%_))))
                  (let ((_%tl192051192140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192049192135%_)))
                        (_%hd192050192138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192049192135%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192051192140%_))
                        (let ((_%e192052192143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192051192140%_))))
                          (let ((_%tl192054192148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192052192143%_)))
                                (_%hd192053192146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192052192143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192053192146%_))
                                (let ((_%e192055192151%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192053192146%_))))
                                  (let ((_%tl192057192156%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192055192151%_)))
                                        (_%hd192056192154%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192055192151%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192056192154%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192056192154%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192057192156%_))
                                                (let ((_%e192058192159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192057192156%_))))
                                                  (let ((_%tl192060192164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192058192159%_)))
                                                        (_%hd192059192162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192058192159%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192060192164%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192054192148%_))
                                                            (let ((_%e192061192167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192054192148%_))))
                      (let ((_%tl192063192172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192061192167%_)))
                            (_%hd192062192170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192061192167%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192062192170%_))
                            (let ((_%e192064192175%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192062192170%_))))
                              (let ((_%tl192066192180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192064192175%_)))
                                    (_%hd192065192178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192064192175%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192065192178%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192065192178%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192066192180%_))
                                            (let ((_%e192067192183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192066192180%_))))
                                              (let ((_%tl192069192188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192067192183%_)))
                                                    (_%hd192068192186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192067192183%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192069192188%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192063192172%_))
                                                        (_%__kont193412193413%_
                                                         _%hd192068192186%_
                                                         _%hd192059192162%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192045192085%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192063192172%_))
                                                        (_%__kont193414193415%_
                                                         _%hd192062192170%_
                                                         _%hd192053192146%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192045192085%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192063192172%_))
                                                (_%__kont193414193415%_
                                                 _%hd192062192170%_
                                                 _%hd192053192146%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192045192085%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192063192172%_))
                                            (_%__kont193414193415%_
                                             _%hd192062192170%_
                                             _%hd192053192146%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192045192085%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192063192172%_))
                                        (_%__kont193414193415%_
                                         _%hd192062192170%_
                                         _%hd192053192146%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192045192085%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192063192172%_))
                                (_%__kont193414193415%_
                                 _%hd192062192170%_
                                 _%hd192053192146%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192045192085%_))))))
                    (let () (declare (not safe)) (_%g192045192085%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192054192148%_))
                    (let ((_%e192078192106%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192054192148%_))))
                      (let ((_%tl192080192111%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192078192106%_)))
                            (_%hd192079192109%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192078192106%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192080192111%_))
                            (_%__kont193414193415%_
                             _%hd192079192109%_
                             _%hd192053192146%_)
                            (let ()
                              (declare (not safe))
                              (_%g192045192085%_)))))
                    (let () (declare (not safe)) (_%g192045192085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192054192148%_))
                                                    (let ((_%e192078192106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192054192148%_))))
                                                      (let ((_%tl192080192111%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192078192106%_)))
                    (_%hd192079192109%_
                     (let () (declare (not safe)) (##car _%e192078192106%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192080192111%_))
                    (_%__kont193414193415%_
                     _%hd192079192109%_
                     _%hd192053192146%_)
                    (let () (declare (not safe)) (_%g192045192085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192045192085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192054192148%_))
                                                (let ((_%e192078192106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192054192148%_))))
                                                  (let ((_%tl192080192111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192078192106%_)))
                                                        (_%hd192079192109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192078192106%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192080192111%_))
                                                        (_%__kont193414193415%_
                                                         _%hd192079192109%_
                                                         _%hd192053192146%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192045192085%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192045192085%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192054192148%_))
                                            (let ((_%e192078192106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192054192148%_))))
                                              (let ((_%tl192080192111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192078192106%_)))
                                                    (_%hd192079192109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192078192106%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192080192111%_))
                                                    (_%__kont193414193415%_
                                                     _%hd192079192109%_
                                                     _%hd192053192146%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192045192085%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192045192085%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192054192148%_))
                                    (let ((_%e192078192106%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192054192148%_))))
                                      (let ((_%tl192080192111%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192078192106%_)))
                                            (_%hd192079192109%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192078192106%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192080192111%_))
                                            (_%__kont193414193415%_
                                             _%hd192079192109%_
                                             _%hd192053192146%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192045192085%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192045192085%_))))))
                        (let () (declare (not safe)) (_%g192045192085%_)))))
                (let () (declare (not safe)) (_%g192045192085%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192028%_)
        (let ((_%self192031%_ _%self192028%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192031%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191801%_)
        (let* ((_%self191804%_ _%self191801%_)
               (_%self191813191829%_ _%self191804%_)
               (_%E191815191833%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191813191829%_
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
               (_%K191816191848%_
                (lambda (_%methods191836%_
                         _%metaclass191837%_
                         _%system?191838%_
                         _%final?191839%_
                         _%struct?191840%_
                         _%constructor191841%_
                         _%fields191842%_
                         _%slots191843%_
                         _%precendence-list191844%_
                         _%super191845%_
                         _%id191846%_)
                  (cons '@class
                        (cons _%id191846%_
                              (cons _%super191845%_
                                    (cons _%precendence-list191844%_
                                          (cons _%slots191843%_
                                                (cons _%fields191842%_
                                                      (cons _%constructor191841%_
                                                            (cons _%struct?191840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191839%_
                                (cons _%system?191838%_
                                      (cons _%metaclass191837%_
                                            (cons (if _%methods191836%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191836%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191817191851%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '1
                         '#f
                         '#f)))
                     (_%id191854%_ _%e191817191851%_)
                     (_%e191818191856%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '2
                         '#f
                         '#f)))
                     (_%super191859%_ _%e191818191856%_)
                     (_%e191819191861%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191864%_ _%e191819191861%_)
                     (_%e191820191866%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191869%_ _%e191820191866%_)
                     (_%e191821191871%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191874%_ _%e191821191871%_)
                     (_%e191822191876%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191879%_ _%e191822191876%_)
                     (_%e191823191881%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191884%_ _%e191823191881%_)
                     (_%e191824191886%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191889%_ _%e191824191886%_)
                     (_%e191825191891%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191894%_ _%e191825191891%_)
                     (_%e191826191896%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191899%_ _%e191826191896%_)
                     (_%e191827191901%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191813191829%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191904%_ _%e191827191901%_))
                (_%K191816191848%_
                 _%methods191904%_
                 _%metaclass191899%_
                 _%system?191894%_
                 _%final?191889%_
                 _%struct?191884%_
                 _%constructor191879%_
                 _%fields191874%_
                 _%slots191869%_
                 _%precendence-list191864%_
                 _%super191859%_
                 _%id191854%_))
              (_%E191815191833%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191666%_)
        (let ((_%self191669%_ _%self191666%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191669%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191531%_)
        (let ((_%self191534%_ _%self191531%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191534%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191396%_)
        (let ((_%self191399%_ _%self191396%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191399%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191399%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191399%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191261%_)
        (let ((_%self191264%_ _%self191261%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191264%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191264%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191264%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191126%_)
        (let ((_%self191129%_ _%self191126%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191129%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191129%_
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
      (lambda (_%self190939%_)
        (let* ((_%self190942%_ _%self190939%_)
               (_%self190951190960%_ _%self190942%_)
               (_%E190953190964%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190951190960%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190954190983%_
                (lambda (_%dispatch190967%_
                         _%arity190968%_
                         _%signature190969%_)
                  (if _%signature190969%_
                      (let ((_%signature190971%_ _%signature190969%_))
                        (cons '@lambda
                              (cons _%arity190968%_
                                    (cons _%dispatch190967%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190971%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature190971%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature190971%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature190971%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature190971%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity190968%_
                                  (cons _%dispatch190967%_ '())))))))
          (if '#t
              (let* ((_%e190955190986%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190951190960%_
                         '1
                         '#f
                         '#f)))
                     (_%e190956190989%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190951190960%_
                         '2
                         '#f
                         '#f)))
                     (_%signature190992%_ _%e190956190989%_)
                     (_%e190957190994%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190951190960%_
                         '3
                         '#f
                         '#f)))
                     (_%arity190997%_ _%e190957190994%_)
                     (_%e190958190999%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190951190960%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch191002%_ _%e190958190999%_))
                (_%K190954190983%_
                 _%dispatch191002%_
                 _%arity190997%_
                 _%signature190992%_))
              (_%E190953190964%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190800%_)
        (let ((_%self190803%_ _%self190800%_))
          (letrec ((_%clause-e190813%_
                    (lambda (_%clause190815%_)
                      (cdr (let ((__method193498
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190815%_
                                     'typedecl))))
                             (if __method193498
                                 (__method193498 _%clause190815%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190815%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190813%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190803%_
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
      (lambda (_%self190665%_)
        (let ((_%self190668%_ _%self190665%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190668%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190668%_
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
      (lambda (_%self190530%_)
        (let ((_%self190533%_ _%self190530%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190533%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190533%_
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
      (lambda (_%self190395%_)
        (let ((_%self190398%_ _%self190395%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190398%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
