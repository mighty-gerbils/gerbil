(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712949849)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp197704
                   (let ((__obj197698
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
                       (gxc#optimizer-info:::init! __obj197698))
                     __obj197698)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp197704)))))
    (define gxc#optimize!
      (lambda (_%ctx197307%_)
        (let ((__tmp197707
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx197307%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx197307%_)
                 (let ((__tmp197709
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp197708
                        (##structure-ref
                         _%ctx197307%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp197709 __tmp197708 '#t))
                 (let ((_%code197310%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx197307%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx197307%_
                    _%code197310%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp197706 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp197705 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197707
           gxc#current-compile-mutators
           __tmp197706
           gxc#current-compile-local-type
           __tmp197705))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx197293%_)
        (letrec ((_%load-it!197295%_
                  (lambda (_%id197305%_)
                    (if (let ((__tmp197710
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp197710 _%id197305%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id197305%_)
                          (let ((__tmp197711
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp197711 _%id197305%_ '#t)))))))
          (let* ((_%modid197297%_
                  (##structure-ref
                   _%ctx197293%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str197299%_ (symbol->string _%modid197297%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str197299%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str197299%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!197295%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!197295%_
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
      (lambda (_%ctx197230%_)
        (letrec* ((_%deps197232%_
                   (let* ((_%imports197283%_
                           (##structure-ref
                            _%ctx197230%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e197285%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx197230%_))))
                     (if _%$e197285%_
                         ((lambda (_%g197287197289%_)
                            (cons _%g197287197289%_ _%imports197283%_))
                          _%$e197285%_)
                         _%imports197283%_))))
          (let _%lp197234%_ ((_%rest197236%_ _%deps197232%_))
            (let* ((_%rest197237197245%_ _%rest197236%_)
                   (_%else197239197253%_ (lambda () '#!void))
                   (_%K197241197271%_
                    (lambda (_%rest197256%_ _%hd197257%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd197257%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp197713
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp197712
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197257%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp197713 __tmp197712))
                                '#!void
                                (begin
                                  (let ((_%$e197260%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd197257%_))))
                                    (if _%$e197260%_
                                        ((lambda (_%pre197263%_)
                                           (_%lp197234%_
                                            (cons _%pre197263%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd197257%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e197260%_)
                                        (_%lp197234%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197257%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd197257%_)))
                            (_%lp197234%_ _%rest197256%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd197257%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp197715
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp197714
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd197257%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp197715 __tmp197714))
                                    '#!void
                                    (begin
                                      (_%lp197234%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd197257%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd197257%_)))
                                (_%lp197234%_ _%rest197256%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd197257%_
                                     'gx#module-import::t))
                                  (_%lp197234%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd197257%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest197256%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd197257%_
                                         'gx#module-export::t))
                                      (_%lp197234%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd197257%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest197256%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd197257%_
                                             'gx#import-set::t))
                                          (_%lp197234%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd197257%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest197256%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd197257%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest197237197245%_))
                  (let ((_%hd197242197274%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197237197245%_)))
                        (_%tl197243197276%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197237197245%_))))
                    (let* ((_%hd197279%_ _%hd197242197274%_)
                           (_%rest197281%_ _%tl197243197276%_))
                      (_%K197241197271%_ _%rest197281%_ _%hd197279%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx197210%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx197210%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx197210%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht197212%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id197214%_
                    (##structure-ref
                     _%ctx197210%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod197216%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht197212%_ _%id197214%_)))
                   (_%$e197219%_ _%mod197216%_))
              (if _%$e197219%_
                  _%$e197219%_
                  (let* ((_%mod197222%_
                          (gxc#optimizer-import-ssxi _%ctx197210%_))
                         (_%val197227%_
                          (let ((_%$e197224%_ _%mod197222%_))
                            (if _%$e197224%_ _%$e197224%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht197212%_ _%id197214%_ _%val197227%_))
                    _%val197227%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx197208%_)
        (if (##structure-ref _%ctx197208%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx197208%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id197185%_)
        (letrec ((_%catch-e197187%_
                  (lambda (_%exn197206%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn197206%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn197206%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id197185%_))))
                    '#f))
                 (_%import-e197188%_
                  (lambda ()
                    (let* ((_%str-id197191%_
                            (let ((__tmp197716
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id197185%_))))
                              (declare (not safe))
                              (##string-append __tmp197716 '".ssxi")))
                           (_%artefact-path197199%_
                            (let ((_%odir197192197194%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir197192197194%_
                                  (let ((_%odir197197%_ _%odir197192197194%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id197191%_
                                        '".ss"))
                                     _%odir197197%_))
                                  '#f)))
                           (_%library-path197201%_
                            (let ((__tmp197717
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id197191%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp197717)))
                           (_%ssxi-path197203%_
                            (if (and _%artefact-path197199%_
                                     (file-exists? _%artefact-path197199%_))
                                _%artefact-path197199%_
                                _%library-path197201%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path197203%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path197203%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e197187%_ _%import-e197188%_)))))
    (define gxc#optimize-source
      (lambda (_%stx197176%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx197176%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx197176%_))
        (let* ((_%stx197178%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx197176%_)))
               (_%stx197180%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx197178%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx197180%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx197180%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx197180%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx197180%_))
          (let ((_%stx197183%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx197180%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx197183%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp197719 (list gxc#::generate-runtime-empty::t))
            (__tmp197718 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp197719
         '()
         __tmp197718
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args197173%_
        (apply make-instance gxc#::generate-ssxi::t _%$args197173%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp197720
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
        (__make-promise __tmp197720)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx197165%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self197168%_
                (let ((__obj197700
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj197700))
               (__tmp197721
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self197168%_ _%stx197165%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp197721
           gxc#current-compile-method
           _%self197168%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self197125%_ _%stx197126%_)
        (let* ((_%g197128197138%_
                (lambda (_%g197129197135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197129197135%_))))
               (_%g197127197162%_
                (lambda (_%g197129197141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197129197141%_))
                      (let ((_%e197131197143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197129197141%_))))
                        (let ((_%hd197132197146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197131197143%_)))
                              (_%tl197133197148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197131197143%_))))
                          ((lambda (_%L197151%_)
                             (let ((__tmp197724
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self197125%_
                                         _%stx197126%_))))
                                   (__tmp197722
                                    (let ((__tmp197723
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp197723 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp197724
                                gx#current-expander-phi
                                __tmp197722)))
                           _%tl197133197148%_)))
                      (_%g197128197138%_ _%g197129197141%_)))))
          (_%g197127197162%_ _%stx197126%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self197064%_ _%stx197065%_)
        (let* ((_%g197067197081%_
                (lambda (_%g197068197078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197068197078%_))))
               (_%g197066197122%_
                (lambda (_%g197068197084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197068197084%_))
                      (let ((_%e197071197086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197068197084%_))))
                        (let ((_%hd197072197089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197071197086%_)))
                              (_%tl197073197091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197071197086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197073197091%_))
                              (let ((_%e197074197094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197073197091%_))))
                                (let ((_%hd197075197097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197074197094%_)))
                                      (_%tl197076197099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197074197094%_))))
                                  ((lambda (_%L197102%_ _%L197103%_)
                                     (let* ((_%ctx197116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L197103%_)))
                                            (_%code197118%_
                                             (##structure-ref
                                              _%ctx197116%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp197725
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197064%_
                                                  _%code197118%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp197725
                                        gx#current-expander-context
                                        _%ctx197116%_)))
                                   _%tl197076197099%_
                                   _%hd197075197097%_)))
                              (_%g197067197081%_ _%g197068197084%_))))
                      (_%g197067197081%_ _%g197068197084%_)))))
          (_%g197066197122%_ _%stx197065%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self196869%_ _%stx196870%_)
        (letrec ((_%generate-e196872%_
                  (lambda (_%id197049%_)
                    (let* ((_%sym197051%_
                            (if (let ((__tmp197726
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp197726))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id197049%_))
                                '#f))
                           (_%$e197053%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym197051%_))))
                      (if _%$e197053%_
                          ((lambda (_%klass197056%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym197051%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym197051%_
                                                     (cons (let ((__method197701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass197056%_ 'typedecl))))
                     (if __method197701
                         (let ()
                           (declare (not safe))
                           (__method197701 _%klass197056%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass197056%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym197051%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym197051%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e197053%_)
                          (let ((_%$e197058%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym197051%_))))
                            (if _%$e197058%_
                                ((lambda (_%type197061%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym197051%_
                                      '" "
                                      _%type197061%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type197061%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym197051%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym197051%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type197061%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym197051%_
                                                   (cons (let ((__method197702
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type197061%_ 'typedecl))))
                   (if __method197702
                       (let ()
                         (declare (not safe))
                         (__method197702 _%type197061%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type197061%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e197058%_)
                                '(begin))))))))
          (let* ((_%__stx197313197314%_ _%stx196870%_)
                 (_%g196875196913%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx197313197314%_)))))
            (let ((_%__kont197315197316%_
                   (lambda (_%L197031%_) (_%generate-e196872%_ _%L197031%_)))
                  (_%__kont197317197318%_
                   (lambda (_%L196966%_)
                     (let ((_%types196992%_
                            (map _%generate-e196872%_
                                 (let ((__tmp197727
                                        (lambda (_%g196984196987%_
                                                 _%g196985196989%_)
                                          (cons _%g196984196987%_
                                                _%g196985196989%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp197727 '() _%L196966%_)))))
                       (cons 'begin _%types196992%_)))))
              (let ((_%__match197368197369%_
                     (lambda (_%e196891196918%_
                              _%hd196892196921%_
                              _%tl196893196923%_
                              _%e196894196926%_
                              _%hd196895196929%_
                              _%tl196896196931%_
                              _%__splice197319197320%_
                              _%target196897196934%_
                              _%tl196899196936%_)
                       (letrec ((_%loop196900196939%_
                                 (lambda (_%hd196898196942%_
                                          _%id196904196944%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd196898196942%_))
                                       (let ((_%e196901196947%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd196898196942%_))))
                                         (let ((_%lp-tl196903196952%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e196901196947%_)))
                                               (_%lp-hd196902196950%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e196901196947%_))))
                                           (_%loop196900196939%_
                                            _%lp-tl196903196952%_
                                            (cons _%lp-hd196902196950%_
                                                  _%id196904196944%_))))
                                       (let ((_%id196905196955%_
                                              (reverse _%id196904196944%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl196896196931%_))
                                             (let ((_%e196906196958%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl196896196931%_))))
                                               (let ((_%tl196908196963%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e196906196958%_)))
                                                     (_%hd196907196961%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e196906196958%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl196908196963%_))
                                                     (_%__kont197317197318%_
                                                      _%id196905196955%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g196875196913%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g196875196913%_))))))))
                         (_%loop196900196939%_ _%target196897196934%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx197313197314%_))
                    (let ((_%e196878196999%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx197313197314%_))))
                      (let ((_%tl196880197004%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196878196999%_)))
                            (_%hd196879197002%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196878196999%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl196880197004%_))
                            (let ((_%e196881197007%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl196880197004%_))))
                              (let ((_%tl196883197012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196881197007%_)))
                                    (_%hd196882197010%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196881197007%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd196882197010%_))
                                    (let ((_%e196884197015%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd196882197010%_))))
                                      (let ((_%tl196886197020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e196884197015%_)))
                                            (_%hd196885197018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e196884197015%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196886197020%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196883197012%_))
                                                (let ((_%e196887197023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196883197012%_))))
                                                  (let ((_%tl196889197028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196887197023%_)))
                                                        (_%hd196888197026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196887197023%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196889197028%_))
                                                        (_%__kont197315197316%_
                                                         _%hd196885197018%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd196882197010%_))
                                                            (let ((_%__splice197319197320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd196882197010%_ '0))))
                      (let ((_%tl196899196936%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice197319197320%_ '1)))
                            (_%target196897196934%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice197319197320%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl196899196936%_))
                            (_%__match197368197369%_
                             _%e196878196999%_
                             _%hd196879197002%_
                             _%tl196880197004%_
                             _%e196881197007%_
                             _%hd196882197010%_
                             _%tl196883197012%_
                             _%__splice197319197320%_
                             _%target196897196934%_
                             _%tl196899196936%_)
                            (let ()
                              (declare (not safe))
                              (_%g196875196913%_)))))
                    (let () (declare (not safe)) (_%g196875196913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd196882197010%_))
                                                    (let ((_%__splice197319197320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd196882197010%_
                                                              '0))))
                                                      (let ((_%tl196899196936%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice197319197320%_ '1)))
                    (_%target196897196934%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice197319197320%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196899196936%_))
                    (_%__match197368197369%_
                     _%e196878196999%_
                     _%hd196879197002%_
                     _%tl196880197004%_
                     _%e196881197007%_
                     _%hd196882197010%_
                     _%tl196883197012%_
                     _%__splice197319197320%_
                     _%target196897196934%_
                     _%tl196899196936%_)
                    (let () (declare (not safe)) (_%g196875196913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196875196913%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd196882197010%_))
                                                (let ((_%__splice197319197320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd196882197010%_
                                                          '0))))
                                                  (let ((_%tl196899196936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice197319197320%_
                                                            '1)))
                                                        (_%target196897196934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice197319197320%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196899196936%_))
                                                        (_%__match197368197369%_
                                                         _%e196878196999%_
                                                         _%hd196879197002%_
                                                         _%tl196880197004%_
                                                         _%e196881197007%_
                                                         _%hd196882197010%_
                                                         _%tl196883197012%_
                                                         _%__splice197319197320%_
                                                         _%target196897196934%_
                                                         _%tl196899196936%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196875196913%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196875196913%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd196882197010%_))
                                        (let ((_%__splice197319197320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd196882197010%_
                                                  '0))))
                                          (let ((_%tl196899196936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice197319197320%_
                                                    '1)))
                                                (_%target196897196934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice197319197320%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196899196936%_))
                                                (_%__match197368197369%_
                                                 _%e196878196999%_
                                                 _%hd196879197002%_
                                                 _%tl196880197004%_
                                                 _%e196881197007%_
                                                 _%hd196882197010%_
                                                 _%tl196883197012%_
                                                 _%__splice197319197320%_
                                                 _%target196897196934%_
                                                 _%tl196899196936%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196875196913%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g196875196913%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g196875196913%_)))))
                    (let () (declare (not safe)) (_%g196875196913%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self196422%_ _%stx196423%_)
        (let* ((_%__stx197371197372%_ _%stx196423%_)
               (_%g196427196529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197371197372%_)))))
          (let ((_%__kont197373197374%_
                 (lambda (_%L196819%_
                          _%L196820%_
                          _%L196821%_
                          _%L196822%_
                          _%L196823%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196822%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L196821%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L196820%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L196819%_))
                                                 '())))))))
                (_%__kont197375197376%_
                 (lambda (_%L196645%_ _%L196646%_ _%L196647%_ _%L196648%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196647%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L196646%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L196645%_))
                                           (cons '#f '())))))))
                (_%__kont197377197378%_ (lambda () '(begin))))
            (let ((_%__match197506197507%_
                   (lambda (_%e196434196691%_
                            _%hd196435196694%_
                            _%tl196436196696%_
                            _%e196437196699%_
                            _%hd196438196702%_
                            _%tl196439196704%_
                            _%e196440196707%_
                            _%hd196441196710%_
                            _%tl196442196712%_
                            _%e196443196715%_
                            _%hd196444196718%_
                            _%tl196445196720%_
                            _%e196446196723%_
                            _%hd196447196726%_
                            _%tl196448196728%_
                            _%e196449196731%_
                            _%hd196450196734%_
                            _%tl196451196736%_
                            _%e196452196739%_
                            _%hd196453196742%_
                            _%tl196454196744%_
                            _%e196455196747%_
                            _%hd196456196750%_
                            _%tl196457196752%_
                            _%e196458196755%_
                            _%hd196459196758%_
                            _%tl196460196760%_
                            _%e196461196763%_
                            _%hd196462196766%_
                            _%tl196463196768%_
                            _%e196464196771%_
                            _%hd196465196774%_
                            _%tl196466196776%_
                            _%e196467196779%_
                            _%hd196468196782%_
                            _%tl196469196784%_
                            _%e196470196787%_
                            _%hd196471196790%_
                            _%tl196472196792%_
                            _%e196473196795%_
                            _%hd196474196798%_
                            _%tl196475196800%_
                            _%e196476196803%_
                            _%hd196477196806%_
                            _%tl196478196808%_
                            _%e196479196811%_
                            _%hd196480196814%_
                            _%tl196481196816%_)
                     (let ((_%L196819%_ _%hd196480196814%_)
                           (_%L196820%_ _%hd196471196790%_)
                           (_%L196821%_ _%hd196462196766%_)
                           (_%L196822%_ _%hd196453196742%_)
                           (_%L196823%_ _%hd196444196718%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L196823%_
                              'bind-method!))
                           (_%__kont197373197374%_
                            _%L196819%_
                            _%L196820%_
                            _%L196821%_
                            _%L196822%_
                            _%L196823%_)
                           (_%__kont197377197378%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx197371197372%_))
                  (let ((_%e196434196691%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx197371197372%_))))
                    (let ((_%tl196436196696%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196434196691%_)))
                          (_%hd196435196694%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196434196691%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196436196696%_))
                          (let ((_%e196437196699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196436196696%_))))
                            (let ((_%tl196439196704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196437196699%_)))
                                  (_%hd196438196702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196437196699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196438196702%_))
                                  (let ((_%e196440196707%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196438196702%_))))
                                    (let ((_%tl196442196712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196440196707%_)))
                                          (_%hd196441196710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196440196707%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196441196710%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196441196710%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196442196712%_))
                                                  (let ((_%e196443196715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196442196712%_))))
                                                    (let ((_%tl196445196720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196443196715%_)))
                                                          (_%hd196444196718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196443196715%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196445196720%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196439196704%_))
                      (let ((_%e196446196723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196439196704%_))))
                        (let ((_%tl196448196728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196446196723%_)))
                              (_%hd196447196726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196446196723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196447196726%_))
                              (let ((_%e196449196731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196447196726%_))))
                                (let ((_%tl196451196736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196449196731%_)))
                                      (_%hd196450196734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196449196731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196450196734%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196450196734%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196451196736%_))
                                              (let ((_%e196452196739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196451196736%_))))
                                                (let ((_%tl196454196744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196452196739%_)))
                                                      (_%hd196453196742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196452196739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196454196744%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196448196728%_))
                                                          (let ((_%e196455196747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196448196728%_))))
                    (let ((_%tl196457196752%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196455196747%_)))
                          (_%hd196456196750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196455196747%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196456196750%_))
                          (let ((_%e196458196755%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196456196750%_))))
                            (let ((_%tl196460196760%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196458196755%_)))
                                  (_%hd196459196758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196458196755%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196459196758%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196459196758%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196460196760%_))
                                          (let ((_%e196461196763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196460196760%_))))
                                            (let ((_%tl196463196768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196461196763%_)))
                                                  (_%hd196462196766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196461196763%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196463196768%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196457196752%_))
                                                      (let ((_%e196464196771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl196457196752%_))))
                (let ((_%tl196466196776%_
                       (let () (declare (not safe)) (##cdr _%e196464196771%_)))
                      (_%hd196465196774%_
                       (let ()
                         (declare (not safe))
                         (##car _%e196464196771%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd196465196774%_))
                      (let ((_%e196467196779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196465196774%_))))
                        (let ((_%tl196469196784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196467196779%_)))
                              (_%hd196468196782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196467196779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd196468196782%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd196468196782%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196469196784%_))
                                      (let ((_%e196470196787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196469196784%_))))
                                        (let ((_%tl196472196792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196470196787%_)))
                                              (_%hd196471196790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196470196787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196472196792%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196466196776%_))
                                                  (let ((_%e196473196795%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196466196776%_))))
                                                    (let ((_%tl196475196800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196473196795%_)))
                                                          (_%hd196474196798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196473196795%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196474196798%_))
                                                          (let ((_%e196476196803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196474196798%_))))
                    (let ((_%tl196478196808%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196476196803%_)))
                          (_%hd196477196806%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196476196803%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd196477196806%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd196477196806%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196478196808%_))
                                  (let ((_%e196479196811%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196478196808%_))))
                                    (let ((_%tl196481196816%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196479196811%_)))
                                          (_%hd196480196814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196479196811%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196481196816%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196475196800%_))
                                              (_%__match197506197507%_
                                               _%e196434196691%_
                                               _%hd196435196694%_
                                               _%tl196436196696%_
                                               _%e196437196699%_
                                               _%hd196438196702%_
                                               _%tl196439196704%_
                                               _%e196440196707%_
                                               _%hd196441196710%_
                                               _%tl196442196712%_
                                               _%e196443196715%_
                                               _%hd196444196718%_
                                               _%tl196445196720%_
                                               _%e196446196723%_
                                               _%hd196447196726%_
                                               _%tl196448196728%_
                                               _%e196449196731%_
                                               _%hd196450196734%_
                                               _%tl196451196736%_
                                               _%e196452196739%_
                                               _%hd196453196742%_
                                               _%tl196454196744%_
                                               _%e196455196747%_
                                               _%hd196456196750%_
                                               _%tl196457196752%_
                                               _%e196458196755%_
                                               _%hd196459196758%_
                                               _%tl196460196760%_
                                               _%e196461196763%_
                                               _%hd196462196766%_
                                               _%tl196463196768%_
                                               _%e196464196771%_
                                               _%hd196465196774%_
                                               _%tl196466196776%_
                                               _%e196467196779%_
                                               _%hd196468196782%_
                                               _%tl196469196784%_
                                               _%e196470196787%_
                                               _%hd196471196790%_
                                               _%tl196472196792%_
                                               _%e196473196795%_
                                               _%hd196474196798%_
                                               _%tl196475196800%_
                                               _%e196476196803%_
                                               _%hd196477196806%_
                                               _%tl196478196808%_
                                               _%e196479196811%_
                                               _%hd196480196814%_
                                               _%tl196481196816%_)
                                              (_%__kont197377197378%_))
                                          (_%__kont197377197378%_))))
                                  (_%__kont197377197378%_))
                              (_%__kont197377197378%_))
                          (_%__kont197377197378%_))))
                  (_%__kont197377197378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196466196776%_))
                                                      (if (let ((__tmp197728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp197728 'bind-method!))
                  (let ((_%L196645%_ _%hd196471196790%_)
                        (_%L196646%_ _%hd196462196766%_)
                        (_%L196647%_ _%hd196453196742%_)
                        (_%L196648%_ _%hd196444196718%_))
                    (_%__kont197375197376%_
                     _%L196645%_
                     _%L196646%_
                     _%L196647%_
                     _%L196648%_))
                  (_%__kont197377197378%_))
              (_%__kont197377197378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197377197378%_))))
                                      (_%__kont197377197378%_))
                                  (_%__kont197377197378%_))
                              (_%__kont197377197378%_))))
                      (_%__kont197377197378%_))))
              (_%__kont197377197378%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197377197378%_))))
                                          (_%__kont197377197378%_))
                                      (_%__kont197377197378%_))
                                  (_%__kont197377197378%_))))
                          (_%__kont197377197378%_))))
                  (_%__kont197377197378%_))
              (_%__kont197377197378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont197377197378%_))
                                          (_%__kont197377197378%_))
                                      (_%__kont197377197378%_))))
                              (_%__kont197377197378%_))))
                      (_%__kont197377197378%_))
                  (_%__kont197377197378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont197377197378%_))
                                              (_%__kont197377197378%_))
                                          (_%__kont197377197378%_))))
                                  (_%__kont197377197378%_))))
                          (_%__kont197377197378%_))))
                  (_%__kont197377197378%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self196246%_ _%stx196247%_)
        (let* ((_%__stx197615197616%_ _%stx196247%_)
               (_%g196250196290%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx197615197616%_)))))
          (let ((_%__kont197617197618%_
                 (lambda (_%L196396%_ _%L196397%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L196397%_))
                               (cons _%L196396%_ '())))))
                (_%__kont197619197620%_
                 (lambda (_%L196319%_ _%L196320%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx197615197616%_))
                (let ((_%e196254196340%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx197615197616%_))))
                  (let ((_%tl196256196345%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196254196340%_)))
                        (_%hd196255196343%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196254196340%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196256196345%_))
                        (let ((_%e196257196348%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl196256196345%_))))
                          (let ((_%tl196259196353%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196257196348%_)))
                                (_%hd196258196351%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196257196348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd196258196351%_))
                                (let ((_%e196260196356%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd196258196351%_))))
                                  (let ((_%tl196262196361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196260196356%_)))
                                        (_%hd196261196359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196260196356%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd196261196359%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd196261196359%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196262196361%_))
                                                (let ((_%e196263196364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196262196361%_))))
                                                  (let ((_%tl196265196369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196263196364%_)))
                                                        (_%hd196264196367%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196263196364%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196265196369%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl196259196353%_))
                                                            (let ((_%e196266196372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196259196353%_))))
                      (let ((_%tl196268196377%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196266196372%_)))
                            (_%hd196267196375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196266196372%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd196267196375%_))
                            (let ((_%e196269196380%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd196267196375%_))))
                              (let ((_%tl196271196385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196269196380%_)))
                                    (_%hd196270196383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196269196380%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd196270196383%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd196270196383%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196271196385%_))
                                            (let ((_%e196272196388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196271196385%_))))
                                              (let ((_%tl196274196393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196272196388%_)))
                                                    (_%hd196273196391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196272196388%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl196274196393%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196268196377%_))
                                                        (_%__kont197617197618%_
                                                         _%hd196273196391%_
                                                         _%hd196264196367%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196250196290%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196268196377%_))
                                                        (_%__kont197619197620%_
                                                         _%hd196267196375%_
                                                         _%hd196258196351%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196250196290%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196268196377%_))
                                                (_%__kont197619197620%_
                                                 _%hd196267196375%_
                                                 _%hd196258196351%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196250196290%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196268196377%_))
                                            (_%__kont197619197620%_
                                             _%hd196267196375%_
                                             _%hd196258196351%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196250196290%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196268196377%_))
                                        (_%__kont197619197620%_
                                         _%hd196267196375%_
                                         _%hd196258196351%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g196250196290%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196268196377%_))
                                (_%__kont197619197620%_
                                 _%hd196267196375%_
                                 _%hd196258196351%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196250196290%_))))))
                    (let () (declare (not safe)) (_%g196250196290%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl196259196353%_))
                    (let ((_%e196283196311%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl196259196353%_))))
                      (let ((_%tl196285196316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196283196311%_)))
                            (_%hd196284196314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196283196311%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl196285196316%_))
                            (_%__kont197619197620%_
                             _%hd196284196314%_
                             _%hd196258196351%_)
                            (let ()
                              (declare (not safe))
                              (_%g196250196290%_)))))
                    (let () (declare (not safe)) (_%g196250196290%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl196259196353%_))
                                                    (let ((_%e196283196311%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl196259196353%_))))
                                                      (let ((_%tl196285196316%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e196283196311%_)))
                    (_%hd196284196314%_
                     (let () (declare (not safe)) (##car _%e196283196311%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl196285196316%_))
                    (_%__kont197619197620%_
                     _%hd196284196314%_
                     _%hd196258196351%_)
                    (let () (declare (not safe)) (_%g196250196290%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196250196290%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196259196353%_))
                                                (let ((_%e196283196311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196259196353%_))))
                                                  (let ((_%tl196285196316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196283196311%_)))
                                                        (_%hd196284196314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196283196311%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196285196316%_))
                                                        (_%__kont197619197620%_
                                                         _%hd196284196314%_
                                                         _%hd196258196351%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g196250196290%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196250196290%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196259196353%_))
                                            (let ((_%e196283196311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl196259196353%_))))
                                              (let ((_%tl196285196316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196283196311%_)))
                                                    (_%hd196284196314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196283196311%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl196285196316%_))
                                                    (_%__kont197619197620%_
                                                     _%hd196284196314%_
                                                     _%hd196258196351%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g196250196290%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g196250196290%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl196259196353%_))
                                    (let ((_%e196283196311%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl196259196353%_))))
                                      (let ((_%tl196285196316%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e196283196311%_)))
                                            (_%hd196284196314%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e196283196311%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196285196316%_))
                                            (_%__kont197619197620%_
                                             _%hd196284196314%_
                                             _%hd196258196351%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g196250196290%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g196250196290%_))))))
                        (let () (declare (not safe)) (_%g196250196290%_)))))
                (let () (declare (not safe)) (_%g196250196290%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self194440196231%_)
        (let* ((_%self196234%_ _%self194440196231%_)
               (_%self196236%_ _%self196234%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196236%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self194441196002%_)
        (let* ((_%self196005%_ _%self194441196002%_)
               (_%self196007%_ _%self196005%_)
               (_%self196016196032%_ _%self196007%_)
               (_%E196018196036%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196016196032%_
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
               (_%K196019196051%_
                (lambda (_%methods196039%_
                         _%metaclass196040%_
                         _%system?196041%_
                         _%final?196042%_
                         _%struct?196043%_
                         _%constructor196044%_
                         _%fields196045%_
                         _%slots196046%_
                         _%precendence-list196047%_
                         _%super196048%_
                         _%id196049%_)
                  (cons '@class
                        (cons _%id196049%_
                              (cons _%super196048%_
                                    (cons _%precendence-list196047%_
                                          (cons _%slots196046%_
                                                (cons _%fields196045%_
                                                      (cons _%constructor196044%_
                                                            (cons _%struct?196043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?196042%_
                                (cons _%system?196041%_
                                      (cons _%metaclass196040%_
                                            (cons (if _%methods196039%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods196039%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e196020196054%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '1 '#f '#f)))
               (_%id196057%_ _%e196020196054%_)
               (_%e196021196059%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '2 '#f '#f)))
               (_%super196062%_ _%e196021196059%_)
               (_%e196022196064%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '3 '#f '#f)))
               (_%precendence-list196067%_ _%e196022196064%_)
               (_%e196023196069%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '4 '#f '#f)))
               (_%slots196072%_ _%e196023196069%_)
               (_%e196024196074%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '5 '#f '#f)))
               (_%fields196077%_ _%e196024196074%_)
               (_%e196025196079%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '6 '#f '#f)))
               (_%constructor196082%_ _%e196025196079%_)
               (_%e196026196084%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '7 '#f '#f)))
               (_%struct?196087%_ _%e196026196084%_)
               (_%e196027196089%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '8 '#f '#f)))
               (_%final?196092%_ _%e196027196089%_)
               (_%e196028196094%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196016196032%_ '9 '#f '#f)))
               (_%system?196097%_ _%e196028196094%_)
               (_%e196029196099%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196016196032%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass196102%_ _%e196029196099%_)
               (_%e196030196104%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196016196032%_
                   '11
                   '#f
                   '#f)))
               (_%methods196107%_ _%e196030196104%_))
          (_%K196019196051%_
           _%methods196107%_
           _%metaclass196102%_
           _%system?196097%_
           _%final?196092%_
           _%struct?196087%_
           _%constructor196082%_
           _%fields196077%_
           _%slots196072%_
           _%precendence-list196067%_
           _%super196062%_
           _%id196057%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self194442195865%_)
        (let* ((_%self195868%_ _%self194442195865%_)
               (_%self195870%_ _%self195868%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195870%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self194443195728%_)
        (let* ((_%self195731%_ _%self194443195728%_)
               (_%self195733%_ _%self195731%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195733%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self194444195591%_)
        (let* ((_%self195594%_ _%self194444195591%_)
               (_%self195596%_ _%self195594%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195596%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195596%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195596%_
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
      (lambda (_%self194445195454%_)
        (let* ((_%self195457%_ _%self194445195454%_)
               (_%self195459%_ _%self195457%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195459%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195459%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self195459%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self194446195317%_)
        (let* ((_%self195320%_ _%self194446195317%_)
               (_%self195322%_ _%self195320%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195322%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195322%_
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
      (lambda (_%self194447195128%_)
        (let* ((_%self195131%_ _%self194447195128%_)
               (_%self195133%_ _%self195131%_)
               (_%self195142195151%_ _%self195133%_)
               (_%E195144195155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self195142195151%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K195145195174%_
                (lambda (_%dispatch195158%_
                         _%arity195159%_
                         _%signature195160%_)
                  (if _%signature195160%_
                      (let ((_%signature195162%_ _%signature195160%_))
                        (cons '@lambda
                              (cons _%arity195159%_
                                    (cons _%dispatch195158%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature195162%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature195162%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature195162%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature195162%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature195162%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity195159%_
                                  (cons _%dispatch195158%_ '()))))))
               (_%e195146195177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195142195151%_ '1 '#f '#f)))
               (_%e195147195180%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195142195151%_ '2 '#f '#f)))
               (_%signature195183%_ _%e195147195180%_)
               (_%e195148195185%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195142195151%_ '3 '#f '#f)))
               (_%arity195188%_ _%e195148195185%_)
               (_%e195149195190%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self195142195151%_ '4 '#f '#f)))
               (_%dispatch195193%_ _%e195149195190%_))
          (_%K195145195174%_
           _%dispatch195193%_
           _%arity195188%_
           _%signature195183%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self194448194987%_)
        (let* ((_%self194990%_ _%self194448194987%_)
               (_%self194992%_ _%self194990%_))
          (letrec ((_%clause-e195002%_
                    (lambda (_%clause195004%_)
                      (cdr (let ((__method197703
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause195004%_
                                     'typedecl))))
                             (if __method197703
                                 (let ()
                                   (declare (not safe))
                                   (__method197703 _%clause195004%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause195004%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e195002%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self194992%_
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
      (lambda (_%self194449194850%_)
        (let* ((_%self194853%_ _%self194449194850%_)
               (_%self194855%_ _%self194853%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194855%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194855%_
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
      (lambda (_%self194450194713%_)
        (let* ((_%self194716%_ _%self194450194713%_)
               (_%self194718%_ _%self194716%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194718%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self194718%_
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
      (lambda (_%self194451194576%_)
        (let* ((_%self194579%_ _%self194451194576%_)
               (_%self194581%_ _%self194579%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self194581%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
