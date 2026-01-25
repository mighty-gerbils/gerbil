(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1769384636)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp212811
                   (let ((__obj212805
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
                       (gxc#optimizer-info:::init! __obj212805))
                     __obj212805)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp212811)))))
    (define gxc#optimize!
      (lambda (_%ctx212413%_)
        (let ((__tmp212813
               (lambda ()
                 (let ((__tmp212815
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx212413%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx212413%_)
                          (let ((__tmp212817
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp212816
                                 (##structure-ref
                                  _%ctx212413%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212817 __tmp212816 '#t))
                          (let ((_%code212417%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx212413%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx212413%_
                             _%code212417%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp212814
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp212815
                    gxc#current-compile-local-type
                    __tmp212814))))
              (__tmp212812 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212813
           gxc#current-compile-mutators
           __tmp212812))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx212399%_)
        (letrec ((_%load-it!212401%_
                  (lambda (_%id212411%_)
                    (if (let ((__tmp212818
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp212818 _%id212411%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id212411%_)
                          (let ((__tmp212819
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212819 _%id212411%_ '#t)))))))
          (let* ((_%modid212403%_
                  (##structure-ref
                   _%ctx212399%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str212405%_ (symbol->string _%modid212403%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str212405%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str212405%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212401%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212401%_
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
      (lambda (_%ctx212336%_)
        (letrec* ((_%deps212338%_
                   (let* ((_%imports212389%_
                           (##structure-ref
                            _%ctx212336%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e212391%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx212336%_))))
                     (if _%$e212391%_
                         ((lambda (_%g212393212395%_)
                            (cons _%g212393212395%_ _%imports212389%_))
                          _%$e212391%_)
                         _%imports212389%_))))
          (let _%lp212340%_ ((_%rest212342%_ _%deps212338%_))
            (let* ((_%rest212343212351%_ _%rest212342%_)
                   (_%else212345212359%_ (lambda () '#!void))
                   (_%K212347212377%_
                    (lambda (_%rest212362%_ _%hd212363%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd212363%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp212821
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp212820
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212363%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp212821 __tmp212820))
                                '#!void
                                (begin
                                  (let ((_%$e212366%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd212363%_))))
                                    (if _%$e212366%_
                                        ((lambda (_%pre212369%_)
                                           (_%lp212340%_
                                            (cons _%pre212369%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd212363%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e212366%_)
                                        (_%lp212340%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212363%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd212363%_)))
                            (_%lp212340%_ _%rest212362%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd212363%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp212823
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp212822
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd212363%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp212823 __tmp212822))
                                    '#!void
                                    (begin
                                      (_%lp212340%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212363%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd212363%_)))
                                (_%lp212340%_ _%rest212362%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd212363%_
                                     'gx#module-import::t))
                                  (_%lp212340%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212363%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest212362%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd212363%_
                                         'gx#module-export::t))
                                      (_%lp212340%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd212363%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest212362%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd212363%_
                                             'gx#import-set::t))
                                          (_%lp212340%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd212363%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest212362%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd212363%_))))))))))
              (if (pair? _%rest212343212351%_)
                  (let ((_%hd212348212380%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212343212351%_)))
                        (_%tl212349212382%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212343212351%_))))
                    (let* ((_%hd212385%_ _%hd212348212380%_)
                           (_%rest212387%_ _%tl212349212382%_))
                      (_%K212347212377%_ _%rest212387%_ _%hd212385%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx212316%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx212316%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx212316%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht212318%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id212320%_
                    (##structure-ref
                     _%ctx212316%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod212322%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht212318%_ _%id212320%_)))
                   (_%$e212325%_ _%mod212322%_))
              (if _%$e212325%_
                  _%$e212325%_
                  (let* ((_%mod212328%_
                          (gxc#optimizer-import-ssxi _%ctx212316%_))
                         (_%val212333%_
                          (let ((_%$e212330%_ _%mod212328%_))
                            (if _%$e212330%_ _%$e212330%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht212318%_ _%id212320%_ _%val212333%_))
                    _%val212333%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx212314%_)
        (if (##structure-ref _%ctx212314%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx212314%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id212292%_)
        (letrec ((_%catch-e212294%_
                  (lambda (_%exn212312%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn212312%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn212312%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id212292%_))))
                    '#f))
                 (_%import-e212295%_
                  (lambda ()
                    (let* ((_%str-id212298%_
                            (let ((__tmp212824
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id212292%_))))
                              (declare (not safe))
                              (##string-append __tmp212824 '".ssxi")))
                           (_%artefact-path212305%_
                            (let ((_%odir212299212301%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir212299212301%_
                                  (let ((_%odir212303%_ _%odir212299212301%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id212298%_
                                        '".ss"))
                                     _%odir212303%_))
                                  '#f)))
                           (_%library-path212307%_
                            (let ((__tmp212825
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id212298%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp212825)))
                           (_%ssxi-path212309%_
                            (if (and _%artefact-path212305%_
                                     (file-exists? _%artefact-path212305%_))
                                _%artefact-path212305%_
                                _%library-path212307%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path212309%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path212309%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e212294%_ _%import-e212295%_)))))
    (define gxc#optimize-source
      (lambda (_%stx212277%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx212277%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx212277%_))
        (let* ((_%stx212279%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx212277%_)))
               (_%stx212281%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx212279%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx212281%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx212281%_))
          (let _%fixpoint212284%_ ((_%current212286%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx212281%_))
            (let ((_%refined212288%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current212286%_ _%refined212288%_)
                  '#!void
                  (_%fixpoint212284%_ _%refined212288%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx212281%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx212281%_))
          (let ((_%stx212290%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx212281%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx212290%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp212827 (list gxc#::generate-runtime-empty::t))
            (__tmp212826 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp212827
         '()
         __tmp212826
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args212274%_
        (apply make-instance gxc#::generate-ssxi::t _%$args212274%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp212828
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
        (__make-atomic-promise __tmp212828)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx212266%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self212269%_
                (let ((__obj212807
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj212807))
               (__tmp212829
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212269%_ _%stx212266%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212829
           gxc#current-compile-method
           _%self212269%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self212226%_ _%stx212227%_)
        (let* ((_%g212229212239%_
                (lambda (_%g212230212236%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212230212236%_))))
               (_%g212228212263%_
                (lambda (_%g212230212242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212230212242%_))
                      (let ((_%e212232212244%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212230212242%_))))
                        (let ((_%hd212233212247%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212232212244%_)))
                              (_%tl212234212249%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212232212244%_))))
                          ((lambda (_%g212231212252%_)
                             (let ((__tmp212832
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self212226%_
                                         _%stx212227%_))))
                                   (__tmp212830
                                    (let ((__tmp212831
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp212831 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp212832
                                gx#current-expander-phi
                                __tmp212830)))
                           _%tl212234212249%_)))
                      (_%g212229212239%_ _%g212230212242%_)))))
          (_%g212228212263%_ _%stx212227%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self212165%_ _%stx212166%_)
        (let* ((_%g212168212182%_
                (lambda (_%g212169212179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212169212179%_))))
               (_%g212167212223%_
                (lambda (_%g212169212185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212169212185%_))
                      (let ((_%e212172212187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212169212185%_))))
                        (let ((_%hd212173212190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212172212187%_)))
                              (_%tl212174212192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212172212187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212174212192%_))
                              (let ((_%e212175212195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212174212192%_))))
                                (let ((_%hd212176212198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212175212195%_)))
                                      (_%tl212177212200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212175212195%_))))
                                  ((lambda (_%g212170212203%_
                                            _%g212171212204%_)
                                     (let* ((_%ctx212217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g212171212204%_)))
                                            (_%code212219%_
                                             (##structure-ref
                                              _%ctx212217%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp212833
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self212165%_
                                                  _%code212219%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp212833
                                        gx#current-expander-context
                                        _%ctx212217%_)))
                                   _%tl212177212200%_
                                   _%hd212176212198%_)))
                              (_%g212168212182%_ _%g212169212185%_))))
                      (_%g212168212182%_ _%g212169212185%_)))))
          (_%g212167212223%_ _%stx212166%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self211972%_ _%stx211973%_)
        (letrec ((_%generate-e211975%_
                  (lambda (_%id212150%_)
                    (let* ((_%sym212152%_
                            (if (let ((__tmp212834
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp212834))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id212150%_))
                                '#f))
                           (_%$e212154%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym212152%_))))
                      (if _%$e212154%_
                          ((lambda (_%klass212157%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym212152%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym212152%_
                                                     (cons (let ((__method212808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass212157%_ 'typedecl))))
                     (if __method212808
                         (let ()
                           (declare (not safe))
                           (__method212808 _%klass212157%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass212157%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym212152%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym212152%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e212154%_)
                          (let ((_%$e212159%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym212152%_))))
                            (if _%$e212159%_
                                ((lambda (_%type212162%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym212152%_
                                      '" "
                                      _%type212162%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type212162%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym212152%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym212152%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type212162%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym212152%_
                                                   (cons (let ((__method212809
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type212162%_ 'typedecl))))
                   (if __method212809
                       (let ()
                         (declare (not safe))
                         (__method212809 _%type212162%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type212162%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e212159%_)
                                '(begin))))))))
          (let* ((_%__stx212420212421%_ _%stx211973%_)
                 (_%g211978212016%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx212420212421%_)))))
            (let ((_%__kont212422212423%_
                   (lambda (_%g211980212132%_)
                     (_%generate-e211975%_ _%g211980212132%_)))
                  (_%__kont212424212425%_
                   (lambda (_%g211993212067%_)
                     (let ((_%types212093%_
                            (map _%generate-e211975%_
                                 (let ((__tmp212835
                                        (lambda (_%g212085212088%_
                                                 _%g212086212090%_)
                                          (cons _%g212085212088%_
                                                _%g212086212090%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp212835
                                    '()
                                    _%g211993212067%_)))))
                       (cons 'begin _%types212093%_)))))
              (let ((_%__match212475212476%_
                     (lambda (_%e211994212021%_
                              _%hd211995212024%_
                              _%tl211996212026%_
                              _%e211997212029%_
                              _%hd211998212032%_
                              _%tl211999212034%_
                              _%__splice212426212427%_
                              _%target212000212037%_
                              _%tl212002212039%_)
                       (letrec ((_%loop212003212042%_
                                 (lambda (_%hd212001212045%_
                                          _%id212007212047%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd212001212045%_))
                                       (let ((_%e212004212049%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd212001212045%_))))
                                         (let ((_%lp-tl212006212054%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e212004212049%_)))
                                               (_%lp-hd212005212052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e212004212049%_))))
                                           (_%loop212003212042%_
                                            _%lp-tl212006212054%_
                                            (cons _%lp-hd212005212052%_
                                                  _%id212007212047%_))))
                                       (let ((_%id212008212057%_
                                              (reverse _%id212007212047%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl211999212034%_))
                                             (let ((_%e212009212059%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl211999212034%_))))
                                               (let ((_%tl212011212064%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e212009212059%_)))
                                                     (_%hd212010212062%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e212009212059%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl212011212064%_))
                                                     (_%__kont212424212425%_
                                                      _%id212008212057%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g211978212016%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g211978212016%_))))))))
                         (_%loop212003212042%_ _%target212000212037%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212420212421%_))
                    (let ((_%e211981212100%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212420212421%_))))
                      (let ((_%tl211983212105%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211981212100%_)))
                            (_%hd211982212103%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211981212100%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211983212105%_))
                            (let ((_%e211984212108%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211983212105%_))))
                              (let ((_%tl211986212113%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211984212108%_)))
                                    (_%hd211985212111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211984212108%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd211985212111%_))
                                    (let ((_%e211987212116%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd211985212111%_))))
                                      (let ((_%tl211989212121%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211987212116%_)))
                                            (_%hd211988212119%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211987212116%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211989212121%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211986212113%_))
                                                (let ((_%e211990212124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211986212113%_))))
                                                  (let ((_%tl211992212129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211990212124%_)))
                                                        (_%hd211991212127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211990212124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211992212129%_))
                                                        (_%__kont212422212423%_
                                                         _%hd211988212119%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd211985212111%_))
                                                            (let ((_%__splice212426212427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd211985212111%_
                              '0))))
                      (let ((_%tl212002212039%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212426212427%_ '1)))
                            (_%target212000212037%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212426212427%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl212002212039%_))
                            (_%__match212475212476%_
                             _%e211981212100%_
                             _%hd211982212103%_
                             _%tl211983212105%_
                             _%e211984212108%_
                             _%hd211985212111%_
                             _%tl211986212113%_
                             _%__splice212426212427%_
                             _%target212000212037%_
                             _%tl212002212039%_)
                            (let ()
                              (declare (not safe))
                              (_%g211978212016%_)))))
                    (let () (declare (not safe)) (_%g211978212016%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd211985212111%_))
                                                    (let ((_%__splice212426212427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd211985212111%_
                                                              '0))))
                                                      (let ((_%tl212002212039%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice212426212427%_ '1)))
                    (_%target212000212037%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice212426212427%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl212002212039%_))
                    (_%__match212475212476%_
                     _%e211981212100%_
                     _%hd211982212103%_
                     _%tl211983212105%_
                     _%e211984212108%_
                     _%hd211985212111%_
                     _%tl211986212113%_
                     _%__splice212426212427%_
                     _%target212000212037%_
                     _%tl212002212039%_)
                    (let () (declare (not safe)) (_%g211978212016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211978212016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd211985212111%_))
                                                (let ((_%__splice212426212427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd211985212111%_
                                                          '0))))
                                                  (let ((_%tl212002212039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212426212427%_
                                                            '1)))
                                                        (_%target212000212037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212426212427%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl212002212039%_))
                                                        (_%__match212475212476%_
                                                         _%e211981212100%_
                                                         _%hd211982212103%_
                                                         _%tl211983212105%_
                                                         _%e211984212108%_
                                                         _%hd211985212111%_
                                                         _%tl211986212113%_
                                                         _%__splice212426212427%_
                                                         _%target212000212037%_
                                                         _%tl212002212039%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211978212016%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211978212016%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd211985212111%_))
                                        (let ((_%__splice212426212427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd211985212111%_
                                                  '0))))
                                          (let ((_%tl212002212039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212426212427%_
                                                    '1)))
                                                (_%target212000212037%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212426212427%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl212002212039%_))
                                                (_%__match212475212476%_
                                                 _%e211981212100%_
                                                 _%hd211982212103%_
                                                 _%tl211983212105%_
                                                 _%e211984212108%_
                                                 _%hd211985212111%_
                                                 _%tl211986212113%_
                                                 _%__splice212426212427%_
                                                 _%target212000212037%_
                                                 _%tl212002212039%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211978212016%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g211978212016%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g211978212016%_)))))
                    (let () (declare (not safe)) (_%g211978212016%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self211525%_ _%stx211526%_)
        (let* ((_%__stx212478212479%_ _%stx211526%_)
               (_%g211530211632%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212478212479%_)))))
          (let ((_%__kont212480212481%_
                 (lambda (_%g211532211922%_
                          _%g211533211923%_
                          _%g211534211924%_
                          _%g211535211925%_
                          _%g211536211926%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211535211925%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g211534211924%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g211533211923%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g211532211922%_))
                                                 '())))))))
                (_%__kont212482212483%_
                 (lambda (_%g211585211748%_
                          _%g211586211749%_
                          _%g211587211750%_
                          _%g211588211751%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211587211750%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g211586211749%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g211585211748%_))
                                           (cons '#f '())))))))
                (_%__kont212484212485%_ (lambda () '(begin))))
            (let ((_%__match212613212614%_
                   (lambda (_%e211537211794%_
                            _%hd211538211797%_
                            _%tl211539211799%_
                            _%e211540211802%_
                            _%hd211541211805%_
                            _%tl211542211807%_
                            _%e211543211810%_
                            _%hd211544211813%_
                            _%tl211545211815%_
                            _%e211546211818%_
                            _%hd211547211821%_
                            _%tl211548211823%_
                            _%e211549211826%_
                            _%hd211550211829%_
                            _%tl211551211831%_
                            _%e211552211834%_
                            _%hd211553211837%_
                            _%tl211554211839%_
                            _%e211555211842%_
                            _%hd211556211845%_
                            _%tl211557211847%_
                            _%e211558211850%_
                            _%hd211559211853%_
                            _%tl211560211855%_
                            _%e211561211858%_
                            _%hd211562211861%_
                            _%tl211563211863%_
                            _%e211564211866%_
                            _%hd211565211869%_
                            _%tl211566211871%_
                            _%e211567211874%_
                            _%hd211568211877%_
                            _%tl211569211879%_
                            _%e211570211882%_
                            _%hd211571211885%_
                            _%tl211572211887%_
                            _%e211573211890%_
                            _%hd211574211893%_
                            _%tl211575211895%_
                            _%e211576211898%_
                            _%hd211577211901%_
                            _%tl211578211903%_
                            _%e211579211906%_
                            _%hd211580211909%_
                            _%tl211581211911%_
                            _%e211582211914%_
                            _%hd211583211917%_
                            _%tl211584211919%_)
                     (let ((_%g211532211922%_ _%hd211583211917%_)
                           (_%g211533211923%_ _%hd211574211893%_)
                           (_%g211534211924%_ _%hd211565211869%_)
                           (_%g211535211925%_ _%hd211556211845%_)
                           (_%g211536211926%_ _%hd211547211821%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g211536211926%_
                              'bind-method!))
                           (_%__kont212480212481%_
                            _%g211532211922%_
                            _%g211533211923%_
                            _%g211534211924%_
                            _%g211535211925%_
                            _%g211536211926%_)
                           (_%__kont212484212485%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212478212479%_))
                  (let ((_%e211537211794%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212478212479%_))))
                    (let ((_%tl211539211799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211537211794%_)))
                          (_%hd211538211797%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211537211794%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211539211799%_))
                          (let ((_%e211540211802%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211539211799%_))))
                            (let ((_%tl211542211807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211540211802%_)))
                                  (_%hd211541211805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211540211802%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211541211805%_))
                                  (let ((_%e211543211810%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211541211805%_))))
                                    (let ((_%tl211545211815%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211543211810%_)))
                                          (_%hd211544211813%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211543211810%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211544211813%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211544211813%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211545211815%_))
                                                  (let ((_%e211546211818%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211545211815%_))))
                                                    (let ((_%tl211548211823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211546211818%_)))
                                                          (_%hd211547211821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211546211818%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211548211823%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211542211807%_))
                      (let ((_%e211549211826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211542211807%_))))
                        (let ((_%tl211551211831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211549211826%_)))
                              (_%hd211550211829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211549211826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211550211829%_))
                              (let ((_%e211552211834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211550211829%_))))
                                (let ((_%tl211554211839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211552211834%_)))
                                      (_%hd211553211837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211552211834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211553211837%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211553211837%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211554211839%_))
                                              (let ((_%e211555211842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211554211839%_))))
                                                (let ((_%tl211557211847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211555211842%_)))
                                                      (_%hd211556211845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211555211842%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211557211847%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211551211831%_))
                                                          (let ((_%e211558211850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211551211831%_))))
                    (let ((_%tl211560211855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211558211850%_)))
                          (_%hd211559211853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211558211850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211559211853%_))
                          (let ((_%e211561211858%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211559211853%_))))
                            (let ((_%tl211563211863%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211561211858%_)))
                                  (_%hd211562211861%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211561211858%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211562211861%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd211562211861%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211563211863%_))
                                          (let ((_%e211564211866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211563211863%_))))
                                            (let ((_%tl211566211871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211564211866%_)))
                                                  (_%hd211565211869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211564211866%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211566211871%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211560211855%_))
                                                      (let ((_%e211567211874%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl211560211855%_))))
                (let ((_%tl211569211879%_
                       (let () (declare (not safe)) (##cdr _%e211567211874%_)))
                      (_%hd211568211877%_
                       (let ()
                         (declare (not safe))
                         (##car _%e211567211874%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd211568211877%_))
                      (let ((_%e211570211882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211568211877%_))))
                        (let ((_%tl211572211887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211570211882%_)))
                              (_%hd211571211885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211570211882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd211571211885%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd211571211885%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211572211887%_))
                                      (let ((_%e211573211890%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211572211887%_))))
                                        (let ((_%tl211575211895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211573211890%_)))
                                              (_%hd211574211893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211573211890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211575211895%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211569211879%_))
                                                  (let ((_%e211576211898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211569211879%_))))
                                                    (let ((_%tl211578211903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211576211898%_)))
                                                          (_%hd211577211901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211576211898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd211577211901%_))
                                                          (let ((_%e211579211906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd211577211901%_))))
                    (let ((_%tl211581211911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211579211906%_)))
                          (_%hd211580211909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211579211906%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd211580211909%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd211580211909%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211581211911%_))
                                  (let ((_%e211582211914%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl211581211911%_))))
                                    (let ((_%tl211584211919%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211582211914%_)))
                                          (_%hd211583211917%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211582211914%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl211584211919%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211578211903%_))
                                              (_%__match212613212614%_
                                               _%e211537211794%_
                                               _%hd211538211797%_
                                               _%tl211539211799%_
                                               _%e211540211802%_
                                               _%hd211541211805%_
                                               _%tl211542211807%_
                                               _%e211543211810%_
                                               _%hd211544211813%_
                                               _%tl211545211815%_
                                               _%e211546211818%_
                                               _%hd211547211821%_
                                               _%tl211548211823%_
                                               _%e211549211826%_
                                               _%hd211550211829%_
                                               _%tl211551211831%_
                                               _%e211552211834%_
                                               _%hd211553211837%_
                                               _%tl211554211839%_
                                               _%e211555211842%_
                                               _%hd211556211845%_
                                               _%tl211557211847%_
                                               _%e211558211850%_
                                               _%hd211559211853%_
                                               _%tl211560211855%_
                                               _%e211561211858%_
                                               _%hd211562211861%_
                                               _%tl211563211863%_
                                               _%e211564211866%_
                                               _%hd211565211869%_
                                               _%tl211566211871%_
                                               _%e211567211874%_
                                               _%hd211568211877%_
                                               _%tl211569211879%_
                                               _%e211570211882%_
                                               _%hd211571211885%_
                                               _%tl211572211887%_
                                               _%e211573211890%_
                                               _%hd211574211893%_
                                               _%tl211575211895%_
                                               _%e211576211898%_
                                               _%hd211577211901%_
                                               _%tl211578211903%_
                                               _%e211579211906%_
                                               _%hd211580211909%_
                                               _%tl211581211911%_
                                               _%e211582211914%_
                                               _%hd211583211917%_
                                               _%tl211584211919%_)
                                              (_%__kont212484212485%_))
                                          (_%__kont212484212485%_))))
                                  (_%__kont212484212485%_))
                              (_%__kont212484212485%_))
                          (_%__kont212484212485%_))))
                  (_%__kont212484212485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211569211879%_))
                                                      (if (let ((__tmp212836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp212836 'bind-method!))
                  (let ((_%g211585211748%_ _%hd211574211893%_)
                        (_%g211586211749%_ _%hd211565211869%_)
                        (_%g211587211750%_ _%hd211556211845%_)
                        (_%g211588211751%_ _%hd211547211821%_))
                    (_%__kont212482212483%_
                     _%g211585211748%_
                     _%g211586211749%_
                     _%g211587211750%_
                     _%g211588211751%_))
                  (_%__kont212484212485%_))
              (_%__kont212484212485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212484212485%_))))
                                      (_%__kont212484212485%_))
                                  (_%__kont212484212485%_))
                              (_%__kont212484212485%_))))
                      (_%__kont212484212485%_))))
              (_%__kont212484212485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212484212485%_))))
                                          (_%__kont212484212485%_))
                                      (_%__kont212484212485%_))
                                  (_%__kont212484212485%_))))
                          (_%__kont212484212485%_))))
                  (_%__kont212484212485%_))
              (_%__kont212484212485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212484212485%_))
                                          (_%__kont212484212485%_))
                                      (_%__kont212484212485%_))))
                              (_%__kont212484212485%_))))
                      (_%__kont212484212485%_))
                  (_%__kont212484212485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212484212485%_))
                                              (_%__kont212484212485%_))
                                          (_%__kont212484212485%_))))
                                  (_%__kont212484212485%_))))
                          (_%__kont212484212485%_))))
                  (_%__kont212484212485%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self211349%_ _%stx211350%_)
        (let* ((_%__stx212722212723%_ _%stx211350%_)
               (_%g211353211393%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212722212723%_)))))
          (let ((_%__kont212724212725%_
                 (lambda (_%g211355211499%_ _%g211356211500%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211356211500%_))
                               (cons _%g211355211499%_ '())))))
                (_%__kont212726212727%_
                 (lambda (_%g211378211422%_ _%g211379211423%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx212722212723%_))
                (let ((_%e211357211443%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx212722212723%_))))
                  (let ((_%tl211359211448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211357211443%_)))
                        (_%hd211358211446%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211357211443%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211359211448%_))
                        (let ((_%e211360211451%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211359211448%_))))
                          (let ((_%tl211362211456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211360211451%_)))
                                (_%hd211361211454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211360211451%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd211361211454%_))
                                (let ((_%e211363211459%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd211361211454%_))))
                                  (let ((_%tl211365211464%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211363211459%_)))
                                        (_%hd211364211462%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211363211459%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd211364211462%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd211364211462%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211365211464%_))
                                                (let ((_%e211366211467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211365211464%_))))
                                                  (let ((_%tl211368211472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211366211467%_)))
                                                        (_%hd211367211470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211366211467%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211368211472%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211362211456%_))
                                                            (let ((_%e211369211475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211362211456%_))))
                      (let ((_%tl211371211480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211369211475%_)))
                            (_%hd211370211478%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211369211475%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd211370211478%_))
                            (let ((_%e211372211483%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd211370211478%_))))
                              (let ((_%tl211374211488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211372211483%_)))
                                    (_%hd211373211486%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211372211483%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211373211486%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd211373211486%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211374211488%_))
                                            (let ((_%e211375211491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211374211488%_))))
                                              (let ((_%tl211377211496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211375211491%_)))
                                                    (_%hd211376211494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211375211491%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211377211496%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211371211480%_))
                                                        (_%__kont212724212725%_
                                                         _%hd211376211494%_
                                                         _%hd211367211470%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211353211393%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211371211480%_))
                                                        (_%__kont212726212727%_
                                                         _%hd211370211478%_
                                                         _%hd211361211454%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211353211393%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211371211480%_))
                                                (_%__kont212726212727%_
                                                 _%hd211370211478%_
                                                 _%hd211361211454%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211353211393%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211371211480%_))
                                            (_%__kont212726212727%_
                                             _%hd211370211478%_
                                             _%hd211361211454%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211353211393%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211371211480%_))
                                        (_%__kont212726212727%_
                                         _%hd211370211478%_
                                         _%hd211361211454%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g211353211393%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211371211480%_))
                                (_%__kont212726212727%_
                                 _%hd211370211478%_
                                 _%hd211361211454%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211353211393%_))))))
                    (let () (declare (not safe)) (_%g211353211393%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl211362211456%_))
                    (let ((_%e211386211414%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211362211456%_))))
                      (let ((_%tl211388211419%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211386211414%_)))
                            (_%hd211387211417%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211386211414%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211388211419%_))
                            (_%__kont212726212727%_
                             _%hd211387211417%_
                             _%hd211361211454%_)
                            (let ()
                              (declare (not safe))
                              (_%g211353211393%_)))))
                    (let () (declare (not safe)) (_%g211353211393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl211362211456%_))
                                                    (let ((_%e211386211414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl211362211456%_))))
                                                      (let ((_%tl211388211419%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211386211414%_)))
                    (_%hd211387211417%_
                     (let () (declare (not safe)) (##car _%e211386211414%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211388211419%_))
                    (_%__kont212726212727%_
                     _%hd211387211417%_
                     _%hd211361211454%_)
                    (let () (declare (not safe)) (_%g211353211393%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211353211393%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211362211456%_))
                                                (let ((_%e211386211414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211362211456%_))))
                                                  (let ((_%tl211388211419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211386211414%_)))
                                                        (_%hd211387211417%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211386211414%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211388211419%_))
                                                        (_%__kont212726212727%_
                                                         _%hd211387211417%_
                                                         _%hd211361211454%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211353211393%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211353211393%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211362211456%_))
                                            (let ((_%e211386211414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211362211456%_))))
                                              (let ((_%tl211388211419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211386211414%_)))
                                                    (_%hd211387211417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211386211414%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211388211419%_))
                                                    (_%__kont212726212727%_
                                                     _%hd211387211417%_
                                                     _%hd211361211454%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211353211393%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g211353211393%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211362211456%_))
                                    (let ((_%e211386211414%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211362211456%_))))
                                      (let ((_%tl211388211419%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211386211414%_)))
                                            (_%hd211387211417%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211386211414%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211388211419%_))
                                            (_%__kont212726212727%_
                                             _%hd211387211417%_
                                             _%hd211361211454%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211353211393%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g211353211393%_))))))
                        (let () (declare (not safe)) (_%g211353211393%_)))))
                (let () (declare (not safe)) (_%g211353211393%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self211336%_)
        (let ((_%self211339%_ _%self211336%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self211339%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self211110%_)
        (let* ((_%self211113%_ _%self211110%_)
               (_%self211122211138%_ _%self211113%_)
               (_%E211124211141%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self211122211138%_
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
               (_%K211125211156%_
                (lambda (_%methods211144%_
                         _%metaclass211145%_
                         _%system?211146%_
                         _%final?211147%_
                         _%struct?211148%_
                         _%constructor211149%_
                         _%fields211150%_
                         _%slots211151%_
                         _%precendence-list211152%_
                         _%super211153%_
                         _%id211154%_)
                  (cons '@class
                        (cons _%id211154%_
                              (cons _%super211153%_
                                    (cons _%precendence-list211152%_
                                          (cons _%slots211151%_
                                                (cons _%fields211150%_
                                                      (cons _%constructor211149%_
                                                            (cons _%struct?211148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?211147%_
                                (cons _%system?211146%_
                                      (cons _%metaclass211145%_
                                            (cons (if _%methods211144%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods211144%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e211126211159%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '1 '#f '#f)))
               (_%id211162%_ _%e211126211159%_)
               (_%e211127211164%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '2 '#f '#f)))
               (_%super211167%_ _%e211127211164%_)
               (_%e211128211169%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '3 '#f '#f)))
               (_%precendence-list211172%_ _%e211128211169%_)
               (_%e211129211174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '4 '#f '#f)))
               (_%slots211177%_ _%e211129211174%_)
               (_%e211130211179%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '5 '#f '#f)))
               (_%fields211182%_ _%e211130211179%_)
               (_%e211131211184%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '6 '#f '#f)))
               (_%constructor211187%_ _%e211131211184%_)
               (_%e211132211189%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '7 '#f '#f)))
               (_%struct?211192%_ _%e211132211189%_)
               (_%e211133211194%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '8 '#f '#f)))
               (_%final?211197%_ _%e211133211194%_)
               (_%e211134211199%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211122211138%_ '9 '#f '#f)))
               (_%system?211202%_ _%e211134211199%_)
               (_%e211135211204%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211122211138%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass211207%_ _%e211135211204%_)
               (_%e211136211209%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211122211138%_
                   '11
                   '#f
                   '#f)))
               (_%methods211212%_ _%e211136211209%_))
          (_%K211125211156%_
           _%methods211212%_
           _%metaclass211207%_
           _%system?211202%_
           _%final?211197%_
           _%struct?211192%_
           _%constructor211187%_
           _%fields211182%_
           _%slots211177%_
           _%precendence-list211172%_
           _%super211167%_
           _%id211162%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self210975%_)
        (let ((_%self210978%_ _%self210975%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210978%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self210840%_)
        (let ((_%self210843%_ _%self210840%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210843%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self210705%_)
        (let ((_%self210708%_ _%self210705%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210708%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210708%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210708%_
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
      (lambda (_%self210570%_)
        (let ((_%self210573%_ _%self210570%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210573%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210573%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210573%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self210435%_)
        (let ((_%self210438%_ _%self210435%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210438%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210438%_
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
      (lambda (_%self210249%_)
        (let* ((_%self210252%_ _%self210249%_)
               (_%self210261210270%_ _%self210252%_)
               (_%E210263210273%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210261210270%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K210264210292%_
                (lambda (_%dispatch210276%_
                         _%arity210277%_
                         _%signature210278%_)
                  (if _%signature210278%_
                      (let ((_%signature210280%_ _%signature210278%_))
                        (cons '@lambda
                              (cons _%arity210277%_
                                    (cons _%dispatch210276%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature210280%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature210280%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature210280%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature210280%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature210280%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity210277%_
                                  (cons _%dispatch210276%_ '()))))))
               (_%e210265210295%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210261210270%_ '1 '#f '#f)))
               (_%e210266210298%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210261210270%_ '2 '#f '#f)))
               (_%signature210301%_ _%e210266210298%_)
               (_%e210267210303%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210261210270%_ '3 '#f '#f)))
               (_%arity210306%_ _%e210267210303%_)
               (_%e210268210308%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210261210270%_ '4 '#f '#f)))
               (_%dispatch210311%_ _%e210268210308%_))
          (_%K210264210292%_
           _%dispatch210311%_
           _%arity210306%_
           _%signature210301%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self210109%_)
        (let ((_%self210112%_ _%self210109%_))
          (letrec ((_%clause-e210123%_
                    (lambda (_%clause210125%_)
                      (cdr (let ((__method212810
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause210125%_
                                     'typedecl))))
                             (if __method212810
                                 (let ()
                                   (declare (not safe))
                                   (__method212810 _%clause210125%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause210125%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e210123%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self210112%_
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
      (lambda (_%self209974%_)
        (let ((_%self209977%_ _%self209974%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209977%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209977%_
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
      (lambda (_%self209839%_)
        (let ((_%self209842%_ _%self209839%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209842%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209842%_
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
      (lambda (_%self209704%_)
        (let ((_%self209707%_ _%self209704%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209707%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
