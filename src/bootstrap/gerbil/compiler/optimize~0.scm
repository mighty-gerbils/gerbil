(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1768863419)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp212655
                   (let ((__obj212649
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
                       (gxc#optimizer-info:::init! __obj212649))
                     __obj212649)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp212655)))))
    (define gxc#optimize!
      (lambda (_%ctx212257%_)
        (let ((__tmp212657
               (lambda ()
                 (let ((__tmp212659
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx212257%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx212257%_)
                          (let ((__tmp212661
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp212660
                                 (##structure-ref
                                  _%ctx212257%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212661 __tmp212660 '#t))
                          (let ((_%code212261%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx212257%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx212257%_
                             _%code212261%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp212658
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp212659
                    gxc#current-compile-local-type
                    __tmp212658))))
              (__tmp212656 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212657
           gxc#current-compile-mutators
           __tmp212656))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx212243%_)
        (letrec ((_%load-it!212245%_
                  (lambda (_%id212255%_)
                    (if (let ((__tmp212662
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp212662 _%id212255%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id212255%_)
                          (let ((__tmp212663
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212663 _%id212255%_ '#t)))))))
          (let* ((_%modid212247%_
                  (##structure-ref
                   _%ctx212243%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str212249%_ (symbol->string _%modid212247%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str212249%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str212249%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212245%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212245%_
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
      (lambda (_%ctx212180%_)
        (letrec* ((_%deps212182%_
                   (let* ((_%imports212233%_
                           (##structure-ref
                            _%ctx212180%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e212235%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx212180%_))))
                     (if _%$e212235%_
                         ((lambda (_%g212237212239%_)
                            (cons _%g212237212239%_ _%imports212233%_))
                          _%$e212235%_)
                         _%imports212233%_))))
          (let _%lp212184%_ ((_%rest212186%_ _%deps212182%_))
            (let* ((_%rest212187212195%_ _%rest212186%_)
                   (_%else212189212203%_ (lambda () '#!void))
                   (_%K212191212221%_
                    (lambda (_%rest212206%_ _%hd212207%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd212207%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp212665
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp212664
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212207%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp212665 __tmp212664))
                                '#!void
                                (begin
                                  (let ((_%$e212210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd212207%_))))
                                    (if _%$e212210%_
                                        ((lambda (_%pre212213%_)
                                           (_%lp212184%_
                                            (cons _%pre212213%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd212207%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e212210%_)
                                        (_%lp212184%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212207%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd212207%_)))
                            (_%lp212184%_ _%rest212206%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd212207%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp212667
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp212666
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd212207%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp212667 __tmp212666))
                                    '#!void
                                    (begin
                                      (_%lp212184%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212207%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd212207%_)))
                                (_%lp212184%_ _%rest212206%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd212207%_
                                     'gx#module-import::t))
                                  (_%lp212184%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212207%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest212206%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd212207%_
                                         'gx#module-export::t))
                                      (_%lp212184%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd212207%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest212206%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd212207%_
                                             'gx#import-set::t))
                                          (_%lp212184%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd212207%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest212206%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd212207%_))))))))))
              (if (pair? _%rest212187212195%_)
                  (let ((_%hd212192212224%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212187212195%_)))
                        (_%tl212193212226%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212187212195%_))))
                    (let* ((_%hd212229%_ _%hd212192212224%_)
                           (_%rest212231%_ _%tl212193212226%_))
                      (_%K212191212221%_ _%rest212231%_ _%hd212229%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx212160%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx212160%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx212160%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht212162%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id212164%_
                    (##structure-ref
                     _%ctx212160%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod212166%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht212162%_ _%id212164%_)))
                   (_%$e212169%_ _%mod212166%_))
              (if _%$e212169%_
                  _%$e212169%_
                  (let* ((_%mod212172%_
                          (gxc#optimizer-import-ssxi _%ctx212160%_))
                         (_%val212177%_
                          (let ((_%$e212174%_ _%mod212172%_))
                            (if _%$e212174%_ _%$e212174%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht212162%_ _%id212164%_ _%val212177%_))
                    _%val212177%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx212158%_)
        (if (##structure-ref _%ctx212158%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx212158%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id212135%_)
        (letrec ((_%catch-e212137%_
                  (lambda (_%exn212156%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn212156%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn212156%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id212135%_))))
                    '#f))
                 (_%import-e212138%_
                  (lambda ()
                    (let* ((_%str-id212141%_
                            (let ((__tmp212668
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id212135%_))))
                              (declare (not safe))
                              (##string-append __tmp212668 '".ssxi")))
                           (_%artefact-path212149%_
                            (let ((_%odir212142212144%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir212142212144%_
                                  (let ((_%odir212147%_ _%odir212142212144%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id212141%_
                                        '".ss"))
                                     _%odir212147%_))
                                  '#f)))
                           (_%library-path212151%_
                            (let ((__tmp212669
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id212141%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp212669)))
                           (_%ssxi-path212153%_
                            (if (and _%artefact-path212149%_
                                     (file-exists? _%artefact-path212149%_))
                                _%artefact-path212149%_
                                _%library-path212151%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path212153%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path212153%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e212137%_ _%import-e212138%_)))))
    (define gxc#optimize-source
      (lambda (_%stx212120%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx212120%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx212120%_))
        (let* ((_%stx212122%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx212120%_)))
               (_%stx212124%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx212122%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx212124%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx212124%_))
          (let _%fixpoint212127%_ ((_%current212129%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx212124%_))
            (let ((_%refined212131%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current212129%_ _%refined212131%_)
                  '#!void
                  (_%fixpoint212127%_ _%refined212131%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx212124%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx212124%_))
          (let ((_%stx212133%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx212124%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx212133%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp212671 (list gxc#::generate-runtime-empty::t))
            (__tmp212670 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp212671
         '()
         __tmp212670
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args212117%_
        (apply make-instance gxc#::generate-ssxi::t _%$args212117%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp212672
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
        (__make-atomic-promise __tmp212672)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx212109%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self212112%_
                (let ((__obj212651
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj212651))
               (__tmp212673
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212112%_ _%stx212109%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212673
           gxc#current-compile-method
           _%self212112%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self212069%_ _%stx212070%_)
        (let* ((_%g212072212082%_
                (lambda (_%g212073212079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212073212079%_))))
               (_%g212071212106%_
                (lambda (_%g212073212085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212073212085%_))
                      (let ((_%e212075212087%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212073212085%_))))
                        (let ((_%hd212076212090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212075212087%_)))
                              (_%tl212077212092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212075212087%_))))
                          ((lambda (_%L212095%_)
                             (let ((__tmp212676
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self212069%_
                                         _%stx212070%_))))
                                   (__tmp212674
                                    (let ((__tmp212675
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp212675 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp212676
                                gx#current-expander-phi
                                __tmp212674)))
                           _%tl212077212092%_)))
                      (_%g212072212082%_ _%g212073212085%_)))))
          (_%g212071212106%_ _%stx212070%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self212008%_ _%stx212009%_)
        (let* ((_%g212011212025%_
                (lambda (_%g212012212022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212012212022%_))))
               (_%g212010212066%_
                (lambda (_%g212012212028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212012212028%_))
                      (let ((_%e212015212030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212012212028%_))))
                        (let ((_%hd212016212033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212015212030%_)))
                              (_%tl212017212035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212015212030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212017212035%_))
                              (let ((_%e212018212038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212017212035%_))))
                                (let ((_%hd212019212041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212018212038%_)))
                                      (_%tl212020212043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212018212038%_))))
                                  ((lambda (_%L212046%_ _%L212047%_)
                                     (let* ((_%ctx212060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L212047%_)))
                                            (_%code212062%_
                                             (##structure-ref
                                              _%ctx212060%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp212677
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self212008%_
                                                  _%code212062%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp212677
                                        gx#current-expander-context
                                        _%ctx212060%_)))
                                   _%tl212020212043%_
                                   _%hd212019212041%_)))
                              (_%g212011212025%_ _%g212012212028%_))))
                      (_%g212011212025%_ _%g212012212028%_)))))
          (_%g212010212066%_ _%stx212009%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self211813%_ _%stx211814%_)
        (letrec ((_%generate-e211816%_
                  (lambda (_%id211993%_)
                    (let* ((_%sym211995%_
                            (if (let ((__tmp212678
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp212678))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id211993%_))
                                '#f))
                           (_%$e211997%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym211995%_))))
                      (if _%$e211997%_
                          ((lambda (_%klass212000%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym211995%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym211995%_
                                                     (cons (let ((__method212652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass212000%_ 'typedecl))))
                     (if __method212652
                         (let ()
                           (declare (not safe))
                           (__method212652 _%klass212000%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass212000%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym211995%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym211995%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e211997%_)
                          (let ((_%$e212002%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym211995%_))))
                            (if _%$e212002%_
                                ((lambda (_%type212005%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym211995%_
                                      '" "
                                      _%type212005%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type212005%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym211995%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym211995%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type212005%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym211995%_
                                                   (cons (let ((__method212653
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type212005%_ 'typedecl))))
                   (if __method212653
                       (let ()
                         (declare (not safe))
                         (__method212653 _%type212005%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type212005%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e212002%_)
                                '(begin))))))))
          (let* ((_%__stx212264212265%_ _%stx211814%_)
                 (_%g211819211857%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx212264212265%_)))))
            (let ((_%__kont212266212267%_
                   (lambda (_%L211975%_) (_%generate-e211816%_ _%L211975%_)))
                  (_%__kont212268212269%_
                   (lambda (_%L211910%_)
                     (let ((_%types211936%_
                            (map _%generate-e211816%_
                                 (let ((__tmp212679
                                        (lambda (_%g211928211931%_
                                                 _%g211929211933%_)
                                          (cons _%g211928211931%_
                                                _%g211929211933%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp212679 '() _%L211910%_)))))
                       (cons 'begin _%types211936%_)))))
              (let ((_%__match212319212320%_
                     (lambda (_%e211835211862%_
                              _%hd211836211865%_
                              _%tl211837211867%_
                              _%e211838211870%_
                              _%hd211839211873%_
                              _%tl211840211875%_
                              _%__splice212270212271%_
                              _%target211841211878%_
                              _%tl211843211880%_)
                       (letrec ((_%loop211844211883%_
                                 (lambda (_%hd211842211886%_
                                          _%id211848211888%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd211842211886%_))
                                       (let ((_%e211845211891%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd211842211886%_))))
                                         (let ((_%lp-tl211847211896%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e211845211891%_)))
                                               (_%lp-hd211846211894%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e211845211891%_))))
                                           (_%loop211844211883%_
                                            _%lp-tl211847211896%_
                                            (cons _%lp-hd211846211894%_
                                                  _%id211848211888%_))))
                                       (let ((_%id211849211899%_
                                              (reverse _%id211848211888%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl211840211875%_))
                                             (let ((_%e211850211902%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl211840211875%_))))
                                               (let ((_%tl211852211907%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e211850211902%_)))
                                                     (_%hd211851211905%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e211850211902%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl211852211907%_))
                                                     (_%__kont212268212269%_
                                                      _%id211849211899%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g211819211857%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g211819211857%_))))))))
                         (_%loop211844211883%_ _%target211841211878%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212264212265%_))
                    (let ((_%e211822211943%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212264212265%_))))
                      (let ((_%tl211824211948%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211822211943%_)))
                            (_%hd211823211946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211822211943%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211824211948%_))
                            (let ((_%e211825211951%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211824211948%_))))
                              (let ((_%tl211827211956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211825211951%_)))
                                    (_%hd211826211954%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211825211951%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd211826211954%_))
                                    (let ((_%e211828211959%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd211826211954%_))))
                                      (let ((_%tl211830211964%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211828211959%_)))
                                            (_%hd211829211962%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211828211959%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211830211964%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211827211956%_))
                                                (let ((_%e211831211967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211827211956%_))))
                                                  (let ((_%tl211833211972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211831211967%_)))
                                                        (_%hd211832211970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211831211967%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211833211972%_))
                                                        (_%__kont212266212267%_
                                                         _%hd211829211962%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd211826211954%_))
                                                            (let ((_%__splice212270212271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd211826211954%_
                              '0))))
                      (let ((_%tl211843211880%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212270212271%_ '1)))
                            (_%target211841211878%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212270212271%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211843211880%_))
                            (_%__match212319212320%_
                             _%e211822211943%_
                             _%hd211823211946%_
                             _%tl211824211948%_
                             _%e211825211951%_
                             _%hd211826211954%_
                             _%tl211827211956%_
                             _%__splice212270212271%_
                             _%target211841211878%_
                             _%tl211843211880%_)
                            (let ()
                              (declare (not safe))
                              (_%g211819211857%_)))))
                    (let () (declare (not safe)) (_%g211819211857%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd211826211954%_))
                                                    (let ((_%__splice212270212271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd211826211954%_
                                                              '0))))
                                                      (let ((_%tl211843211880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice212270212271%_ '1)))
                    (_%target211841211878%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice212270212271%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211843211880%_))
                    (_%__match212319212320%_
                     _%e211822211943%_
                     _%hd211823211946%_
                     _%tl211824211948%_
                     _%e211825211951%_
                     _%hd211826211954%_
                     _%tl211827211956%_
                     _%__splice212270212271%_
                     _%target211841211878%_
                     _%tl211843211880%_)
                    (let () (declare (not safe)) (_%g211819211857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211819211857%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd211826211954%_))
                                                (let ((_%__splice212270212271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd211826211954%_
                                                          '0))))
                                                  (let ((_%tl211843211880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212270212271%_
                                                            '1)))
                                                        (_%target211841211878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212270212271%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211843211880%_))
                                                        (_%__match212319212320%_
                                                         _%e211822211943%_
                                                         _%hd211823211946%_
                                                         _%tl211824211948%_
                                                         _%e211825211951%_
                                                         _%hd211826211954%_
                                                         _%tl211827211956%_
                                                         _%__splice212270212271%_
                                                         _%target211841211878%_
                                                         _%tl211843211880%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211819211857%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211819211857%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd211826211954%_))
                                        (let ((_%__splice212270212271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd211826211954%_
                                                  '0))))
                                          (let ((_%tl211843211880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212270212271%_
                                                    '1)))
                                                (_%target211841211878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212270212271%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211843211880%_))
                                                (_%__match212319212320%_
                                                 _%e211822211943%_
                                                 _%hd211823211946%_
                                                 _%tl211824211948%_
                                                 _%e211825211951%_
                                                 _%hd211826211954%_
                                                 _%tl211827211956%_
                                                 _%__splice212270212271%_
                                                 _%target211841211878%_
                                                 _%tl211843211880%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211819211857%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g211819211857%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g211819211857%_)))))
                    (let () (declare (not safe)) (_%g211819211857%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self211366%_ _%stx211367%_)
        (let* ((_%__stx212322212323%_ _%stx211367%_)
               (_%g211371211473%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212322212323%_)))))
          (let ((_%__kont212324212325%_
                 (lambda (_%L211763%_
                          _%L211764%_
                          _%L211765%_
                          _%L211766%_
                          _%L211767%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211766%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211765%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211764%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L211763%_))
                                                 '())))))))
                (_%__kont212326212327%_
                 (lambda (_%L211589%_ _%L211590%_ _%L211591%_ _%L211592%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211591%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211590%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211589%_))
                                           (cons '#f '())))))))
                (_%__kont212328212329%_ (lambda () '(begin))))
            (let ((_%__match212457212458%_
                   (lambda (_%e211378211635%_
                            _%hd211379211638%_
                            _%tl211380211640%_
                            _%e211381211643%_
                            _%hd211382211646%_
                            _%tl211383211648%_
                            _%e211384211651%_
                            _%hd211385211654%_
                            _%tl211386211656%_
                            _%e211387211659%_
                            _%hd211388211662%_
                            _%tl211389211664%_
                            _%e211390211667%_
                            _%hd211391211670%_
                            _%tl211392211672%_
                            _%e211393211675%_
                            _%hd211394211678%_
                            _%tl211395211680%_
                            _%e211396211683%_
                            _%hd211397211686%_
                            _%tl211398211688%_
                            _%e211399211691%_
                            _%hd211400211694%_
                            _%tl211401211696%_
                            _%e211402211699%_
                            _%hd211403211702%_
                            _%tl211404211704%_
                            _%e211405211707%_
                            _%hd211406211710%_
                            _%tl211407211712%_
                            _%e211408211715%_
                            _%hd211409211718%_
                            _%tl211410211720%_
                            _%e211411211723%_
                            _%hd211412211726%_
                            _%tl211413211728%_
                            _%e211414211731%_
                            _%hd211415211734%_
                            _%tl211416211736%_
                            _%e211417211739%_
                            _%hd211418211742%_
                            _%tl211419211744%_
                            _%e211420211747%_
                            _%hd211421211750%_
                            _%tl211422211752%_
                            _%e211423211755%_
                            _%hd211424211758%_
                            _%tl211425211760%_)
                     (let ((_%L211763%_ _%hd211424211758%_)
                           (_%L211764%_ _%hd211415211734%_)
                           (_%L211765%_ _%hd211406211710%_)
                           (_%L211766%_ _%hd211397211686%_)
                           (_%L211767%_ _%hd211388211662%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L211767%_
                              'bind-method!))
                           (_%__kont212324212325%_
                            _%L211763%_
                            _%L211764%_
                            _%L211765%_
                            _%L211766%_
                            _%L211767%_)
                           (_%__kont212328212329%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212322212323%_))
                  (let ((_%e211378211635%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212322212323%_))))
                    (let ((_%tl211380211640%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211378211635%_)))
                          (_%hd211379211638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211378211635%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211380211640%_))
                          (let ((_%e211381211643%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211380211640%_))))
                            (let ((_%tl211383211648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211381211643%_)))
                                  (_%hd211382211646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211381211643%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211382211646%_))
                                  (let ((_%e211384211651%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211382211646%_))))
                                    (let ((_%tl211386211656%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211384211651%_)))
                                          (_%hd211385211654%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211384211651%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211385211654%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211385211654%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211386211656%_))
                                                  (let ((_%e211387211659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211386211656%_))))
                                                    (let ((_%tl211389211664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211387211659%_)))
                                                          (_%hd211388211662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211387211659%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211389211664%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211383211648%_))
                      (let ((_%e211390211667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211383211648%_))))
                        (let ((_%tl211392211672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211390211667%_)))
                              (_%hd211391211670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211390211667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211391211670%_))
                              (let ((_%e211393211675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211391211670%_))))
                                (let ((_%tl211395211680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211393211675%_)))
                                      (_%hd211394211678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211393211675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211394211678%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211394211678%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211395211680%_))
                                              (let ((_%e211396211683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211395211680%_))))
                                                (let ((_%tl211398211688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211396211683%_)))
                                                      (_%hd211397211686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211396211683%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211398211688%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211392211672%_))
                                                          (let ((_%e211399211691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211392211672%_))))
                    (let ((_%tl211401211696%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211399211691%_)))
                          (_%hd211400211694%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211399211691%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211400211694%_))
                          (let ((_%e211402211699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211400211694%_))))
                            (let ((_%tl211404211704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211402211699%_)))
                                  (_%hd211403211702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211402211699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211403211702%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd211403211702%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211404211704%_))
                                          (let ((_%e211405211707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211404211704%_))))
                                            (let ((_%tl211407211712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211405211707%_)))
                                                  (_%hd211406211710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211405211707%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211407211712%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211401211696%_))
                                                      (let ((_%e211408211715%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl211401211696%_))))
                (let ((_%tl211410211720%_
                       (let () (declare (not safe)) (##cdr _%e211408211715%_)))
                      (_%hd211409211718%_
                       (let ()
                         (declare (not safe))
                         (##car _%e211408211715%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd211409211718%_))
                      (let ((_%e211411211723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211409211718%_))))
                        (let ((_%tl211413211728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211411211723%_)))
                              (_%hd211412211726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211411211723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd211412211726%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd211412211726%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211413211728%_))
                                      (let ((_%e211414211731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211413211728%_))))
                                        (let ((_%tl211416211736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211414211731%_)))
                                              (_%hd211415211734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211414211731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211416211736%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211410211720%_))
                                                  (let ((_%e211417211739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211410211720%_))))
                                                    (let ((_%tl211419211744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211417211739%_)))
                                                          (_%hd211418211742%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211417211739%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd211418211742%_))
                                                          (let ((_%e211420211747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd211418211742%_))))
                    (let ((_%tl211422211752%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211420211747%_)))
                          (_%hd211421211750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211420211747%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd211421211750%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd211421211750%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211422211752%_))
                                  (let ((_%e211423211755%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl211422211752%_))))
                                    (let ((_%tl211425211760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211423211755%_)))
                                          (_%hd211424211758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211423211755%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl211425211760%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211419211744%_))
                                              (_%__match212457212458%_
                                               _%e211378211635%_
                                               _%hd211379211638%_
                                               _%tl211380211640%_
                                               _%e211381211643%_
                                               _%hd211382211646%_
                                               _%tl211383211648%_
                                               _%e211384211651%_
                                               _%hd211385211654%_
                                               _%tl211386211656%_
                                               _%e211387211659%_
                                               _%hd211388211662%_
                                               _%tl211389211664%_
                                               _%e211390211667%_
                                               _%hd211391211670%_
                                               _%tl211392211672%_
                                               _%e211393211675%_
                                               _%hd211394211678%_
                                               _%tl211395211680%_
                                               _%e211396211683%_
                                               _%hd211397211686%_
                                               _%tl211398211688%_
                                               _%e211399211691%_
                                               _%hd211400211694%_
                                               _%tl211401211696%_
                                               _%e211402211699%_
                                               _%hd211403211702%_
                                               _%tl211404211704%_
                                               _%e211405211707%_
                                               _%hd211406211710%_
                                               _%tl211407211712%_
                                               _%e211408211715%_
                                               _%hd211409211718%_
                                               _%tl211410211720%_
                                               _%e211411211723%_
                                               _%hd211412211726%_
                                               _%tl211413211728%_
                                               _%e211414211731%_
                                               _%hd211415211734%_
                                               _%tl211416211736%_
                                               _%e211417211739%_
                                               _%hd211418211742%_
                                               _%tl211419211744%_
                                               _%e211420211747%_
                                               _%hd211421211750%_
                                               _%tl211422211752%_
                                               _%e211423211755%_
                                               _%hd211424211758%_
                                               _%tl211425211760%_)
                                              (_%__kont212328212329%_))
                                          (_%__kont212328212329%_))))
                                  (_%__kont212328212329%_))
                              (_%__kont212328212329%_))
                          (_%__kont212328212329%_))))
                  (_%__kont212328212329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211410211720%_))
                                                      (if (let ((__tmp212680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp212680 'bind-method!))
                  (let ((_%L211589%_ _%hd211415211734%_)
                        (_%L211590%_ _%hd211406211710%_)
                        (_%L211591%_ _%hd211397211686%_)
                        (_%L211592%_ _%hd211388211662%_))
                    (_%__kont212326212327%_
                     _%L211589%_
                     _%L211590%_
                     _%L211591%_
                     _%L211592%_))
                  (_%__kont212328212329%_))
              (_%__kont212328212329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212328212329%_))))
                                      (_%__kont212328212329%_))
                                  (_%__kont212328212329%_))
                              (_%__kont212328212329%_))))
                      (_%__kont212328212329%_))))
              (_%__kont212328212329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212328212329%_))))
                                          (_%__kont212328212329%_))
                                      (_%__kont212328212329%_))
                                  (_%__kont212328212329%_))))
                          (_%__kont212328212329%_))))
                  (_%__kont212328212329%_))
              (_%__kont212328212329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212328212329%_))
                                          (_%__kont212328212329%_))
                                      (_%__kont212328212329%_))))
                              (_%__kont212328212329%_))))
                      (_%__kont212328212329%_))
                  (_%__kont212328212329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212328212329%_))
                                              (_%__kont212328212329%_))
                                          (_%__kont212328212329%_))))
                                  (_%__kont212328212329%_))))
                          (_%__kont212328212329%_))))
                  (_%__kont212328212329%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self211190%_ _%stx211191%_)
        (let* ((_%__stx212566212567%_ _%stx211191%_)
               (_%g211194211234%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212566212567%_)))))
          (let ((_%__kont212568212569%_
                 (lambda (_%L211340%_ _%L211341%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211341%_))
                               (cons _%L211340%_ '())))))
                (_%__kont212570212571%_
                 (lambda (_%L211263%_ _%L211264%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx212566212567%_))
                (let ((_%e211198211284%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx212566212567%_))))
                  (let ((_%tl211200211289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211198211284%_)))
                        (_%hd211199211287%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211198211284%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211200211289%_))
                        (let ((_%e211201211292%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211200211289%_))))
                          (let ((_%tl211203211297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211201211292%_)))
                                (_%hd211202211295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211201211292%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd211202211295%_))
                                (let ((_%e211204211300%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd211202211295%_))))
                                  (let ((_%tl211206211305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211204211300%_)))
                                        (_%hd211205211303%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211204211300%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd211205211303%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd211205211303%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211206211305%_))
                                                (let ((_%e211207211308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211206211305%_))))
                                                  (let ((_%tl211209211313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211207211308%_)))
                                                        (_%hd211208211311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211207211308%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211209211313%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211203211297%_))
                                                            (let ((_%e211210211316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211203211297%_))))
                      (let ((_%tl211212211321%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211210211316%_)))
                            (_%hd211211211319%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211210211316%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd211211211319%_))
                            (let ((_%e211213211324%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd211211211319%_))))
                              (let ((_%tl211215211329%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211213211324%_)))
                                    (_%hd211214211327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211213211324%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211214211327%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd211214211327%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211215211329%_))
                                            (let ((_%e211216211332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211215211329%_))))
                                              (let ((_%tl211218211337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211216211332%_)))
                                                    (_%hd211217211335%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211216211332%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211218211337%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211212211321%_))
                                                        (_%__kont212568212569%_
                                                         _%hd211217211335%_
                                                         _%hd211208211311%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211194211234%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211212211321%_))
                                                        (_%__kont212570212571%_
                                                         _%hd211211211319%_
                                                         _%hd211202211295%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211194211234%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211212211321%_))
                                                (_%__kont212570212571%_
                                                 _%hd211211211319%_
                                                 _%hd211202211295%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211194211234%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211212211321%_))
                                            (_%__kont212570212571%_
                                             _%hd211211211319%_
                                             _%hd211202211295%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211194211234%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211212211321%_))
                                        (_%__kont212570212571%_
                                         _%hd211211211319%_
                                         _%hd211202211295%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g211194211234%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211212211321%_))
                                (_%__kont212570212571%_
                                 _%hd211211211319%_
                                 _%hd211202211295%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211194211234%_))))))
                    (let () (declare (not safe)) (_%g211194211234%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl211203211297%_))
                    (let ((_%e211227211255%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211203211297%_))))
                      (let ((_%tl211229211260%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211227211255%_)))
                            (_%hd211228211258%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211227211255%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211229211260%_))
                            (_%__kont212570212571%_
                             _%hd211228211258%_
                             _%hd211202211295%_)
                            (let ()
                              (declare (not safe))
                              (_%g211194211234%_)))))
                    (let () (declare (not safe)) (_%g211194211234%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl211203211297%_))
                                                    (let ((_%e211227211255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl211203211297%_))))
                                                      (let ((_%tl211229211260%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211227211255%_)))
                    (_%hd211228211258%_
                     (let () (declare (not safe)) (##car _%e211227211255%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211229211260%_))
                    (_%__kont212570212571%_
                     _%hd211228211258%_
                     _%hd211202211295%_)
                    (let () (declare (not safe)) (_%g211194211234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211194211234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211203211297%_))
                                                (let ((_%e211227211255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211203211297%_))))
                                                  (let ((_%tl211229211260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211227211255%_)))
                                                        (_%hd211228211258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211227211255%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211229211260%_))
                                                        (_%__kont212570212571%_
                                                         _%hd211228211258%_
                                                         _%hd211202211295%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211194211234%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211194211234%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211203211297%_))
                                            (let ((_%e211227211255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211203211297%_))))
                                              (let ((_%tl211229211260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211227211255%_)))
                                                    (_%hd211228211258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211227211255%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211229211260%_))
                                                    (_%__kont212570212571%_
                                                     _%hd211228211258%_
                                                     _%hd211202211295%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211194211234%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g211194211234%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211203211297%_))
                                    (let ((_%e211227211255%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211203211297%_))))
                                      (let ((_%tl211229211260%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211227211255%_)))
                                            (_%hd211228211258%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211227211255%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211229211260%_))
                                            (_%__kont212570212571%_
                                             _%hd211228211258%_
                                             _%hd211202211295%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211194211234%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g211194211234%_))))))
                        (let () (declare (not safe)) (_%g211194211234%_)))))
                (let () (declare (not safe)) (_%g211194211234%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self211177%_)
        (let ((_%self211180%_ _%self211177%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self211180%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self210950%_)
        (let* ((_%self210953%_ _%self210950%_)
               (_%self210962210978%_ _%self210953%_)
               (_%E210964210982%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210962210978%_
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
               (_%K210965210997%_
                (lambda (_%methods210985%_
                         _%metaclass210986%_
                         _%system?210987%_
                         _%final?210988%_
                         _%struct?210989%_
                         _%constructor210990%_
                         _%fields210991%_
                         _%slots210992%_
                         _%precendence-list210993%_
                         _%super210994%_
                         _%id210995%_)
                  (cons '@class
                        (cons _%id210995%_
                              (cons _%super210994%_
                                    (cons _%precendence-list210993%_
                                          (cons _%slots210992%_
                                                (cons _%fields210991%_
                                                      (cons _%constructor210990%_
                                                            (cons _%struct?210989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?210988%_
                                (cons _%system?210987%_
                                      (cons _%metaclass210986%_
                                            (cons (if _%methods210985%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods210985%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e210966211000%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '1 '#f '#f)))
               (_%id211003%_ _%e210966211000%_)
               (_%e210967211005%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '2 '#f '#f)))
               (_%super211008%_ _%e210967211005%_)
               (_%e210968211010%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '3 '#f '#f)))
               (_%precendence-list211013%_ _%e210968211010%_)
               (_%e210969211015%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '4 '#f '#f)))
               (_%slots211018%_ _%e210969211015%_)
               (_%e210970211020%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '5 '#f '#f)))
               (_%fields211023%_ _%e210970211020%_)
               (_%e210971211025%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '6 '#f '#f)))
               (_%constructor211028%_ _%e210971211025%_)
               (_%e210972211030%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '7 '#f '#f)))
               (_%struct?211033%_ _%e210972211030%_)
               (_%e210973211035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '8 '#f '#f)))
               (_%final?211038%_ _%e210973211035%_)
               (_%e210974211040%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210962210978%_ '9 '#f '#f)))
               (_%system?211043%_ _%e210974211040%_)
               (_%e210975211045%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self210962210978%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass211048%_ _%e210975211045%_)
               (_%e210976211050%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self210962210978%_
                   '11
                   '#f
                   '#f)))
               (_%methods211053%_ _%e210976211050%_))
          (_%K210965210997%_
           _%methods211053%_
           _%metaclass211048%_
           _%system?211043%_
           _%final?211038%_
           _%struct?211033%_
           _%constructor211028%_
           _%fields211023%_
           _%slots211018%_
           _%precendence-list211013%_
           _%super211008%_
           _%id211003%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self210815%_)
        (let ((_%self210818%_ _%self210815%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210818%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self210680%_)
        (let ((_%self210683%_ _%self210680%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210683%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self210545%_)
        (let ((_%self210548%_ _%self210545%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210548%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210548%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210548%_
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
      (lambda (_%self210410%_)
        (let ((_%self210413%_ _%self210410%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210413%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210413%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210413%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self210275%_)
        (let ((_%self210278%_ _%self210275%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210278%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210278%_
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
      (lambda (_%self210088%_)
        (let* ((_%self210091%_ _%self210088%_)
               (_%self210100210109%_ _%self210091%_)
               (_%E210102210113%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210100210109%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K210103210132%_
                (lambda (_%dispatch210116%_
                         _%arity210117%_
                         _%signature210118%_)
                  (if _%signature210118%_
                      (let ((_%signature210120%_ _%signature210118%_))
                        (cons '@lambda
                              (cons _%arity210117%_
                                    (cons _%dispatch210116%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature210120%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature210120%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature210120%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature210120%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature210120%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity210117%_
                                  (cons _%dispatch210116%_ '()))))))
               (_%e210104210135%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210100210109%_ '1 '#f '#f)))
               (_%e210105210138%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210100210109%_ '2 '#f '#f)))
               (_%signature210141%_ _%e210105210138%_)
               (_%e210106210143%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210100210109%_ '3 '#f '#f)))
               (_%arity210146%_ _%e210106210143%_)
               (_%e210107210148%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210100210109%_ '4 '#f '#f)))
               (_%dispatch210151%_ _%e210107210148%_))
          (_%K210103210132%_
           _%dispatch210151%_
           _%arity210146%_
           _%signature210141%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self209948%_)
        (let ((_%self209951%_ _%self209948%_))
          (letrec ((_%clause-e209962%_
                    (lambda (_%clause209964%_)
                      (cdr (let ((__method212654
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause209964%_
                                     'typedecl))))
                             (if __method212654
                                 (let ()
                                   (declare (not safe))
                                   (__method212654 _%clause209964%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause209964%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e209962%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self209951%_
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
      (lambda (_%self209813%_)
        (let ((_%self209816%_ _%self209813%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209816%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209816%_
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
      (lambda (_%self209678%_)
        (let ((_%self209681%_ _%self209678%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209681%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209681%_
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
      (lambda (_%self209543%_)
        (let ((_%self209546%_ _%self209543%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209546%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
