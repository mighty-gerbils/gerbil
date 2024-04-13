(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713000284)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200114
                   (let ((__obj200108
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
                       (gxc#optimizer-info:::init! __obj200108))
                     __obj200108)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200114)))))
    (define gxc#optimize!
      (lambda (_%ctx199717%_)
        (let ((__tmp200117
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx199717%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx199717%_)
                 (let ((__tmp200119
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200118
                        (##structure-ref
                         _%ctx199717%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200119 __tmp200118 '#t))
                 (let ((_%code199720%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx199717%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx199717%_
                    _%code199720%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200116 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200115 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200117
           gxc#current-compile-mutators
           __tmp200116
           gxc#current-compile-local-type
           __tmp200115))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx199703%_)
        (letrec ((_%load-it!199705%_
                  (lambda (_%id199715%_)
                    (if (let ((__tmp200120
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200120 _%id199715%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id199715%_)
                          (let ((__tmp200121
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200121 _%id199715%_ '#t)))))))
          (let* ((_%modid199707%_
                  (##structure-ref
                   _%ctx199703%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str199709%_ (symbol->string _%modid199707%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str199709%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str199709%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!199705%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!199705%_
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
      (lambda (_%ctx199640%_)
        (letrec* ((_%deps199642%_
                   (let* ((_%imports199693%_
                           (##structure-ref
                            _%ctx199640%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e199695%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx199640%_))))
                     (if _%$e199695%_
                         ((lambda (_%g199697199699%_)
                            (cons _%g199697199699%_ _%imports199693%_))
                          _%$e199695%_)
                         _%imports199693%_))))
          (let _%lp199644%_ ((_%rest199646%_ _%deps199642%_))
            (let* ((_%rest199647199655%_ _%rest199646%_)
                   (_%else199649199663%_ (lambda () '#!void))
                   (_%K199651199681%_
                    (lambda (_%rest199666%_ _%hd199667%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd199667%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200123
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200122
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd199667%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200123 __tmp200122))
                                '#!void
                                (begin
                                  (let ((_%$e199670%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd199667%_))))
                                    (if _%$e199670%_
                                        ((lambda (_%pre199673%_)
                                           (_%lp199644%_
                                            (cons _%pre199673%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd199667%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e199670%_)
                                        (_%lp199644%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd199667%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd199667%_)))
                            (_%lp199644%_ _%rest199666%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd199667%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200125
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200124
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd199667%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200125 __tmp200124))
                                    '#!void
                                    (begin
                                      (_%lp199644%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd199667%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd199667%_)))
                                (_%lp199644%_ _%rest199666%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd199667%_
                                     'gx#module-import::t))
                                  (_%lp199644%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd199667%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest199666%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd199667%_
                                         'gx#module-export::t))
                                      (_%lp199644%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd199667%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest199666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd199667%_
                                             'gx#import-set::t))
                                          (_%lp199644%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd199667%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest199666%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd199667%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest199647199655%_))
                  (let ((_%hd199652199684%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199647199655%_)))
                        (_%tl199653199686%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199647199655%_))))
                    (let* ((_%hd199689%_ _%hd199652199684%_)
                           (_%rest199691%_ _%tl199653199686%_))
                      (_%K199651199681%_ _%rest199691%_ _%hd199689%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx199620%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx199620%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx199620%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht199622%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id199624%_
                    (##structure-ref
                     _%ctx199620%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod199626%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht199622%_ _%id199624%_)))
                   (_%$e199629%_ _%mod199626%_))
              (if _%$e199629%_
                  _%$e199629%_
                  (let* ((_%mod199632%_
                          (gxc#optimizer-import-ssxi _%ctx199620%_))
                         (_%val199637%_
                          (let ((_%$e199634%_ _%mod199632%_))
                            (if _%$e199634%_ _%$e199634%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht199622%_ _%id199624%_ _%val199637%_))
                    _%val199637%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx199618%_)
        (if (##structure-ref _%ctx199618%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx199618%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id199595%_)
        (letrec ((_%catch-e199597%_
                  (lambda (_%exn199616%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn199616%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn199616%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id199595%_))))
                    '#f))
                 (_%import-e199598%_
                  (lambda ()
                    (let* ((_%str-id199601%_
                            (let ((__tmp200126
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id199595%_))))
                              (declare (not safe))
                              (##string-append __tmp200126 '".ssxi")))
                           (_%artefact-path199609%_
                            (let ((_%odir199602199604%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir199602199604%_
                                  (let ((_%odir199607%_ _%odir199602199604%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id199601%_
                                        '".ss"))
                                     _%odir199607%_))
                                  '#f)))
                           (_%library-path199611%_
                            (let ((__tmp200127
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id199601%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200127)))
                           (_%ssxi-path199613%_
                            (if (and _%artefact-path199609%_
                                     (file-exists? _%artefact-path199609%_))
                                _%artefact-path199609%_
                                _%library-path199611%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path199613%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path199613%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e199597%_ _%import-e199598%_)))))
    (define gxc#optimize-source
      (lambda (_%stx199580%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx199580%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx199580%_))
        (let* ((_%stx199582%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx199580%_)))
               (_%stx199584%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx199582%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx199584%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx199584%_))
          (let _%fixpoint199587%_ ((_%current199589%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx199584%_))
            (let ((_%refined199591%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current199589%_ _%refined199591%_)
                  '#!void
                  (_%fixpoint199587%_ _%refined199591%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx199584%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx199584%_))
          (let ((_%stx199593%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx199584%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx199593%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200129 (list gxc#::generate-runtime-empty::t))
            (__tmp200128 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200129
         '()
         __tmp200128
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args199577%_
        (apply make-instance gxc#::generate-ssxi::t _%$args199577%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200130
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
        (__make-promise __tmp200130)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx199569%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self199572%_
                (let ((__obj200110
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200110))
               (__tmp200131
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self199572%_ _%stx199569%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200131
           gxc#current-compile-method
           _%self199572%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self199529%_ _%stx199530%_)
        (let* ((_%g199532199542%_
                (lambda (_%g199533199539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199533199539%_))))
               (_%g199531199566%_
                (lambda (_%g199533199545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199533199545%_))
                      (let ((_%e199535199547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199533199545%_))))
                        (let ((_%hd199536199550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199535199547%_)))
                              (_%tl199537199552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199535199547%_))))
                          ((lambda (_%L199555%_)
                             (let ((__tmp200134
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self199529%_
                                         _%stx199530%_))))
                                   (__tmp200132
                                    (let ((__tmp200133
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200133 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200134
                                gx#current-expander-phi
                                __tmp200132)))
                           _%tl199537199552%_)))
                      (_%g199532199542%_ _%g199533199545%_)))))
          (_%g199531199566%_ _%stx199530%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self199468%_ _%stx199469%_)
        (let* ((_%g199471199485%_
                (lambda (_%g199472199482%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199472199482%_))))
               (_%g199470199526%_
                (lambda (_%g199472199488%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199472199488%_))
                      (let ((_%e199475199490%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199472199488%_))))
                        (let ((_%hd199476199493%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199475199490%_)))
                              (_%tl199477199495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199475199490%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199477199495%_))
                              (let ((_%e199478199498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199477199495%_))))
                                (let ((_%hd199479199501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199478199498%_)))
                                      (_%tl199480199503%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199478199498%_))))
                                  ((lambda (_%L199506%_ _%L199507%_)
                                     (let* ((_%ctx199520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L199507%_)))
                                            (_%code199522%_
                                             (##structure-ref
                                              _%ctx199520%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200135
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199468%_
                                                  _%code199522%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200135
                                        gx#current-expander-context
                                        _%ctx199520%_)))
                                   _%tl199480199503%_
                                   _%hd199479199501%_)))
                              (_%g199471199485%_ _%g199472199488%_))))
                      (_%g199471199485%_ _%g199472199488%_)))))
          (_%g199470199526%_ _%stx199469%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self199273%_ _%stx199274%_)
        (letrec ((_%generate-e199276%_
                  (lambda (_%id199453%_)
                    (let* ((_%sym199455%_
                            (if (let ((__tmp200136
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200136))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id199453%_))
                                '#f))
                           (_%$e199457%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym199455%_))))
                      (if _%$e199457%_
                          ((lambda (_%klass199460%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym199455%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym199455%_
                                                     (cons (let ((__method200111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass199460%_ 'typedecl))))
                     (if __method200111
                         (let ()
                           (declare (not safe))
                           (__method200111 _%klass199460%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass199460%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym199455%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym199455%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e199457%_)
                          (let ((_%$e199462%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym199455%_))))
                            (if _%$e199462%_
                                ((lambda (_%type199465%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym199455%_
                                      '" "
                                      _%type199465%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type199465%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym199455%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym199455%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type199465%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym199455%_
                                                   (cons (let ((__method200112
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type199465%_ 'typedecl))))
                   (if __method200112
                       (let ()
                         (declare (not safe))
                         (__method200112 _%type199465%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type199465%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e199462%_)
                                '(begin))))))))
          (let* ((_%__stx199723199724%_ _%stx199274%_)
                 (_%g199279199317%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx199723199724%_)))))
            (let ((_%__kont199725199726%_
                   (lambda (_%L199435%_) (_%generate-e199276%_ _%L199435%_)))
                  (_%__kont199727199728%_
                   (lambda (_%L199370%_)
                     (let ((_%types199396%_
                            (map _%generate-e199276%_
                                 (let ((__tmp200137
                                        (lambda (_%g199388199391%_
                                                 _%g199389199393%_)
                                          (cons _%g199388199391%_
                                                _%g199389199393%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200137 '() _%L199370%_)))))
                       (cons 'begin _%types199396%_)))))
              (let ((_%__match199778199779%_
                     (lambda (_%e199295199322%_
                              _%hd199296199325%_
                              _%tl199297199327%_
                              _%e199298199330%_
                              _%hd199299199333%_
                              _%tl199300199335%_
                              _%__splice199729199730%_
                              _%target199301199338%_
                              _%tl199303199340%_)
                       (letrec ((_%loop199304199343%_
                                 (lambda (_%hd199302199346%_
                                          _%id199308199348%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199302199346%_))
                                       (let ((_%e199305199351%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199302199346%_))))
                                         (let ((_%lp-tl199307199356%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199305199351%_)))
                                               (_%lp-hd199306199354%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199305199351%_))))
                                           (_%loop199304199343%_
                                            _%lp-tl199307199356%_
                                            (cons _%lp-hd199306199354%_
                                                  _%id199308199348%_))))
                                       (let ((_%id199309199359%_
                                              (reverse _%id199308199348%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl199300199335%_))
                                             (let ((_%e199310199362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl199300199335%_))))
                                               (let ((_%tl199312199367%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199310199362%_)))
                                                     (_%hd199311199365%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199310199362%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl199312199367%_))
                                                     (_%__kont199727199728%_
                                                      _%id199309199359%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199279199317%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g199279199317%_))))))))
                         (_%loop199304199343%_ _%target199301199338%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx199723199724%_))
                    (let ((_%e199282199403%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx199723199724%_))))
                      (let ((_%tl199284199408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199282199403%_)))
                            (_%hd199283199406%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199282199403%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199284199408%_))
                            (let ((_%e199285199411%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199284199408%_))))
                              (let ((_%tl199287199416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199285199411%_)))
                                    (_%hd199286199414%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199285199411%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199286199414%_))
                                    (let ((_%e199288199419%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199286199414%_))))
                                      (let ((_%tl199290199424%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199288199419%_)))
                                            (_%hd199289199422%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199288199419%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199290199424%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199287199416%_))
                                                (let ((_%e199291199427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199287199416%_))))
                                                  (let ((_%tl199293199432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199291199427%_)))
                                                        (_%hd199292199430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199291199427%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199293199432%_))
                                                        (_%__kont199725199726%_
                                                         _%hd199289199422%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd199286199414%_))
                                                            (let ((_%__splice199729199730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd199286199414%_ '0))))
                      (let ((_%tl199303199340%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice199729199730%_ '1)))
                            (_%target199301199338%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice199729199730%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199303199340%_))
                            (_%__match199778199779%_
                             _%e199282199403%_
                             _%hd199283199406%_
                             _%tl199284199408%_
                             _%e199285199411%_
                             _%hd199286199414%_
                             _%tl199287199416%_
                             _%__splice199729199730%_
                             _%target199301199338%_
                             _%tl199303199340%_)
                            (let ()
                              (declare (not safe))
                              (_%g199279199317%_)))))
                    (let () (declare (not safe)) (_%g199279199317%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd199286199414%_))
                                                    (let ((_%__splice199729199730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd199286199414%_
                                                              '0))))
                                                      (let ((_%tl199303199340%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice199729199730%_ '1)))
                    (_%target199301199338%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice199729199730%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199303199340%_))
                    (_%__match199778199779%_
                     _%e199282199403%_
                     _%hd199283199406%_
                     _%tl199284199408%_
                     _%e199285199411%_
                     _%hd199286199414%_
                     _%tl199287199416%_
                     _%__splice199729199730%_
                     _%target199301199338%_
                     _%tl199303199340%_)
                    (let () (declare (not safe)) (_%g199279199317%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199279199317%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd199286199414%_))
                                                (let ((_%__splice199729199730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd199286199414%_
                                                          '0))))
                                                  (let ((_%tl199303199340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice199729199730%_
                                                            '1)))
                                                        (_%target199301199338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice199729199730%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199303199340%_))
                                                        (_%__match199778199779%_
                                                         _%e199282199403%_
                                                         _%hd199283199406%_
                                                         _%tl199284199408%_
                                                         _%e199285199411%_
                                                         _%hd199286199414%_
                                                         _%tl199287199416%_
                                                         _%__splice199729199730%_
                                                         _%target199301199338%_
                                                         _%tl199303199340%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199279199317%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199279199317%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd199286199414%_))
                                        (let ((_%__splice199729199730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd199286199414%_
                                                  '0))))
                                          (let ((_%tl199303199340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199729199730%_
                                                    '1)))
                                                (_%target199301199338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199729199730%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199303199340%_))
                                                (_%__match199778199779%_
                                                 _%e199282199403%_
                                                 _%hd199283199406%_
                                                 _%tl199284199408%_
                                                 _%e199285199411%_
                                                 _%hd199286199414%_
                                                 _%tl199287199416%_
                                                 _%__splice199729199730%_
                                                 _%target199301199338%_
                                                 _%tl199303199340%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199279199317%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199279199317%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g199279199317%_)))))
                    (let () (declare (not safe)) (_%g199279199317%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self198826%_ _%stx198827%_)
        (let* ((_%__stx199781199782%_ _%stx198827%_)
               (_%g198831198933%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199781199782%_)))))
          (let ((_%__kont199783199784%_
                 (lambda (_%L199223%_
                          _%L199224%_
                          _%L199225%_
                          _%L199226%_
                          _%L199227%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199226%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199225%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199224%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L199223%_))
                                                 '())))))))
                (_%__kont199785199786%_
                 (lambda (_%L199049%_ _%L199050%_ _%L199051%_ _%L199052%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199051%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199050%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199049%_))
                                           (cons '#f '())))))))
                (_%__kont199787199788%_ (lambda () '(begin))))
            (let ((_%__match199916199917%_
                   (lambda (_%e198838199095%_
                            _%hd198839199098%_
                            _%tl198840199100%_
                            _%e198841199103%_
                            _%hd198842199106%_
                            _%tl198843199108%_
                            _%e198844199111%_
                            _%hd198845199114%_
                            _%tl198846199116%_
                            _%e198847199119%_
                            _%hd198848199122%_
                            _%tl198849199124%_
                            _%e198850199127%_
                            _%hd198851199130%_
                            _%tl198852199132%_
                            _%e198853199135%_
                            _%hd198854199138%_
                            _%tl198855199140%_
                            _%e198856199143%_
                            _%hd198857199146%_
                            _%tl198858199148%_
                            _%e198859199151%_
                            _%hd198860199154%_
                            _%tl198861199156%_
                            _%e198862199159%_
                            _%hd198863199162%_
                            _%tl198864199164%_
                            _%e198865199167%_
                            _%hd198866199170%_
                            _%tl198867199172%_
                            _%e198868199175%_
                            _%hd198869199178%_
                            _%tl198870199180%_
                            _%e198871199183%_
                            _%hd198872199186%_
                            _%tl198873199188%_
                            _%e198874199191%_
                            _%hd198875199194%_
                            _%tl198876199196%_
                            _%e198877199199%_
                            _%hd198878199202%_
                            _%tl198879199204%_
                            _%e198880199207%_
                            _%hd198881199210%_
                            _%tl198882199212%_
                            _%e198883199215%_
                            _%hd198884199218%_
                            _%tl198885199220%_)
                     (let ((_%L199223%_ _%hd198884199218%_)
                           (_%L199224%_ _%hd198875199194%_)
                           (_%L199225%_ _%hd198866199170%_)
                           (_%L199226%_ _%hd198857199146%_)
                           (_%L199227%_ _%hd198848199122%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L199227%_
                              'bind-method!))
                           (_%__kont199783199784%_
                            _%L199223%_
                            _%L199224%_
                            _%L199225%_
                            _%L199226%_
                            _%L199227%_)
                           (_%__kont199787199788%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx199781199782%_))
                  (let ((_%e198838199095%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx199781199782%_))))
                    (let ((_%tl198840199100%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198838199095%_)))
                          (_%hd198839199098%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198838199095%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198840199100%_))
                          (let ((_%e198841199103%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl198840199100%_))))
                            (let ((_%tl198843199108%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198841199103%_)))
                                  (_%hd198842199106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198841199103%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd198842199106%_))
                                  (let ((_%e198844199111%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198842199106%_))))
                                    (let ((_%tl198846199116%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198844199111%_)))
                                          (_%hd198845199114%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198844199111%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd198845199114%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd198845199114%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198846199116%_))
                                                  (let ((_%e198847199119%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198846199116%_))))
                                                    (let ((_%tl198849199124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198847199119%_)))
                                                          (_%hd198848199122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198847199119%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198849199124%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl198843199108%_))
                      (let ((_%e198850199127%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl198843199108%_))))
                        (let ((_%tl198852199132%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198850199127%_)))
                              (_%hd198851199130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198850199127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198851199130%_))
                              (let ((_%e198853199135%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd198851199130%_))))
                                (let ((_%tl198855199140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198853199135%_)))
                                      (_%hd198854199138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198853199135%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198854199138%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd198854199138%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198855199140%_))
                                              (let ((_%e198856199143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198855199140%_))))
                                                (let ((_%tl198858199148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198856199143%_)))
                                                      (_%hd198857199146%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198856199143%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198858199148%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198852199132%_))
                                                          (let ((_%e198859199151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl198852199132%_))))
                    (let ((_%tl198861199156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198859199151%_)))
                          (_%hd198860199154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198859199151%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd198860199154%_))
                          (let ((_%e198862199159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198860199154%_))))
                            (let ((_%tl198864199164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198862199159%_)))
                                  (_%hd198863199162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198862199159%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd198863199162%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd198863199162%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl198864199164%_))
                                          (let ((_%e198865199167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl198864199164%_))))
                                            (let ((_%tl198867199172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198865199167%_)))
                                                  (_%hd198866199170%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198865199167%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198867199172%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198861199156%_))
                                                      (let ((_%e198868199175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198861199156%_))))
                (let ((_%tl198870199180%_
                       (let () (declare (not safe)) (##cdr _%e198868199175%_)))
                      (_%hd198869199178%_
                       (let ()
                         (declare (not safe))
                         (##car _%e198868199175%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198869199178%_))
                      (let ((_%e198871199183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198869199178%_))))
                        (let ((_%tl198873199188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198871199183%_)))
                              (_%hd198872199186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198871199183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd198872199186%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd198872199186%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198873199188%_))
                                      (let ((_%e198874199191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198873199188%_))))
                                        (let ((_%tl198876199196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198874199191%_)))
                                              (_%hd198875199194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198874199191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198876199196%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198870199180%_))
                                                  (let ((_%e198877199199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl198870199180%_))))
                                                    (let ((_%tl198879199204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198877199199%_)))
                                                          (_%hd198878199202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198877199199%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198878199202%_))
                                                          (let ((_%e198880199207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198878199202%_))))
                    (let ((_%tl198882199212%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198880199207%_)))
                          (_%hd198881199210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198880199207%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198881199210%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd198881199210%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198882199212%_))
                                  (let ((_%e198883199215%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl198882199212%_))))
                                    (let ((_%tl198885199220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198883199215%_)))
                                          (_%hd198884199218%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198883199215%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198885199220%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198879199204%_))
                                              (_%__match199916199917%_
                                               _%e198838199095%_
                                               _%hd198839199098%_
                                               _%tl198840199100%_
                                               _%e198841199103%_
                                               _%hd198842199106%_
                                               _%tl198843199108%_
                                               _%e198844199111%_
                                               _%hd198845199114%_
                                               _%tl198846199116%_
                                               _%e198847199119%_
                                               _%hd198848199122%_
                                               _%tl198849199124%_
                                               _%e198850199127%_
                                               _%hd198851199130%_
                                               _%tl198852199132%_
                                               _%e198853199135%_
                                               _%hd198854199138%_
                                               _%tl198855199140%_
                                               _%e198856199143%_
                                               _%hd198857199146%_
                                               _%tl198858199148%_
                                               _%e198859199151%_
                                               _%hd198860199154%_
                                               _%tl198861199156%_
                                               _%e198862199159%_
                                               _%hd198863199162%_
                                               _%tl198864199164%_
                                               _%e198865199167%_
                                               _%hd198866199170%_
                                               _%tl198867199172%_
                                               _%e198868199175%_
                                               _%hd198869199178%_
                                               _%tl198870199180%_
                                               _%e198871199183%_
                                               _%hd198872199186%_
                                               _%tl198873199188%_
                                               _%e198874199191%_
                                               _%hd198875199194%_
                                               _%tl198876199196%_
                                               _%e198877199199%_
                                               _%hd198878199202%_
                                               _%tl198879199204%_
                                               _%e198880199207%_
                                               _%hd198881199210%_
                                               _%tl198882199212%_
                                               _%e198883199215%_
                                               _%hd198884199218%_
                                               _%tl198885199220%_)
                                              (_%__kont199787199788%_))
                                          (_%__kont199787199788%_))))
                                  (_%__kont199787199788%_))
                              (_%__kont199787199788%_))
                          (_%__kont199787199788%_))))
                  (_%__kont199787199788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198870199180%_))
                                                      (if (let ((__tmp200138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200138 'bind-method!))
                  (let ((_%L199049%_ _%hd198875199194%_)
                        (_%L199050%_ _%hd198866199170%_)
                        (_%L199051%_ _%hd198857199146%_)
                        (_%L199052%_ _%hd198848199122%_))
                    (_%__kont199785199786%_
                     _%L199049%_
                     _%L199050%_
                     _%L199051%_
                     _%L199052%_))
                  (_%__kont199787199788%_))
              (_%__kont199787199788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont199787199788%_))))
                                      (_%__kont199787199788%_))
                                  (_%__kont199787199788%_))
                              (_%__kont199787199788%_))))
                      (_%__kont199787199788%_))))
              (_%__kont199787199788%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199787199788%_))))
                                          (_%__kont199787199788%_))
                                      (_%__kont199787199788%_))
                                  (_%__kont199787199788%_))))
                          (_%__kont199787199788%_))))
                  (_%__kont199787199788%_))
              (_%__kont199787199788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont199787199788%_))
                                          (_%__kont199787199788%_))
                                      (_%__kont199787199788%_))))
                              (_%__kont199787199788%_))))
                      (_%__kont199787199788%_))
                  (_%__kont199787199788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199787199788%_))
                                              (_%__kont199787199788%_))
                                          (_%__kont199787199788%_))))
                                  (_%__kont199787199788%_))))
                          (_%__kont199787199788%_))))
                  (_%__kont199787199788%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self198650%_ _%stx198651%_)
        (let* ((_%__stx200025200026%_ _%stx198651%_)
               (_%g198654198694%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200025200026%_)))))
          (let ((_%__kont200027200028%_
                 (lambda (_%L198800%_ _%L198801%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198801%_))
                               (cons _%L198800%_ '())))))
                (_%__kont200029200030%_
                 (lambda (_%L198723%_ _%L198724%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200025200026%_))
                (let ((_%e198658198744%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200025200026%_))))
                  (let ((_%tl198660198749%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198658198744%_)))
                        (_%hd198659198747%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198658198744%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198660198749%_))
                        (let ((_%e198661198752%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198660198749%_))))
                          (let ((_%tl198663198757%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198661198752%_)))
                                (_%hd198662198755%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198661198752%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198662198755%_))
                                (let ((_%e198664198760%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198662198755%_))))
                                  (let ((_%tl198666198765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198664198760%_)))
                                        (_%hd198665198763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198664198760%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198665198763%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd198665198763%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198666198765%_))
                                                (let ((_%e198667198768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198666198765%_))))
                                                  (let ((_%tl198669198773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198667198768%_)))
                                                        (_%hd198668198771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198667198768%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198669198773%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198663198757%_))
                                                            (let ((_%e198670198776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198663198757%_))))
                      (let ((_%tl198672198781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198670198776%_)))
                            (_%hd198671198779%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198670198776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd198671198779%_))
                            (let ((_%e198673198784%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd198671198779%_))))
                              (let ((_%tl198675198789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198673198784%_)))
                                    (_%hd198674198787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198673198784%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd198674198787%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd198674198787%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198675198789%_))
                                            (let ((_%e198676198792%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198675198789%_))))
                                              (let ((_%tl198678198797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198676198792%_)))
                                                    (_%hd198677198795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198676198792%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198678198797%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198672198781%_))
                                                        (_%__kont200027200028%_
                                                         _%hd198677198795%_
                                                         _%hd198668198771%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198654198694%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198672198781%_))
                                                        (_%__kont200029200030%_
                                                         _%hd198671198779%_
                                                         _%hd198662198755%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198654198694%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198672198781%_))
                                                (_%__kont200029200030%_
                                                 _%hd198671198779%_
                                                 _%hd198662198755%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198654198694%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198672198781%_))
                                            (_%__kont200029200030%_
                                             _%hd198671198779%_
                                             _%hd198662198755%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g198654198694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198672198781%_))
                                        (_%__kont200029200030%_
                                         _%hd198671198779%_
                                         _%hd198662198755%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198654198694%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198672198781%_))
                                (_%__kont200029200030%_
                                 _%hd198671198779%_
                                 _%hd198662198755%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198654198694%_))))))
                    (let () (declare (not safe)) (_%g198654198694%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl198663198757%_))
                    (let ((_%e198687198715%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl198663198757%_))))
                      (let ((_%tl198689198720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198687198715%_)))
                            (_%hd198688198718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198687198715%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198689198720%_))
                            (_%__kont200029200030%_
                             _%hd198688198718%_
                             _%hd198662198755%_)
                            (let ()
                              (declare (not safe))
                              (_%g198654198694%_)))))
                    (let () (declare (not safe)) (_%g198654198694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl198663198757%_))
                                                    (let ((_%e198687198715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl198663198757%_))))
                                                      (let ((_%tl198689198720%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e198687198715%_)))
                    (_%hd198688198718%_
                     (let () (declare (not safe)) (##car _%e198687198715%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198689198720%_))
                    (_%__kont200029200030%_
                     _%hd198688198718%_
                     _%hd198662198755%_)
                    (let () (declare (not safe)) (_%g198654198694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198654198694%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198663198757%_))
                                                (let ((_%e198687198715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198663198757%_))))
                                                  (let ((_%tl198689198720%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198687198715%_)))
                                                        (_%hd198688198718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198687198715%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198689198720%_))
                                                        (_%__kont200029200030%_
                                                         _%hd198688198718%_
                                                         _%hd198662198755%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198654198694%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198654198694%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198663198757%_))
                                            (let ((_%e198687198715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl198663198757%_))))
                                              (let ((_%tl198689198720%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198687198715%_)))
                                                    (_%hd198688198718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198687198715%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198689198720%_))
                                                    (_%__kont200029200030%_
                                                     _%hd198688198718%_
                                                     _%hd198662198755%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198654198694%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198654198694%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198663198757%_))
                                    (let ((_%e198687198715%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198663198757%_))))
                                      (let ((_%tl198689198720%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198687198715%_)))
                                            (_%hd198688198718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198687198715%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198689198720%_))
                                            (_%__kont200029200030%_
                                             _%hd198688198718%_
                                             _%hd198662198755%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g198654198694%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198654198694%_))))))
                        (let () (declare (not safe)) (_%g198654198694%_)))))
                (let () (declare (not safe)) (_%g198654198694%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self196844198635%_)
        (let* ((_%self198638%_ _%self196844198635%_)
               (_%self198640%_ _%self198638%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198640%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self196845198406%_)
        (let* ((_%self198409%_ _%self196845198406%_)
               (_%self198411%_ _%self198409%_)
               (_%self198420198436%_ _%self198411%_)
               (_%E198422198440%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198420198436%_
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
               (_%K198423198455%_
                (lambda (_%methods198443%_
                         _%metaclass198444%_
                         _%system?198445%_
                         _%final?198446%_
                         _%struct?198447%_
                         _%constructor198448%_
                         _%fields198449%_
                         _%slots198450%_
                         _%precendence-list198451%_
                         _%super198452%_
                         _%id198453%_)
                  (cons '@class
                        (cons _%id198453%_
                              (cons _%super198452%_
                                    (cons _%precendence-list198451%_
                                          (cons _%slots198450%_
                                                (cons _%fields198449%_
                                                      (cons _%constructor198448%_
                                                            (cons _%struct?198447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?198446%_
                                (cons _%system?198445%_
                                      (cons _%metaclass198444%_
                                            (cons (if _%methods198443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods198443%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e198424198458%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '1 '#f '#f)))
               (_%id198461%_ _%e198424198458%_)
               (_%e198425198463%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '2 '#f '#f)))
               (_%super198466%_ _%e198425198463%_)
               (_%e198426198468%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '3 '#f '#f)))
               (_%precendence-list198471%_ _%e198426198468%_)
               (_%e198427198473%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '4 '#f '#f)))
               (_%slots198476%_ _%e198427198473%_)
               (_%e198428198478%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '5 '#f '#f)))
               (_%fields198481%_ _%e198428198478%_)
               (_%e198429198483%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '6 '#f '#f)))
               (_%constructor198486%_ _%e198429198483%_)
               (_%e198430198488%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '7 '#f '#f)))
               (_%struct?198491%_ _%e198430198488%_)
               (_%e198431198493%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '8 '#f '#f)))
               (_%final?198496%_ _%e198431198493%_)
               (_%e198432198498%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198420198436%_ '9 '#f '#f)))
               (_%system?198501%_ _%e198432198498%_)
               (_%e198433198503%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self198420198436%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass198506%_ _%e198433198503%_)
               (_%e198434198508%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self198420198436%_
                   '11
                   '#f
                   '#f)))
               (_%methods198511%_ _%e198434198508%_))
          (_%K198423198455%_
           _%methods198511%_
           _%metaclass198506%_
           _%system?198501%_
           _%final?198496%_
           _%struct?198491%_
           _%constructor198486%_
           _%fields198481%_
           _%slots198476%_
           _%precendence-list198471%_
           _%super198466%_
           _%id198461%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self196846198269%_)
        (let* ((_%self198272%_ _%self196846198269%_)
               (_%self198274%_ _%self198272%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198274%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self196847198132%_)
        (let* ((_%self198135%_ _%self196847198132%_)
               (_%self198137%_ _%self198135%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198137%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self196848197995%_)
        (let* ((_%self197998%_ _%self196848197995%_)
               (_%self198000%_ _%self197998%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198000%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198000%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198000%_
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
      (lambda (_%self196849197858%_)
        (let* ((_%self197861%_ _%self196849197858%_)
               (_%self197863%_ _%self197861%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197863%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197863%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self197863%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self196850197721%_)
        (let* ((_%self197724%_ _%self196850197721%_)
               (_%self197726%_ _%self197724%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197726%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197726%_
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
      (lambda (_%self196851197532%_)
        (let* ((_%self197535%_ _%self196851197532%_)
               (_%self197537%_ _%self197535%_)
               (_%self197546197555%_ _%self197537%_)
               (_%E197548197559%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197546197555%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K197549197578%_
                (lambda (_%dispatch197562%_
                         _%arity197563%_
                         _%signature197564%_)
                  (if _%signature197564%_
                      (let ((_%signature197566%_ _%signature197564%_))
                        (cons '@lambda
                              (cons _%arity197563%_
                                    (cons _%dispatch197562%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature197566%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature197566%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature197566%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature197566%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature197566%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity197563%_
                                  (cons _%dispatch197562%_ '()))))))
               (_%e197550197581%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197546197555%_ '1 '#f '#f)))
               (_%e197551197584%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197546197555%_ '2 '#f '#f)))
               (_%signature197587%_ _%e197551197584%_)
               (_%e197552197589%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197546197555%_ '3 '#f '#f)))
               (_%arity197592%_ _%e197552197589%_)
               (_%e197553197594%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197546197555%_ '4 '#f '#f)))
               (_%dispatch197597%_ _%e197553197594%_))
          (_%K197549197578%_
           _%dispatch197597%_
           _%arity197592%_
           _%signature197587%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self196852197391%_)
        (let* ((_%self197394%_ _%self196852197391%_)
               (_%self197396%_ _%self197394%_))
          (letrec ((_%clause-e197406%_
                    (lambda (_%clause197408%_)
                      (cdr (let ((__method200113
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause197408%_
                                     'typedecl))))
                             (if __method200113
                                 (let ()
                                   (declare (not safe))
                                   (__method200113 _%clause197408%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause197408%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e197406%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self197396%_
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
      (lambda (_%self196853197254%_)
        (let* ((_%self197257%_ _%self196853197254%_)
               (_%self197259%_ _%self197257%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197259%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197259%_
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
      (lambda (_%self196854197117%_)
        (let* ((_%self197120%_ _%self196854197117%_)
               (_%self197122%_ _%self197120%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197122%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197122%_
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
      (lambda (_%self196855196980%_)
        (let* ((_%self196983%_ _%self196855196980%_)
               (_%self196985%_ _%self196983%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196985%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
