(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712161247)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193706
                   (let ((__obj193700
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193700)
                     __obj193700)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193706)))))
    (define gxc#optimize!
      (lambda (_%ctx193309%_)
        (let ((__tmp193709
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx193309%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx193309%_))
                 (let ((__tmp193711
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193710
                        (##structure-ref
                         _%ctx193309%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193711 __tmp193710 '#t))
                 (let ((_%code193312%_
                        (let ((__tmp193712
                               (##structure-ref
                                _%ctx193309%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp193712))))
                   (##structure-set!
                    _%ctx193309%_
                    _%code193312%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193708 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193707 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193709
           gxc#current-compile-mutators
           __tmp193708
           gxc#current-compile-local-type
           __tmp193707))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx193295%_)
        (letrec ((_%load-it!193297%_
                  (lambda (_%id193307%_)
                    (if (let ((__tmp193713
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193713 _%id193307%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id193307%_))
                          (let ((__tmp193714
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193714 _%id193307%_ '#t)))))))
          (let* ((_%modid193299%_
                  (##structure-ref
                   _%ctx193295%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str193301%_ (symbol->string _%modid193299%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str193301%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str193301%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193297%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!193297%_
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
      (lambda (_%ctx193232%_)
        (letrec* ((_%deps193234%_
                   (let* ((_%imports193285%_
                           (##structure-ref
                            _%ctx193232%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e193287%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx193232%_))))
                     (if _%$e193287%_
                         ((lambda (_%g193289193291%_)
                            (cons _%g193289193291%_ _%imports193285%_))
                          _%$e193287%_)
                         (let () _%imports193285%_)))))
          (let _%lp193236%_ ((_%rest193238%_ _%deps193234%_))
            (let* ((_%rest193239193247%_ _%rest193238%_)
                   (_%else193241193255%_ (lambda () '#!void))
                   (_%K193243193273%_
                    (lambda (_%rest193258%_ _%hd193259%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd193259%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193716
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193715
                                       (##structure-ref
                                        _%hd193259%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193716 __tmp193715))
                                '#!void
                                (begin
                                  (let ((_%$e193262%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd193259%_))))
                                    (if _%$e193262%_
                                        ((lambda (_%pre193265%_)
                                           (let ((__tmp193717
                                                  (cons _%pre193265%_
                                                        (##structure-ref
                                                         _%hd193259%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp193236%_ __tmp193717)))
                                         _%$e193262%_)
                                        (let ((__tmp193718
                                               (##structure-ref
                                                _%hd193259%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp193236%_ __tmp193718))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd193259%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp193236%_ _%rest193258%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd193259%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193720
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193719
                                           (##structure-ref
                                            _%hd193259%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193720 __tmp193719))
                                    '#!void
                                    (begin
                                      (let ((__tmp193721
                                             (##structure-ref
                                              _%hd193259%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp193236%_ __tmp193721))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd193259%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp193236%_ _%rest193258%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd193259%_
                                     'gx#module-import::t))
                                  (let ((__tmp193722
                                         (cons (##direct-structure-ref
                                                _%hd193259%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest193258%_)))
                                    (declare (not safe))
                                    (_%lp193236%_ __tmp193722))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd193259%_
                                         'gx#module-export::t))
                                      (let ((__tmp193723
                                             (cons (##direct-structure-ref
                                                    _%hd193259%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest193258%_)))
                                        (declare (not safe))
                                        (_%lp193236%_ __tmp193723))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd193259%_
                                             'gx#import-set::t))
                                          (let ((__tmp193724
                                                 (cons (##direct-structure-ref
                                                        _%hd193259%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest193258%_)))
                                            (declare (not safe))
                                            (_%lp193236%_ __tmp193724))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd193259%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest193239193247%_))
                  (let ((_%hd193244193276%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193239193247%_)))
                        (_%tl193245193278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193239193247%_))))
                    (let* ((_%hd193281%_ _%hd193244193276%_)
                           (_%rest193283%_ _%tl193245193278%_))
                      (declare (not safe))
                      (_%K193243193273%_ _%rest193283%_ _%hd193281%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx193212%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx193212%_
                    'gx#module-context::t))
                 (let ((__tmp193725
                        (##structure-ref
                         _%ctx193212%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp193725)))
            '#!void
            (let* ((_%ht193214%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id193216%_
                    (##structure-ref
                     _%ctx193212%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod193218%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht193214%_ _%id193216%_)))
                   (_%$e193221%_ _%mod193218%_))
              (if _%$e193221%_
                  _%$e193221%_
                  (let* ((_%mod193224%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx193212%_)))
                         (_%val193229%_
                          (let ((_%$e193226%_ _%mod193224%_))
                            (if _%$e193226%_ _%$e193226%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht193214%_ _%id193216%_ _%val193229%_))
                    _%val193229%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx193210%_)
        (if (##structure-ref _%ctx193210%_ '1 gx#expander-context::t '#f)
            (let ((__tmp193726
                   (##structure-ref
                    _%ctx193210%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp193726))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193187%_)
        (letrec ((_%catch-e193189%_
                  (lambda (_%exn193208%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn193208%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn193208%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193187%_))))
                    '#f))
                 (_%import-e193190%_
                  (lambda ()
                    (let* ((_%str-id193193%_
                            (let ((__tmp193727
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193187%_))))
                              (declare (not safe))
                              (##string-append __tmp193727 '".ssxi")))
                           (_%artefact-path193201%_
                            (let ((_%odir193194193196%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193194193196%_
                                  (let ((_%odir193199%_ _%odir193194193196%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193193%_
                                        '".ss"))
                                     _%odir193199%_))
                                  '#f)))
                           (_%library-path193203%_
                            (let ((__tmp193728
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193193%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193728)))
                           (_%ssxi-path193205%_
                            (if (and _%artefact-path193201%_
                                     (file-exists? _%artefact-path193201%_))
                                _%artefact-path193201%_
                                _%library-path193203%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193205%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193205%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193189%_ _%import-e193190%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193178%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193178%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx193178%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193178%_))
        (let* ((_%stx193180%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193178%_)))
               (_%stx193182%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193180%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193182%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193182%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193182%_))
          (let ((_%stx193185%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193182%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193185%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193730 (list gxc#::generate-runtime-empty::t))
            (__tmp193729 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193730
         '()
         __tmp193729
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193175%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193175%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193731
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
        (__make-promise __tmp193731)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193167%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193170%_
                (let ((__obj193702
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193702))
               (__tmp193732
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193170%_ _%stx193167%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193732
           gxc#current-compile-method
           _%self193170%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193127%_ _%stx193128%_)
        (let* ((_%g193130193140%_
                (lambda (_%g193131193137%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193131193137%_))))
               (_%g193129193164%_
                (lambda (_%g193131193143%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193131193143%_))
                      (let ((_%e193135193145%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193131193143%_))))
                        (let ((_%hd193134193148%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193135193145%_)))
                              (_%tl193133193150%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193135193145%_))))
                          ((lambda (_%L193153%_)
                             (let ((__tmp193735
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193127%_
                                         _%stx193128%_))))
                                   (__tmp193733
                                    (let ((__tmp193734
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193734 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193735
                                gx#current-expander-phi
                                __tmp193733)))
                           _%tl193133193150%_)))
                      (let ()
                        (declare (not safe))
                        (_%g193130193140%_ _%g193131193143%_))))))
          (declare (not safe))
          (_%g193129193164%_ _%stx193128%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193066%_ _%stx193067%_)
        (let* ((_%g193069193083%_
                (lambda (_%g193070193080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193070193080%_))))
               (_%g193068193124%_
                (lambda (_%g193070193086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193070193086%_))
                      (let ((_%e193075193088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193070193086%_))))
                        (let ((_%hd193074193091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193075193088%_)))
                              (_%tl193073193093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193075193088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193073193093%_))
                              (let ((_%e193078193096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193073193093%_))))
                                (let ((_%hd193077193099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193078193096%_)))
                                      (_%tl193076193101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193078193096%_))))
                                  ((lambda (_%L193104%_ _%L193105%_)
                                     (let* ((_%ctx193118%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193105%_)))
                                            (_%code193120%_
                                             (##structure-ref
                                              _%ctx193118%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193736
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193066%_
                                                  _%code193120%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193736
                                        gx#current-expander-context
                                        _%ctx193118%_)))
                                   _%tl193076193101%_
                                   _%hd193077193099%_)))
                              (let ()
                                (declare (not safe))
                                (_%g193069193083%_ _%g193070193086%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g193069193083%_ _%g193070193086%_))))))
          (declare (not safe))
          (_%g193068193124%_ _%stx193067%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192871%_ _%stx192872%_)
        (letrec ((_%generate-e192874%_
                  (lambda (_%id193051%_)
                    (let* ((_%sym193053%_
                            (if (let ((__tmp193737
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193737))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193051%_))
                                '#f))
                           (_%$e193055%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193053%_))))
                      (if _%$e193055%_
                          ((lambda (_%klass193058%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193053%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193053%_
                                                     (cons (let ((__method193703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193058%_ 'typedecl))))
                     (if __method193703
                         (__method193703 _%klass193058%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass193058%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193053%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193053%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193055%_)
                          (let ((_%$e193060%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193053%_))))
                            (if _%$e193060%_
                                ((lambda (_%type193063%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193053%_
                                      '" "
                                      _%type193063%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193063%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193053%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193053%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193063%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193053%_
                                                   (cons (let ((__method193704
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193063%_ 'typedecl))))
                   (if __method193704
                       (__method193704 _%type193063%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type193063%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193060%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx193315193316%_ _%stx192872%_)
                 (_%g192877192915%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx193315193316%_)))))
            (let ((_%__kont193317193318%_
                   (lambda (_%L193033%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192874%_ _%L193033%_))))
                  (_%__kont193319193320%_
                   (lambda (_%L192968%_)
                     (let ((_%types192994%_
                            (map _%generate-e192874%_
                                 (let ((__tmp193738
                                        (lambda (_%g192986192989%_
                                                 _%g192987192991%_)
                                          (cons _%g192986192989%_
                                                _%g192987192991%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193738 '() _%L192968%_)))))
                       (cons 'begin _%types192994%_)))))
              (let ((_%__match193370193371%_
                     (lambda (_%e192895192920%_
                              _%hd192894192923%_
                              _%tl192893192925%_
                              _%e192898192928%_
                              _%hd192897192931%_
                              _%tl192896192933%_
                              _%__splice193321193322%_
                              _%target192899192936%_
                              _%tl192901192938%_)
                       (letrec ((_%loop192902192941%_
                                 (lambda (_%hd192900192944%_
                                          _%id192906192946%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192900192944%_))
                                       (let ((_%e192903192949%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192900192944%_))))
                                         (let ((_%lp-tl192905192954%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192903192949%_)))
                                               (_%lp-hd192904192952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192903192949%_))))
                                           (let ((__tmp193739
                                                  (cons _%lp-hd192904192952%_
                                                        _%id192906192946%_)))
                                             (declare (not safe))
                                             (_%loop192902192941%_
                                              _%lp-tl192905192954%_
                                              __tmp193739))))
                                       (let ((_%id192907192957%_
                                              (reverse _%id192906192946%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192896192933%_))
                                             (let ((_%e192910192960%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192896192933%_))))
                                               (let ((_%tl192908192965%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192910192960%_)))
                                                     (_%hd192909192963%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192910192960%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192908192965%_))
                                                     (_%__kont193319193320%_
                                                      _%id192907192957%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192877192915%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192877192915%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192902192941%_
                            _%target192899192936%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx193315193316%_))
                    (let ((_%e192882193001%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx193315193316%_))))
                      (let ((_%tl192880193006%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192882193001%_)))
                            (_%hd192881193004%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192882193001%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192880193006%_))
                            (let ((_%e192885193009%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192880193006%_))))
                              (let ((_%tl192883193014%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192885193009%_)))
                                    (_%hd192884193012%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192885193009%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192884193012%_))
                                    (let ((_%e192888193017%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192884193012%_))))
                                      (let ((_%tl192886193022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192888193017%_)))
                                            (_%hd192887193020%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192888193017%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192886193022%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192883193014%_))
                                                (let ((_%e192891193025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192883193014%_))))
                                                  (let ((_%tl192889193030%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192891193025%_)))
                                                        (_%hd192890193028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192891193025%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192889193030%_))
                                                        (_%__kont193317193318%_
                                                         _%hd192887193020%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192884193012%_))
                                                            (let ((_%__splice193321193322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192884193012%_ '0))))
                      (let ((_%tl192901192938%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193321193322%_ '1)))
                            (_%target192899192936%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice193321193322%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192901192938%_))
                            (_%__match193370193371%_
                             _%e192882193001%_
                             _%hd192881193004%_
                             _%tl192880193006%_
                             _%e192885193009%_
                             _%hd192884193012%_
                             _%tl192883193014%_
                             _%__splice193321193322%_
                             _%target192899192936%_
                             _%tl192901192938%_)
                            (let ()
                              (declare (not safe))
                              (_%g192877192915%_)))))
                    (let () (declare (not safe)) (_%g192877192915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192884193012%_))
                                                    (let ((_%__splice193321193322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192884193012%_
                                                              '0))))
                                                      (let ((_%tl192901192938%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice193321193322%_ '1)))
                    (_%target192899192936%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice193321193322%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192901192938%_))
                    (_%__match193370193371%_
                     _%e192882193001%_
                     _%hd192881193004%_
                     _%tl192880193006%_
                     _%e192885193009%_
                     _%hd192884193012%_
                     _%tl192883193014%_
                     _%__splice193321193322%_
                     _%target192899192936%_
                     _%tl192901192938%_)
                    (let () (declare (not safe)) (_%g192877192915%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192877192915%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192884193012%_))
                                                (let ((_%__splice193321193322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192884193012%_
                                                          '0))))
                                                  (let ((_%tl192901192938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193321193322%_
                                                            '1)))
                                                        (_%target192899192936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice193321193322%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192901192938%_))
                                                        (_%__match193370193371%_
                                                         _%e192882193001%_
                                                         _%hd192881193004%_
                                                         _%tl192880193006%_
                                                         _%e192885193009%_
                                                         _%hd192884193012%_
                                                         _%tl192883193014%_
                                                         _%__splice193321193322%_
                                                         _%target192899192936%_
                                                         _%tl192901192938%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192877192915%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192877192915%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192884193012%_))
                                        (let ((_%__splice193321193322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192884193012%_
                                                  '0))))
                                          (let ((_%tl192901192938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193321193322%_
                                                    '1)))
                                                (_%target192899192936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice193321193322%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192901192938%_))
                                                (_%__match193370193371%_
                                                 _%e192882193001%_
                                                 _%hd192881193004%_
                                                 _%tl192880193006%_
                                                 _%e192885193009%_
                                                 _%hd192884193012%_
                                                 _%tl192883193014%_
                                                 _%__splice193321193322%_
                                                 _%target192899192936%_
                                                 _%tl192901192938%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192877192915%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192877192915%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192877192915%_)))))
                    (let () (declare (not safe)) (_%g192877192915%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self192424%_ _%stx192425%_)
        (let* ((_%__stx193373193374%_ _%stx192425%_)
               (_%g192429192531%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193373193374%_)))))
          (let ((_%__kont193375193376%_
                 (lambda (_%L192821%_
                          _%L192822%_
                          _%L192823%_
                          _%L192824%_
                          _%L192825%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192824%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192823%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192822%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192821%_))
                                                 '())))))))
                (_%__kont193377193378%_
                 (lambda (_%L192647%_ _%L192648%_ _%L192649%_ _%L192650%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192649%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192648%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192647%_))
                                           (cons '#f '())))))))
                (_%__kont193379193380%_ (lambda () '(begin))))
            (let ((_%__match193508193509%_
                   (lambda (_%e192438192693%_
                            _%hd192437192696%_
                            _%tl192436192698%_
                            _%e192441192701%_
                            _%hd192440192704%_
                            _%tl192439192706%_
                            _%e192444192709%_
                            _%hd192443192712%_
                            _%tl192442192714%_
                            _%e192447192717%_
                            _%hd192446192720%_
                            _%tl192445192722%_
                            _%e192450192725%_
                            _%hd192449192728%_
                            _%tl192448192730%_
                            _%e192453192733%_
                            _%hd192452192736%_
                            _%tl192451192738%_
                            _%e192456192741%_
                            _%hd192455192744%_
                            _%tl192454192746%_
                            _%e192459192749%_
                            _%hd192458192752%_
                            _%tl192457192754%_
                            _%e192462192757%_
                            _%hd192461192760%_
                            _%tl192460192762%_
                            _%e192465192765%_
                            _%hd192464192768%_
                            _%tl192463192770%_
                            _%e192468192773%_
                            _%hd192467192776%_
                            _%tl192466192778%_
                            _%e192471192781%_
                            _%hd192470192784%_
                            _%tl192469192786%_
                            _%e192474192789%_
                            _%hd192473192792%_
                            _%tl192472192794%_
                            _%e192477192797%_
                            _%hd192476192800%_
                            _%tl192475192802%_
                            _%e192480192805%_
                            _%hd192479192808%_
                            _%tl192478192810%_
                            _%e192483192813%_
                            _%hd192482192816%_
                            _%tl192481192818%_)
                     (let ((_%L192821%_ _%hd192482192816%_)
                           (_%L192822%_ _%hd192473192792%_)
                           (_%L192823%_ _%hd192464192768%_)
                           (_%L192824%_ _%hd192455192744%_)
                           (_%L192825%_ _%hd192446192720%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192825%_
                              'bind-method!))
                           (_%__kont193375193376%_
                            _%L192821%_
                            _%L192822%_
                            _%L192823%_
                            _%L192824%_
                            _%L192825%_)
                           (_%__kont193379193380%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx193373193374%_))
                  (let ((_%e192438192693%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx193373193374%_))))
                    (let ((_%tl192436192698%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192438192693%_)))
                          (_%hd192437192696%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192438192693%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl192436192698%_))
                          (let ((_%e192441192701%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl192436192698%_))))
                            (let ((_%tl192439192706%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192441192701%_)))
                                  (_%hd192440192704%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192441192701%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd192440192704%_))
                                  (let ((_%e192444192709%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd192440192704%_))))
                                    (let ((_%tl192442192714%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192444192709%_)))
                                          (_%hd192443192712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192444192709%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd192443192712%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd192443192712%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192442192714%_))
                                                  (let ((_%e192447192717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192442192714%_))))
                                                    (let ((_%tl192445192722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192447192717%_)))
                                                          (_%hd192446192720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192447192717%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl192445192722%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl192439192706%_))
                      (let ((_%e192450192725%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl192439192706%_))))
                        (let ((_%tl192448192730%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192450192725%_)))
                              (_%hd192449192728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192450192725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd192449192728%_))
                              (let ((_%e192453192733%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd192449192728%_))))
                                (let ((_%tl192451192738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192453192733%_)))
                                      (_%hd192452192736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192453192733%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd192452192736%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd192452192736%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl192451192738%_))
                                              (let ((_%e192456192741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl192451192738%_))))
                                                (let ((_%tl192454192746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e192456192741%_)))
                                                      (_%hd192455192744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e192456192741%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192454192746%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl192448192730%_))
                                                          (let ((_%e192459192749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl192448192730%_))))
                    (let ((_%tl192457192754%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192459192749%_)))
                          (_%hd192458192752%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192459192749%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd192458192752%_))
                          (let ((_%e192462192757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd192458192752%_))))
                            (let ((_%tl192460192762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e192462192757%_)))
                                  (_%hd192461192760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e192462192757%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd192461192760%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd192461192760%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl192460192762%_))
                                          (let ((_%e192465192765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl192460192762%_))))
                                            (let ((_%tl192463192770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e192465192765%_)))
                                                  (_%hd192464192768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e192465192765%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl192463192770%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl192457192754%_))
                                                      (let ((_%e192468192773%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl192457192754%_))))
                (let ((_%tl192466192778%_
                       (let () (declare (not safe)) (##cdr _%e192468192773%_)))
                      (_%hd192467192776%_
                       (let ()
                         (declare (not safe))
                         (##car _%e192468192773%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd192467192776%_))
                      (let ((_%e192471192781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd192467192776%_))))
                        (let ((_%tl192469192786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192471192781%_)))
                              (_%hd192470192784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192471192781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd192470192784%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd192470192784%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl192469192786%_))
                                      (let ((_%e192474192789%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl192469192786%_))))
                                        (let ((_%tl192472192794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e192474192789%_)))
                                              (_%hd192473192792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e192474192789%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192472192794%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl192466192778%_))
                                                  (let ((_%e192477192797%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl192466192778%_))))
                                                    (let ((_%tl192475192802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e192477192797%_)))
                                                          (_%hd192476192800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e192477192797%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd192476192800%_))
                                                          (let ((_%e192480192805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd192476192800%_))))
                    (let ((_%tl192478192810%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e192480192805%_)))
                          (_%hd192479192808%_
                           (let ()
                             (declare (not safe))
                             (##car _%e192480192805%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd192479192808%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd192479192808%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl192478192810%_))
                                  (let ((_%e192483192813%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl192478192810%_))))
                                    (let ((_%tl192481192818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e192483192813%_)))
                                          (_%hd192482192816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e192483192813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl192481192818%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl192475192802%_))
                                              (_%__match193508193509%_
                                               _%e192438192693%_
                                               _%hd192437192696%_
                                               _%tl192436192698%_
                                               _%e192441192701%_
                                               _%hd192440192704%_
                                               _%tl192439192706%_
                                               _%e192444192709%_
                                               _%hd192443192712%_
                                               _%tl192442192714%_
                                               _%e192447192717%_
                                               _%hd192446192720%_
                                               _%tl192445192722%_
                                               _%e192450192725%_
                                               _%hd192449192728%_
                                               _%tl192448192730%_
                                               _%e192453192733%_
                                               _%hd192452192736%_
                                               _%tl192451192738%_
                                               _%e192456192741%_
                                               _%hd192455192744%_
                                               _%tl192454192746%_
                                               _%e192459192749%_
                                               _%hd192458192752%_
                                               _%tl192457192754%_
                                               _%e192462192757%_
                                               _%hd192461192760%_
                                               _%tl192460192762%_
                                               _%e192465192765%_
                                               _%hd192464192768%_
                                               _%tl192463192770%_
                                               _%e192468192773%_
                                               _%hd192467192776%_
                                               _%tl192466192778%_
                                               _%e192471192781%_
                                               _%hd192470192784%_
                                               _%tl192469192786%_
                                               _%e192474192789%_
                                               _%hd192473192792%_
                                               _%tl192472192794%_
                                               _%e192477192797%_
                                               _%hd192476192800%_
                                               _%tl192475192802%_
                                               _%e192480192805%_
                                               _%hd192479192808%_
                                               _%tl192478192810%_
                                               _%e192483192813%_
                                               _%hd192482192816%_
                                               _%tl192481192818%_)
                                              (_%__kont193379193380%_))
                                          (_%__kont193379193380%_))))
                                  (_%__kont193379193380%_))
                              (_%__kont193379193380%_))
                          (_%__kont193379193380%_))))
                  (_%__kont193379193380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl192466192778%_))
                                                      (if (let ((__tmp193740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193740 'bind-method!))
                  (let ((_%L192647%_ _%hd192473192792%_)
                        (_%L192648%_ _%hd192464192768%_)
                        (_%L192649%_ _%hd192455192744%_)
                        (_%L192650%_ _%hd192446192720%_))
                    (_%__kont193377193378%_
                     _%L192647%_
                     _%L192648%_
                     _%L192649%_
                     _%L192650%_))
                  (_%__kont193379193380%_))
              (_%__kont193379193380%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193379193380%_))))
                                      (_%__kont193379193380%_))
                                  (_%__kont193379193380%_))
                              (_%__kont193379193380%_))))
                      (_%__kont193379193380%_))))
              (_%__kont193379193380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193379193380%_))))
                                          (_%__kont193379193380%_))
                                      (_%__kont193379193380%_))
                                  (_%__kont193379193380%_))))
                          (_%__kont193379193380%_))))
                  (_%__kont193379193380%_))
              (_%__kont193379193380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont193379193380%_))
                                          (_%__kont193379193380%_))
                                      (_%__kont193379193380%_))))
                              (_%__kont193379193380%_))))
                      (_%__kont193379193380%_))
                  (_%__kont193379193380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont193379193380%_))
                                              (_%__kont193379193380%_))
                                          (_%__kont193379193380%_))))
                                  (_%__kont193379193380%_))))
                          (_%__kont193379193380%_))))
                  (_%__kont193379193380%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self192248%_ _%stx192249%_)
        (let* ((_%__stx193617193618%_ _%stx192249%_)
               (_%g192252192292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx193617193618%_)))))
          (let ((_%__kont193619193620%_
                 (lambda (_%L192398%_ _%L192399%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192399%_))
                               (cons _%L192398%_ '())))))
                (_%__kont193621193622%_
                 (lambda (_%L192321%_ _%L192322%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx193617193618%_))
                (let ((_%e192258192342%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx193617193618%_))))
                  (let ((_%tl192256192347%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e192258192342%_)))
                        (_%hd192257192345%_
                         (let ()
                           (declare (not safe))
                           (##car _%e192258192342%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl192256192347%_))
                        (let ((_%e192261192350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl192256192347%_))))
                          (let ((_%tl192259192355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e192261192350%_)))
                                (_%hd192260192353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e192261192350%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd192260192353%_))
                                (let ((_%e192264192358%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd192260192353%_))))
                                  (let ((_%tl192262192363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e192264192358%_)))
                                        (_%hd192263192361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e192264192358%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd192263192361%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd192263192361%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192262192363%_))
                                                (let ((_%e192267192366%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192262192363%_))))
                                                  (let ((_%tl192265192371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192267192366%_)))
                                                        (_%hd192266192369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192267192366%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192265192371%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl192259192355%_))
                                                            (let ((_%e192270192374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192259192355%_))))
                      (let ((_%tl192268192379%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192270192374%_)))
                            (_%hd192269192377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192270192374%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd192269192377%_))
                            (let ((_%e192273192382%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd192269192377%_))))
                              (let ((_%tl192271192387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192273192382%_)))
                                    (_%hd192272192385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192273192382%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd192272192385%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd192272192385%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192271192387%_))
                                            (let ((_%e192276192390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192271192387%_))))
                                              (let ((_%tl192274192395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192276192390%_)))
                                                    (_%hd192275192393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192276192390%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192274192395%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192268192379%_))
                                                        (_%__kont193619193620%_
                                                         _%hd192275192393%_
                                                         _%hd192266192369%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192252192292%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192268192379%_))
                                                        (_%__kont193621193622%_
                                                         _%hd192269192377%_
                                                         _%hd192260192353%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192252192292%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192268192379%_))
                                                (_%__kont193621193622%_
                                                 _%hd192269192377%_
                                                 _%hd192260192353%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192252192292%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192268192379%_))
                                            (_%__kont193621193622%_
                                             _%hd192269192377%_
                                             _%hd192260192353%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192252192292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl192268192379%_))
                                        (_%__kont193621193622%_
                                         _%hd192269192377%_
                                         _%hd192260192353%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g192252192292%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl192268192379%_))
                                (_%__kont193621193622%_
                                 _%hd192269192377%_
                                 _%hd192260192353%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g192252192292%_))))))
                    (let () (declare (not safe)) (_%g192252192292%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl192259192355%_))
                    (let ((_%e192287192313%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl192259192355%_))))
                      (let ((_%tl192285192318%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192287192313%_)))
                            (_%hd192286192316%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192287192313%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192285192318%_))
                            (_%__kont193621193622%_
                             _%hd192286192316%_
                             _%hd192260192353%_)
                            (let ()
                              (declare (not safe))
                              (_%g192252192292%_)))))
                    (let () (declare (not safe)) (_%g192252192292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl192259192355%_))
                                                    (let ((_%e192287192313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl192259192355%_))))
                                                      (let ((_%tl192285192318%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e192287192313%_)))
                    (_%hd192286192316%_
                     (let () (declare (not safe)) (##car _%e192287192313%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192285192318%_))
                    (_%__kont193621193622%_
                     _%hd192286192316%_
                     _%hd192260192353%_)
                    (let () (declare (not safe)) (_%g192252192292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192252192292%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192259192355%_))
                                                (let ((_%e192287192313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192259192355%_))))
                                                  (let ((_%tl192285192318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192287192313%_)))
                                                        (_%hd192286192316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192287192313%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192285192318%_))
                                                        (_%__kont193621193622%_
                                                         _%hd192286192316%_
                                                         _%hd192260192353%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192252192292%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192252192292%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl192259192355%_))
                                            (let ((_%e192287192313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl192259192355%_))))
                                              (let ((_%tl192285192318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e192287192313%_)))
                                                    (_%hd192286192316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e192287192313%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl192285192318%_))
                                                    (_%__kont193621193622%_
                                                     _%hd192286192316%_
                                                     _%hd192260192353%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192252192292%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g192252192292%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl192259192355%_))
                                    (let ((_%e192287192313%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl192259192355%_))))
                                      (let ((_%tl192285192318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192287192313%_)))
                                            (_%hd192286192316%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192287192313%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192285192318%_))
                                            (_%__kont193621193622%_
                                             _%hd192286192316%_
                                             _%hd192260192353%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g192252192292%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g192252192292%_))))))
                        (let () (declare (not safe)) (_%g192252192292%_)))))
                (let () (declare (not safe)) (_%g192252192292%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192235%_)
        (let ((_%self192238%_ _%self192235%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192238%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192008%_)
        (let ((_%self192011%_ _%self192008%_))
          (let* ((_%self192020192036%_ _%self192011%_)
                 (_%E192022192040%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self192020192036%_
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
                 (_%K192023192055%_
                  (lambda (_%methods192043%_
                           _%metaclass192044%_
                           _%system?192045%_
                           _%final?192046%_
                           _%struct?192047%_
                           _%constructor192048%_
                           _%fields192049%_
                           _%slots192050%_
                           _%precendence-list192051%_
                           _%super192052%_
                           _%id192053%_)
                    (cons '@class
                          (cons _%id192053%_
                                (cons _%super192052%_
                                      (cons _%precendence-list192051%_
                                            (cons _%slots192050%_
                                                  (cons _%fields192049%_
                                                        (cons _%constructor192048%_
                                                              (cons _%struct?192047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?192046%_
                                  (cons _%system?192045%_
                                        (cons _%metaclass192044%_
                                              (cons (if _%methods192043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods192043%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e192024192058%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '1
                           '#f
                           '#f)))
                       (_%id192061%_ _%e192024192058%_)
                       (_%e192025192063%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '2
                           '#f
                           '#f)))
                       (_%super192066%_ _%e192025192063%_)
                       (_%e192026192068%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list192071%_ _%e192026192068%_)
                       (_%e192027192073%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '4
                           '#f
                           '#f)))
                       (_%slots192076%_ _%e192027192073%_)
                       (_%e192028192078%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '5
                           '#f
                           '#f)))
                       (_%fields192081%_ _%e192028192078%_)
                       (_%e192029192083%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor192086%_ _%e192029192083%_)
                       (_%e192030192088%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?192091%_ _%e192030192088%_)
                       (_%e192031192093%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '8
                           '#f
                           '#f)))
                       (_%final?192096%_ _%e192031192093%_)
                       (_%e192032192098%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '9
                           '#f
                           '#f)))
                       (_%system?192101%_ _%e192032192098%_)
                       (_%e192033192103%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass192106%_ _%e192033192103%_)
                       (_%e192034192108%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self192020192036%_
                           '11
                           '#f
                           '#f)))
                       (_%methods192111%_ _%e192034192108%_))
                  (declare (not safe))
                  (_%K192023192055%_
                   _%methods192111%_
                   _%metaclass192106%_
                   _%system?192101%_
                   _%final?192096%_
                   _%struct?192091%_
                   _%constructor192086%_
                   _%fields192081%_
                   _%slots192076%_
                   _%precendence-list192071%_
                   _%super192066%_
                   _%id192061%_))
                (let () (declare (not safe)) (_%E192022192040%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191873%_)
        (let ((_%self191876%_ _%self191873%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191876%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191738%_)
        (let ((_%self191741%_ _%self191738%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191741%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191603%_)
        (let ((_%self191606%_ _%self191603%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191606%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191606%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191606%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191468%_)
        (let ((_%self191471%_ _%self191468%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191471%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191471%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self191471%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191333%_)
        (let ((_%self191336%_ _%self191333%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191336%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191336%_
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
      (lambda (_%self191146%_)
        (let ((_%self191149%_ _%self191146%_))
          (let* ((_%self191158191167%_ _%self191149%_)
                 (_%E191160191171%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191158191167%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K191161191190%_
                  (lambda (_%dispatch191174%_
                           _%arity191175%_
                           _%signature191176%_)
                    (if _%signature191176%_
                        (let ((_%signature191178%_ _%signature191176%_))
                          (cons '@lambda
                                (cons _%arity191175%_
                                      (cons _%dispatch191174%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature191178%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature191178%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature191178%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature191178%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity191175%_
                                    (cons _%dispatch191174%_ '())))))))
            (if '#t
                (let* ((_%e191162191193%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191158191167%_
                           '1
                           '#f
                           '#f)))
                       (_%e191163191196%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191158191167%_
                           '2
                           '#f
                           '#f)))
                       (_%signature191199%_ _%e191163191196%_)
                       (_%e191164191201%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191158191167%_
                           '3
                           '#f
                           '#f)))
                       (_%arity191204%_ _%e191164191201%_)
                       (_%e191165191206%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191158191167%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch191209%_ _%e191165191206%_))
                  (declare (not safe))
                  (_%K191161191190%_
                   _%dispatch191209%_
                   _%arity191204%_
                   _%signature191199%_))
                (let () (declare (not safe)) (_%E191160191171%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191007%_)
        (let ((_%self191010%_ _%self191007%_))
          (letrec ((_%clause-e191020%_
                    (lambda (_%clause191022%_)
                      (cdr (let ((__method193705
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191022%_
                                     'typedecl))))
                             (if __method193705
                                 (__method193705 _%clause191022%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause191022%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e191020%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191010%_
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
      (lambda (_%self190872%_)
        (let ((_%self190875%_ _%self190872%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190875%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190875%_
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
      (lambda (_%self190737%_)
        (let ((_%self190740%_ _%self190737%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190740%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190740%_
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
      (lambda (_%self190602%_)
        (let ((_%self190605%_ _%self190602%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190605%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
