(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712823033)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp195676
                   (let ((__obj195670
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
                       (gxc#optimizer-info:::init! __obj195670))
                     __obj195670)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp195676)))))
    (define gxc#optimize!
      (lambda (_%ctx195279%_)
        (let ((__tmp195679
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx195279%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx195279%_)
                 (let ((__tmp195681
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp195680
                        (##structure-ref
                         _%ctx195279%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp195681 __tmp195680 '#t))
                 (let ((_%code195282%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx195279%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx195279%_
                    _%code195282%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp195678 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195677 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195679
           gxc#current-compile-mutators
           __tmp195678
           gxc#current-compile-local-type
           __tmp195677))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx195265%_)
        (letrec ((_%load-it!195267%_
                  (lambda (_%id195277%_)
                    (if (let ((__tmp195682
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp195682 _%id195277%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id195277%_)
                          (let ((__tmp195683
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp195683 _%id195277%_ '#t)))))))
          (let* ((_%modid195269%_
                  (##structure-ref
                   _%ctx195265%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str195271%_ (symbol->string _%modid195269%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str195271%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str195271%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!195267%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!195267%_
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
      (lambda (_%ctx195202%_)
        (letrec* ((_%deps195204%_
                   (let* ((_%imports195255%_
                           (##structure-ref
                            _%ctx195202%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e195257%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx195202%_))))
                     (if _%$e195257%_
                         ((lambda (_%g195259195261%_)
                            (cons _%g195259195261%_ _%imports195255%_))
                          _%$e195257%_)
                         _%imports195255%_))))
          (let _%lp195206%_ ((_%rest195208%_ _%deps195204%_))
            (let* ((_%rest195209195217%_ _%rest195208%_)
                   (_%else195211195225%_ (lambda () '#!void))
                   (_%K195213195243%_
                    (lambda (_%rest195228%_ _%hd195229%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd195229%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp195685
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp195684
                                       (##structure-ref
                                        _%hd195229%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp195685 __tmp195684))
                                '#!void
                                (begin
                                  (let ((_%$e195232%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd195229%_))))
                                    (if _%$e195232%_
                                        ((lambda (_%pre195235%_)
                                           (_%lp195206%_
                                            (cons _%pre195235%_
                                                  (##structure-ref
                                                   _%hd195229%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e195232%_)
                                        (_%lp195206%_
                                         (##structure-ref
                                          _%hd195229%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd195229%_)))
                            (_%lp195206%_ _%rest195228%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd195229%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp195687
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp195686
                                           (##structure-ref
                                            _%hd195229%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp195687 __tmp195686))
                                    '#!void
                                    (begin
                                      (_%lp195206%_
                                       (##structure-ref
                                        _%hd195229%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd195229%_)))
                                (_%lp195206%_ _%rest195228%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd195229%_
                                     'gx#module-import::t))
                                  (_%lp195206%_
                                   (cons (##direct-structure-ref
                                          _%hd195229%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest195228%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd195229%_
                                         'gx#module-export::t))
                                      (_%lp195206%_
                                       (cons (##direct-structure-ref
                                              _%hd195229%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest195228%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd195229%_
                                             'gx#import-set::t))
                                          (_%lp195206%_
                                           (cons (##direct-structure-ref
                                                  _%hd195229%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest195228%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd195229%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest195209195217%_))
                  (let ((_%hd195214195246%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195209195217%_)))
                        (_%tl195215195248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195209195217%_))))
                    (let* ((_%hd195251%_ _%hd195214195246%_)
                           (_%rest195253%_ _%tl195215195248%_))
                      (_%K195213195243%_ _%rest195253%_ _%hd195251%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx195182%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx195182%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx195182%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht195184%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id195186%_
                    (##structure-ref
                     _%ctx195182%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod195188%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht195184%_ _%id195186%_)))
                   (_%$e195191%_ _%mod195188%_))
              (if _%$e195191%_
                  _%$e195191%_
                  (let* ((_%mod195194%_
                          (gxc#optimizer-import-ssxi _%ctx195182%_))
                         (_%val195199%_
                          (let ((_%$e195196%_ _%mod195194%_))
                            (if _%$e195196%_ _%$e195196%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht195184%_ _%id195186%_ _%val195199%_))
                    _%val195199%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx195180%_)
        (if (##structure-ref _%ctx195180%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx195180%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id195157%_)
        (letrec ((_%catch-e195159%_
                  (lambda (_%exn195178%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn195178%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn195178%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id195157%_))))
                    '#f))
                 (_%import-e195160%_
                  (lambda ()
                    (let* ((_%str-id195163%_
                            (let ((__tmp195688
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id195157%_))))
                              (declare (not safe))
                              (##string-append __tmp195688 '".ssxi")))
                           (_%artefact-path195171%_
                            (let ((_%odir195164195166%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir195164195166%_
                                  (let ((_%odir195169%_ _%odir195164195166%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id195163%_
                                        '".ss"))
                                     _%odir195169%_))
                                  '#f)))
                           (_%library-path195173%_
                            (let ((__tmp195689
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id195163%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp195689)))
                           (_%ssxi-path195175%_
                            (if (and _%artefact-path195171%_
                                     (file-exists? _%artefact-path195171%_))
                                _%artefact-path195171%_
                                _%library-path195173%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path195175%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path195175%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e195159%_ _%import-e195160%_)))))
    (define gxc#optimize-source
      (lambda (_%stx195148%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx195148%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx195148%_))
        (let* ((_%stx195150%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx195148%_)))
               (_%stx195152%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx195150%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx195152%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx195152%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx195152%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx195152%_))
          (let ((_%stx195155%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx195152%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx195155%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp195691 (list gxc#::generate-runtime-empty::t))
            (__tmp195690 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp195691
         '()
         __tmp195690
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args195145%_
        (apply make-instance gxc#::generate-ssxi::t _%$args195145%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp195692
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
        (__make-promise __tmp195692)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx195137%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self195140%_
                (let ((__obj195672
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj195672))
               (__tmp195693
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self195140%_ _%stx195137%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp195693
           gxc#current-compile-method
           _%self195140%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self195097%_ _%stx195098%_)
        (let* ((_%g195100195110%_
                (lambda (_%g195101195107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195101195107%_))))
               (_%g195099195134%_
                (lambda (_%g195101195113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195101195113%_))
                      (let ((_%e195103195115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195101195113%_))))
                        (let ((_%hd195104195118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195103195115%_)))
                              (_%tl195105195120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195103195115%_))))
                          ((lambda (_%L195123%_)
                             (let ((__tmp195696
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self195097%_
                                         _%stx195098%_))))
                                   (__tmp195694
                                    (let ((__tmp195695
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp195695 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp195696
                                gx#current-expander-phi
                                __tmp195694)))
                           _%tl195105195120%_)))
                      (_%g195100195110%_ _%g195101195113%_)))))
          (_%g195099195134%_ _%stx195098%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self195036%_ _%stx195037%_)
        (let* ((_%g195039195053%_
                (lambda (_%g195040195050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195040195050%_))))
               (_%g195038195094%_
                (lambda (_%g195040195056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195040195056%_))
                      (let ((_%e195043195058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195040195056%_))))
                        (let ((_%hd195044195061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195043195058%_)))
                              (_%tl195045195063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195043195058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195045195063%_))
                              (let ((_%e195046195066%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195045195063%_))))
                                (let ((_%hd195047195069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195046195066%_)))
                                      (_%tl195048195071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195046195066%_))))
                                  ((lambda (_%L195074%_ _%L195075%_)
                                     (let* ((_%ctx195088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L195075%_)))
                                            (_%code195090%_
                                             (##structure-ref
                                              _%ctx195088%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp195697
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self195036%_
                                                  _%code195090%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195697
                                        gx#current-expander-context
                                        _%ctx195088%_)))
                                   _%tl195048195071%_
                                   _%hd195047195069%_)))
                              (_%g195039195053%_ _%g195040195056%_))))
                      (_%g195039195053%_ _%g195040195056%_)))))
          (_%g195038195094%_ _%stx195037%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self194841%_ _%stx194842%_)
        (letrec ((_%generate-e194844%_
                  (lambda (_%id195021%_)
                    (let* ((_%sym195023%_
                            (if (let ((__tmp195698
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp195698))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id195021%_))
                                '#f))
                           (_%$e195025%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym195023%_))))
                      (if _%$e195025%_
                          ((lambda (_%klass195028%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym195023%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym195023%_
                                                     (cons (let ((__method195673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass195028%_ 'typedecl))))
                     (if __method195673
                         (let ()
                           (declare (not safe))
                           (__method195673 _%klass195028%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass195028%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym195023%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym195023%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e195025%_)
                          (let ((_%$e195030%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym195023%_))))
                            (if _%$e195030%_
                                ((lambda (_%type195033%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym195023%_
                                      '" "
                                      _%type195033%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type195033%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym195023%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym195023%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type195033%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym195023%_
                                                   (cons (let ((__method195674
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type195033%_ 'typedecl))))
                   (if __method195674
                       (let ()
                         (declare (not safe))
                         (__method195674 _%type195033%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type195033%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e195030%_)
                                '(begin))))))))
          (let* ((_%__stx195285195286%_ _%stx194842%_)
                 (_%g194847194885%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx195285195286%_)))))
            (let ((_%__kont195287195288%_
                   (lambda (_%L195003%_) (_%generate-e194844%_ _%L195003%_)))
                  (_%__kont195289195290%_
                   (lambda (_%L194938%_)
                     (let ((_%types194964%_
                            (map _%generate-e194844%_
                                 (let ((__tmp195699
                                        (lambda (_%g194956194959%_
                                                 _%g194957194961%_)
                                          (cons _%g194956194959%_
                                                _%g194957194961%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp195699 '() _%L194938%_)))))
                       (cons 'begin _%types194964%_)))))
              (let ((_%__match195340195341%_
                     (lambda (_%e194863194890%_
                              _%hd194864194893%_
                              _%tl194865194895%_
                              _%e194866194898%_
                              _%hd194867194901%_
                              _%tl194868194903%_
                              _%__splice195291195292%_
                              _%target194869194906%_
                              _%tl194871194908%_)
                       (letrec ((_%loop194872194911%_
                                 (lambda (_%hd194870194914%_
                                          _%id194876194916%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd194870194914%_))
                                       (let ((_%e194873194919%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd194870194914%_))))
                                         (let ((_%lp-tl194875194924%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e194873194919%_)))
                                               (_%lp-hd194874194922%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e194873194919%_))))
                                           (_%loop194872194911%_
                                            _%lp-tl194875194924%_
                                            (cons _%lp-hd194874194922%_
                                                  _%id194876194916%_))))
                                       (let ((_%id194877194927%_
                                              (reverse _%id194876194916%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl194868194903%_))
                                             (let ((_%e194878194930%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl194868194903%_))))
                                               (let ((_%tl194880194935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e194878194930%_)))
                                                     (_%hd194879194933%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e194878194930%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl194880194935%_))
                                                     (_%__kont195289195290%_
                                                      _%id194877194927%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g194847194885%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g194847194885%_))))))))
                         (_%loop194872194911%_ _%target194869194906%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx195285195286%_))
                    (let ((_%e194850194971%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx195285195286%_))))
                      (let ((_%tl194852194976%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194850194971%_)))
                            (_%hd194851194974%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194850194971%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194852194976%_))
                            (let ((_%e194853194979%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl194852194976%_))))
                              (let ((_%tl194855194984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194853194979%_)))
                                    (_%hd194854194982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194853194979%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd194854194982%_))
                                    (let ((_%e194856194987%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd194854194982%_))))
                                      (let ((_%tl194858194992%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194856194987%_)))
                                            (_%hd194857194990%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194856194987%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194858194992%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194855194984%_))
                                                (let ((_%e194859194995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194855194984%_))))
                                                  (let ((_%tl194861195000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194859194995%_)))
                                                        (_%hd194860194998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194859194995%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194861195000%_))
                                                        (_%__kont195287195288%_
                                                         _%hd194857194990%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd194854194982%_))
                                                            (let ((_%__splice195291195292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd194854194982%_ '0))))
                      (let ((_%tl194871194908%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice195291195292%_ '1)))
                            (_%target194869194906%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice195291195292%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl194871194908%_))
                            (_%__match195340195341%_
                             _%e194850194971%_
                             _%hd194851194974%_
                             _%tl194852194976%_
                             _%e194853194979%_
                             _%hd194854194982%_
                             _%tl194855194984%_
                             _%__splice195291195292%_
                             _%target194869194906%_
                             _%tl194871194908%_)
                            (let ()
                              (declare (not safe))
                              (_%g194847194885%_)))))
                    (let () (declare (not safe)) (_%g194847194885%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd194854194982%_))
                                                    (let ((_%__splice195291195292%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd194854194982%_
                                                              '0))))
                                                      (let ((_%tl194871194908%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice195291195292%_ '1)))
                    (_%target194869194906%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice195291195292%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl194871194908%_))
                    (_%__match195340195341%_
                     _%e194850194971%_
                     _%hd194851194974%_
                     _%tl194852194976%_
                     _%e194853194979%_
                     _%hd194854194982%_
                     _%tl194855194984%_
                     _%__splice195291195292%_
                     _%target194869194906%_
                     _%tl194871194908%_)
                    (let () (declare (not safe)) (_%g194847194885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194847194885%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd194854194982%_))
                                                (let ((_%__splice195291195292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd194854194982%_
                                                          '0))))
                                                  (let ((_%tl194871194908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice195291195292%_
                                                            '1)))
                                                        (_%target194869194906%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice195291195292%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194871194908%_))
                                                        (_%__match195340195341%_
                                                         _%e194850194971%_
                                                         _%hd194851194974%_
                                                         _%tl194852194976%_
                                                         _%e194853194979%_
                                                         _%hd194854194982%_
                                                         _%tl194855194984%_
                                                         _%__splice195291195292%_
                                                         _%target194869194906%_
                                                         _%tl194871194908%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194847194885%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194847194885%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd194854194982%_))
                                        (let ((_%__splice195291195292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd194854194982%_
                                                  '0))))
                                          (let ((_%tl194871194908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice195291195292%_
                                                    '1)))
                                                (_%target194869194906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice195291195292%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194871194908%_))
                                                (_%__match195340195341%_
                                                 _%e194850194971%_
                                                 _%hd194851194974%_
                                                 _%tl194852194976%_
                                                 _%e194853194979%_
                                                 _%hd194854194982%_
                                                 _%tl194855194984%_
                                                 _%__splice195291195292%_
                                                 _%target194869194906%_
                                                 _%tl194871194908%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194847194885%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g194847194885%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g194847194885%_)))))
                    (let () (declare (not safe)) (_%g194847194885%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self194394%_ _%stx194395%_)
        (let* ((_%__stx195343195344%_ _%stx194395%_)
               (_%g194399194501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195343195344%_)))))
          (let ((_%__kont195345195346%_
                 (lambda (_%L194791%_
                          _%L194792%_
                          _%L194793%_
                          _%L194794%_
                          _%L194795%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194794%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L194793%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L194792%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L194791%_))
                                                 '())))))))
                (_%__kont195347195348%_
                 (lambda (_%L194617%_ _%L194618%_ _%L194619%_ _%L194620%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194619%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L194618%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L194617%_))
                                           (cons '#f '())))))))
                (_%__kont195349195350%_ (lambda () '(begin))))
            (let ((_%__match195478195479%_
                   (lambda (_%e194406194663%_
                            _%hd194407194666%_
                            _%tl194408194668%_
                            _%e194409194671%_
                            _%hd194410194674%_
                            _%tl194411194676%_
                            _%e194412194679%_
                            _%hd194413194682%_
                            _%tl194414194684%_
                            _%e194415194687%_
                            _%hd194416194690%_
                            _%tl194417194692%_
                            _%e194418194695%_
                            _%hd194419194698%_
                            _%tl194420194700%_
                            _%e194421194703%_
                            _%hd194422194706%_
                            _%tl194423194708%_
                            _%e194424194711%_
                            _%hd194425194714%_
                            _%tl194426194716%_
                            _%e194427194719%_
                            _%hd194428194722%_
                            _%tl194429194724%_
                            _%e194430194727%_
                            _%hd194431194730%_
                            _%tl194432194732%_
                            _%e194433194735%_
                            _%hd194434194738%_
                            _%tl194435194740%_
                            _%e194436194743%_
                            _%hd194437194746%_
                            _%tl194438194748%_
                            _%e194439194751%_
                            _%hd194440194754%_
                            _%tl194441194756%_
                            _%e194442194759%_
                            _%hd194443194762%_
                            _%tl194444194764%_
                            _%e194445194767%_
                            _%hd194446194770%_
                            _%tl194447194772%_
                            _%e194448194775%_
                            _%hd194449194778%_
                            _%tl194450194780%_
                            _%e194451194783%_
                            _%hd194452194786%_
                            _%tl194453194788%_)
                     (let ((_%L194791%_ _%hd194452194786%_)
                           (_%L194792%_ _%hd194443194762%_)
                           (_%L194793%_ _%hd194434194738%_)
                           (_%L194794%_ _%hd194425194714%_)
                           (_%L194795%_ _%hd194416194690%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L194795%_
                              'bind-method!))
                           (_%__kont195345195346%_
                            _%L194791%_
                            _%L194792%_
                            _%L194793%_
                            _%L194794%_
                            _%L194795%_)
                           (_%__kont195349195350%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx195343195344%_))
                  (let ((_%e194406194663%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx195343195344%_))))
                    (let ((_%tl194408194668%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194406194663%_)))
                          (_%hd194407194666%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194406194663%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194408194668%_))
                          (let ((_%e194409194671%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194408194668%_))))
                            (let ((_%tl194411194676%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194409194671%_)))
                                  (_%hd194410194674%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194409194671%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194410194674%_))
                                  (let ((_%e194412194679%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194410194674%_))))
                                    (let ((_%tl194414194684%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194412194679%_)))
                                          (_%hd194413194682%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194412194679%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194413194682%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194413194682%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194414194684%_))
                                                  (let ((_%e194415194687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194414194684%_))))
                                                    (let ((_%tl194417194692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194415194687%_)))
                                                          (_%hd194416194690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194415194687%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194417194692%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194411194676%_))
                      (let ((_%e194418194695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194411194676%_))))
                        (let ((_%tl194420194700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194418194695%_)))
                              (_%hd194419194698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194418194695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd194419194698%_))
                              (let ((_%e194421194703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd194419194698%_))))
                                (let ((_%tl194423194708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194421194703%_)))
                                      (_%hd194422194706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194421194703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd194422194706%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd194422194706%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194423194708%_))
                                              (let ((_%e194424194711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194423194708%_))))
                                                (let ((_%tl194426194716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194424194711%_)))
                                                      (_%hd194425194714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194424194711%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194426194716%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl194420194700%_))
                                                          (let ((_%e194427194719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl194420194700%_))))
                    (let ((_%tl194429194724%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194427194719%_)))
                          (_%hd194428194722%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194427194719%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd194428194722%_))
                          (let ((_%e194430194727%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd194428194722%_))))
                            (let ((_%tl194432194732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194430194727%_)))
                                  (_%hd194431194730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194430194727%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd194431194730%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd194431194730%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194432194732%_))
                                          (let ((_%e194433194735%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194432194732%_))))
                                            (let ((_%tl194435194740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194433194735%_)))
                                                  (_%hd194434194738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194433194735%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl194435194740%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl194429194724%_))
                                                      (let ((_%e194436194743%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl194429194724%_))))
                (let ((_%tl194438194748%_
                       (let () (declare (not safe)) (##cdr _%e194436194743%_)))
                      (_%hd194437194746%_
                       (let ()
                         (declare (not safe))
                         (##car _%e194436194743%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd194437194746%_))
                      (let ((_%e194439194751%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd194437194746%_))))
                        (let ((_%tl194441194756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194439194751%_)))
                              (_%hd194440194754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194439194751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd194440194754%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd194440194754%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194441194756%_))
                                      (let ((_%e194442194759%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl194441194756%_))))
                                        (let ((_%tl194444194764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194442194759%_)))
                                              (_%hd194443194762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194442194759%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194444194764%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194438194748%_))
                                                  (let ((_%e194445194767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194438194748%_))))
                                                    (let ((_%tl194447194772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194445194767%_)))
                                                          (_%hd194446194770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194445194767%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd194446194770%_))
                                                          (let ((_%e194448194775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd194446194770%_))))
                    (let ((_%tl194450194780%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194448194775%_)))
                          (_%hd194449194778%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194448194775%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd194449194778%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd194449194778%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl194450194780%_))
                                  (let ((_%e194451194783%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl194450194780%_))))
                                    (let ((_%tl194453194788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194451194783%_)))
                                          (_%hd194452194786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194451194783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194453194788%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194447194772%_))
                                              (_%__match195478195479%_
                                               _%e194406194663%_
                                               _%hd194407194666%_
                                               _%tl194408194668%_
                                               _%e194409194671%_
                                               _%hd194410194674%_
                                               _%tl194411194676%_
                                               _%e194412194679%_
                                               _%hd194413194682%_
                                               _%tl194414194684%_
                                               _%e194415194687%_
                                               _%hd194416194690%_
                                               _%tl194417194692%_
                                               _%e194418194695%_
                                               _%hd194419194698%_
                                               _%tl194420194700%_
                                               _%e194421194703%_
                                               _%hd194422194706%_
                                               _%tl194423194708%_
                                               _%e194424194711%_
                                               _%hd194425194714%_
                                               _%tl194426194716%_
                                               _%e194427194719%_
                                               _%hd194428194722%_
                                               _%tl194429194724%_
                                               _%e194430194727%_
                                               _%hd194431194730%_
                                               _%tl194432194732%_
                                               _%e194433194735%_
                                               _%hd194434194738%_
                                               _%tl194435194740%_
                                               _%e194436194743%_
                                               _%hd194437194746%_
                                               _%tl194438194748%_
                                               _%e194439194751%_
                                               _%hd194440194754%_
                                               _%tl194441194756%_
                                               _%e194442194759%_
                                               _%hd194443194762%_
                                               _%tl194444194764%_
                                               _%e194445194767%_
                                               _%hd194446194770%_
                                               _%tl194447194772%_
                                               _%e194448194775%_
                                               _%hd194449194778%_
                                               _%tl194450194780%_
                                               _%e194451194783%_
                                               _%hd194452194786%_
                                               _%tl194453194788%_)
                                              (_%__kont195349195350%_))
                                          (_%__kont195349195350%_))))
                                  (_%__kont195349195350%_))
                              (_%__kont195349195350%_))
                          (_%__kont195349195350%_))))
                  (_%__kont195349195350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194438194748%_))
                                                      (if (let ((__tmp195700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp195700 'bind-method!))
                  (let ((_%L194617%_ _%hd194443194762%_)
                        (_%L194618%_ _%hd194434194738%_)
                        (_%L194619%_ _%hd194425194714%_)
                        (_%L194620%_ _%hd194416194690%_))
                    (_%__kont195347195348%_
                     _%L194617%_
                     _%L194618%_
                     _%L194619%_
                     _%L194620%_))
                  (_%__kont195349195350%_))
              (_%__kont195349195350%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195349195350%_))))
                                      (_%__kont195349195350%_))
                                  (_%__kont195349195350%_))
                              (_%__kont195349195350%_))))
                      (_%__kont195349195350%_))))
              (_%__kont195349195350%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195349195350%_))))
                                          (_%__kont195349195350%_))
                                      (_%__kont195349195350%_))
                                  (_%__kont195349195350%_))))
                          (_%__kont195349195350%_))))
                  (_%__kont195349195350%_))
              (_%__kont195349195350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont195349195350%_))
                                          (_%__kont195349195350%_))
                                      (_%__kont195349195350%_))))
                              (_%__kont195349195350%_))))
                      (_%__kont195349195350%_))
                  (_%__kont195349195350%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont195349195350%_))
                                              (_%__kont195349195350%_))
                                          (_%__kont195349195350%_))))
                                  (_%__kont195349195350%_))))
                          (_%__kont195349195350%_))))
                  (_%__kont195349195350%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self194218%_ _%stx194219%_)
        (let* ((_%__stx195587195588%_ _%stx194219%_)
               (_%g194222194262%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx195587195588%_)))))
          (let ((_%__kont195589195590%_
                 (lambda (_%L194368%_ _%L194369%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194369%_))
                               (cons _%L194368%_ '())))))
                (_%__kont195591195592%_
                 (lambda (_%L194291%_ _%L194292%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx195587195588%_))
                (let ((_%e194226194312%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx195587195588%_))))
                  (let ((_%tl194228194317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194226194312%_)))
                        (_%hd194227194315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194226194312%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl194228194317%_))
                        (let ((_%e194229194320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl194228194317%_))))
                          (let ((_%tl194231194325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194229194320%_)))
                                (_%hd194230194323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194229194320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd194230194323%_))
                                (let ((_%e194232194328%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd194230194323%_))))
                                  (let ((_%tl194234194333%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194232194328%_)))
                                        (_%hd194233194331%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194232194328%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd194233194331%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd194233194331%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194234194333%_))
                                                (let ((_%e194235194336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194234194333%_))))
                                                  (let ((_%tl194237194341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194235194336%_)))
                                                        (_%hd194236194339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194235194336%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194237194341%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl194231194325%_))
                                                            (let ((_%e194238194344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194231194325%_))))
                      (let ((_%tl194240194349%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194238194344%_)))
                            (_%hd194239194347%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194238194344%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd194239194347%_))
                            (let ((_%e194241194352%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd194239194347%_))))
                              (let ((_%tl194243194357%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194241194352%_)))
                                    (_%hd194242194355%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194241194352%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd194242194355%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd194242194355%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194243194357%_))
                                            (let ((_%e194244194360%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194243194357%_))))
                                              (let ((_%tl194246194365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194244194360%_)))
                                                    (_%hd194245194363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194244194360%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl194246194365%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194240194349%_))
                                                        (_%__kont195589195590%_
                                                         _%hd194245194363%_
                                                         _%hd194236194339%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194222194262%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194240194349%_))
                                                        (_%__kont195591195592%_
                                                         _%hd194239194347%_
                                                         _%hd194230194323%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194222194262%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194240194349%_))
                                                (_%__kont195591195592%_
                                                 _%hd194239194347%_
                                                 _%hd194230194323%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194222194262%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194240194349%_))
                                            (_%__kont195591195592%_
                                             _%hd194239194347%_
                                             _%hd194230194323%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g194222194262%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194240194349%_))
                                        (_%__kont195591195592%_
                                         _%hd194239194347%_
                                         _%hd194230194323%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g194222194262%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl194240194349%_))
                                (_%__kont195591195592%_
                                 _%hd194239194347%_
                                 _%hd194230194323%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g194222194262%_))))))
                    (let () (declare (not safe)) (_%g194222194262%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl194231194325%_))
                    (let ((_%e194255194283%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl194231194325%_))))
                      (let ((_%tl194257194288%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194255194283%_)))
                            (_%hd194256194286%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194255194283%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl194257194288%_))
                            (_%__kont195591195592%_
                             _%hd194256194286%_
                             _%hd194230194323%_)
                            (let ()
                              (declare (not safe))
                              (_%g194222194262%_)))))
                    (let () (declare (not safe)) (_%g194222194262%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl194231194325%_))
                                                    (let ((_%e194255194283%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl194231194325%_))))
                                                      (let ((_%tl194257194288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e194255194283%_)))
                    (_%hd194256194286%_
                     (let () (declare (not safe)) (##car _%e194255194283%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl194257194288%_))
                    (_%__kont195591195592%_
                     _%hd194256194286%_
                     _%hd194230194323%_)
                    (let () (declare (not safe)) (_%g194222194262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194222194262%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194231194325%_))
                                                (let ((_%e194255194283%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194231194325%_))))
                                                  (let ((_%tl194257194288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194255194283%_)))
                                                        (_%hd194256194286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194255194283%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194257194288%_))
                                                        (_%__kont195591195592%_
                                                         _%hd194256194286%_
                                                         _%hd194230194323%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194222194262%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194222194262%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl194231194325%_))
                                            (let ((_%e194255194283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl194231194325%_))))
                                              (let ((_%tl194257194288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e194255194283%_)))
                                                    (_%hd194256194286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e194255194283%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl194257194288%_))
                                                    (_%__kont195591195592%_
                                                     _%hd194256194286%_
                                                     _%hd194230194323%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194222194262%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g194222194262%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl194231194325%_))
                                    (let ((_%e194255194283%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl194231194325%_))))
                                      (let ((_%tl194257194288%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194255194283%_)))
                                            (_%hd194256194286%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194255194283%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194257194288%_))
                                            (_%__kont195591195592%_
                                             _%hd194256194286%_
                                             _%hd194230194323%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g194222194262%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g194222194262%_))))))
                        (let () (declare (not safe)) (_%g194222194262%_)))))
                (let () (declare (not safe)) (_%g194222194262%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self192412194203%_)
        (let* ((_%self194206%_ _%self192412194203%_)
               (_%self194208%_ _%self194206%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194208%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self192413193974%_)
        (let* ((_%self193977%_ _%self192413193974%_)
               (_%self193979%_ _%self193977%_)
               (_%self193988194004%_ _%self193979%_)
               (_%E193990194008%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193988194004%_
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
               (_%K193991194023%_
                (lambda (_%methods194011%_
                         _%metaclass194012%_
                         _%system?194013%_
                         _%final?194014%_
                         _%struct?194015%_
                         _%constructor194016%_
                         _%fields194017%_
                         _%slots194018%_
                         _%precendence-list194019%_
                         _%super194020%_
                         _%id194021%_)
                  (cons '@class
                        (cons _%id194021%_
                              (cons _%super194020%_
                                    (cons _%precendence-list194019%_
                                          (cons _%slots194018%_
                                                (cons _%fields194017%_
                                                      (cons _%constructor194016%_
                                                            (cons _%struct?194015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?194014%_
                                (cons _%system?194013%_
                                      (cons _%metaclass194012%_
                                            (cons (if _%methods194011%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods194011%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e193992194026%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '1
                         '#f
                         '#f)))
                     (_%id194029%_ _%e193992194026%_)
                     (_%e193993194031%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '2
                         '#f
                         '#f)))
                     (_%super194034%_ _%e193993194031%_)
                     (_%e193994194036%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list194039%_ _%e193994194036%_)
                     (_%e193995194041%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '4
                         '#f
                         '#f)))
                     (_%slots194044%_ _%e193995194041%_)
                     (_%e193996194046%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '5
                         '#f
                         '#f)))
                     (_%fields194049%_ _%e193996194046%_)
                     (_%e193997194051%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor194054%_ _%e193997194051%_)
                     (_%e193998194056%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?194059%_ _%e193998194056%_)
                     (_%e193999194061%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '8
                         '#f
                         '#f)))
                     (_%final?194064%_ _%e193999194061%_)
                     (_%e194000194066%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '9
                         '#f
                         '#f)))
                     (_%system?194069%_ _%e194000194066%_)
                     (_%e194001194071%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass194074%_ _%e194001194071%_)
                     (_%e194002194076%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193988194004%_
                         '11
                         '#f
                         '#f)))
                     (_%methods194079%_ _%e194002194076%_))
                (_%K193991194023%_
                 _%methods194079%_
                 _%metaclass194074%_
                 _%system?194069%_
                 _%final?194064%_
                 _%struct?194059%_
                 _%constructor194054%_
                 _%fields194049%_
                 _%slots194044%_
                 _%precendence-list194039%_
                 _%super194034%_
                 _%id194029%_))
              (_%E193990194008%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self192414193837%_)
        (let* ((_%self193840%_ _%self192414193837%_)
               (_%self193842%_ _%self193840%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193842%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self192415193700%_)
        (let* ((_%self193703%_ _%self192415193700%_)
               (_%self193705%_ _%self193703%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193705%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self192416193563%_)
        (let* ((_%self193566%_ _%self192416193563%_)
               (_%self193568%_ _%self193566%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193568%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193568%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193568%_
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
      (lambda (_%self192417193426%_)
        (let* ((_%self193429%_ _%self192417193426%_)
               (_%self193431%_ _%self193429%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193431%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193431%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self193431%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self192418193289%_)
        (let* ((_%self193292%_ _%self192418193289%_)
               (_%self193294%_ _%self193292%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193294%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self193294%_
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
      (lambda (_%self192419193100%_)
        (let* ((_%self193103%_ _%self192419193100%_)
               (_%self193105%_ _%self193103%_)
               (_%self193114193123%_ _%self193105%_)
               (_%E193116193127%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193114193123%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K193117193146%_
                (lambda (_%dispatch193130%_
                         _%arity193131%_
                         _%signature193132%_)
                  (if _%signature193132%_
                      (let ((_%signature193134%_ _%signature193132%_))
                        (cons '@lambda
                              (cons _%arity193131%_
                                    (cons _%dispatch193130%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature193134%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature193134%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature193134%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature193134%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature193134%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity193131%_
                                  (cons _%dispatch193130%_ '())))))))
          (if '#t
              (let* ((_%e193118193149%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193114193123%_
                         '1
                         '#f
                         '#f)))
                     (_%e193119193152%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193114193123%_
                         '2
                         '#f
                         '#f)))
                     (_%signature193155%_ _%e193119193152%_)
                     (_%e193120193157%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193114193123%_
                         '3
                         '#f
                         '#f)))
                     (_%arity193160%_ _%e193120193157%_)
                     (_%e193121193162%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193114193123%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch193165%_ _%e193121193162%_))
                (_%K193117193146%_
                 _%dispatch193165%_
                 _%arity193160%_
                 _%signature193155%_))
              (_%E193116193127%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self192420192959%_)
        (let* ((_%self192962%_ _%self192420192959%_)
               (_%self192964%_ _%self192962%_))
          (letrec ((_%clause-e192974%_
                    (lambda (_%clause192976%_)
                      (cdr (let ((__method195675
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause192976%_
                                     'typedecl))))
                             (if __method195675
                                 (let ()
                                   (declare (not safe))
                                   (__method195675 _%clause192976%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause192976%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e192974%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192964%_
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
      (lambda (_%self192421192822%_)
        (let* ((_%self192825%_ _%self192421192822%_)
               (_%self192827%_ _%self192825%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192827%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192827%_
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
      (lambda (_%self192422192685%_)
        (let* ((_%self192688%_ _%self192422192685%_)
               (_%self192690%_ _%self192688%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192690%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192690%_
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
      (lambda (_%self192423192548%_)
        (let* ((_%self192551%_ _%self192423192548%_)
               (_%self192553%_ _%self192551%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192553%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
