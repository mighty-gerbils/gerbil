(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712702637)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193536
                   (let ((__obj193530
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193530)
                     __obj193530)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193536)))))
    (define gxc#optimize!
      (lambda (_%ctx193139%_)
        (let ((__tmp193539
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx193139%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx193139%_)
                 (let ((__tmp193541
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193540
                        (##structure-ref
                         _%ctx193139%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193541 __tmp193540 '#t))
                 (let ((_%code193142%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx193139%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx193139%_
                    _%code193142%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193538 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193537 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193539
           gxc#current-compile-mutators
           __tmp193538
           gxc#current-compile-local-type
           __tmp193537))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193125%_)
        (letrec ((_%load-it!193127%_
                  (lambda (_%id193137%_)
                    (if (let ((__tmp193542
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193542 _%id193137%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id193137%_)
                          (let ((__tmp193543
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193543 _%id193137%_ '#t)))))))
          (let* ((_%modid193129%_
                  (##structure-ref
                   _%ctx193125%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193131%_ (symbol->string _%modid193129%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193131%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193131%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193127%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193127%_
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
      (lambda (_%ctx193062%_)
        (letrec* ((_%deps193064%_
                   (let* ((_%imports193115%_
                           (##structure-ref
                            _%ctx193062%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193117%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193062%_))))
                     (if _%$e193117%_
                         ((lambda (_%g193119193121%_)
                            (cons _%g193119193121%_ _%imports193115%_))
                          _%$e193117%_)
                         _%imports193115%_))))
          (let _%lp193066%_ ((_%rest193068%_ _%deps193064%_))
            (let* ((_%rest193069193077%_ _%rest193068%_)
                   (_%else193071193085%_ (lambda () '#!void))
                   (_%K193073193103%_
                    (lambda (_%rest193088%_ _%hd193089%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193089%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193545
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193544
                                       (##structure-ref
                                        _%hd193089%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193545 __tmp193544))
                                '#!void
                                (begin
                                  (let ((_%$e193092%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193089%_))))
                                    (if _%$e193092%_
                                        ((lambda (_%pre193095%_)
                                           (_%lp193066%_
                                            (cons _%pre193095%_
                                                  (##structure-ref
                                                   _%hd193089%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e193092%_)
                                        (_%lp193066%_
                                         (##structure-ref
                                          _%hd193089%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd193089%_)))
                            (_%lp193066%_ _%rest193088%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193089%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193547
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193546
                                           (##structure-ref
                                            _%hd193089%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193547 __tmp193546))
                                    '#!void
                                    (begin
                                      (_%lp193066%_
                                       (##structure-ref
                                        _%hd193089%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd193089%_)))
                                (_%lp193066%_ _%rest193088%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193089%_
                                     'gx#module-import::t))
                                  (_%lp193066%_
                                   (cons (##direct-structure-ref
                                          _%hd193089%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest193088%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193089%_
                                         'gx#module-export::t))
                                      (_%lp193066%_
                                       (cons (##direct-structure-ref
                                              _%hd193089%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest193088%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193089%_
                                             'gx#import-set::t))
                                          (_%lp193066%_
                                           (cons (##direct-structure-ref
                                                  _%hd193089%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest193088%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193089%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193069193077%_))
                  (let ((_%hd193074193106%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193069193077%_)))
                        (_%tl193075193108%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193069193077%_))))
                    (let* ((_%hd193111%_ _%hd193074193106%_)
                           (_%rest193113%_ _%tl193075193108%_))
                      (_%K193073193103%_ _%rest193113%_ _%hd193111%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193042%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193042%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx193042%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht193044%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193046%_
                    (##structure-ref
                     _%ctx193042%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193048%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193044%_ _%id193046%_)))
                   (_%$e193051%_ _%mod193048%_))
              (if _%$e193051%_
                  _%$e193051%_
                  (let* ((_%mod193054%_
                          (gxc#optimizer-import-ssxi _%ctx193042%_))
                         (_%val193059%_
                          (let ((_%$e193056%_ _%mod193054%_))
                            (if _%$e193056%_ _%$e193056%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193044%_ _%id193046%_ _%val193059%_))
                    _%val193059%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193040%_)
        (if (##structure-ref _%ctx193040%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx193040%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193017%_)
        (letrec ((_%catch-e193019%_
                  (lambda (_%exn193038%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193038%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193038%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193017%_))))
                    '#f))
                 (_%import-e193020%_
                  (lambda ()
                    (let* ((_%str-id193023%_
                            (let ((__tmp193548
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193017%_))))
                              (declare (not safe))
                              (##string-append __tmp193548 '".ssxi")))
                           (_%artefact-path193031%_
                            (let ((_%odir193024193026%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193024193026%_
                                  (let ((_%odir193029%_ _%odir193024193026%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193023%_
                                        '".ss"))
                                     _%odir193029%_))
                                  '#f)))
                           (_%library-path193033%_
                            (let ((__tmp193549
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193023%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193549)))
                           (_%ssxi-path193035%_
                            (if (and _%artefact-path193031%_
                                     (file-exists? _%artefact-path193031%_))
                                _%artefact-path193031%_
                                _%library-path193033%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193035%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193035%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193019%_ _%import-e193020%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193008%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193008%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193008%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193008%_))
        (let* ((_%stx193010%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193008%_)))
               (_%stx193012%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193010%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193012%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193012%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193012%_))
          (let ((_%stx193015%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193012%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193015%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193551 (list gxc#::generate-runtime-empty::t))
            (__tmp193550 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193551
         '()
         __tmp193550
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193005%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193005%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193552
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
        (__make-promise __tmp193552)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192997%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193000%_
                (let ((__obj193532
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193532))
               (__tmp193553
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193000%_ _%stx192997%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193553
           gxc#current-compile-method
           _%self193000%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192957%_ _%stx192958%_)
        (let* ((_%g192960192970%_
                (lambda (_%g192961192967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192961192967%_))))
               (_%g192959192994%_
                (lambda (_%g192961192973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192961192973%_))
                      (let ((_%e192963192975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192961192973%_))))
                        (let ((_%hd192964192978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192963192975%_)))
                              (_%tl192965192980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192963192975%_))))
                          ((lambda (_%L192983%_)
                             (let ((__tmp193556
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192957%_
                                         _%stx192958%_))))
                                   (__tmp193554
                                    (let ((__tmp193555
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193555 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193556
                                gx#current-expander-phi
                                __tmp193554)))
                           _%tl192965192980%_)))
                      (_%g192960192970%_ _%g192961192973%_)))))
          (_%g192959192994%_ _%stx192958%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192896%_ _%stx192897%_)
        (let* ((_%g192899192913%_
                (lambda (_%g192900192910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192900192910%_))))
               (_%g192898192954%_
                (lambda (_%g192900192916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192900192916%_))
                      (let ((_%e192903192918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192900192916%_))))
                        (let ((_%hd192904192921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192903192918%_)))
                              (_%tl192905192923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192903192918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192905192923%_))
                              (let ((_%e192906192926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192905192923%_))))
                                (let ((_%hd192907192929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192906192926%_)))
                                      (_%tl192908192931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192906192926%_))))
                                  ((lambda (_%L192934%_ _%L192935%_)
                                     (let* ((_%ctx192948%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192935%_)))
                                            (_%code192950%_
                                             (##structure-ref
                                              _%ctx192948%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193557
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192896%_
                                                  _%code192950%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193557
                                        gx#current-expander-context
                                        _%ctx192948%_)))
                                   _%tl192908192931%_
                                   _%hd192907192929%_)))
                              (_%g192899192913%_ _%g192900192916%_))))
                      (_%g192899192913%_ _%g192900192916%_)))))
          (_%g192898192954%_ _%stx192897%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192701%_ _%stx192702%_)
        (letrec ((_%generate-e192704%_
                  (lambda (_%id192881%_)
                    (let* ((_%sym192883%_
                            (if (let ((__tmp193558
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193558))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192881%_))
                                '#f))
                           (_%$e192885%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192883%_))))
                      (if _%$e192885%_
                          ((lambda (_%klass192888%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192883%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192883%_
                                                     (cons (let ((__method193533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192888%_ 'typedecl))))
                     (if __method193533
                         (__method193533 _%klass192888%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192888%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192883%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192883%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192885%_)
                          (let ((_%$e192890%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192883%_))))
                            (if _%$e192890%_
                                ((lambda (_%type192893%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192883%_
                                      '" "
                                      _%type192893%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192893%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192883%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192883%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192893%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192883%_
                                                   (cons (let ((__method193534
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192893%_ 'typedecl))))
                   (if __method193534
                       (__method193534 _%type192893%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192893%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192890%_)
                                '(begin))))))))
          (let* ((_%__stx193145193146%_ _%stx192702%_)
                 (_%g192707192745%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193145193146%_)))))
            (let ((_%__kont193147193148%_
                   (lambda (_%L192863%_) (_%generate-e192704%_ _%L192863%_)))
                  (_%__kont193149193150%_
                   (lambda (_%L192798%_)
                     (let ((_%types192824%_
                            (map _%generate-e192704%_
                                 (let ((__tmp193559
                                        (lambda (_%g192816192819%_
                                                 _%g192817192821%_)
                                          (cons _%g192816192819%_
                                                _%g192817192821%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193559 '() _%L192798%_)))))
                       (cons 'begin _%types192824%_)))))
              (let ((_%__match193200193201%_
                     (lambda (_%e192723192750%_
                              _%hd192724192753%_
                              _%tl192725192755%_
                              _%e192726192758%_
                              _%hd192727192761%_
                              _%tl192728192763%_
                              _%__splice193151193152%_
                              _%target192729192766%_
                              _%tl192731192768%_)
                       (letrec ((_%loop192732192771%_
                                 (lambda (_%hd192730192774%_
                                          _%id192736192776%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192730192774%_))
                                       (let ((_%e192733192779%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192730192774%_))))
                                         (let ((_%lp-tl192735192784%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192733192779%_)))
                                               (_%lp-hd192734192782%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192733192779%_))))
                                           (_%loop192732192771%_
                                            _%lp-tl192735192784%_
                                            (cons _%lp-hd192734192782%_
                                                  _%id192736192776%_))))
                                       (let ((_%id192737192787%_
                                              (reverse _%id192736192776%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192728192763%_))
                                             (let ((_%e192738192790%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192728192763%_))))
                                               (let ((_%tl192740192795%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192738192790%_)))
                                                     (_%hd192739192793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192738192790%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192740192795%_))
                                                     (_%__kont193149193150%_
                                                      _%id192737192787%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192707192745%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192707192745%_))))))))
                         (_%loop192732192771%_ _%target192729192766%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193145193146%_))
                    (let ((_%e192710192831%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193145193146%_))))
                      (let ((_%tl192712192836%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192710192831%_)))
                            (_%hd192711192834%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192710192831%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192712192836%_))
                            (let ((_%e192713192839%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192712192836%_))))
                              (let ((_%tl192715192844%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192713192839%_)))
                                    (_%hd192714192842%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192713192839%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192714192842%_))
                                    (let ((_%e192716192847%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192714192842%_))))
                                      (let ((_%tl192718192852%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192716192847%_)))
                                            (_%hd192717192850%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192716192847%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192718192852%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192715192844%_))
                                                (let ((_%e192719192855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192715192844%_))))
                                                  (let ((_%tl192721192860%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192719192855%_)))
                                                        (_%hd192720192858%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192719192855%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192721192860%_))
                                                        (_%__kont193147193148%_
                                                         _%hd192717192850%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192714192842%_))
                                                            (let ((_%__splice193151193152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192714192842%_ '0))))
                      (let ((_%tl192731192768%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193151193152%_ '1)))
                            (_%target192729192766%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193151193152%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192731192768%_))
                            (_%__match193200193201%_
                             _%e192710192831%_
                             _%hd192711192834%_
                             _%tl192712192836%_
                             _%e192713192839%_
                             _%hd192714192842%_
                             _%tl192715192844%_
                             _%__splice193151193152%_
                             _%target192729192766%_
                             _%tl192731192768%_)
                            (let ()
                              (declare (not safe))
                              (_%g192707192745%_)))))
                    (let () (declare (not safe)) (_%g192707192745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192714192842%_))
                                                    (let ((_%__splice193151193152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192714192842%_
                                                              '0))))
                                                      (let ((_%tl192731192768%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193151193152%_ '1)))
                    (_%target192729192766%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193151193152%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192731192768%_))
                    (_%__match193200193201%_
                     _%e192710192831%_
                     _%hd192711192834%_
                     _%tl192712192836%_
                     _%e192713192839%_
                     _%hd192714192842%_
                     _%tl192715192844%_
                     _%__splice193151193152%_
                     _%target192729192766%_
                     _%tl192731192768%_)
                    (let () (declare (not safe)) (_%g192707192745%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192707192745%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192714192842%_))
                                                (let ((_%__splice193151193152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192714192842%_
                                                          '0))))
                                                  (let ((_%tl192731192768%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193151193152%_
                                                            '1)))
                                                        (_%target192729192766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193151193152%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192731192768%_))
                                                        (_%__match193200193201%_
                                                         _%e192710192831%_
                                                         _%hd192711192834%_
                                                         _%tl192712192836%_
                                                         _%e192713192839%_
                                                         _%hd192714192842%_
                                                         _%tl192715192844%_
                                                         _%__splice193151193152%_
                                                         _%target192729192766%_
                                                         _%tl192731192768%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192707192745%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192707192745%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192714192842%_))
                                        (let ((_%__splice193151193152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192714192842%_
                                                  '0))))
                                          (let ((_%tl192731192768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193151193152%_
                                                    '1)))
                                                (_%target192729192766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193151193152%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192731192768%_))
                                                (_%__match193200193201%_
                                                 _%e192710192831%_
                                                 _%hd192711192834%_
                                                 _%tl192712192836%_
                                                 _%e192713192839%_
                                                 _%hd192714192842%_
                                                 _%tl192715192844%_
                                                 _%__splice193151193152%_
                                                 _%target192729192766%_
                                                 _%tl192731192768%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192707192745%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192707192745%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192707192745%_)))))
                    (let () (declare (not safe)) (_%g192707192745%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192254%_ _%stx192255%_)
        (let* ((_%__stx193203193204%_ _%stx192255%_)
               (_%g192259192361%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193203193204%_)))))
          (let ((_%__kont193205193206%_
                 (lambda (_%L192651%_
                          _%L192652%_
                          _%L192653%_
                          _%L192654%_
                          _%L192655%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192654%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192653%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192652%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192651%_))
                                                 '())))))))
                (_%__kont193207193208%_
                 (lambda (_%L192477%_ _%L192478%_ _%L192479%_ _%L192480%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192479%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192478%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192477%_))
                                           (cons '#f '())))))))
                (_%__kont193209193210%_ (lambda () '(begin))))
            (let ((_%__match193338193339%_
                   (lambda (_%e192266192523%_
                            _%hd192267192526%_
                            _%tl192268192528%_
                            _%e192269192531%_
                            _%hd192270192534%_
                            _%tl192271192536%_
                            _%e192272192539%_
                            _%hd192273192542%_
                            _%tl192274192544%_
                            _%e192275192547%_
                            _%hd192276192550%_
                            _%tl192277192552%_
                            _%e192278192555%_
                            _%hd192279192558%_
                            _%tl192280192560%_
                            _%e192281192563%_
                            _%hd192282192566%_
                            _%tl192283192568%_
                            _%e192284192571%_
                            _%hd192285192574%_
                            _%tl192286192576%_
                            _%e192287192579%_
                            _%hd192288192582%_
                            _%tl192289192584%_
                            _%e192290192587%_
                            _%hd192291192590%_
                            _%tl192292192592%_
                            _%e192293192595%_
                            _%hd192294192598%_
                            _%tl192295192600%_
                            _%e192296192603%_
                            _%hd192297192606%_
                            _%tl192298192608%_
                            _%e192299192611%_
                            _%hd192300192614%_
                            _%tl192301192616%_
                            _%e192302192619%_
                            _%hd192303192622%_
                            _%tl192304192624%_
                            _%e192305192627%_
                            _%hd192306192630%_
                            _%tl192307192632%_
                            _%e192308192635%_
                            _%hd192309192638%_
                            _%tl192310192640%_
                            _%e192311192643%_
                            _%hd192312192646%_
                            _%tl192313192648%_)
                     (let ((_%L192651%_ _%hd192312192646%_)
                           (_%L192652%_ _%hd192303192622%_)
                           (_%L192653%_ _%hd192294192598%_)
                           (_%L192654%_ _%hd192285192574%_)
                           (_%L192655%_ _%hd192276192550%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192655%_
                              'bind-method!))
                           (_%__kont193205193206%_
                            _%L192651%_
                            _%L192652%_
                            _%L192653%_
                            _%L192654%_
                            _%L192655%_)
                           (_%__kont193209193210%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193203193204%_))
                  (let ((_%e192266192523%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193203193204%_))))
                    (let ((_%tl192268192528%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192266192523%_)))
                          (_%hd192267192526%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192266192523%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192268192528%_))
                          (let ((_%e192269192531%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192268192528%_))))
                            (let ((_%tl192271192536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192269192531%_)))
                                  (_%hd192270192534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192269192531%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192270192534%_))
                                  (let ((_%e192272192539%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192270192534%_))))
                                    (let ((_%tl192274192544%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192272192539%_)))
                                          (_%hd192273192542%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192272192539%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192273192542%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192273192542%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192274192544%_))
                                                  (let ((_%e192275192547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192274192544%_))))
                                                    (let ((_%tl192277192552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192275192547%_)))
                                                          (_%hd192276192550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192275192547%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192277192552%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192271192536%_))
                      (let ((_%e192278192555%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192271192536%_))))
                        (let ((_%tl192280192560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192278192555%_)))
                              (_%hd192279192558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192278192555%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192279192558%_))
                              (let ((_%e192281192563%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192279192558%_))))
                                (let ((_%tl192283192568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192281192563%_)))
                                      (_%hd192282192566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192281192563%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192282192566%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192282192566%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192283192568%_))
                                              (let ((_%e192284192571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192283192568%_))))
                                                (let ((_%tl192286192576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192284192571%_)))
                                                      (_%hd192285192574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192284192571%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192286192576%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192280192560%_))
                                                          (let ((_%e192287192579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192280192560%_))))
                    (let ((_%tl192289192584%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192287192579%_)))
                          (_%hd192288192582%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192287192579%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192288192582%_))
                          (let ((_%e192290192587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192288192582%_))))
                            (let ((_%tl192292192592%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192290192587%_)))
                                  (_%hd192291192590%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192290192587%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192291192590%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192291192590%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192292192592%_))
                                          (let ((_%e192293192595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192292192592%_))))
                                            (let ((_%tl192295192600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192293192595%_)))
                                                  (_%hd192294192598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192293192595%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192295192600%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192289192584%_))
                                                      (let ((_%e192296192603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192289192584%_))))
                (let ((_%tl192298192608%_
                       (let () (declare (not safe)) (##cdr _%e192296192603%_)))
                      (_%hd192297192606%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192296192603%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192297192606%_))
                      (let ((_%e192299192611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192297192606%_))))
                        (let ((_%tl192301192616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192299192611%_)))
                              (_%hd192300192614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192299192611%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192300192614%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192300192614%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192301192616%_))
                                      (let ((_%e192302192619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192301192616%_))))
                                        (let ((_%tl192304192624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192302192619%_)))
                                              (_%hd192303192622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192302192619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192304192624%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192298192608%_))
                                                  (let ((_%e192305192627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192298192608%_))))
                                                    (let ((_%tl192307192632%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192305192627%_)))
                                                          (_%hd192306192630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192305192627%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192306192630%_))
                                                          (let ((_%e192308192635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192306192630%_))))
                    (let ((_%tl192310192640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192308192635%_)))
                          (_%hd192309192638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192308192635%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192309192638%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192309192638%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192310192640%_))
                                  (let ((_%e192311192643%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192310192640%_))))
                                    (let ((_%tl192313192648%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192311192643%_)))
                                          (_%hd192312192646%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192311192643%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192313192648%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192307192632%_))
                                              (_%__match193338193339%_
                                               _%e192266192523%_
                                               _%hd192267192526%_
                                               _%tl192268192528%_
                                               _%e192269192531%_
                                               _%hd192270192534%_
                                               _%tl192271192536%_
                                               _%e192272192539%_
                                               _%hd192273192542%_
                                               _%tl192274192544%_
                                               _%e192275192547%_
                                               _%hd192276192550%_
                                               _%tl192277192552%_
                                               _%e192278192555%_
                                               _%hd192279192558%_
                                               _%tl192280192560%_
                                               _%e192281192563%_
                                               _%hd192282192566%_
                                               _%tl192283192568%_
                                               _%e192284192571%_
                                               _%hd192285192574%_
                                               _%tl192286192576%_
                                               _%e192287192579%_
                                               _%hd192288192582%_
                                               _%tl192289192584%_
                                               _%e192290192587%_
                                               _%hd192291192590%_
                                               _%tl192292192592%_
                                               _%e192293192595%_
                                               _%hd192294192598%_
                                               _%tl192295192600%_
                                               _%e192296192603%_
                                               _%hd192297192606%_
                                               _%tl192298192608%_
                                               _%e192299192611%_
                                               _%hd192300192614%_
                                               _%tl192301192616%_
                                               _%e192302192619%_
                                               _%hd192303192622%_
                                               _%tl192304192624%_
                                               _%e192305192627%_
                                               _%hd192306192630%_
                                               _%tl192307192632%_
                                               _%e192308192635%_
                                               _%hd192309192638%_
                                               _%tl192310192640%_
                                               _%e192311192643%_
                                               _%hd192312192646%_
                                               _%tl192313192648%_)
                                              (_%__kont193209193210%_))
                                          (_%__kont193209193210%_))))
                                  (_%__kont193209193210%_))
                              (_%__kont193209193210%_))
                          (_%__kont193209193210%_))))
                  (_%__kont193209193210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192298192608%_))
                                                      (if (let ((__tmp193560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193560 'bind-method!))
                  (let ((_%L192477%_ _%hd192303192622%_)
                        (_%L192478%_ _%hd192294192598%_)
                        (_%L192479%_ _%hd192285192574%_)
                        (_%L192480%_ _%hd192276192550%_))
                    (_%__kont193207193208%_
                     _%L192477%_
                     _%L192478%_
                     _%L192479%_
                     _%L192480%_))
                  (_%__kont193209193210%_))
              (_%__kont193209193210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193209193210%_))))
                                      (_%__kont193209193210%_))
                                  (_%__kont193209193210%_))
                              (_%__kont193209193210%_))))
                      (_%__kont193209193210%_))))
              (_%__kont193209193210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193209193210%_))))
                                          (_%__kont193209193210%_))
                                      (_%__kont193209193210%_))
                                  (_%__kont193209193210%_))))
                          (_%__kont193209193210%_))))
                  (_%__kont193209193210%_))
              (_%__kont193209193210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193209193210%_))
                                          (_%__kont193209193210%_))
                                      (_%__kont193209193210%_))))
                              (_%__kont193209193210%_))))
                      (_%__kont193209193210%_))
                  (_%__kont193209193210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193209193210%_))
                                              (_%__kont193209193210%_))
                                          (_%__kont193209193210%_))))
                                  (_%__kont193209193210%_))))
                          (_%__kont193209193210%_))))
                  (_%__kont193209193210%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192078%_ _%stx192079%_)
        (let* ((_%__stx193447193448%_ _%stx192079%_)
               (_%g192082192122%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193447193448%_)))))
          (let ((_%__kont193449193450%_
                 (lambda (_%L192228%_ _%L192229%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192229%_))
                               (cons _%L192228%_ '())))))
                (_%__kont193451193452%_
                 (lambda (_%L192151%_ _%L192152%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193447193448%_))
                (let ((_%e192086192172%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193447193448%_))))
                  (let ((_%tl192088192177%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192086192172%_)))
                        (_%hd192087192175%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192086192172%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192088192177%_))
                        (let ((_%e192089192180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192088192177%_))))
                          (let ((_%tl192091192185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192089192180%_)))
                                (_%hd192090192183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192089192180%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192090192183%_))
                                (let ((_%e192092192188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192090192183%_))))
                                  (let ((_%tl192094192193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192092192188%_)))
                                        (_%hd192093192191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192092192188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192093192191%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192093192191%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192094192193%_))
                                                (let ((_%e192095192196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192094192193%_))))
                                                  (let ((_%tl192097192201%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192095192196%_)))
                                                        (_%hd192096192199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192095192196%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192097192201%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192091192185%_))
                                                            (let ((_%e192098192204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192091192185%_))))
                      (let ((_%tl192100192209%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192098192204%_)))
                            (_%hd192099192207%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192098192204%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192099192207%_))
                            (let ((_%e192101192212%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192099192207%_))))
                              (let ((_%tl192103192217%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192101192212%_)))
                                    (_%hd192102192215%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192101192212%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192102192215%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192102192215%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192103192217%_))
                                            (let ((_%e192104192220%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192103192217%_))))
                                              (let ((_%tl192106192225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192104192220%_)))
                                                    (_%hd192105192223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192104192220%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192106192225%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192100192209%_))
                                                        (_%__kont193449193450%_
                                                         _%hd192105192223%_
                                                         _%hd192096192199%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192082192122%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192100192209%_))
                                                        (_%__kont193451193452%_
                                                         _%hd192099192207%_
                                                         _%hd192090192183%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192082192122%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192100192209%_))
                                                (_%__kont193451193452%_
                                                 _%hd192099192207%_
                                                 _%hd192090192183%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192082192122%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192100192209%_))
                                            (_%__kont193451193452%_
                                             _%hd192099192207%_
                                             _%hd192090192183%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192082192122%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192100192209%_))
                                        (_%__kont193451193452%_
                                         _%hd192099192207%_
                                         _%hd192090192183%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192082192122%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192100192209%_))
                                (_%__kont193451193452%_
                                 _%hd192099192207%_
                                 _%hd192090192183%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192082192122%_))))))
                    (let () (declare (not safe)) (_%g192082192122%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192091192185%_))
                    (let ((_%e192115192143%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192091192185%_))))
                      (let ((_%tl192117192148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192115192143%_)))
                            (_%hd192116192146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192115192143%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192117192148%_))
                            (_%__kont193451193452%_
                             _%hd192116192146%_
                             _%hd192090192183%_)
                            (let ()
                              (declare (not safe))
                              (_%g192082192122%_)))))
                    (let () (declare (not safe)) (_%g192082192122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192091192185%_))
                                                    (let ((_%e192115192143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192091192185%_))))
                                                      (let ((_%tl192117192148%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192115192143%_)))
                    (_%hd192116192146%_
                     (let () (declare (not safe)) (##car _%e192115192143%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192117192148%_))
                    (_%__kont193451193452%_
                     _%hd192116192146%_
                     _%hd192090192183%_)
                    (let () (declare (not safe)) (_%g192082192122%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192082192122%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192091192185%_))
                                                (let ((_%e192115192143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192091192185%_))))
                                                  (let ((_%tl192117192148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192115192143%_)))
                                                        (_%hd192116192146%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192115192143%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192117192148%_))
                                                        (_%__kont193451193452%_
                                                         _%hd192116192146%_
                                                         _%hd192090192183%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192082192122%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192082192122%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192091192185%_))
                                            (let ((_%e192115192143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192091192185%_))))
                                              (let ((_%tl192117192148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192115192143%_)))
                                                    (_%hd192116192146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192115192143%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192117192148%_))
                                                    (_%__kont193451193452%_
                                                     _%hd192116192146%_
                                                     _%hd192090192183%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192082192122%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192082192122%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192091192185%_))
                                    (let ((_%e192115192143%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192091192185%_))))
                                      (let ((_%tl192117192148%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192115192143%_)))
                                            (_%hd192116192146%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192115192143%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192117192148%_))
                                            (_%__kont193451193452%_
                                             _%hd192116192146%_
                                             _%hd192090192183%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192082192122%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192082192122%_))))))
                        (let () (declare (not safe)) (_%g192082192122%_)))))
                (let () (declare (not safe)) (_%g192082192122%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192065%_)
        (let ((_%self192068%_ _%self192065%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192068%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191838%_)
        (let* ((_%self191841%_ _%self191838%_)
               (_%self191850191866%_ _%self191841%_)
               (_%E191852191870%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191850191866%_
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
               (_%K191853191885%_
                (lambda (_%methods191873%_
                         _%metaclass191874%_
                         _%system?191875%_
                         _%final?191876%_
                         _%struct?191877%_
                         _%constructor191878%_
                         _%fields191879%_
                         _%slots191880%_
                         _%precendence-list191881%_
                         _%super191882%_
                         _%id191883%_)
                  (cons '@class
                        (cons _%id191883%_
                              (cons _%super191882%_
                                    (cons _%precendence-list191881%_
                                          (cons _%slots191880%_
                                                (cons _%fields191879%_
                                                      (cons _%constructor191878%_
                                                            (cons _%struct?191877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?191876%_
                                (cons _%system?191875%_
                                      (cons _%metaclass191874%_
                                            (cons (if _%methods191873%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods191873%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e191854191888%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '1
                         '#f
                         '#f)))
                     (_%id191891%_ _%e191854191888%_)
                     (_%e191855191893%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '2
                         '#f
                         '#f)))
                     (_%super191896%_ _%e191855191893%_)
                     (_%e191856191898%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list191901%_ _%e191856191898%_)
                     (_%e191857191903%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '4
                         '#f
                         '#f)))
                     (_%slots191906%_ _%e191857191903%_)
                     (_%e191858191908%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '5
                         '#f
                         '#f)))
                     (_%fields191911%_ _%e191858191908%_)
                     (_%e191859191913%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor191916%_ _%e191859191913%_)
                     (_%e191860191918%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?191921%_ _%e191860191918%_)
                     (_%e191861191923%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '8
                         '#f
                         '#f)))
                     (_%final?191926%_ _%e191861191923%_)
                     (_%e191862191928%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '9
                         '#f
                         '#f)))
                     (_%system?191931%_ _%e191862191928%_)
                     (_%e191863191933%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass191936%_ _%e191863191933%_)
                     (_%e191864191938%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191850191866%_
                         '11
                         '#f
                         '#f)))
                     (_%methods191941%_ _%e191864191938%_))
                (_%K191853191885%_
                 _%methods191941%_
                 _%metaclass191936%_
                 _%system?191931%_
                 _%final?191926%_
                 _%struct?191921%_
                 _%constructor191916%_
                 _%fields191911%_
                 _%slots191906%_
                 _%precendence-list191901%_
                 _%super191896%_
                 _%id191891%_))
              (_%E191852191870%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191703%_)
        (let ((_%self191706%_ _%self191703%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191706%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191568%_)
        (let ((_%self191571%_ _%self191568%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191571%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191433%_)
        (let ((_%self191436%_ _%self191433%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191436%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191436%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191436%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191298%_)
        (let ((_%self191301%_ _%self191298%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191301%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191301%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191301%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191163%_)
        (let ((_%self191166%_ _%self191163%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191166%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191166%_
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
      (lambda (_%self190976%_)
        (let* ((_%self190979%_ _%self190976%_)
               (_%self190988190997%_ _%self190979%_)
               (_%E190990191001%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self190988190997%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K190991191020%_
                (lambda (_%dispatch191004%_
                         _%arity191005%_
                         _%signature191006%_)
                  (if _%signature191006%_
                      (let ((_%signature191008%_ _%signature191006%_))
                        (cons '@lambda
                              (cons _%arity191005%_
                                    (cons _%dispatch191004%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature191008%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature191008%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature191008%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature191008%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature191008%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity191005%_
                                  (cons _%dispatch191004%_ '())))))))
          (if '#t
              (let* ((_%e190992191023%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190988190997%_
                         '1
                         '#f
                         '#f)))
                     (_%e190993191026%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190988190997%_
                         '2
                         '#f
                         '#f)))
                     (_%signature191029%_ _%e190993191026%_)
                     (_%e190994191031%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190988190997%_
                         '3
                         '#f
                         '#f)))
                     (_%arity191034%_ _%e190994191031%_)
                     (_%e190995191036%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self190988190997%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch191039%_ _%e190995191036%_))
                (_%K190991191020%_
                 _%dispatch191039%_
                 _%arity191034%_
                 _%signature191029%_))
              (_%E190990191001%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190837%_)
        (let ((_%self190840%_ _%self190837%_))
          (letrec ((_%clause-e190850%_
                    (lambda (_%clause190852%_)
                      (cdr (let ((__method193535
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190852%_
                                     'typedecl))))
                             (if __method193535
                                 (__method193535 _%clause190852%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190852%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190850%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190840%_
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
      (lambda (_%self190702%_)
        (let ((_%self190705%_ _%self190702%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190705%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190705%_
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
      (lambda (_%self190567%_)
        (let ((_%self190570%_ _%self190567%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190570%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190570%_
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
      (lambda (_%self190432%_)
        (let ((_%self190435%_ _%self190432%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190435%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
