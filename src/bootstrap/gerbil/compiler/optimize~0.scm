(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712786285)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp195653
                   (let ((__obj195647
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj195647)
                     __obj195647)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp195653)))))
    (define gxc#optimize!
      (lambda (_%ctx195256%_)
        (let ((__tmp195656
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx195256%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx195256%_)
                 (let ((__tmp195658
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp195657
                        (##structure-ref
                         _%ctx195256%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp195658 __tmp195657 '#t))
                 (let ((_%code195259%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx195256%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx195256%_
                    _%code195259%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp195655 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195654 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195656
           gxc#current-compile-mutators
           __tmp195655
           gxc#current-compile-local-type
           __tmp195654))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx195242%_)
        (letrec ((_%load-it!195244%_
                  (lambda (_%id195254%_)
                    (if (let ((__tmp195659
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp195659 _%id195254%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id195254%_)
                          (let ((__tmp195660
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp195660 _%id195254%_ '#t)))))))
          (let* ((_%modid195246%_
                  (##structure-ref
                   _%ctx195242%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str195248%_ (symbol->string _%modid195246%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str195248%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str195248%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!195244%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!195244%_
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
      (lambda (_%ctx195179%_)
        (letrec* ((_%deps195181%_
                   (let* ((_%imports195232%_
                           (##structure-ref
                            _%ctx195179%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e195234%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx195179%_))))
                     (if _%$e195234%_
                         ((lambda (_%g195236195238%_)
                            (cons _%g195236195238%_ _%imports195232%_))
                          _%$e195234%_)
                         _%imports195232%_))))
          (let _%lp195183%_ ((_%rest195185%_ _%deps195181%_))
            (let* ((_%rest195186195194%_ _%rest195185%_)
                   (_%else195188195202%_ (lambda () '#!void))
                   (_%K195190195220%_
                    (lambda (_%rest195205%_ _%hd195206%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd195206%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp195662
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp195661
                                       (##structure-ref
                                        _%hd195206%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp195662 __tmp195661))
                                '#!void
                                (begin
                                  (let ((_%$e195209%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd195206%_))))
                                    (if _%$e195209%_
                                        ((lambda (_%pre195212%_)
                                           (_%lp195183%_
                                            (cons _%pre195212%_
                                                  (##structure-ref
                                                   _%hd195206%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e195209%_)
                                        (_%lp195183%_
                                         (##structure-ref
                                          _%hd195206%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd195206%_)))
                            (_%lp195183%_ _%rest195205%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd195206%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp195664
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp195663
                                           (##structure-ref
                                            _%hd195206%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp195664 __tmp195663))
                                    '#!void
                                    (begin
                                      (_%lp195183%_
                                       (##structure-ref
                                        _%hd195206%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd195206%_)))
                                (_%lp195183%_ _%rest195205%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd195206%_
                                     'gx#module-import::t))
                                  (_%lp195183%_
                                   (cons (##direct-structure-ref
                                          _%hd195206%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest195205%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd195206%_
                                         'gx#module-export::t))
                                      (_%lp195183%_
                                       (cons (##direct-structure-ref
                                              _%hd195206%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest195205%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd195206%_
                                             'gx#import-set::t))
                                          (_%lp195183%_
                                           (cons (##direct-structure-ref
                                                  _%hd195206%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest195205%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd195206%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest195186195194%_))
                  (let ((_%hd195191195223%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195186195194%_)))
                        (_%tl195192195225%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195186195194%_))))
                    (let* ((_%hd195228%_ _%hd195191195223%_)
                           (_%rest195230%_ _%tl195192195225%_))
                      (_%K195190195220%_ _%rest195230%_ _%hd195228%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx195159%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx195159%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx195159%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht195161%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id195163%_
                    (##structure-ref
                     _%ctx195159%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod195165%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht195161%_ _%id195163%_)))
                   (_%$e195168%_ _%mod195165%_))
              (if _%$e195168%_
                  _%$e195168%_
                  (let* ((_%mod195171%_
                          (gxc#optimizer-import-ssxi _%ctx195159%_))
                         (_%val195176%_
                          (let ((_%$e195173%_ _%mod195171%_))
                            (if _%$e195173%_ _%$e195173%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht195161%_ _%id195163%_ _%val195176%_))
                    _%val195176%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx195157%_)
        (if (##structure-ref _%ctx195157%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx195157%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id195134%_)
        (letrec ((_%catch-e195136%_
                  (lambda (_%exn195155%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn195155%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn195155%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id195134%_))))
                    '#f))
                 (_%import-e195137%_
                  (lambda ()
                    (let* ((_%str-id195140%_
                            (let ((__tmp195665
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id195134%_))))
                              (declare (not safe))
                              (##string-append __tmp195665 '".ssxi")))
                           (_%artefact-path195148%_
                            (let ((_%odir195141195143%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir195141195143%_
                                  (let ((_%odir195146%_ _%odir195141195143%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id195140%_
                                        '".ss"))
                                     _%odir195146%_))
                                  '#f)))
                           (_%library-path195150%_
                            (let ((__tmp195666
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id195140%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp195666)))
                           (_%ssxi-path195152%_
                            (if (and _%artefact-path195148%_
                                     (file-exists? _%artefact-path195148%_))
                                _%artefact-path195148%_
                                _%library-path195150%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path195152%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path195152%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e195136%_ _%import-e195137%_)))))
    (define gxc#optimize-source
      (lambda (_%stx195125%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx195125%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx195125%_))
        (let* ((_%stx195127%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx195125%_)))
               (_%stx195129%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx195127%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx195129%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx195129%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx195129%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx195129%_))
          (let ((_%stx195132%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx195129%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx195132%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp195668 (list gxc#::generate-runtime-empty::t))
            (__tmp195667 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp195668
         '()
         __tmp195667
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args195122%_
        (apply make-instance gxc#::generate-ssxi::t _%$args195122%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp195669
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
        (__make-promise __tmp195669)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx195114%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self195117%_
                (let ((__obj195649
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj195649))
               (__tmp195670
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195117%_ _%stx195114%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195670
           gxc#current-compile-method
           _%self195117%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self195074%_ _%stx195075%_)
        (let* ((_%g195077195087%_
                (lambda (_%g195078195084%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195078195084%_))))
               (_%g195076195111%_
                (lambda (_%g195078195090%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195078195090%_))
                      (let ((_%e195080195092%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195078195090%_))))
                        (let ((_%hd195081195095%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195080195092%_)))
                              (_%tl195082195097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195080195092%_))))
                          ((lambda (_%L195100%_)
                             (let ((__tmp195673
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self195074%_
                                         _%stx195075%_))))
                                   (__tmp195671
                                    (let ((__tmp195672
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195672 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp195673
                                gx#current-expander-phi
                                __tmp195671)))
                           _%tl195082195097%_)))
                      (_%g195077195087%_ _%g195078195090%_)))))
          (_%g195076195111%_ _%stx195075%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self195013%_ _%stx195014%_)
        (let* ((_%g195016195030%_
                (lambda (_%g195017195027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195017195027%_))))
               (_%g195015195071%_
                (lambda (_%g195017195033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195017195033%_))
                      (let ((_%e195020195035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195017195033%_))))
                        (let ((_%hd195021195038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195020195035%_)))
                              (_%tl195022195040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195020195035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195022195040%_))
                              (let ((_%e195023195043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195022195040%_))))
                                (let ((_%hd195024195046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195023195043%_)))
                                      (_%tl195025195048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195023195043%_))))
                                  ((lambda (_%L195051%_ _%L195052%_)
                                     (let* ((_%ctx195065%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L195052%_)))
                                            (_%code195067%_
                                             (##structure-ref
                                              _%ctx195065%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195674
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195013%_
                                                  _%code195067%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195674
                                        gx#current-expander-context
                                        _%ctx195065%_)))
                                   _%tl195025195048%_
                                   _%hd195024195046%_)))
                              (_%g195016195030%_ _%g195017195033%_))))
                      (_%g195016195030%_ _%g195017195033%_)))))
          (_%g195015195071%_ _%stx195014%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self194818%_ _%stx194819%_)
        (letrec ((_%generate-e194821%_
                  (lambda (_%id194998%_)
                    (let* ((_%sym195000%_
                            (if (let ((__tmp195675
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp195675))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id194998%_))
                                '#f))
                           (_%$e195002%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym195000%_))))
                      (if _%$e195002%_
                          ((lambda (_%klass195005%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym195000%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym195000%_
                                                     (cons (let ((__method195650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass195005%_ 'typedecl))))
                     (if __method195650
                         (let ()
                           (declare (not safe))
                           (__method195650 _%klass195005%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass195005%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym195000%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym195000%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e195002%_)
                          (let ((_%$e195007%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym195000%_))))
                            (if _%$e195007%_
                                ((lambda (_%type195010%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym195000%_
                                      '" "
                                      _%type195010%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type195010%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym195000%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym195000%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type195010%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym195000%_
                                                   (cons (let ((__method195651
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type195010%_ 'typedecl))))
                   (if __method195651
                       (let ()
                         (declare (not safe))
                         (__method195651 _%type195010%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type195010%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e195007%_)
                                '(begin))))))))
          (let* ((_%__stx195262195263%_ _%stx194819%_)
                 (_%g194824194862%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195262195263%_)))))
            (let ((_%__kont195264195265%_
                   (lambda (_%L194980%_) (_%generate-e194821%_ _%L194980%_)))
                  (_%__kont195266195267%_
                   (lambda (_%L194915%_)
                     (let ((_%types194941%_
                            (map _%generate-e194821%_
                                 (let ((__tmp195676
                                        (lambda (_%g194933194936%_
                                                 _%g194934194938%_)
                                          (cons _%g194933194936%_
                                                _%g194934194938%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp195676 '() _%L194915%_)))))
                       (cons 'begin _%types194941%_)))))
              (let ((_%__match195317195318%_
                     (lambda (_%e194840194867%_
                              _%hd194841194870%_
                              _%tl194842194872%_
                              _%e194843194875%_
                              _%hd194844194878%_
                              _%tl194845194880%_
                              _%__splice195268195269%_
                              _%target194846194883%_
                              _%tl194848194885%_)
                       (letrec ((_%loop194849194888%_
                                 (lambda (_%hd194847194891%_
                                          _%id194853194893%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd194847194891%_))
                                       (let ((_%e194850194896%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd194847194891%_))))
                                         (let ((_%lp-tl194852194901%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e194850194896%_)))
                                               (_%lp-hd194851194899%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e194850194896%_))))
                                           (_%loop194849194888%_
                                            _%lp-tl194852194901%_
                                            (cons _%lp-hd194851194899%_
                                                  _%id194853194893%_))))
                                       (let ((_%id194854194904%_
                                              (reverse _%id194853194893%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl194845194880%_))
                                             (let ((_%e194855194907%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl194845194880%_))))
                                               (let ((_%tl194857194912%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e194855194907%_)))
                                                     (_%hd194856194910%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e194855194907%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl194857194912%_))
                                                     (_%__kont195266195267%_
                                                      _%id194854194904%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g194824194862%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g194824194862%_))))))))
                         (_%loop194849194888%_ _%target194846194883%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195262195263%_))
                    (let ((_%e194827194948%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195262195263%_))))
                      (let ((_%tl194829194953%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194827194948%_)))
                            (_%hd194828194951%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194827194948%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194829194953%_))
                            (let ((_%e194830194956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl194829194953%_))))
                              (let ((_%tl194832194961%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194830194956%_)))
                                    (_%hd194831194959%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194830194956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd194831194959%_))
                                    (let ((_%e194833194964%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd194831194959%_))))
                                      (let ((_%tl194835194969%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194833194964%_)))
                                            (_%hd194834194967%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194833194964%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194835194969%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194832194961%_))
                                                (let ((_%e194836194972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194832194961%_))))
                                                  (let ((_%tl194838194977%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194836194972%_)))
                                                        (_%hd194837194975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194836194972%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194838194977%_))
                                                        (_%__kont195264195265%_
                                                         _%hd194834194967%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd194831194959%_))
                                                            (let ((_%__splice195268195269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd194831194959%_ '0))))
                      (let ((_%tl194848194885%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice195268195269%_ '1)))
                            (_%target194846194883%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice195268195269%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl194848194885%_))
                            (_%__match195317195318%_
                             _%e194827194948%_
                             _%hd194828194951%_
                             _%tl194829194953%_
                             _%e194830194956%_
                             _%hd194831194959%_
                             _%tl194832194961%_
                             _%__splice195268195269%_
                             _%target194846194883%_
                             _%tl194848194885%_)
                            (let ()
                              (declare (not safe))
                              (_%g194824194862%_)))))
                    (let () (declare (not safe)) (_%g194824194862%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd194831194959%_))
                                                    (let ((_%__splice195268195269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd194831194959%_
                                                              '0))))
                                                      (let ((_%tl194848194885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice195268195269%_ '1)))
                    (_%target194846194883%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice195268195269%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl194848194885%_))
                    (_%__match195317195318%_
                     _%e194827194948%_
                     _%hd194828194951%_
                     _%tl194829194953%_
                     _%e194830194956%_
                     _%hd194831194959%_
                     _%tl194832194961%_
                     _%__splice195268195269%_
                     _%target194846194883%_
                     _%tl194848194885%_)
                    (let () (declare (not safe)) (_%g194824194862%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194824194862%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd194831194959%_))
                                                (let ((_%__splice195268195269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd194831194959%_
                                                          '0))))
                                                  (let ((_%tl194848194885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice195268195269%_
                                                            '1)))
                                                        (_%target194846194883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice195268195269%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194848194885%_))
                                                        (_%__match195317195318%_
                                                         _%e194827194948%_
                                                         _%hd194828194951%_
                                                         _%tl194829194953%_
                                                         _%e194830194956%_
                                                         _%hd194831194959%_
                                                         _%tl194832194961%_
                                                         _%__splice195268195269%_
                                                         _%target194846194883%_
                                                         _%tl194848194885%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194824194862%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194824194862%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd194831194959%_))
                                        (let ((_%__splice195268195269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd194831194959%_
                                                  '0))))
                                          (let ((_%tl194848194885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice195268195269%_
                                                    '1)))
                                                (_%target194846194883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice195268195269%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194848194885%_))
                                                (_%__match195317195318%_
                                                 _%e194827194948%_
                                                 _%hd194828194951%_
                                                 _%tl194829194953%_
                                                 _%e194830194956%_
                                                 _%hd194831194959%_
                                                 _%tl194832194961%_
                                                 _%__splice195268195269%_
                                                 _%target194846194883%_
                                                 _%tl194848194885%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194824194862%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g194824194862%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g194824194862%_)))))
                    (let () (declare (not safe)) (_%g194824194862%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self194371%_ _%stx194372%_)
        (let* ((_%__stx195320195321%_ _%stx194372%_)
               (_%g194376194478%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195320195321%_)))))
          (let ((_%__kont195322195323%_
                 (lambda (_%L194768%_
                          _%L194769%_
                          _%L194770%_
                          _%L194771%_
                          _%L194772%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194771%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L194770%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L194769%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L194768%_))
                                                 '())))))))
                (_%__kont195324195325%_
                 (lambda (_%L194594%_ _%L194595%_ _%L194596%_ _%L194597%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194596%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L194595%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L194594%_))
                                           (cons '#f '())))))))
                (_%__kont195326195327%_ (lambda () '(begin))))
            (let ((_%__match195455195456%_
                   (lambda (_%e194383194640%_
                            _%hd194384194643%_
                            _%tl194385194645%_
                            _%e194386194648%_
                            _%hd194387194651%_
                            _%tl194388194653%_
                            _%e194389194656%_
                            _%hd194390194659%_
                            _%tl194391194661%_
                            _%e194392194664%_
                            _%hd194393194667%_
                            _%tl194394194669%_
                            _%e194395194672%_
                            _%hd194396194675%_
                            _%tl194397194677%_
                            _%e194398194680%_
                            _%hd194399194683%_
                            _%tl194400194685%_
                            _%e194401194688%_
                            _%hd194402194691%_
                            _%tl194403194693%_
                            _%e194404194696%_
                            _%hd194405194699%_
                            _%tl194406194701%_
                            _%e194407194704%_
                            _%hd194408194707%_
                            _%tl194409194709%_
                            _%e194410194712%_
                            _%hd194411194715%_
                            _%tl194412194717%_
                            _%e194413194720%_
                            _%hd194414194723%_
                            _%tl194415194725%_
                            _%e194416194728%_
                            _%hd194417194731%_
                            _%tl194418194733%_
                            _%e194419194736%_
                            _%hd194420194739%_
                            _%tl194421194741%_
                            _%e194422194744%_
                            _%hd194423194747%_
                            _%tl194424194749%_
                            _%e194425194752%_
                            _%hd194426194755%_
                            _%tl194427194757%_
                            _%e194428194760%_
                            _%hd194429194763%_
                            _%tl194430194765%_)
                     (let ((_%L194768%_ _%hd194429194763%_)
                           (_%L194769%_ _%hd194420194739%_)
                           (_%L194770%_ _%hd194411194715%_)
                           (_%L194771%_ _%hd194402194691%_)
                           (_%L194772%_ _%hd194393194667%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L194772%_
                              'bind-method!))
                           (_%__kont195322195323%_
                            _%L194768%_
                            _%L194769%_
                            _%L194770%_
                            _%L194771%_
                            _%L194772%_)
                           (_%__kont195326195327%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195320195321%_))
                  (let ((_%e194383194640%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195320195321%_))))
                    (let ((_%tl194385194645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194383194640%_)))
                          (_%hd194384194643%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194383194640%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194385194645%_))
                          (let ((_%e194386194648%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194385194645%_))))
                            (let ((_%tl194388194653%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194386194648%_)))
                                  (_%hd194387194651%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194386194648%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194387194651%_))
                                  (let ((_%e194389194656%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194387194651%_))))
                                    (let ((_%tl194391194661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194389194656%_)))
                                          (_%hd194390194659%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194389194656%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194390194659%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194390194659%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194391194661%_))
                                                  (let ((_%e194392194664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194391194661%_))))
                                                    (let ((_%tl194394194669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194392194664%_)))
                                                          (_%hd194393194667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194392194664%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194394194669%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194388194653%_))
                      (let ((_%e194395194672%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194388194653%_))))
                        (let ((_%tl194397194677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194395194672%_)))
                              (_%hd194396194675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194395194672%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd194396194675%_))
                              (let ((_%e194398194680%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd194396194675%_))))
                                (let ((_%tl194400194685%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194398194680%_)))
                                      (_%hd194399194683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194398194680%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd194399194683%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd194399194683%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194400194685%_))
                                              (let ((_%e194401194688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194400194685%_))))
                                                (let ((_%tl194403194693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194401194688%_)))
                                                      (_%hd194402194691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194401194688%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194403194693%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl194397194677%_))
                                                          (let ((_%e194404194696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl194397194677%_))))
                    (let ((_%tl194406194701%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194404194696%_)))
                          (_%hd194405194699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194404194696%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd194405194699%_))
                          (let ((_%e194407194704%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd194405194699%_))))
                            (let ((_%tl194409194709%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194407194704%_)))
                                  (_%hd194408194707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194407194704%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd194408194707%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd194408194707%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194409194709%_))
                                          (let ((_%e194410194712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194409194709%_))))
                                            (let ((_%tl194412194717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194410194712%_)))
                                                  (_%hd194411194715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194410194712%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl194412194717%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194406194701%_))
                                                      (let ((_%e194413194720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194406194701%_))))
                (let ((_%tl194415194725%_
                       (let () (declare (not safe)) (##cdr _%e194413194720%_)))
                      (_%hd194414194723%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194413194720%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd194414194723%_))
                      (let ((_%e194416194728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd194414194723%_))))
                        (let ((_%tl194418194733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194416194728%_)))
                              (_%hd194417194731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194416194728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd194417194731%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd194417194731%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194418194733%_))
                                      (let ((_%e194419194736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194418194733%_))))
                                        (let ((_%tl194421194741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194419194736%_)))
                                              (_%hd194420194739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194419194736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194421194741%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194415194725%_))
                                                  (let ((_%e194422194744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194415194725%_))))
                                                    (let ((_%tl194424194749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194422194744%_)))
                                                          (_%hd194423194747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194422194744%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd194423194747%_))
                                                          (let ((_%e194425194752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd194423194747%_))))
                    (let ((_%tl194427194757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194425194752%_)))
                          (_%hd194426194755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194425194752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd194426194755%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd194426194755%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194427194757%_))
                                  (let ((_%e194428194760%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194427194757%_))))
                                    (let ((_%tl194430194765%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194428194760%_)))
                                          (_%hd194429194763%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194428194760%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194430194765%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194424194749%_))
                                              (_%__match195455195456%_
                                               _%e194383194640%_
                                               _%hd194384194643%_
                                               _%tl194385194645%_
                                               _%e194386194648%_
                                               _%hd194387194651%_
                                               _%tl194388194653%_
                                               _%e194389194656%_
                                               _%hd194390194659%_
                                               _%tl194391194661%_
                                               _%e194392194664%_
                                               _%hd194393194667%_
                                               _%tl194394194669%_
                                               _%e194395194672%_
                                               _%hd194396194675%_
                                               _%tl194397194677%_
                                               _%e194398194680%_
                                               _%hd194399194683%_
                                               _%tl194400194685%_
                                               _%e194401194688%_
                                               _%hd194402194691%_
                                               _%tl194403194693%_
                                               _%e194404194696%_
                                               _%hd194405194699%_
                                               _%tl194406194701%_
                                               _%e194407194704%_
                                               _%hd194408194707%_
                                               _%tl194409194709%_
                                               _%e194410194712%_
                                               _%hd194411194715%_
                                               _%tl194412194717%_
                                               _%e194413194720%_
                                               _%hd194414194723%_
                                               _%tl194415194725%_
                                               _%e194416194728%_
                                               _%hd194417194731%_
                                               _%tl194418194733%_
                                               _%e194419194736%_
                                               _%hd194420194739%_
                                               _%tl194421194741%_
                                               _%e194422194744%_
                                               _%hd194423194747%_
                                               _%tl194424194749%_
                                               _%e194425194752%_
                                               _%hd194426194755%_
                                               _%tl194427194757%_
                                               _%e194428194760%_
                                               _%hd194429194763%_
                                               _%tl194430194765%_)
                                              (_%__kont195326195327%_))
                                          (_%__kont195326195327%_))))
                                  (_%__kont195326195327%_))
                              (_%__kont195326195327%_))
                          (_%__kont195326195327%_))))
                  (_%__kont195326195327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194415194725%_))
                                                      (if (let ((__tmp195677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp195677 'bind-method!))
                  (let ((_%L194594%_ _%hd194420194739%_)
                        (_%L194595%_ _%hd194411194715%_)
                        (_%L194596%_ _%hd194402194691%_)
                        (_%L194597%_ _%hd194393194667%_))
                    (_%__kont195324195325%_
                     _%L194594%_
                     _%L194595%_
                     _%L194596%_
                     _%L194597%_))
                  (_%__kont195326195327%_))
              (_%__kont195326195327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195326195327%_))))
                                      (_%__kont195326195327%_))
                                  (_%__kont195326195327%_))
                              (_%__kont195326195327%_))))
                      (_%__kont195326195327%_))))
              (_%__kont195326195327%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195326195327%_))))
                                          (_%__kont195326195327%_))
                                      (_%__kont195326195327%_))
                                  (_%__kont195326195327%_))))
                          (_%__kont195326195327%_))))
                  (_%__kont195326195327%_))
              (_%__kont195326195327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195326195327%_))
                                          (_%__kont195326195327%_))
                                      (_%__kont195326195327%_))))
                              (_%__kont195326195327%_))))
                      (_%__kont195326195327%_))
                  (_%__kont195326195327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195326195327%_))
                                              (_%__kont195326195327%_))
                                          (_%__kont195326195327%_))))
                                  (_%__kont195326195327%_))))
                          (_%__kont195326195327%_))))
                  (_%__kont195326195327%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self194195%_ _%stx194196%_)
        (let* ((_%__stx195564195565%_ _%stx194196%_)
               (_%g194199194239%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195564195565%_)))))
          (let ((_%__kont195566195567%_
                 (lambda (_%L194345%_ _%L194346%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194346%_))
                               (cons _%L194345%_ '())))))
                (_%__kont195568195569%_
                 (lambda (_%L194268%_ _%L194269%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx195564195565%_))
                (let ((_%e194203194289%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx195564195565%_))))
                  (let ((_%tl194205194294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194203194289%_)))
                        (_%hd194204194292%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194203194289%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl194205194294%_))
                        (let ((_%e194206194297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl194205194294%_))))
                          (let ((_%tl194208194302%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194206194297%_)))
                                (_%hd194207194300%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194206194297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd194207194300%_))
                                (let ((_%e194209194305%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd194207194300%_))))
                                  (let ((_%tl194211194310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194209194305%_)))
                                        (_%hd194210194308%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194209194305%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd194210194308%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd194210194308%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194211194310%_))
                                                (let ((_%e194212194313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194211194310%_))))
                                                  (let ((_%tl194214194318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194212194313%_)))
                                                        (_%hd194213194316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194212194313%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194214194318%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194208194302%_))
                                                            (let ((_%e194215194321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194208194302%_))))
                      (let ((_%tl194217194326%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194215194321%_)))
                            (_%hd194216194324%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194215194321%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194216194324%_))
                            (let ((_%e194218194329%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194216194324%_))))
                              (let ((_%tl194220194334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194218194329%_)))
                                    (_%hd194219194332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194218194329%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194219194332%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194219194332%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194220194334%_))
                                            (let ((_%e194221194337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194220194334%_))))
                                              (let ((_%tl194223194342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194221194337%_)))
                                                    (_%hd194222194340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194221194337%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl194223194342%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194217194326%_))
                                                        (_%__kont195566195567%_
                                                         _%hd194222194340%_
                                                         _%hd194213194316%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194199194239%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194217194326%_))
                                                        (_%__kont195568195569%_
                                                         _%hd194216194324%_
                                                         _%hd194207194300%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194199194239%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194217194326%_))
                                                (_%__kont195568195569%_
                                                 _%hd194216194324%_
                                                 _%hd194207194300%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194199194239%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194217194326%_))
                                            (_%__kont195568195569%_
                                             _%hd194216194324%_
                                             _%hd194207194300%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g194199194239%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194217194326%_))
                                        (_%__kont195568195569%_
                                         _%hd194216194324%_
                                         _%hd194207194300%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g194199194239%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl194217194326%_))
                                (_%__kont195568195569%_
                                 _%hd194216194324%_
                                 _%hd194207194300%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g194199194239%_))))))
                    (let () (declare (not safe)) (_%g194199194239%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl194208194302%_))
                    (let ((_%e194232194260%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194208194302%_))))
                      (let ((_%tl194234194265%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194232194260%_)))
                            (_%hd194233194263%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194232194260%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl194234194265%_))
                            (_%__kont195568195569%_
                             _%hd194233194263%_
                             _%hd194207194300%_)
                            (let ()
                              (declare (not safe))
                              (_%g194199194239%_)))))
                    (let () (declare (not safe)) (_%g194199194239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl194208194302%_))
                                                    (let ((_%e194232194260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl194208194302%_))))
                                                      (let ((_%tl194234194265%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e194232194260%_)))
                    (_%hd194233194263%_
                     (let () (declare (not safe)) (##car _%e194232194260%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl194234194265%_))
                    (_%__kont195568195569%_
                     _%hd194233194263%_
                     _%hd194207194300%_)
                    (let () (declare (not safe)) (_%g194199194239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194199194239%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194208194302%_))
                                                (let ((_%e194232194260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194208194302%_))))
                                                  (let ((_%tl194234194265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194232194260%_)))
                                                        (_%hd194233194263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194232194260%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194234194265%_))
                                                        (_%__kont195568195569%_
                                                         _%hd194233194263%_
                                                         _%hd194207194300%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194199194239%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194199194239%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194208194302%_))
                                            (let ((_%e194232194260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194208194302%_))))
                                              (let ((_%tl194234194265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194232194260%_)))
                                                    (_%hd194233194263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194232194260%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl194234194265%_))
                                                    (_%__kont195568195569%_
                                                     _%hd194233194263%_
                                                     _%hd194207194300%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194199194239%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g194199194239%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl194208194302%_))
                                    (let ((_%e194232194260%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl194208194302%_))))
                                      (let ((_%tl194234194265%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194232194260%_)))
                                            (_%hd194233194263%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194232194260%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194234194265%_))
                                            (_%__kont195568195569%_
                                             _%hd194233194263%_
                                             _%hd194207194300%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g194199194239%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g194199194239%_))))))
                        (let () (declare (not safe)) (_%g194199194239%_)))))
                (let () (declare (not safe)) (_%g194199194239%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192389194180%_)
        (let* ((_%self194183%_ _%self192389194180%_)
               (_%self194185%_ _%self194183%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194185%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192390193951%_)
        (let* ((_%self193954%_ _%self192390193951%_)
               (_%self193956%_ _%self193954%_)
               (_%self193965193981%_ _%self193956%_)
               (_%E193967193985%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193965193981%_
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
               (_%K193968194000%_
                (lambda (_%methods193988%_
                         _%metaclass193989%_
                         _%system?193990%_
                         _%final?193991%_
                         _%struct?193992%_
                         _%constructor193993%_
                         _%fields193994%_
                         _%slots193995%_
                         _%precendence-list193996%_
                         _%super193997%_
                         _%id193998%_)
                  (cons '@class
                        (cons _%id193998%_
                              (cons _%super193997%_
                                    (cons _%precendence-list193996%_
                                          (cons _%slots193995%_
                                                (cons _%fields193994%_
                                                      (cons _%constructor193993%_
                                                            (cons _%struct?193992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?193991%_
                                (cons _%system?193990%_
                                      (cons _%metaclass193989%_
                                            (cons (if _%methods193988%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods193988%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e193969194003%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '1
                         '#f
                         '#f)))
                     (_%id194006%_ _%e193969194003%_)
                     (_%e193970194008%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '2
                         '#f
                         '#f)))
                     (_%super194011%_ _%e193970194008%_)
                     (_%e193971194013%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list194016%_ _%e193971194013%_)
                     (_%e193972194018%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '4
                         '#f
                         '#f)))
                     (_%slots194021%_ _%e193972194018%_)
                     (_%e193973194023%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '5
                         '#f
                         '#f)))
                     (_%fields194026%_ _%e193973194023%_)
                     (_%e193974194028%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor194031%_ _%e193974194028%_)
                     (_%e193975194033%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?194036%_ _%e193975194033%_)
                     (_%e193976194038%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '8
                         '#f
                         '#f)))
                     (_%final?194041%_ _%e193976194038%_)
                     (_%e193977194043%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '9
                         '#f
                         '#f)))
                     (_%system?194046%_ _%e193977194043%_)
                     (_%e193978194048%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass194051%_ _%e193978194048%_)
                     (_%e193979194053%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193965193981%_
                         '11
                         '#f
                         '#f)))
                     (_%methods194056%_ _%e193979194053%_))
                (_%K193968194000%_
                 _%methods194056%_
                 _%metaclass194051%_
                 _%system?194046%_
                 _%final?194041%_
                 _%struct?194036%_
                 _%constructor194031%_
                 _%fields194026%_
                 _%slots194021%_
                 _%precendence-list194016%_
                 _%super194011%_
                 _%id194006%_))
              (_%E193967193985%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192391193814%_)
        (let* ((_%self193817%_ _%self192391193814%_)
               (_%self193819%_ _%self193817%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193819%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192392193677%_)
        (let* ((_%self193680%_ _%self192392193677%_)
               (_%self193682%_ _%self193680%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193682%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192393193540%_)
        (let* ((_%self193543%_ _%self192393193540%_)
               (_%self193545%_ _%self193543%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193545%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193545%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193545%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self192394193403%_)
        (let* ((_%self193406%_ _%self192394193403%_)
               (_%self193408%_ _%self193406%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193408%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193408%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193408%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192395193266%_)
        (let* ((_%self193269%_ _%self192395193266%_)
               (_%self193271%_ _%self193269%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193271%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193271%_
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
      (lambda (_%self192396193077%_)
        (let* ((_%self193080%_ _%self192396193077%_)
               (_%self193082%_ _%self193080%_)
               (_%self193091193100%_ _%self193082%_)
               (_%E193093193104%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193091193100%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K193094193123%_
                (lambda (_%dispatch193107%_
                         _%arity193108%_
                         _%signature193109%_)
                  (if _%signature193109%_
                      (let ((_%signature193111%_ _%signature193109%_))
                        (cons '@lambda
                              (cons _%arity193108%_
                                    (cons _%dispatch193107%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature193111%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature193111%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature193111%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature193111%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature193111%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity193108%_
                                  (cons _%dispatch193107%_ '())))))))
          (if '#t
              (let* ((_%e193095193126%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193091193100%_
                         '1
                         '#f
                         '#f)))
                     (_%e193096193129%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193091193100%_
                         '2
                         '#f
                         '#f)))
                     (_%signature193132%_ _%e193096193129%_)
                     (_%e193097193134%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193091193100%_
                         '3
                         '#f
                         '#f)))
                     (_%arity193137%_ _%e193097193134%_)
                     (_%e193098193139%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193091193100%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch193142%_ _%e193098193139%_))
                (_%K193094193123%_
                 _%dispatch193142%_
                 _%arity193137%_
                 _%signature193132%_))
              (_%E193093193104%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self192397192936%_)
        (let* ((_%self192939%_ _%self192397192936%_)
               (_%self192941%_ _%self192939%_))
          (letrec ((_%clause-e192951%_
                    (lambda (_%clause192953%_)
                      (cdr (let ((__method195652
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause192953%_
                                     'typedecl))))
                             (if __method195652
                                 (let ()
                                   (declare (not safe))
                                   (__method195652 _%clause192953%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause192953%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e192951%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192941%_
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
      (lambda (_%self192398192799%_)
        (let* ((_%self192802%_ _%self192398192799%_)
               (_%self192804%_ _%self192802%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192804%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192804%_
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
      (lambda (_%self192399192662%_)
        (let* ((_%self192665%_ _%self192399192662%_)
               (_%self192667%_ _%self192665%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192667%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192667%_
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
      (lambda (_%self192400192525%_)
        (let* ((_%self192528%_ _%self192400192525%_)
               (_%self192530%_ _%self192528%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192530%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
