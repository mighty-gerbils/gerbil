(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770405374)
  (begin
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose
      (make-parameter
       (let ((_%verbosity187595187597%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity187595187597%_
             (let* ((_%verbosity187599%_ _%verbosity187595187597%_)
                    (_%$e187601%_ (string->number _%verbosity187599%_)))
               (if _%$e187601%_ _%$e187601%_ _%verbosity187599%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e187592%_
                  (lambda (_%id187594%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id187594%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e187592%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp187656 (list)) (__tmp187655 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp187656
         '(gensyms bindings)
         __tmp187655
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args187588%_
        (apply make-instance gxc#symbol-table::t _%$args187588%_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_%self187575%_)
        (let ((_%self187578%_ _%self187575%_))
          (if (let ((__tmp187657
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187578%_))))
                (declare (not safe))
                (##fx< '2 __tmp187657))
              (begin
                (let ((__tmp187658
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187578%_
                   __tmp187658
                   '1
                   '#f
                   '#f))
                (let ((__tmp187659
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187578%_
                   __tmp187659
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp187660
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187578%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self187578%_
                       '2
                       __tmp187660))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message187444%_ _%stx187445%_ . _%details187446%_)
        (let ((_%ctx187451%_
               (let ((_%$e187448%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e187448%_ _%$e187448%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx187451%_
                 _%message187444%_
                 _%stx187445%_
                 _%details187446%_))))
    (define gxc#verbose
      (lambda _%args187441%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp187661
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args187441%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp187661))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id187423%_)
        (let* ((_%str187425%_
                (if (symbol? _%id187423%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id187423%_))
                    _%id187423%_))
               (_%len187427%_ (string-length _%str187425%_))
               (_%res187429%_
                (let () (declare (not safe)) (##make-string _%len187427%_))))
          (let _%lp187432%_ ((_%i187434%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i187434%_ _%len187427%_))
                (let* ((_%char187436%_ (string-ref _%str187425%_ _%i187434%_))
                       (_%xchar187438%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char187436%_))
                            '#\_
                            _%char187436%_)))
                  (string-set! _%res187429%_ _%i187434%_ _%xchar187438%_)
                  (_%lp187432%_
                   (let () (declare (not safe)) (##fx+ _%i187434%_ '1))))
                _%res187429%_)))))
    (define gxc#map*
      (lambda (_%proc187365%_ _%maybe-improper-list187366%_)
        (let _%recur187368%_ ((_%rest187370%_ _%maybe-improper-list187366%_))
          (let* ((_%rest187371187382%_ _%rest187370%_)
                 (_%E187375187386%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest187371187382%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K187378187411%_
                   (lambda (_%rest187408%_ _%hd187409%_)
                     (cons (_%proc187365%_ _%hd187409%_)
                           (_%recur187368%_ _%rest187408%_))))
                  (_%K187377187402%_ (lambda () '()))
                  (_%K187376187392%_
                   (lambda (_%tail187390%_) (_%proc187365%_ _%tail187390%_))))
              (let ((_%try-match187373187405%_
                     (lambda ()
                       (if (null? _%rest187371187382%_)
                           (_%K187377187402%_)
                           (let ((_%tail187395%_ _%rest187371187382%_))
                             (declare (not safe))
                             (_%proc187365%_ _%tail187395%_))))))
                (if (pair? _%rest187371187382%_)
                    (let ((_%tl187380187416%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest187371187382%_)))
                          (_%hd187379187414%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest187371187382%_))))
                      (let ((_%hd187419%_ _%hd187379187414%_)
                            (_%rest187421%_ _%tl187380187416%_))
                        (_%K187378187411%_ _%rest187421%_ _%hd187419%_)))
                    (_%try-match187373187405%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym187360%_)
        (let ((_%$e187362%_ (not (gxc#gensym-reference? _%sym187360%_))))
          (if _%$e187362%_
              _%$e187362%_
              (memq _%sym187360%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym187356%_)
        (let ((_%str187358%_ (symbol->string _%sym187356%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str187358%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str187358%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id187327%_)
        (let ((_%$e187329%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id187327%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id187327%_))
                   '#f)))
          (if _%$e187329%_
              ((lambda (_%bind187332%_)
                 (let ((_%eid187334%_
                        (##structure-ref _%bind187332%_ '1 gx#binding::t '#f))
                       (_%ht187335%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid187334%_))
                       _%eid187334%_
                       (let ((_%$e187338%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht187335%_ _%eid187334%_))))
                         (if _%$e187338%_
                             _%$e187338%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind187332%_
                                    'gx#local-binding::t))
                                 (let ((_%gid187342%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid187334%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht187335%_
                                      _%eid187334%_
                                      _%gid187342%_))
                                   _%gid187342%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind187332%_
                                        'gx#module-binding::t))
                                     (let ((_%gid187351%_
                                            (let ((_%$e187345%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind187332%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e187345%_
                                                  ((lambda (_%ns187348%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns187348%_
                                                        '"#"
                                                        _%eid187334%_)))
                                                   _%$e187345%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid187334%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht187335%_
                                          _%eid187334%_
                                          _%gid187351%_))
                                       _%gid187351%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id187327%_
                                      _%eid187334%_
                                      _%bind187332%_))))))))
               _%$e187329%_)
              (if (let ((__tmp187662
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id187327%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp187662))
                  (let () (declare (not safe)) (gx#stx-e _%id187327%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id187327%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id187325%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id187325%_))
            (gxc#generate-runtime-binding-id _%id187325%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top187312%_)
        (if _%top187312%_
            (let ((_%ns187314%_
                   (##structure-ref
                    (let ((__tmp187663
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp187663))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi187315%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns187314%_
                  (if (fxpositive? _%phi187315%_)
                      (let ((__tmp187665 (number->string _%phi187315%_))
                            (__tmp187664
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns187314%_
                         '"["
                         __tmp187665
                         '"]#_"
                         __tmp187664
                         '"_"))
                      (let ((__tmp187666
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns187314%_ '"#_" __tmp187666 '"_")))
                  (if (fxpositive? _%phi187315%_)
                      (let ((__tmp187668 (number->string _%phi187315%_))
                            (__tmp187667
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp187668
                         '"]#_"
                         __tmp187667
                         '"_"))
                      (let ((__tmp187669
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp187669 '"_")))))
            (let ((__tmp187670 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp187670 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top187321%_ '#f))
          (gxc#generate-runtime-temporary__% _%top187321%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g187671_
        (let ((_g187672_ (let () (declare (not safe)) (##length _g187671_))))
          (cond ((let () (declare (not safe)) (##fx= _g187672_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g187671_))
                ((let () (declare (not safe)) (##fx= _g187672_ 1))
                 (apply gxc#generate-runtime-temporary__% _g187671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g187671_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym187290%_ _%quote?187291%_)
        (let* ((_%ht187293%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e187295%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht187293%_ _%sym187290%_))))
          (if _%$e187295%_
              _%$e187295%_
              (let ((_%g187299%_
                     (if _%quote?187291%_
                         (let ((__tmp187673
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym187290%_
                            '"__"
                            __tmp187673))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym187290%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht187293%_ _%sym187290%_ _%g187299%_))
                _%g187299%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym187304%_)
        (let ((_%quote?187306%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym187304%_
           _%quote?187306%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g187674_
        (let ((_g187675_ (let () (declare (not safe)) (##length _g187674_))))
          (cond ((let () (declare (not safe)) (##fx= _g187675_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g187674_))
                ((let () (declare (not safe)) (##fx= _g187675_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g187674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g187674_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id187287%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id187287%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key187242%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key187242%_))
            _%key187242%_
            (if (uninterned-symbol? _%key187242%_)
                (gxc#generate-runtime-gensym-reference__0 _%key187242%_)
                (let* ((_%key187246187253%_ _%key187242%_)
                       (_%E187248187257%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key187246187253%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K187249187275%_
                        (lambda (_%mark187260%_ _%eid187261%_)
                          (let ((_%$e187263%_
                                 (##structure-ref
                                  _%mark187260%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e187263%_
                                ((lambda (_%ht187266%_)
                                   (let ((_%$e187268%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht187266%_
                                             _%eid187261%_))))
                                     (if _%$e187268%_
                                         ((lambda (_%id187271%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id187271%_))
                                                _%id187271%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id187271%_)))
                                          _%$e187268%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid187261%_))))
                                 _%$e187263%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid187261%_))))))
                  (if (pair? _%key187246187253%_)
                      (let ((_%hd187250187278%_
                             (let ()
                               (declare (not safe))
                               (##car _%key187246187253%_)))
                            (_%tl187251187280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key187246187253%_))))
                        (let* ((_%eid187283%_ _%hd187250187278%_)
                               (_%mark187285%_ _%tl187251187280%_))
                          (_%K187249187275%_ _%mark187285%_ _%eid187283%_)))
                      (_%E187248187257%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1187235%_ _%id2187236%_)
        (letrec ((_%symbol-e187238%_
                  (lambda (_%id187240%_)
                    (if (symbol? _%id187240%_)
                        _%id187240%_
                        (gxc#generate-runtime-binding-id _%id187240%_)))))
          (eq? (_%symbol-e187238%_ _%id1187235%_)
               (_%symbol-e187238%_ _%id2187236%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx187233%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx187233%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx187233%_)
            (let () (declare (not safe)) (gx#stx-e _%stx187233%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id187155%_)
        (let* ((_%bind187157%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id187155%_)))
               (_%runtime-props187186%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind187157%_
                       'gx#runtime-binding::t))
                    (let* ((_%props187166%_
                            (let ((_%$e187160%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187157%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e187160%_
                                  ((lambda (_%macro-id187163%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id187163%_)
                                                 '())))
                                   _%$e187160%_)
                                  '())))
                           (_%props187182%_
                            (let ((_%$e187168%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187157%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e187168%_
                                  ((lambda (_%type187171%_)
                                     (let ((_%$e187173%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type187171%_
                                               ':repr))))
                                       (if _%$e187173%_
                                           ((lambda (_%method187176%_)
                                              (let ((_%repr187178%_
                                                     (_%method187176%_
                                                      _%type187171%_)))
                                                (cons 'type:
                                                      (cons _%repr187178%_
                                                            _%props187166%_))))
                                            _%$e187173%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id187155%_
                                            _%type187171%_))))
                                   _%$e187168%_)
                                  _%props187166%_))))
                      _%props187182%_)
                    '()))
               (_%$e187189%_
                (##structure-ref _%bind187157%_ '4 gx#binding::t '#f)))
          (if _%$e187189%_
              ((lambda (_%props187192%_)
                 (let ((__tmp187676
                        (lambda (_%prop187194%_ _%props187195%_)
                          (let* ((_%prop187196187203%_ _%prop187194%_)
                                 (_%E187198187206%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop187196187203%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K187199187220%_
                                  (lambda (_%value187209%_ _%key187210%_)
                                    (let ((_%$e187212%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value187209%_
                                              ':repr))))
                                      (if _%$e187212%_
                                          ((lambda (_%method187215%_)
                                             (let ((_%repr187217%_
                                                    (_%method187215%_
                                                     _%value187209%_)))
                                               (cons _%key187210%_
                                                     (cons _%repr187217%_
                                                           _%props187195%_))))
                                           _%$e187212%_)
                                          (cons _%key187210%_
                                                (cons (cons 'quote
                                                            (cons _%value187209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props187195%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop187196187203%_)
                                (let ((_%hd187200187223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop187196187203%_)))
                                      (_%tl187201187225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop187196187203%_))))
                                  (let* ((_%key187228%_ _%hd187200187223%_)
                                         (_%value187230%_ _%tl187201187225%_))
                                    (_%K187199187220%_
                                     _%value187230%_
                                     _%key187228%_)))
                                (_%E187198187206%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp187676
                    _%runtime-props187186%_
                    _%props187192%_)))
               _%$e187189%_)
              _%runtime-props187186%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk187140%_ _%name187141%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job187143%_
               (gxc#make-compile-job _%thunk187140%_ _%name187141%_)))
          (set! gxc#__compile-jobs (cons _%job187143%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk187148%_)
        (let ((_%name187150%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk187148%_ _%name187150%_))))
    (define gxc#add-compile-job!
      (lambda _g187677_
        (let ((_g187678_ (let () (declare (not safe)) (##length _g187677_))))
          (cond ((let () (declare (not safe)) (##fx= _g187678_ 1))
                 (apply gxc#add-compile-job!__0 _g187677_))
                ((let () (declare (not safe)) (##fx= _g187678_ 2))
                 (apply gxc#add-compile-job!__% _g187677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g187677_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result187137%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result187137%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop187131%_ ()
          (let ((_%pending187134%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending187134%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending187134%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending187134%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk187120%_ _%name187121%_)
        (make-thread
         (lambda ()
           (let _%loop187124%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp187679
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name187121%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp187679))
                   (let ((__tmp187681 (lambda () (_%thunk187120%_)))
                         (__tmp187680
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp187681 __tmp187680)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop187124%_)))))
         _%name187121%_)))
    (define gxc#join!
      (lambda (_%thread187115%_)
        (let ((__tmp187683
               (lambda (_%exn187117%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn187117%_))
                     (let ((__tmp187684
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn187117%_))))
                       (declare (not safe))
                       (raise __tmp187684))
                     (let () (declare (not safe)) (raise _%exn187117%_)))))
              (__tmp187682 (lambda () (thread-join! _%thread187115%_))))
          (declare (not safe))
          (__with-catch __tmp187683 __tmp187682))))))
