(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712085002)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp192835
                   (let ((__obj192829
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj192829)
                     __obj192829)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp192835)))))
    (define gxc#optimize!
      (lambda (_%ctx192438%_)
        (let ((__tmp192838
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx192438%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx192438%_))
                 (let ((__tmp192840
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp192839
                        (##structure-ref
                         _%ctx192438%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp192840 __tmp192839 '#t))
                 (let ((_%code192441%_
                        (let ((__tmp192841
                               (##structure-ref
                                _%ctx192438%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp192841))))
                   (##structure-set!
                    _%ctx192438%_
                    _%code192441%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp192837 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp192836 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192838
           gxc#current-compile-mutators
           __tmp192837
           gxc#current-compile-local-type
           __tmp192836))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192424%_)
        (letrec ((_%load-it!192426%_
                  (lambda (_%id192436%_)
                    (if (let ((__tmp192842
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp192842 _%id192436%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id192436%_))
                          (let ((__tmp192843
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp192843 _%id192436%_ '#t)))))))
          (let* ((_%modid192428%_
                  (##structure-ref
                   _%ctx192424%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192430%_ (symbol->string _%modid192428%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192430%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192430%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192426%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192426%_
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
      (lambda (_%ctx192361%_)
        (letrec* ((_%deps192363%_
                   (let* ((_%imports192414%_
                           (##structure-ref
                            _%ctx192361%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192416%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192361%_))))
                     (if _%$e192416%_
                         ((lambda (_%g192418192420%_)
                            (cons _%g192418192420%_ _%imports192414%_))
                          _%$e192416%_)
                         (let () _%imports192414%_)))))
          (let _%lp192365%_ ((_%rest192367%_ _%deps192363%_))
            (let* ((_%rest192368192376%_ _%rest192367%_)
                   (_%else192370192384%_ (lambda () '#!void))
                   (_%K192372192402%_
                    (lambda (_%rest192387%_ _%hd192388%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192388%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp192845
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp192844
                                       (##structure-ref
                                        _%hd192388%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp192845 __tmp192844))
                                '#!void
                                (begin
                                  (let ((_%$e192391%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192388%_))))
                                    (if _%$e192391%_
                                        ((lambda (_%pre192394%_)
                                           (let ((__tmp192846
                                                  (cons _%pre192394%_
                                                        (##structure-ref
                                                         _%hd192388%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192365%_ __tmp192846)))
                                         _%$e192391%_)
                                        (let ()
                                          (let ((__tmp192847
                                                 (##structure-ref
                                                  _%hd192388%_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (_%lp192365%_ __tmp192847)))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192388%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192365%_ _%rest192387%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192388%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp192849
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp192848
                                           (##structure-ref
                                            _%hd192388%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp192849 __tmp192848))
                                    '#!void
                                    (begin
                                      (let ((__tmp192850
                                             (##structure-ref
                                              _%hd192388%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192365%_ __tmp192850))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192388%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192365%_ _%rest192387%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192388%_
                                     'gx#module-import::t))
                                  (let ()
                                    (let ((__tmp192851
                                           (cons (##direct-structure-ref
                                                  _%hd192388%_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _%rest192387%_)))
                                      (declare (not safe))
                                      (_%lp192365%_ __tmp192851)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192388%_
                                         'gx#module-export::t))
                                      (let ()
                                        (let ((__tmp192852
                                               (cons (##direct-structure-ref
                                                      _%hd192388%_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _%rest192387%_)))
                                          (declare (not safe))
                                          (_%lp192365%_ __tmp192852)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192388%_
                                             'gx#import-set::t))
                                          (let ()
                                            (let ((__tmp192853
                                                   (cons (##direct-structure-ref
                                                          _%hd192388%_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _%rest192387%_)))
                                              (declare (not safe))
                                              (_%lp192365%_ __tmp192853)))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"Unexpected module import"
                                                     _%hd192388%_)))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192368192376%_))
                  (let ((_%hd192373192405%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192368192376%_)))
                        (_%tl192374192407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192368192376%_))))
                    (let* ((_%hd192410%_ _%hd192373192405%_)
                           (_%rest192412%_ _%tl192374192407%_))
                      (declare (not safe))
                      (_%K192372192402%_ _%rest192412%_ _%hd192410%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192341%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192341%_
                    'gx#module-context::t))
                 (let ((__tmp192854
                        (##structure-ref
                         _%ctx192341%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp192854)))
            '#!void
            (let* ((_%ht192343%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192345%_
                    (##structure-ref
                     _%ctx192341%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192347%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192343%_ _%id192345%_))))
              (let ((_%$e192350%_ _%mod192347%_))
                (if _%$e192350%_
                    _%$e192350%_
                    (let* ((_%mod192353%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _%ctx192341%_)))
                           (_%val192358%_
                            (let ((_%$e192355%_ _%mod192353%_))
                              (if _%$e192355%_ _%$e192355%_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _%ht192343%_ _%id192345%_ _%val192358%_))
                      _%val192358%_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192339%_)
        (if (##structure-ref _%ctx192339%_ '1 gx#expander-context::t '#f)
            (let ((__tmp192855
                   (##structure-ref
                    _%ctx192339%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp192855))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192316%_)
        (letrec ((_%catch-e192318%_
                  (lambda (_%exn192337%_)
                    (display-exception _%exn192337%_)
                    (let ()
                      (declare (not safe))
                      (displayln
                       '"*** WARNING Failed to load ssxi module for "
                       _%id192316%_))
                    '#f))
                 (_%import-e192319%_
                  (lambda ()
                    (let* ((_%str-id192322%_
                            (let ((__tmp192856
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192316%_))))
                              (declare (not safe))
                              (##string-append __tmp192856 '".ssxi")))
                           (_%artefact-path192330%_
                            (let ((_%odir192323192325%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192323192325%_
                                  (let ((_%odir192328%_ _%odir192323192325%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192322%_
                                        '".ss"))
                                     _%odir192328%_))
                                  '#f)))
                           (_%library-path192332%_
                            (let ((__tmp192857
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192322%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp192857)))
                           (_%ssxi-path192334%_
                            (if (and _%artefact-path192330%_
                                     (file-exists? _%artefact-path192330%_))
                                _%artefact-path192330%_
                                _%library-path192332%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192334%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192334%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192318%_ _%import-e192319%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192307%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192307%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192307%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192307%_))
        (let* ((_%stx192309%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192307%_)))
               (_%stx192311%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192309%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192311%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192311%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192311%_))
          (let ((_%stx192314%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192311%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192314%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp192859 (list gxc#::generate-runtime-empty::t))
            (__tmp192858 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp192859
         '()
         __tmp192858
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192304%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192304%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp192860
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
        (__make-promise __tmp192860)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192296%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192299%_
                (let ((__obj192831
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj192831))
               (__tmp192861
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192299%_ _%stx192296%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192861
           gxc#current-compile-method
           _%self192299%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192256%_ _%stx192257%_)
        (let* ((_%g192259192269%_
                (lambda (_%g192260192266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192260192266%_))))
               (_%g192258192293%_
                (lambda (_%g192260192272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192260192272%_))
                      (let ((_%e192264192274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192260192272%_))))
                        (let ((_%hd192263192277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192264192274%_)))
                              (_%tl192262192279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192264192274%_))))
                          ((lambda (_%L192282%_)
                             (let ((__tmp192864
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192256%_
                                         _%stx192257%_))))
                                   (__tmp192862
                                    (let ((__tmp192863
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp192863 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp192864
                                gx#current-expander-phi
                                __tmp192862)))
                           _%tl192262192279%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192259192269%_ _%g192260192272%_))))))
          (declare (not safe))
          (_%g192258192293%_ _%stx192257%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192195%_ _%stx192196%_)
        (let* ((_%g192198192212%_
                (lambda (_%g192199192209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192199192209%_))))
               (_%g192197192253%_
                (lambda (_%g192199192215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192199192215%_))
                      (let ((_%e192204192217%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192199192215%_))))
                        (let ((_%hd192203192220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192204192217%_)))
                              (_%tl192202192222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192204192217%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192202192222%_))
                              (let ((_%e192207192225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192202192222%_))))
                                (let ((_%hd192206192228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192207192225%_)))
                                      (_%tl192205192230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192207192225%_))))
                                  ((lambda (_%L192233%_ _%L192234%_)
                                     (let* ((_%ctx192247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192234%_)))
                                            (_%code192249%_
                                             (##structure-ref
                                              _%ctx192247%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp192865
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self192195%_
                                                   _%code192249%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp192865
                                          gx#current-expander-context
                                          _%ctx192247%_))))
                                   _%tl192205192230%_
                                   _%hd192206192228%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192198192212%_ _%g192199192215%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192198192212%_ _%g192199192215%_))))))
          (declare (not safe))
          (_%g192197192253%_ _%stx192196%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192000%_ _%stx192001%_)
        (letrec ((_%generate-e192003%_
                  (lambda (_%id192180%_)
                    (let* ((_%sym192182%_
                            (if (let ((__tmp192866
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp192866))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192180%_))
                                '#f))
                           (_%$e192184%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192182%_))))
                      (if _%$e192184%_
                          ((lambda (_%klass192187%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192182%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192182%_
                                                     (cons (let ((__method192832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192187%_ 'typedecl))))
                     (if __method192832
                         (__method192832 _%klass192187%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192187%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192182%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192182%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192184%_)
                          (let ((_%$e192189%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192182%_))))
                            (if _%$e192189%_
                                ((lambda (_%type192192%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192182%_
                                      '" "
                                      _%type192192%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192192%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192182%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192182%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192192%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192182%_
                                                   (cons (let ((__method192833
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192192%_ 'typedecl))))
                   (if __method192833
                       (__method192833 _%type192192%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192192%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192189%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx192444192445%_ _%stx192001%_)
                 (_%g192006192044%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192444192445%_)))))
            (let ((_%__kont192446192447%_
                   (lambda (_%L192162%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192003%_ _%L192162%_))))
                  (_%__kont192448192449%_
                   (lambda (_%L192097%_)
                     (let ((_%types192123%_
                            (map _%generate-e192003%_
                                 (let ((__tmp192867
                                        (lambda (_%g192115192118%_
                                                 _%g192116192120%_)
                                          (cons _%g192115192118%_
                                                _%g192116192120%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp192867 '() _%L192097%_)))))
                       (cons 'begin _%types192123%_)))))
              (let ((_%__match192499192500%_
                     (lambda (_%e192024192049%_
                              _%hd192023192052%_
                              _%tl192022192054%_
                              _%e192027192057%_
                              _%hd192026192060%_
                              _%tl192025192062%_
                              _%__splice192450192451%_
                              _%target192028192065%_
                              _%tl192030192067%_)
                       (letrec ((_%loop192031192070%_
                                 (lambda (_%hd192029192073%_
                                          _%id192035192075%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192029192073%_))
                                       (let ((_%e192032192078%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192029192073%_))))
                                         (let ((_%lp-tl192034192083%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192032192078%_)))
                                               (_%lp-hd192033192081%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192032192078%_))))
                                           (let ((__tmp192868
                                                  (cons _%lp-hd192033192081%_
                                                        _%id192035192075%_)))
                                             (declare (not safe))
                                             (_%loop192031192070%_
                                              _%lp-tl192034192083%_
                                              __tmp192868))))
                                       (let ((_%id192036192086%_
                                              (reverse _%id192035192075%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192025192062%_))
                                             (let ((_%e192039192089%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192025192062%_))))
                                               (let ((_%tl192037192094%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192039192089%_)))
                                                     (_%hd192038192092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192039192089%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192037192094%_))
                                                     (_%__kont192448192449%_
                                                      _%id192036192086%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192006192044%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192006192044%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192031192070%_
                            _%target192028192065%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192444192445%_))
                    (let ((_%e192011192130%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192444192445%_))))
                      (let ((_%tl192009192135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192011192130%_)))
                            (_%hd192010192133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192011192130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192009192135%_))
                            (let ((_%e192014192138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192009192135%_))))
                              (let ((_%tl192012192143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192014192138%_)))
                                    (_%hd192013192141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192014192138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192013192141%_))
                                    (let ((_%e192017192146%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192013192141%_))))
                                      (let ((_%tl192015192151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192017192146%_)))
                                            (_%hd192016192149%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192017192146%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192015192151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192012192143%_))
                                                (let ((_%e192020192154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192012192143%_))))
                                                  (let ((_%tl192018192159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192020192154%_)))
                                                        (_%hd192019192157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192020192154%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192018192159%_))
                                                        (_%__kont192446192447%_
                                                         _%hd192016192149%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192013192141%_))
                                                            (let ((_%__splice192450192451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192013192141%_ '0))))
                      (let ((_%tl192030192067%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192450192451%_ '1)))
                            (_%target192028192065%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192450192451%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192030192067%_))
                            (_%__match192499192500%_
                             _%e192011192130%_
                             _%hd192010192133%_
                             _%tl192009192135%_
                             _%e192014192138%_
                             _%hd192013192141%_
                             _%tl192012192143%_
                             _%__splice192450192451%_
                             _%target192028192065%_
                             _%tl192030192067%_)
                            (let ()
                              (declare (not safe))
                              (_%g192006192044%_)))))
                    (let () (declare (not safe)) (_%g192006192044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192013192141%_))
                                                    (let ((_%__splice192450192451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192013192141%_
                                                              '0))))
                                                      (let ((_%tl192030192067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192450192451%_ '1)))
                    (_%target192028192065%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192450192451%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192030192067%_))
                    (_%__match192499192500%_
                     _%e192011192130%_
                     _%hd192010192133%_
                     _%tl192009192135%_
                     _%e192014192138%_
                     _%hd192013192141%_
                     _%tl192012192143%_
                     _%__splice192450192451%_
                     _%target192028192065%_
                     _%tl192030192067%_)
                    (let () (declare (not safe)) (_%g192006192044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192006192044%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192013192141%_))
                                                (let ((_%__splice192450192451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192013192141%_
                                                          '0))))
                                                  (let ((_%tl192030192067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192450192451%_
                                                            '1)))
                                                        (_%target192028192065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192450192451%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192030192067%_))
                                                        (_%__match192499192500%_
                                                         _%e192011192130%_
                                                         _%hd192010192133%_
                                                         _%tl192009192135%_
                                                         _%e192014192138%_
                                                         _%hd192013192141%_
                                                         _%tl192012192143%_
                                                         _%__splice192450192451%_
                                                         _%target192028192065%_
                                                         _%tl192030192067%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192006192044%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192006192044%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192013192141%_))
                                        (let ((_%__splice192450192451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192013192141%_
                                                  '0))))
                                          (let ((_%tl192030192067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192450192451%_
                                                    '1)))
                                                (_%target192028192065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192450192451%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192030192067%_))
                                                (_%__match192499192500%_
                                                 _%e192011192130%_
                                                 _%hd192010192133%_
                                                 _%tl192009192135%_
                                                 _%e192014192138%_
                                                 _%hd192013192141%_
                                                 _%tl192012192143%_
                                                 _%__splice192450192451%_
                                                 _%target192028192065%_
                                                 _%tl192030192067%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192006192044%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192006192044%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192006192044%_)))))
                    (let () (declare (not safe)) (_%g192006192044%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self191553%_ _%stx191554%_)
        (let* ((_%__stx192502192503%_ _%stx191554%_)
               (_%g191558191660%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192502192503%_)))))
          (let ((_%__kont192504192505%_
                 (lambda (_%L191950%_
                          _%L191951%_
                          _%L191952%_
                          _%L191953%_
                          _%L191954%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191953%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191952%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191951%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L191950%_))
                                                 '())))))))
                (_%__kont192506192507%_
                 (lambda (_%L191776%_ _%L191777%_ _%L191778%_ _%L191779%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191778%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191777%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191776%_))
                                           (cons '#f '())))))))
                (_%__kont192508192509%_ (lambda () '(begin))))
            (let ((_%__match192637192638%_
                   (lambda (_%e191567191822%_
                            _%hd191566191825%_
                            _%tl191565191827%_
                            _%e191570191830%_
                            _%hd191569191833%_
                            _%tl191568191835%_
                            _%e191573191838%_
                            _%hd191572191841%_
                            _%tl191571191843%_
                            _%e191576191846%_
                            _%hd191575191849%_
                            _%tl191574191851%_
                            _%e191579191854%_
                            _%hd191578191857%_
                            _%tl191577191859%_
                            _%e191582191862%_
                            _%hd191581191865%_
                            _%tl191580191867%_
                            _%e191585191870%_
                            _%hd191584191873%_
                            _%tl191583191875%_
                            _%e191588191878%_
                            _%hd191587191881%_
                            _%tl191586191883%_
                            _%e191591191886%_
                            _%hd191590191889%_
                            _%tl191589191891%_
                            _%e191594191894%_
                            _%hd191593191897%_
                            _%tl191592191899%_
                            _%e191597191902%_
                            _%hd191596191905%_
                            _%tl191595191907%_
                            _%e191600191910%_
                            _%hd191599191913%_
                            _%tl191598191915%_
                            _%e191603191918%_
                            _%hd191602191921%_
                            _%tl191601191923%_
                            _%e191606191926%_
                            _%hd191605191929%_
                            _%tl191604191931%_
                            _%e191609191934%_
                            _%hd191608191937%_
                            _%tl191607191939%_
                            _%e191612191942%_
                            _%hd191611191945%_
                            _%tl191610191947%_)
                     (let ((_%L191950%_ _%hd191611191945%_)
                           (_%L191951%_ _%hd191602191921%_)
                           (_%L191952%_ _%hd191593191897%_)
                           (_%L191953%_ _%hd191584191873%_)
                           (_%L191954%_ _%hd191575191849%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L191954%_
                              'bind-method!))
                           (_%__kont192504192505%_
                            _%L191950%_
                            _%L191951%_
                            _%L191952%_
                            _%L191953%_
                            _%L191954%_)
                           (_%__kont192508192509%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192502192503%_))
                  (let ((_%e191567191822%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192502192503%_))))
                    (let ((_%tl191565191827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191567191822%_)))
                          (_%hd191566191825%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191567191822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191565191827%_))
                          (let ((_%e191570191830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191565191827%_))))
                            (let ((_%tl191568191835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191570191830%_)))
                                  (_%hd191569191833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191570191830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191569191833%_))
                                  (let ((_%e191573191838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191569191833%_))))
                                    (let ((_%tl191571191843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191573191838%_)))
                                          (_%hd191572191841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191573191838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191572191841%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191572191841%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191571191843%_))
                                                  (let ((_%e191576191846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191571191843%_))))
                                                    (let ((_%tl191574191851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191576191846%_)))
                                                          (_%hd191575191849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191576191846%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191574191851%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191568191835%_))
                      (let ((_%e191579191854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191568191835%_))))
                        (let ((_%tl191577191859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191579191854%_)))
                              (_%hd191578191857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191579191854%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191578191857%_))
                              (let ((_%e191582191862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191578191857%_))))
                                (let ((_%tl191580191867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191582191862%_)))
                                      (_%hd191581191865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191582191862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191581191865%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191581191865%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191580191867%_))
                                              (let ((_%e191585191870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191580191867%_))))
                                                (let ((_%tl191583191875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191585191870%_)))
                                                      (_%hd191584191873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191585191870%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191583191875%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191577191859%_))
                                                          (let ((_%e191588191878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191577191859%_))))
                    (let ((_%tl191586191883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191588191878%_)))
                          (_%hd191587191881%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191588191878%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191587191881%_))
                          (let ((_%e191591191886%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191587191881%_))))
                            (let ((_%tl191589191891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191591191886%_)))
                                  (_%hd191590191889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191591191886%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191590191889%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd191590191889%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191589191891%_))
                                          (let ((_%e191594191894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191589191891%_))))
                                            (let ((_%tl191592191899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191594191894%_)))
                                                  (_%hd191593191897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191594191894%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191592191899%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191586191883%_))
                                                      (let ((_%e191597191902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191586191883%_))))
                (let ((_%tl191595191907%_
                       (let () (declare (not safe)) (##cdr _%e191597191902%_)))
                      (_%hd191596191905%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191597191902%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191596191905%_))
                      (let ((_%e191600191910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191596191905%_))))
                        (let ((_%tl191598191915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191600191910%_)))
                              (_%hd191599191913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191600191910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191599191913%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191599191913%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191598191915%_))
                                      (let ((_%e191603191918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191598191915%_))))
                                        (let ((_%tl191601191923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191603191918%_)))
                                              (_%hd191602191921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191603191918%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191601191923%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191595191907%_))
                                                  (let ((_%e191606191926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191595191907%_))))
                                                    (let ((_%tl191604191931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191606191926%_)))
                                                          (_%hd191605191929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191606191926%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191605191929%_))
                                                          (let ((_%e191609191934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191605191929%_))))
                    (let ((_%tl191607191939%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191609191934%_)))
                          (_%hd191608191937%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191609191934%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191608191937%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd191608191937%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191607191939%_))
                                  (let ((_%e191612191942%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191607191939%_))))
                                    (let ((_%tl191610191947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191612191942%_)))
                                          (_%hd191611191945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191612191942%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191610191947%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191604191931%_))
                                              (_%__match192637192638%_
                                               _%e191567191822%_
                                               _%hd191566191825%_
                                               _%tl191565191827%_
                                               _%e191570191830%_
                                               _%hd191569191833%_
                                               _%tl191568191835%_
                                               _%e191573191838%_
                                               _%hd191572191841%_
                                               _%tl191571191843%_
                                               _%e191576191846%_
                                               _%hd191575191849%_
                                               _%tl191574191851%_
                                               _%e191579191854%_
                                               _%hd191578191857%_
                                               _%tl191577191859%_
                                               _%e191582191862%_
                                               _%hd191581191865%_
                                               _%tl191580191867%_
                                               _%e191585191870%_
                                               _%hd191584191873%_
                                               _%tl191583191875%_
                                               _%e191588191878%_
                                               _%hd191587191881%_
                                               _%tl191586191883%_
                                               _%e191591191886%_
                                               _%hd191590191889%_
                                               _%tl191589191891%_
                                               _%e191594191894%_
                                               _%hd191593191897%_
                                               _%tl191592191899%_
                                               _%e191597191902%_
                                               _%hd191596191905%_
                                               _%tl191595191907%_
                                               _%e191600191910%_
                                               _%hd191599191913%_
                                               _%tl191598191915%_
                                               _%e191603191918%_
                                               _%hd191602191921%_
                                               _%tl191601191923%_
                                               _%e191606191926%_
                                               _%hd191605191929%_
                                               _%tl191604191931%_
                                               _%e191609191934%_
                                               _%hd191608191937%_
                                               _%tl191607191939%_
                                               _%e191612191942%_
                                               _%hd191611191945%_
                                               _%tl191610191947%_)
                                              (_%__kont192508192509%_))
                                          (_%__kont192508192509%_))))
                                  (_%__kont192508192509%_))
                              (_%__kont192508192509%_))
                          (_%__kont192508192509%_))))
                  (_%__kont192508192509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191595191907%_))
                                                      (if (let ((__tmp192869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp192869 'bind-method!))
                  (let ((_%L191776%_ _%hd191602191921%_)
                        (_%L191777%_ _%hd191593191897%_)
                        (_%L191778%_ _%hd191584191873%_)
                        (_%L191779%_ _%hd191575191849%_))
                    (_%__kont192506192507%_
                     _%L191776%_
                     _%L191777%_
                     _%L191778%_
                     _%L191779%_))
                  (_%__kont192508192509%_))
              (_%__kont192508192509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192508192509%_))))
                                      (_%__kont192508192509%_))
                                  (_%__kont192508192509%_))
                              (_%__kont192508192509%_))))
                      (_%__kont192508192509%_))))
              (_%__kont192508192509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192508192509%_))))
                                          (_%__kont192508192509%_))
                                      (_%__kont192508192509%_))
                                  (_%__kont192508192509%_))))
                          (_%__kont192508192509%_))))
                  (_%__kont192508192509%_))
              (_%__kont192508192509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192508192509%_))
                                          (_%__kont192508192509%_))
                                      (_%__kont192508192509%_))))
                              (_%__kont192508192509%_))))
                      (_%__kont192508192509%_))
                  (_%__kont192508192509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192508192509%_))
                                              (_%__kont192508192509%_))
                                          (_%__kont192508192509%_))))
                                  (_%__kont192508192509%_))))
                          (_%__kont192508192509%_))))
                  (_%__kont192508192509%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191377%_ _%stx191378%_)
        (let* ((_%__stx192746192747%_ _%stx191378%_)
               (_%g191381191421%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192746192747%_)))))
          (let ((_%__kont192748192749%_
                 (lambda (_%L191527%_ _%L191528%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191528%_))
                               (cons _%L191527%_ '())))))
                (_%__kont192750192751%_
                 (lambda (_%L191450%_ _%L191451%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx192746192747%_))
                (let ((_%e191387191471%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx192746192747%_))))
                  (let ((_%tl191385191476%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191387191471%_)))
                        (_%hd191386191474%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191387191471%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191385191476%_))
                        (let ((_%e191390191479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191385191476%_))))
                          (let ((_%tl191388191484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191390191479%_)))
                                (_%hd191389191482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191390191479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191389191482%_))
                                (let ((_%e191393191487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191389191482%_))))
                                  (let ((_%tl191391191492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191393191487%_)))
                                        (_%hd191392191490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191393191487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191392191490%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191392191490%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191391191492%_))
                                                (let ((_%e191396191495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191391191492%_))))
                                                  (let ((_%tl191394191500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191396191495%_)))
                                                        (_%hd191395191498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191396191495%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191394191500%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191388191484%_))
                                                            (let ((_%e191399191503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191388191484%_))))
                      (let ((_%tl191397191508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191399191503%_)))
                            (_%hd191398191506%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191399191503%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191398191506%_))
                            (let ((_%e191402191511%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191398191506%_))))
                              (let ((_%tl191400191516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191402191511%_)))
                                    (_%hd191401191514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191402191511%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191401191514%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191401191514%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191400191516%_))
                                            (let ((_%e191405191519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191400191516%_))))
                                              (let ((_%tl191403191524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191405191519%_)))
                                                    (_%hd191404191522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191405191519%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191403191524%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191397191508%_))
                                                        (_%__kont192748192749%_
                                                         _%hd191404191522%_
                                                         _%hd191395191498%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191381191421%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191397191508%_))
                                                        (_%__kont192750192751%_
                                                         _%hd191398191506%_
                                                         _%hd191389191482%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191381191421%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191397191508%_))
                                                (_%__kont192750192751%_
                                                 _%hd191398191506%_
                                                 _%hd191389191482%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191381191421%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191397191508%_))
                                            (_%__kont192750192751%_
                                             _%hd191398191506%_
                                             _%hd191389191482%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191381191421%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191397191508%_))
                                        (_%__kont192750192751%_
                                         _%hd191398191506%_
                                         _%hd191389191482%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191381191421%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191397191508%_))
                                (_%__kont192750192751%_
                                 _%hd191398191506%_
                                 _%hd191389191482%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191381191421%_))))))
                    (let () (declare (not safe)) (_%g191381191421%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191388191484%_))
                    (let ((_%e191416191442%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191388191484%_))))
                      (let ((_%tl191414191447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191416191442%_)))
                            (_%hd191415191445%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191416191442%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191414191447%_))
                            (_%__kont192750192751%_
                             _%hd191415191445%_
                             _%hd191389191482%_)
                            (let ()
                              (declare (not safe))
                              (_%g191381191421%_)))))
                    (let () (declare (not safe)) (_%g191381191421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191388191484%_))
                                                    (let ((_%e191416191442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191388191484%_))))
                                                      (let ((_%tl191414191447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191416191442%_)))
                    (_%hd191415191445%_
                     (let () (declare (not safe)) (##car _%e191416191442%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191414191447%_))
                    (_%__kont192750192751%_
                     _%hd191415191445%_
                     _%hd191389191482%_)
                    (let () (declare (not safe)) (_%g191381191421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191381191421%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191388191484%_))
                                                (let ((_%e191416191442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191388191484%_))))
                                                  (let ((_%tl191414191447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191416191442%_)))
                                                        (_%hd191415191445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191416191442%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191414191447%_))
                                                        (_%__kont192750192751%_
                                                         _%hd191415191445%_
                                                         _%hd191389191482%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191381191421%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191381191421%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191388191484%_))
                                            (let ((_%e191416191442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191388191484%_))))
                                              (let ((_%tl191414191447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191416191442%_)))
                                                    (_%hd191415191445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191416191442%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191414191447%_))
                                                    (_%__kont192750192751%_
                                                     _%hd191415191445%_
                                                     _%hd191389191482%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191381191421%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191381191421%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191388191484%_))
                                    (let ((_%e191416191442%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191388191484%_))))
                                      (let ((_%tl191414191447%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191416191442%_)))
                                            (_%hd191415191445%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191416191442%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191414191447%_))
                                            (_%__kont192750192751%_
                                             _%hd191415191445%_
                                             _%hd191389191482%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191381191421%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191381191421%_))))))
                        (let () (declare (not safe)) (_%g191381191421%_)))))
                (let () (declare (not safe)) (_%g191381191421%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191364%_)
        (let ()
          (let ((_%self191367%_ _%self191364%_))
            (let ()
              (cons '@alias
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191367%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191137%_)
        (let ()
          (let ((_%self191140%_ _%self191137%_))
            (let ()
              (let* ((_%self191149191165%_ _%self191140%_)
                     (_%E191151191169%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self191149191165%_
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
                     (_%K191152191184%_
                      (lambda (_%methods191172%_
                               _%metaclass191173%_
                               _%system?191174%_
                               _%final?191175%_
                               _%struct?191176%_
                               _%constructor191177%_
                               _%fields191178%_
                               _%slots191179%_
                               _%precendence-list191180%_
                               _%super191181%_
                               _%id191182%_)
                        (cons '@class
                              (cons _%id191182%_
                                    (cons _%super191181%_
                                          (cons _%precendence-list191180%_
                                                (cons _%slots191179%_
                                                      (cons _%fields191178%_
                                                            (cons _%constructor191177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%struct?191176%_
                                (cons _%final?191175%_
                                      (cons _%system?191174%_
                                            (cons _%metaclass191173%_
                                                  (cons (if _%methods191172%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (hash->list
                                                               _%methods191172%_))
                                                            '#f)
                                                        '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (if '#t
                    (let* ((_%e191153191187%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '1
                               '#f
                               '#f)))
                           (_%id191190%_ _%e191153191187%_)
                           (_%e191154191192%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '2
                               '#f
                               '#f)))
                           (_%super191195%_ _%e191154191192%_)
                           (_%e191155191197%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '3
                               '#f
                               '#f)))
                           (_%precendence-list191200%_ _%e191155191197%_)
                           (_%e191156191202%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '4
                               '#f
                               '#f)))
                           (_%slots191205%_ _%e191156191202%_)
                           (_%e191157191207%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '5
                               '#f
                               '#f)))
                           (_%fields191210%_ _%e191157191207%_)
                           (_%e191158191212%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '6
                               '#f
                               '#f)))
                           (_%constructor191215%_ _%e191158191212%_)
                           (_%e191159191217%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '7
                               '#f
                               '#f)))
                           (_%struct?191220%_ _%e191159191217%_)
                           (_%e191160191222%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '8
                               '#f
                               '#f)))
                           (_%final?191225%_ _%e191160191222%_)
                           (_%e191161191227%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '9
                               '#f
                               '#f)))
                           (_%system?191230%_ _%e191161191227%_)
                           (_%e191162191232%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '10
                               '#f
                               '#f)))
                           (_%metaclass191235%_ _%e191162191232%_)
                           (_%e191163191237%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191149191165%_
                               '11
                               '#f
                               '#f)))
                           (_%methods191240%_ _%e191163191237%_))
                      (declare (not safe))
                      (_%K191152191184%_
                       _%methods191240%_
                       _%metaclass191235%_
                       _%system?191230%_
                       _%final?191225%_
                       _%struct?191220%_
                       _%constructor191215%_
                       _%fields191210%_
                       _%slots191205%_
                       _%precendence-list191200%_
                       _%super191195%_
                       _%id191190%_))
                    (let () (declare (not safe)) (_%E191151191169%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191002%_)
        (let ()
          (let ((_%self191005%_ _%self191002%_))
            (let ()
              (cons '@predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191005%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self190867%_)
        (let ()
          (let ((_%self190870%_ _%self190867%_))
            (let ()
              (cons '@constructor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190870%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self190732%_)
        (let ()
          (let ((_%self190735%_ _%self190732%_))
            (let ()
              (cons '@accessor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190735%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190735%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190735%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self190597%_)
        (let ()
          (let ((_%self190600%_ _%self190597%_))
            (let ()
              (cons '@mutator
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190600%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190600%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190600%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190462%_)
        (let ()
          (let ((_%self190465%_ _%self190462%_))
            (let ()
              (cons '@interface
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190465%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190465%_
                                   '2
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self190275%_)
        (let ()
          (let ((_%self190278%_ _%self190275%_))
            (let ()
              (let* ((_%self190287190296%_ _%self190278%_)
                     (_%E190289190300%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self190287190296%_
                                 '((!lambda _ signature arity dispatch))))
                        '#!void))
                     (_%K190290190319%_
                      (lambda (_%dispatch190303%_
                               _%arity190304%_
                               _%signature190305%_)
                        (if _%signature190305%_
                            (let ((_%signature190307%_ _%signature190305%_))
                              (cons '@lambda
                                    (cons _%arity190304%_
                                          (cons _%dispatch190303%_
                                                (cons 'signature:
                                                      (cons (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%signature190307%_
                                   '1
                                   '#f
                                   '#f))
                                (cons 'effect:
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%signature190307%_
                                               '2
                                               '#f
                                               '#f))
                                            (cons 'arguments:
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%signature190307%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (cons 'unchecked:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190307%_
                               '4
                               '#f
                               '#f))
                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (cons '@lambda
                                  (cons _%arity190304%_
                                        (cons _%dispatch190303%_ '())))))))
                (if '#t
                    (let* ((_%e190291190322%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190287190296%_
                               '1
                               '#f
                               '#f)))
                           (_%e190292190325%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190287190296%_
                               '2
                               '#f
                               '#f)))
                           (_%signature190328%_ _%e190292190325%_)
                           (_%e190293190330%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190287190296%_
                               '3
                               '#f
                               '#f)))
                           (_%arity190333%_ _%e190293190330%_)
                           (_%e190294190335%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190287190296%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch190338%_ _%e190294190335%_))
                      (declare (not safe))
                      (_%K190290190319%_
                       _%dispatch190338%_
                       _%arity190333%_
                       _%signature190328%_))
                    (let () (declare (not safe)) (_%E190289190300%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190136%_)
        (let ()
          (let ((_%self190139%_ _%self190136%_))
            (let ()
              (letrec ((_%clause-e190149%_
                        (lambda (_%clause190151%_)
                          (cdr (let ((__method192834
                                      (let ()
                                        (declare (not safe))
                                        (__method-ref
                                         _%clause190151%_
                                         'typedecl))))
                                 (if __method192834
                                     (__method192834 _%clause190151%_)
                                     (let ()
                                       (declare (not safe))
                                       (error '"Missing method"
                                              _%clause190151%_
                                              'typedecl))))))))
                (cons '@case-lambda
                      (map _%clause-e190149%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self190139%_
                              '3
                              '#f
                              '#f))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self190001%_)
        (let ()
          (let ((_%self190004%_ _%self190001%_))
            (let ()
              (cons '@kw-lambda
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190004%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190004%_
                                   '4
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self189866%_)
        (let ()
          (let ((_%self189869%_ _%self189866%_))
            (let ()
              (cons '@kw-lambda-dispatch
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189869%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189869%_
                                   '4
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self189731%_)
        (let ()
          (let ((_%self189734%_ _%self189731%_))
            (let ()
              (cons '@primitive-predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189734%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
