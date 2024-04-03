(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712121905)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp192941
                   (let ((__obj192935
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj192935)
                     __obj192935)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp192941)))))
    (define gxc#optimize!
      (lambda (_%ctx192544%_)
        (let ((__tmp192944
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx192544%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx192544%_))
                 (let ((__tmp192946
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp192945
                        (##structure-ref
                         _%ctx192544%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp192946 __tmp192945 '#t))
                 (let ((_%code192547%_
                        (let ((__tmp192947
                               (##structure-ref
                                _%ctx192544%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp192947))))
                   (##structure-set!
                    _%ctx192544%_
                    _%code192547%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp192943 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp192942 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192944
           gxc#current-compile-mutators
           __tmp192943
           gxc#current-compile-local-type
           __tmp192942))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192530%_)
        (letrec ((_%load-it!192532%_
                  (lambda (_%id192542%_)
                    (if (let ((__tmp192948
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp192948 _%id192542%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id192542%_))
                          (let ((__tmp192949
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp192949 _%id192542%_ '#t)))))))
          (let* ((_%modid192534%_
                  (##structure-ref
                   _%ctx192530%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192536%_ (symbol->string _%modid192534%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192536%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192536%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192532%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192532%_
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
      (lambda (_%ctx192467%_)
        (letrec* ((_%deps192469%_
                   (let* ((_%imports192520%_
                           (##structure-ref
                            _%ctx192467%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192522%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192467%_))))
                     (if _%$e192522%_
                         ((lambda (_%g192524192526%_)
                            (cons _%g192524192526%_ _%imports192520%_))
                          _%$e192522%_)
                         (let () _%imports192520%_)))))
          (let _%lp192471%_ ((_%rest192473%_ _%deps192469%_))
            (let* ((_%rest192474192482%_ _%rest192473%_)
                   (_%else192476192490%_ (lambda () '#!void))
                   (_%K192478192508%_
                    (lambda (_%rest192493%_ _%hd192494%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192494%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp192951
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp192950
                                       (##structure-ref
                                        _%hd192494%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp192951 __tmp192950))
                                '#!void
                                (begin
                                  (let ((_%$e192497%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192494%_))))
                                    (if _%$e192497%_
                                        ((lambda (_%pre192500%_)
                                           (let ((__tmp192952
                                                  (cons _%pre192500%_
                                                        (##structure-ref
                                                         _%hd192494%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192471%_ __tmp192952)))
                                         _%$e192497%_)
                                        (let ()
                                          (let ((__tmp192953
                                                 (##structure-ref
                                                  _%hd192494%_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (_%lp192471%_ __tmp192953)))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192494%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192471%_ _%rest192493%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192494%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp192955
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp192954
                                           (##structure-ref
                                            _%hd192494%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp192955 __tmp192954))
                                    '#!void
                                    (begin
                                      (let ((__tmp192956
                                             (##structure-ref
                                              _%hd192494%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192471%_ __tmp192956))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192494%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192471%_ _%rest192493%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192494%_
                                     'gx#module-import::t))
                                  (let ()
                                    (let ((__tmp192957
                                           (cons (##direct-structure-ref
                                                  _%hd192494%_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _%rest192493%_)))
                                      (declare (not safe))
                                      (_%lp192471%_ __tmp192957)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192494%_
                                         'gx#module-export::t))
                                      (let ()
                                        (let ((__tmp192958
                                               (cons (##direct-structure-ref
                                                      _%hd192494%_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _%rest192493%_)))
                                          (declare (not safe))
                                          (_%lp192471%_ __tmp192958)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192494%_
                                             'gx#import-set::t))
                                          (let ()
                                            (let ((__tmp192959
                                                   (cons (##direct-structure-ref
                                                          _%hd192494%_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _%rest192493%_)))
                                              (declare (not safe))
                                              (_%lp192471%_ __tmp192959)))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"Unexpected module import"
                                                     _%hd192494%_)))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192474192482%_))
                  (let ((_%hd192479192511%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192474192482%_)))
                        (_%tl192480192513%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192474192482%_))))
                    (let* ((_%hd192516%_ _%hd192479192511%_)
                           (_%rest192518%_ _%tl192480192513%_))
                      (declare (not safe))
                      (_%K192478192508%_ _%rest192518%_ _%hd192516%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192447%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192447%_
                    'gx#module-context::t))
                 (let ((__tmp192960
                        (##structure-ref
                         _%ctx192447%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp192960)))
            '#!void
            (let* ((_%ht192449%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192451%_
                    (##structure-ref
                     _%ctx192447%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192453%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192449%_ _%id192451%_))))
              (let ((_%$e192456%_ _%mod192453%_))
                (if _%$e192456%_
                    _%$e192456%_
                    (let* ((_%mod192459%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _%ctx192447%_)))
                           (_%val192464%_
                            (let ((_%$e192461%_ _%mod192459%_))
                              (if _%$e192461%_ _%$e192461%_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _%ht192449%_ _%id192451%_ _%val192464%_))
                      _%val192464%_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192445%_)
        (if (##structure-ref _%ctx192445%_ '1 gx#expander-context::t '#f)
            (let ((__tmp192961
                   (##structure-ref
                    _%ctx192445%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp192961))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192422%_)
        (letrec ((_%catch-e192424%_
                  (lambda (_%exn192443%_)
                    (display-exception _%exn192443%_)
                    (let ()
                      (declare (not safe))
                      (displayln
                       '"*** WARNING Failed to load ssxi module for "
                       _%id192422%_))
                    '#f))
                 (_%import-e192425%_
                  (lambda ()
                    (let* ((_%str-id192428%_
                            (let ((__tmp192962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192422%_))))
                              (declare (not safe))
                              (##string-append __tmp192962 '".ssxi")))
                           (_%artefact-path192436%_
                            (let ((_%odir192429192431%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192429192431%_
                                  (let ((_%odir192434%_ _%odir192429192431%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192428%_
                                        '".ss"))
                                     _%odir192434%_))
                                  '#f)))
                           (_%library-path192438%_
                            (let ((__tmp192963
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192428%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp192963)))
                           (_%ssxi-path192440%_
                            (if (and _%artefact-path192436%_
                                     (file-exists? _%artefact-path192436%_))
                                _%artefact-path192436%_
                                _%library-path192438%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192440%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192440%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192424%_ _%import-e192425%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192413%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192413%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192413%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192413%_))
        (let* ((_%stx192415%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192413%_)))
               (_%stx192417%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192415%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192417%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192417%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192417%_))
          (let ((_%stx192420%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192417%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192420%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp192965 (list gxc#::generate-runtime-empty::t))
            (__tmp192964 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp192965
         '()
         __tmp192964
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192410%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192410%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp192966
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
        (__make-promise __tmp192966)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192402%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192405%_
                (let ((__obj192937
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj192937))
               (__tmp192967
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192405%_ _%stx192402%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192967
           gxc#current-compile-method
           _%self192405%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192362%_ _%stx192363%_)
        (let* ((_%g192365192375%_
                (lambda (_%g192366192372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192366192372%_))))
               (_%g192364192399%_
                (lambda (_%g192366192378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192366192378%_))
                      (let ((_%e192370192380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192366192378%_))))
                        (let ((_%hd192369192383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192370192380%_)))
                              (_%tl192368192385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192370192380%_))))
                          ((lambda (_%L192388%_)
                             (let ((__tmp192970
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192362%_
                                         _%stx192363%_))))
                                   (__tmp192968
                                    (let ((__tmp192969
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp192969 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp192970
                                gx#current-expander-phi
                                __tmp192968)))
                           _%tl192368192385%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192365192375%_ _%g192366192378%_))))))
          (declare (not safe))
          (_%g192364192399%_ _%stx192363%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192301%_ _%stx192302%_)
        (let* ((_%g192304192318%_
                (lambda (_%g192305192315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192305192315%_))))
               (_%g192303192359%_
                (lambda (_%g192305192321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192305192321%_))
                      (let ((_%e192310192323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192305192321%_))))
                        (let ((_%hd192309192326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192310192323%_)))
                              (_%tl192308192328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192310192323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192308192328%_))
                              (let ((_%e192313192331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192308192328%_))))
                                (let ((_%hd192312192334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192313192331%_)))
                                      (_%tl192311192336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192313192331%_))))
                                  ((lambda (_%L192339%_ _%L192340%_)
                                     (let* ((_%ctx192353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192340%_)))
                                            (_%code192355%_
                                             (##structure-ref
                                              _%ctx192353%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp192971
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self192301%_
                                                   _%code192355%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp192971
                                          gx#current-expander-context
                                          _%ctx192353%_))))
                                   _%tl192311192336%_
                                   _%hd192312192334%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192304192318%_ _%g192305192321%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192304192318%_ _%g192305192321%_))))))
          (declare (not safe))
          (_%g192303192359%_ _%stx192302%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192106%_ _%stx192107%_)
        (letrec ((_%generate-e192109%_
                  (lambda (_%id192286%_)
                    (let* ((_%sym192288%_
                            (if (let ((__tmp192972
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp192972))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192286%_))
                                '#f))
                           (_%$e192290%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192288%_))))
                      (if _%$e192290%_
                          ((lambda (_%klass192293%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192288%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192288%_
                                                     (cons (let ((__method192938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192293%_ 'typedecl))))
                     (if __method192938
                         (__method192938 _%klass192293%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192293%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192288%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192288%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192290%_)
                          (let ((_%$e192295%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192288%_))))
                            (if _%$e192295%_
                                ((lambda (_%type192298%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192288%_
                                      '" "
                                      _%type192298%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192298%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192288%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192288%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192298%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192288%_
                                                   (cons (let ((__method192939
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192298%_ 'typedecl))))
                   (if __method192939
                       (__method192939 _%type192298%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192298%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192295%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx192550192551%_ _%stx192107%_)
                 (_%g192112192150%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192550192551%_)))))
            (let ((_%__kont192552192553%_
                   (lambda (_%L192268%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192109%_ _%L192268%_))))
                  (_%__kont192554192555%_
                   (lambda (_%L192203%_)
                     (let ((_%types192229%_
                            (map _%generate-e192109%_
                                 (let ((__tmp192973
                                        (lambda (_%g192221192224%_
                                                 _%g192222192226%_)
                                          (cons _%g192221192224%_
                                                _%g192222192226%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp192973 '() _%L192203%_)))))
                       (cons 'begin _%types192229%_)))))
              (let ((_%__match192605192606%_
                     (lambda (_%e192130192155%_
                              _%hd192129192158%_
                              _%tl192128192160%_
                              _%e192133192163%_
                              _%hd192132192166%_
                              _%tl192131192168%_
                              _%__splice192556192557%_
                              _%target192134192171%_
                              _%tl192136192173%_)
                       (letrec ((_%loop192137192176%_
                                 (lambda (_%hd192135192179%_
                                          _%id192141192181%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192135192179%_))
                                       (let ((_%e192138192184%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192135192179%_))))
                                         (let ((_%lp-tl192140192189%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192138192184%_)))
                                               (_%lp-hd192139192187%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192138192184%_))))
                                           (let ((__tmp192974
                                                  (cons _%lp-hd192139192187%_
                                                        _%id192141192181%_)))
                                             (declare (not safe))
                                             (_%loop192137192176%_
                                              _%lp-tl192140192189%_
                                              __tmp192974))))
                                       (let ((_%id192142192192%_
                                              (reverse _%id192141192181%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192131192168%_))
                                             (let ((_%e192145192195%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192131192168%_))))
                                               (let ((_%tl192143192200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192145192195%_)))
                                                     (_%hd192144192198%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192145192195%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192143192200%_))
                                                     (_%__kont192554192555%_
                                                      _%id192142192192%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192112192150%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192112192150%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192137192176%_
                            _%target192134192171%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192550192551%_))
                    (let ((_%e192117192236%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192550192551%_))))
                      (let ((_%tl192115192241%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192117192236%_)))
                            (_%hd192116192239%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192117192236%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192115192241%_))
                            (let ((_%e192120192244%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192115192241%_))))
                              (let ((_%tl192118192249%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192120192244%_)))
                                    (_%hd192119192247%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192120192244%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192119192247%_))
                                    (let ((_%e192123192252%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192119192247%_))))
                                      (let ((_%tl192121192257%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192123192252%_)))
                                            (_%hd192122192255%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192123192252%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192121192257%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192118192249%_))
                                                (let ((_%e192126192260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192118192249%_))))
                                                  (let ((_%tl192124192265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192126192260%_)))
                                                        (_%hd192125192263%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192126192260%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192124192265%_))
                                                        (_%__kont192552192553%_
                                                         _%hd192122192255%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192119192247%_))
                                                            (let ((_%__splice192556192557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192119192247%_ '0))))
                      (let ((_%tl192136192173%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192556192557%_ '1)))
                            (_%target192134192171%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192556192557%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192136192173%_))
                            (_%__match192605192606%_
                             _%e192117192236%_
                             _%hd192116192239%_
                             _%tl192115192241%_
                             _%e192120192244%_
                             _%hd192119192247%_
                             _%tl192118192249%_
                             _%__splice192556192557%_
                             _%target192134192171%_
                             _%tl192136192173%_)
                            (let ()
                              (declare (not safe))
                              (_%g192112192150%_)))))
                    (let () (declare (not safe)) (_%g192112192150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192119192247%_))
                                                    (let ((_%__splice192556192557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192119192247%_
                                                              '0))))
                                                      (let ((_%tl192136192173%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192556192557%_ '1)))
                    (_%target192134192171%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192556192557%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192136192173%_))
                    (_%__match192605192606%_
                     _%e192117192236%_
                     _%hd192116192239%_
                     _%tl192115192241%_
                     _%e192120192244%_
                     _%hd192119192247%_
                     _%tl192118192249%_
                     _%__splice192556192557%_
                     _%target192134192171%_
                     _%tl192136192173%_)
                    (let () (declare (not safe)) (_%g192112192150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192112192150%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192119192247%_))
                                                (let ((_%__splice192556192557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192119192247%_
                                                          '0))))
                                                  (let ((_%tl192136192173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192556192557%_
                                                            '1)))
                                                        (_%target192134192171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192556192557%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192136192173%_))
                                                        (_%__match192605192606%_
                                                         _%e192117192236%_
                                                         _%hd192116192239%_
                                                         _%tl192115192241%_
                                                         _%e192120192244%_
                                                         _%hd192119192247%_
                                                         _%tl192118192249%_
                                                         _%__splice192556192557%_
                                                         _%target192134192171%_
                                                         _%tl192136192173%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192112192150%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192112192150%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192119192247%_))
                                        (let ((_%__splice192556192557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192119192247%_
                                                  '0))))
                                          (let ((_%tl192136192173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192556192557%_
                                                    '1)))
                                                (_%target192134192171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192556192557%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192136192173%_))
                                                (_%__match192605192606%_
                                                 _%e192117192236%_
                                                 _%hd192116192239%_
                                                 _%tl192115192241%_
                                                 _%e192120192244%_
                                                 _%hd192119192247%_
                                                 _%tl192118192249%_
                                                 _%__splice192556192557%_
                                                 _%target192134192171%_
                                                 _%tl192136192173%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192112192150%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192112192150%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192112192150%_)))))
                    (let () (declare (not safe)) (_%g192112192150%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self191659%_ _%stx191660%_)
        (let* ((_%__stx192608192609%_ _%stx191660%_)
               (_%g191664191766%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192608192609%_)))))
          (let ((_%__kont192610192611%_
                 (lambda (_%L192056%_
                          _%L192057%_
                          _%L192058%_
                          _%L192059%_
                          _%L192060%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192059%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192058%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192057%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192056%_))
                                                 '())))))))
                (_%__kont192612192613%_
                 (lambda (_%L191882%_ _%L191883%_ _%L191884%_ _%L191885%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191884%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191883%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191882%_))
                                           (cons '#f '())))))))
                (_%__kont192614192615%_ (lambda () '(begin))))
            (let ((_%__match192743192744%_
                   (lambda (_%e191673191928%_
                            _%hd191672191931%_
                            _%tl191671191933%_
                            _%e191676191936%_
                            _%hd191675191939%_
                            _%tl191674191941%_
                            _%e191679191944%_
                            _%hd191678191947%_
                            _%tl191677191949%_
                            _%e191682191952%_
                            _%hd191681191955%_
                            _%tl191680191957%_
                            _%e191685191960%_
                            _%hd191684191963%_
                            _%tl191683191965%_
                            _%e191688191968%_
                            _%hd191687191971%_
                            _%tl191686191973%_
                            _%e191691191976%_
                            _%hd191690191979%_
                            _%tl191689191981%_
                            _%e191694191984%_
                            _%hd191693191987%_
                            _%tl191692191989%_
                            _%e191697191992%_
                            _%hd191696191995%_
                            _%tl191695191997%_
                            _%e191700192000%_
                            _%hd191699192003%_
                            _%tl191698192005%_
                            _%e191703192008%_
                            _%hd191702192011%_
                            _%tl191701192013%_
                            _%e191706192016%_
                            _%hd191705192019%_
                            _%tl191704192021%_
                            _%e191709192024%_
                            _%hd191708192027%_
                            _%tl191707192029%_
                            _%e191712192032%_
                            _%hd191711192035%_
                            _%tl191710192037%_
                            _%e191715192040%_
                            _%hd191714192043%_
                            _%tl191713192045%_
                            _%e191718192048%_
                            _%hd191717192051%_
                            _%tl191716192053%_)
                     (let ((_%L192056%_ _%hd191717192051%_)
                           (_%L192057%_ _%hd191708192027%_)
                           (_%L192058%_ _%hd191699192003%_)
                           (_%L192059%_ _%hd191690191979%_)
                           (_%L192060%_ _%hd191681191955%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192060%_
                              'bind-method!))
                           (_%__kont192610192611%_
                            _%L192056%_
                            _%L192057%_
                            _%L192058%_
                            _%L192059%_
                            _%L192060%_)
                           (_%__kont192614192615%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192608192609%_))
                  (let ((_%e191673191928%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192608192609%_))))
                    (let ((_%tl191671191933%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191673191928%_)))
                          (_%hd191672191931%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191673191928%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191671191933%_))
                          (let ((_%e191676191936%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191671191933%_))))
                            (let ((_%tl191674191941%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191676191936%_)))
                                  (_%hd191675191939%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191676191936%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191675191939%_))
                                  (let ((_%e191679191944%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191675191939%_))))
                                    (let ((_%tl191677191949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191679191944%_)))
                                          (_%hd191678191947%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191679191944%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191678191947%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191678191947%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191677191949%_))
                                                  (let ((_%e191682191952%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191677191949%_))))
                                                    (let ((_%tl191680191957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191682191952%_)))
                                                          (_%hd191681191955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191682191952%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191680191957%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191674191941%_))
                      (let ((_%e191685191960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191674191941%_))))
                        (let ((_%tl191683191965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191685191960%_)))
                              (_%hd191684191963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191685191960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191684191963%_))
                              (let ((_%e191688191968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191684191963%_))))
                                (let ((_%tl191686191973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191688191968%_)))
                                      (_%hd191687191971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191688191968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191687191971%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191687191971%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191686191973%_))
                                              (let ((_%e191691191976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191686191973%_))))
                                                (let ((_%tl191689191981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191691191976%_)))
                                                      (_%hd191690191979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191691191976%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191689191981%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191683191965%_))
                                                          (let ((_%e191694191984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191683191965%_))))
                    (let ((_%tl191692191989%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191694191984%_)))
                          (_%hd191693191987%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191694191984%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191693191987%_))
                          (let ((_%e191697191992%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191693191987%_))))
                            (let ((_%tl191695191997%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191697191992%_)))
                                  (_%hd191696191995%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191697191992%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191696191995%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd191696191995%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191695191997%_))
                                          (let ((_%e191700192000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191695191997%_))))
                                            (let ((_%tl191698192005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191700192000%_)))
                                                  (_%hd191699192003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191700192000%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191698192005%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191692191989%_))
                                                      (let ((_%e191703192008%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191692191989%_))))
                (let ((_%tl191701192013%_
                       (let () (declare (not safe)) (##cdr _%e191703192008%_)))
                      (_%hd191702192011%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191703192008%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191702192011%_))
                      (let ((_%e191706192016%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191702192011%_))))
                        (let ((_%tl191704192021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191706192016%_)))
                              (_%hd191705192019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191706192016%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191705192019%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191705192019%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191704192021%_))
                                      (let ((_%e191709192024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191704192021%_))))
                                        (let ((_%tl191707192029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191709192024%_)))
                                              (_%hd191708192027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191709192024%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191707192029%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191701192013%_))
                                                  (let ((_%e191712192032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191701192013%_))))
                                                    (let ((_%tl191710192037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191712192032%_)))
                                                          (_%hd191711192035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191712192032%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191711192035%_))
                                                          (let ((_%e191715192040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191711192035%_))))
                    (let ((_%tl191713192045%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191715192040%_)))
                          (_%hd191714192043%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191715192040%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191714192043%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd191714192043%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191713192045%_))
                                  (let ((_%e191718192048%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191713192045%_))))
                                    (let ((_%tl191716192053%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191718192048%_)))
                                          (_%hd191717192051%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191718192048%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191716192053%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191710192037%_))
                                              (_%__match192743192744%_
                                               _%e191673191928%_
                                               _%hd191672191931%_
                                               _%tl191671191933%_
                                               _%e191676191936%_
                                               _%hd191675191939%_
                                               _%tl191674191941%_
                                               _%e191679191944%_
                                               _%hd191678191947%_
                                               _%tl191677191949%_
                                               _%e191682191952%_
                                               _%hd191681191955%_
                                               _%tl191680191957%_
                                               _%e191685191960%_
                                               _%hd191684191963%_
                                               _%tl191683191965%_
                                               _%e191688191968%_
                                               _%hd191687191971%_
                                               _%tl191686191973%_
                                               _%e191691191976%_
                                               _%hd191690191979%_
                                               _%tl191689191981%_
                                               _%e191694191984%_
                                               _%hd191693191987%_
                                               _%tl191692191989%_
                                               _%e191697191992%_
                                               _%hd191696191995%_
                                               _%tl191695191997%_
                                               _%e191700192000%_
                                               _%hd191699192003%_
                                               _%tl191698192005%_
                                               _%e191703192008%_
                                               _%hd191702192011%_
                                               _%tl191701192013%_
                                               _%e191706192016%_
                                               _%hd191705192019%_
                                               _%tl191704192021%_
                                               _%e191709192024%_
                                               _%hd191708192027%_
                                               _%tl191707192029%_
                                               _%e191712192032%_
                                               _%hd191711192035%_
                                               _%tl191710192037%_
                                               _%e191715192040%_
                                               _%hd191714192043%_
                                               _%tl191713192045%_
                                               _%e191718192048%_
                                               _%hd191717192051%_
                                               _%tl191716192053%_)
                                              (_%__kont192614192615%_))
                                          (_%__kont192614192615%_))))
                                  (_%__kont192614192615%_))
                              (_%__kont192614192615%_))
                          (_%__kont192614192615%_))))
                  (_%__kont192614192615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191701192013%_))
                                                      (if (let ((__tmp192975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp192975 'bind-method!))
                  (let ((_%L191882%_ _%hd191708192027%_)
                        (_%L191883%_ _%hd191699192003%_)
                        (_%L191884%_ _%hd191690191979%_)
                        (_%L191885%_ _%hd191681191955%_))
                    (_%__kont192612192613%_
                     _%L191882%_
                     _%L191883%_
                     _%L191884%_
                     _%L191885%_))
                  (_%__kont192614192615%_))
              (_%__kont192614192615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192614192615%_))))
                                      (_%__kont192614192615%_))
                                  (_%__kont192614192615%_))
                              (_%__kont192614192615%_))))
                      (_%__kont192614192615%_))))
              (_%__kont192614192615%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192614192615%_))))
                                          (_%__kont192614192615%_))
                                      (_%__kont192614192615%_))
                                  (_%__kont192614192615%_))))
                          (_%__kont192614192615%_))))
                  (_%__kont192614192615%_))
              (_%__kont192614192615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192614192615%_))
                                          (_%__kont192614192615%_))
                                      (_%__kont192614192615%_))))
                              (_%__kont192614192615%_))))
                      (_%__kont192614192615%_))
                  (_%__kont192614192615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192614192615%_))
                                              (_%__kont192614192615%_))
                                          (_%__kont192614192615%_))))
                                  (_%__kont192614192615%_))))
                          (_%__kont192614192615%_))))
                  (_%__kont192614192615%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191483%_ _%stx191484%_)
        (let* ((_%__stx192852192853%_ _%stx191484%_)
               (_%g191487191527%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192852192853%_)))))
          (let ((_%__kont192854192855%_
                 (lambda (_%L191633%_ _%L191634%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191634%_))
                               (cons _%L191633%_ '())))))
                (_%__kont192856192857%_
                 (lambda (_%L191556%_ _%L191557%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx192852192853%_))
                (let ((_%e191493191577%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx192852192853%_))))
                  (let ((_%tl191491191582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191493191577%_)))
                        (_%hd191492191580%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191493191577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191491191582%_))
                        (let ((_%e191496191585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191491191582%_))))
                          (let ((_%tl191494191590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191496191585%_)))
                                (_%hd191495191588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191496191585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191495191588%_))
                                (let ((_%e191499191593%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191495191588%_))))
                                  (let ((_%tl191497191598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191499191593%_)))
                                        (_%hd191498191596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191499191593%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191498191596%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191498191596%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191497191598%_))
                                                (let ((_%e191502191601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191497191598%_))))
                                                  (let ((_%tl191500191606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191502191601%_)))
                                                        (_%hd191501191604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191502191601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191500191606%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191494191590%_))
                                                            (let ((_%e191505191609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191494191590%_))))
                      (let ((_%tl191503191614%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191505191609%_)))
                            (_%hd191504191612%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191505191609%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191504191612%_))
                            (let ((_%e191508191617%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191504191612%_))))
                              (let ((_%tl191506191622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191508191617%_)))
                                    (_%hd191507191620%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191508191617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191507191620%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191507191620%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191506191622%_))
                                            (let ((_%e191511191625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191506191622%_))))
                                              (let ((_%tl191509191630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191511191625%_)))
                                                    (_%hd191510191628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191511191625%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191509191630%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191503191614%_))
                                                        (_%__kont192854192855%_
                                                         _%hd191510191628%_
                                                         _%hd191501191604%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191487191527%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191503191614%_))
                                                        (_%__kont192856192857%_
                                                         _%hd191504191612%_
                                                         _%hd191495191588%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191487191527%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191503191614%_))
                                                (_%__kont192856192857%_
                                                 _%hd191504191612%_
                                                 _%hd191495191588%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191487191527%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191503191614%_))
                                            (_%__kont192856192857%_
                                             _%hd191504191612%_
                                             _%hd191495191588%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191487191527%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191503191614%_))
                                        (_%__kont192856192857%_
                                         _%hd191504191612%_
                                         _%hd191495191588%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191487191527%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191503191614%_))
                                (_%__kont192856192857%_
                                 _%hd191504191612%_
                                 _%hd191495191588%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191487191527%_))))))
                    (let () (declare (not safe)) (_%g191487191527%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191494191590%_))
                    (let ((_%e191522191548%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191494191590%_))))
                      (let ((_%tl191520191553%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191522191548%_)))
                            (_%hd191521191551%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191522191548%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191520191553%_))
                            (_%__kont192856192857%_
                             _%hd191521191551%_
                             _%hd191495191588%_)
                            (let ()
                              (declare (not safe))
                              (_%g191487191527%_)))))
                    (let () (declare (not safe)) (_%g191487191527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191494191590%_))
                                                    (let ((_%e191522191548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191494191590%_))))
                                                      (let ((_%tl191520191553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191522191548%_)))
                    (_%hd191521191551%_
                     (let () (declare (not safe)) (##car _%e191522191548%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191520191553%_))
                    (_%__kont192856192857%_
                     _%hd191521191551%_
                     _%hd191495191588%_)
                    (let () (declare (not safe)) (_%g191487191527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191487191527%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191494191590%_))
                                                (let ((_%e191522191548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191494191590%_))))
                                                  (let ((_%tl191520191553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191522191548%_)))
                                                        (_%hd191521191551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191522191548%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191520191553%_))
                                                        (_%__kont192856192857%_
                                                         _%hd191521191551%_
                                                         _%hd191495191588%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191487191527%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191487191527%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191494191590%_))
                                            (let ((_%e191522191548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191494191590%_))))
                                              (let ((_%tl191520191553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191522191548%_)))
                                                    (_%hd191521191551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191522191548%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191520191553%_))
                                                    (_%__kont192856192857%_
                                                     _%hd191521191551%_
                                                     _%hd191495191588%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191487191527%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191487191527%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191494191590%_))
                                    (let ((_%e191522191548%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191494191590%_))))
                                      (let ((_%tl191520191553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191522191548%_)))
                                            (_%hd191521191551%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191522191548%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191520191553%_))
                                            (_%__kont192856192857%_
                                             _%hd191521191551%_
                                             _%hd191495191588%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191487191527%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191487191527%_))))))
                        (let () (declare (not safe)) (_%g191487191527%_)))))
                (let () (declare (not safe)) (_%g191487191527%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191470%_)
        (let ()
          (let ((_%self191473%_ _%self191470%_))
            (let ()
              (cons '@alias
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191473%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191243%_)
        (let ()
          (let ((_%self191246%_ _%self191243%_))
            (let ()
              (let* ((_%self191255191271%_ _%self191246%_)
                     (_%E191257191275%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self191255191271%_
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
                     (_%K191258191290%_
                      (lambda (_%methods191278%_
                               _%metaclass191279%_
                               _%system?191280%_
                               _%final?191281%_
                               _%struct?191282%_
                               _%constructor191283%_
                               _%fields191284%_
                               _%slots191285%_
                               _%precendence-list191286%_
                               _%super191287%_
                               _%id191288%_)
                        (cons '@class
                              (cons _%id191288%_
                                    (cons _%super191287%_
                                          (cons _%precendence-list191286%_
                                                (cons _%slots191285%_
                                                      (cons _%fields191284%_
                                                            (cons _%constructor191283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%struct?191282%_
                                (cons _%final?191281%_
                                      (cons _%system?191280%_
                                            (cons _%metaclass191279%_
                                                  (cons (if _%methods191278%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (hash->list
                                                               _%methods191278%_))
                                                            '#f)
                                                        '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (if '#t
                    (let* ((_%e191259191293%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '1
                               '#f
                               '#f)))
                           (_%id191296%_ _%e191259191293%_)
                           (_%e191260191298%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '2
                               '#f
                               '#f)))
                           (_%super191301%_ _%e191260191298%_)
                           (_%e191261191303%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '3
                               '#f
                               '#f)))
                           (_%precendence-list191306%_ _%e191261191303%_)
                           (_%e191262191308%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '4
                               '#f
                               '#f)))
                           (_%slots191311%_ _%e191262191308%_)
                           (_%e191263191313%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '5
                               '#f
                               '#f)))
                           (_%fields191316%_ _%e191263191313%_)
                           (_%e191264191318%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '6
                               '#f
                               '#f)))
                           (_%constructor191321%_ _%e191264191318%_)
                           (_%e191265191323%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '7
                               '#f
                               '#f)))
                           (_%struct?191326%_ _%e191265191323%_)
                           (_%e191266191328%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '8
                               '#f
                               '#f)))
                           (_%final?191331%_ _%e191266191328%_)
                           (_%e191267191333%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '9
                               '#f
                               '#f)))
                           (_%system?191336%_ _%e191267191333%_)
                           (_%e191268191338%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '10
                               '#f
                               '#f)))
                           (_%metaclass191341%_ _%e191268191338%_)
                           (_%e191269191343%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191255191271%_
                               '11
                               '#f
                               '#f)))
                           (_%methods191346%_ _%e191269191343%_))
                      (declare (not safe))
                      (_%K191258191290%_
                       _%methods191346%_
                       _%metaclass191341%_
                       _%system?191336%_
                       _%final?191331%_
                       _%struct?191326%_
                       _%constructor191321%_
                       _%fields191316%_
                       _%slots191311%_
                       _%precendence-list191306%_
                       _%super191301%_
                       _%id191296%_))
                    (let () (declare (not safe)) (_%E191257191275%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191108%_)
        (let ()
          (let ((_%self191111%_ _%self191108%_))
            (let ()
              (cons '@predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191111%_
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
      (lambda (_%self190973%_)
        (let ()
          (let ((_%self190976%_ _%self190973%_))
            (let ()
              (cons '@constructor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190976%_
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
      (lambda (_%self190838%_)
        (let ()
          (let ((_%self190841%_ _%self190838%_))
            (let ()
              (cons '@accessor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190841%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190841%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190841%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self190703%_)
        (let ()
          (let ((_%self190706%_ _%self190703%_))
            (let ()
              (cons '@mutator
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190706%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190706%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190706%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190568%_)
        (let ()
          (let ((_%self190571%_ _%self190568%_))
            (let ()
              (cons '@interface
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190571%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190571%_
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
      (lambda (_%self190381%_)
        (let ()
          (let ((_%self190384%_ _%self190381%_))
            (let ()
              (let* ((_%self190393190402%_ _%self190384%_)
                     (_%E190395190406%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self190393190402%_
                                 '((!lambda _ signature arity dispatch))))
                        '#!void))
                     (_%K190396190425%_
                      (lambda (_%dispatch190409%_
                               _%arity190410%_
                               _%signature190411%_)
                        (if _%signature190411%_
                            (let ((_%signature190413%_ _%signature190411%_))
                              (cons '@lambda
                                    (cons _%arity190410%_
                                          (cons _%dispatch190409%_
                                                (cons 'signature:
                                                      (cons (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%signature190413%_
                                   '1
                                   '#f
                                   '#f))
                                (cons 'effect:
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%signature190413%_
                                               '2
                                               '#f
                                               '#f))
                                            (cons 'arguments:
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%signature190413%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (cons 'unchecked:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190413%_
                               '4
                               '#f
                               '#f))
                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (cons '@lambda
                                  (cons _%arity190410%_
                                        (cons _%dispatch190409%_ '())))))))
                (if '#t
                    (let* ((_%e190397190428%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190393190402%_
                               '1
                               '#f
                               '#f)))
                           (_%e190398190431%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190393190402%_
                               '2
                               '#f
                               '#f)))
                           (_%signature190434%_ _%e190398190431%_)
                           (_%e190399190436%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190393190402%_
                               '3
                               '#f
                               '#f)))
                           (_%arity190439%_ _%e190399190436%_)
                           (_%e190400190441%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190393190402%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch190444%_ _%e190400190441%_))
                      (declare (not safe))
                      (_%K190396190425%_
                       _%dispatch190444%_
                       _%arity190439%_
                       _%signature190434%_))
                    (let () (declare (not safe)) (_%E190395190406%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190242%_)
        (let ()
          (let ((_%self190245%_ _%self190242%_))
            (let ()
              (letrec ((_%clause-e190255%_
                        (lambda (_%clause190257%_)
                          (cdr (let ((__method192940
                                      (let ()
                                        (declare (not safe))
                                        (__method-ref
                                         _%clause190257%_
                                         'typedecl))))
                                 (if __method192940
                                     (__method192940 _%clause190257%_)
                                     (let ()
                                       (declare (not safe))
                                       (error '"Missing method"
                                              _%clause190257%_
                                              'typedecl))))))))
                (cons '@case-lambda
                      (map _%clause-e190255%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self190245%_
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
      (lambda (_%self190107%_)
        (let ()
          (let ((_%self190110%_ _%self190107%_))
            (let ()
              (cons '@kw-lambda
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190110%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190110%_
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
      (lambda (_%self189972%_)
        (let ()
          (let ((_%self189975%_ _%self189972%_))
            (let ()
              (cons '@kw-lambda-dispatch
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189975%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self189975%_
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
      (lambda (_%self189837%_)
        (let ()
          (let ((_%self189840%_ _%self189837%_))
            (let ()
              (cons '@primitive-predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189840%_
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
