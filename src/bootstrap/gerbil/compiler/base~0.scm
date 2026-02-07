(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770505719)
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
       (let ((_%verbosity187603187605%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity187603187605%_
             (let* ((_%verbosity187607%_ _%verbosity187603187605%_)
                    (_%$e187609%_ (string->number _%verbosity187607%_)))
               (if _%$e187609%_ _%$e187609%_ _%verbosity187607%_))
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
        (letrec ((_%hash-e187600%_
                  (lambda (_%id187602%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id187602%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e187600%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp187664 (list)) (__tmp187663 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp187664
         '(gensyms bindings)
         __tmp187663
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args187596%_
        (apply make-instance gxc#symbol-table::t _%$args187596%_)))
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
      (lambda (_%self187583%_)
        (let ((_%self187586%_ _%self187583%_))
          (if (let ((__tmp187665
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187586%_))))
                (declare (not safe))
                (##fx< '2 __tmp187665))
              (begin
                (let ((__tmp187666
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187586%_
                   __tmp187666
                   '1
                   '#f
                   '#f))
                (let ((__tmp187667
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187586%_
                   __tmp187667
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp187668
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187586%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self187586%_
                       '2
                       __tmp187668))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message187452%_ _%stx187453%_ . _%details187454%_)
        (let ((_%ctx187459%_
               (let ((_%$e187456%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e187456%_ _%$e187456%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx187459%_
                 _%message187452%_
                 _%stx187453%_
                 _%details187454%_))))
    (define gxc#verbose
      (lambda _%args187449%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp187669
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args187449%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp187669))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id187431%_)
        (let* ((_%str187433%_
                (if (symbol? _%id187431%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id187431%_))
                    _%id187431%_))
               (_%len187435%_ (string-length _%str187433%_))
               (_%res187437%_
                (let () (declare (not safe)) (##make-string _%len187435%_))))
          (let _%lp187440%_ ((_%i187442%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i187442%_ _%len187435%_))
                (let* ((_%char187444%_ (string-ref _%str187433%_ _%i187442%_))
                       (_%xchar187446%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char187444%_))
                            '#\_
                            _%char187444%_)))
                  (string-set! _%res187437%_ _%i187442%_ _%xchar187446%_)
                  (_%lp187440%_
                   (let () (declare (not safe)) (##fx+ _%i187442%_ '1))))
                _%res187437%_)))))
    (define gxc#map*
      (lambda (_%proc187373%_ _%maybe-improper-list187374%_)
        (let _%recur187376%_ ((_%rest187378%_ _%maybe-improper-list187374%_))
          (let* ((_%rest187379187390%_ _%rest187378%_)
                 (_%E187383187394%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest187379187390%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K187386187419%_
                   (lambda (_%rest187416%_ _%hd187417%_)
                     (cons (_%proc187373%_ _%hd187417%_)
                           (_%recur187376%_ _%rest187416%_))))
                  (_%K187385187410%_ (lambda () '()))
                  (_%K187384187400%_
                   (lambda (_%tail187398%_) (_%proc187373%_ _%tail187398%_))))
              (let ((_%try-match187381187413%_
                     (lambda ()
                       (if (null? _%rest187379187390%_)
                           (_%K187385187410%_)
                           (let ((_%tail187403%_ _%rest187379187390%_))
                             (declare (not safe))
                             (_%proc187373%_ _%tail187403%_))))))
                (if (pair? _%rest187379187390%_)
                    (let ((_%tl187388187424%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest187379187390%_)))
                          (_%hd187387187422%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest187379187390%_))))
                      (let ((_%hd187427%_ _%hd187387187422%_)
                            (_%rest187429%_ _%tl187388187424%_))
                        (_%K187386187419%_ _%rest187429%_ _%hd187427%_)))
                    (_%try-match187381187413%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym187368%_)
        (let ((_%$e187370%_ (not (gxc#gensym-reference? _%sym187368%_))))
          (if _%$e187370%_
              _%$e187370%_
              (memq _%sym187368%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym187364%_)
        (let ((_%str187366%_ (symbol->string _%sym187364%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str187366%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str187366%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id187335%_)
        (let ((_%$e187337%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id187335%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id187335%_))
                   '#f)))
          (if _%$e187337%_
              ((lambda (_%bind187340%_)
                 (let ((_%eid187342%_
                        (##structure-ref _%bind187340%_ '1 gx#binding::t '#f))
                       (_%ht187343%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid187342%_))
                       _%eid187342%_
                       (let ((_%$e187346%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht187343%_ _%eid187342%_))))
                         (if _%$e187346%_
                             _%$e187346%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind187340%_
                                    'gx#local-binding::t))
                                 (let ((_%gid187350%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid187342%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht187343%_
                                      _%eid187342%_
                                      _%gid187350%_))
                                   _%gid187350%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind187340%_
                                        'gx#module-binding::t))
                                     (let ((_%gid187359%_
                                            (let ((_%$e187353%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind187340%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e187353%_
                                                  ((lambda (_%ns187356%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns187356%_
                                                        '"#"
                                                        _%eid187342%_)))
                                                   _%$e187353%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid187342%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht187343%_
                                          _%eid187342%_
                                          _%gid187359%_))
                                       _%gid187359%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id187335%_
                                      _%eid187342%_
                                      _%bind187340%_))))))))
               _%$e187337%_)
              (if (let ((__tmp187670
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id187335%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp187670))
                  (let () (declare (not safe)) (gx#stx-e _%id187335%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id187335%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id187333%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id187333%_))
            (gxc#generate-runtime-binding-id _%id187333%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top187320%_)
        (if _%top187320%_
            (let ((_%ns187322%_
                   (##structure-ref
                    (let ((__tmp187671
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp187671))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi187323%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns187322%_
                  (if (fxpositive? _%phi187323%_)
                      (let ((__tmp187673 (number->string _%phi187323%_))
                            (__tmp187672
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns187322%_
                         '"["
                         __tmp187673
                         '"]#_"
                         __tmp187672
                         '"_"))
                      (let ((__tmp187674
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns187322%_ '"#_" __tmp187674 '"_")))
                  (if (fxpositive? _%phi187323%_)
                      (let ((__tmp187676 (number->string _%phi187323%_))
                            (__tmp187675
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp187676
                         '"]#_"
                         __tmp187675
                         '"_"))
                      (let ((__tmp187677
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp187677 '"_")))))
            (let ((__tmp187678 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp187678 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top187329%_ '#f))
          (gxc#generate-runtime-temporary__% _%top187329%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g187679_
        (let ((_g187680_ (let () (declare (not safe)) (##length _g187679_))))
          (cond ((let () (declare (not safe)) (##fx= _g187680_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g187679_))
                ((let () (declare (not safe)) (##fx= _g187680_ 1))
                 (apply gxc#generate-runtime-temporary__% _g187679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g187679_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym187298%_ _%quote?187299%_)
        (let* ((_%ht187301%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e187303%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht187301%_ _%sym187298%_))))
          (if _%$e187303%_
              _%$e187303%_
              (let ((_%g187307%_
                     (if _%quote?187299%_
                         (let ((__tmp187681
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym187298%_
                            '"__"
                            __tmp187681))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym187298%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht187301%_ _%sym187298%_ _%g187307%_))
                _%g187307%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym187312%_)
        (let ((_%quote?187314%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym187312%_
           _%quote?187314%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g187682_
        (let ((_g187683_ (let () (declare (not safe)) (##length _g187682_))))
          (cond ((let () (declare (not safe)) (##fx= _g187683_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g187682_))
                ((let () (declare (not safe)) (##fx= _g187683_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g187682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g187682_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id187295%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id187295%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key187250%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key187250%_))
            _%key187250%_
            (if (uninterned-symbol? _%key187250%_)
                (gxc#generate-runtime-gensym-reference__0 _%key187250%_)
                (let* ((_%key187254187261%_ _%key187250%_)
                       (_%E187256187265%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key187254187261%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K187257187283%_
                        (lambda (_%mark187268%_ _%eid187269%_)
                          (let ((_%$e187271%_
                                 (##structure-ref
                                  _%mark187268%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e187271%_
                                ((lambda (_%ht187274%_)
                                   (let ((_%$e187276%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht187274%_
                                             _%eid187269%_))))
                                     (if _%$e187276%_
                                         ((lambda (_%id187279%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id187279%_))
                                                _%id187279%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id187279%_)))
                                          _%$e187276%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid187269%_))))
                                 _%$e187271%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid187269%_))))))
                  (if (pair? _%key187254187261%_)
                      (let ((_%hd187258187286%_
                             (let ()
                               (declare (not safe))
                               (##car _%key187254187261%_)))
                            (_%tl187259187288%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key187254187261%_))))
                        (let* ((_%eid187291%_ _%hd187258187286%_)
                               (_%mark187293%_ _%tl187259187288%_))
                          (_%K187257187283%_ _%mark187293%_ _%eid187291%_)))
                      (_%E187256187265%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1187243%_ _%id2187244%_)
        (letrec ((_%symbol-e187246%_
                  (lambda (_%id187248%_)
                    (if (symbol? _%id187248%_)
                        _%id187248%_
                        (gxc#generate-runtime-binding-id _%id187248%_)))))
          (eq? (_%symbol-e187246%_ _%id1187243%_)
               (_%symbol-e187246%_ _%id2187244%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx187241%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx187241%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx187241%_)
            (let () (declare (not safe)) (gx#stx-e _%stx187241%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id187163%_)
        (let* ((_%bind187165%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id187163%_)))
               (_%runtime-props187194%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind187165%_
                       'gx#runtime-binding::t))
                    (let* ((_%props187174%_
                            (let ((_%$e187168%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187165%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e187168%_
                                  ((lambda (_%macro-id187171%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id187171%_)
                                                 '())))
                                   _%$e187168%_)
                                  '())))
                           (_%props187190%_
                            (let ((_%$e187176%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187165%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e187176%_
                                  ((lambda (_%type187179%_)
                                     (let ((_%$e187181%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type187179%_
                                               ':repr))))
                                       (if _%$e187181%_
                                           ((lambda (_%method187184%_)
                                              (let ((_%repr187186%_
                                                     (_%method187184%_
                                                      _%type187179%_)))
                                                (cons 'type:
                                                      (cons _%repr187186%_
                                                            _%props187174%_))))
                                            _%$e187181%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id187163%_
                                            _%type187179%_))))
                                   _%$e187176%_)
                                  _%props187174%_))))
                      _%props187190%_)
                    '()))
               (_%$e187197%_
                (##structure-ref _%bind187165%_ '4 gx#binding::t '#f)))
          (if _%$e187197%_
              ((lambda (_%props187200%_)
                 (let ((__tmp187684
                        (lambda (_%prop187202%_ _%props187203%_)
                          (let* ((_%prop187204187211%_ _%prop187202%_)
                                 (_%E187206187214%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop187204187211%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K187207187228%_
                                  (lambda (_%value187217%_ _%key187218%_)
                                    (let ((_%$e187220%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value187217%_
                                              ':repr))))
                                      (if _%$e187220%_
                                          ((lambda (_%method187223%_)
                                             (let ((_%repr187225%_
                                                    (_%method187223%_
                                                     _%value187217%_)))
                                               (cons _%key187218%_
                                                     (cons _%repr187225%_
                                                           _%props187203%_))))
                                           _%$e187220%_)
                                          (cons _%key187218%_
                                                (cons (cons 'quote
                                                            (cons _%value187217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props187203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop187204187211%_)
                                (let ((_%hd187208187231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop187204187211%_)))
                                      (_%tl187209187233%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop187204187211%_))))
                                  (let* ((_%key187236%_ _%hd187208187231%_)
                                         (_%value187238%_ _%tl187209187233%_))
                                    (_%K187207187228%_
                                     _%value187238%_
                                     _%key187236%_)))
                                (_%E187206187214%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp187684
                    _%runtime-props187194%_
                    _%props187200%_)))
               _%$e187197%_)
              _%runtime-props187194%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk187148%_ _%name187149%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job187151%_
               (gxc#make-compile-job _%thunk187148%_ _%name187149%_)))
          (set! gxc#__compile-jobs (cons _%job187151%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk187156%_)
        (let ((_%name187158%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk187156%_ _%name187158%_))))
    (define gxc#add-compile-job!
      (lambda _g187685_
        (let ((_g187686_ (let () (declare (not safe)) (##length _g187685_))))
          (cond ((let () (declare (not safe)) (##fx= _g187686_ 1))
                 (apply gxc#add-compile-job!__0 _g187685_))
                ((let () (declare (not safe)) (##fx= _g187686_ 2))
                 (apply gxc#add-compile-job!__% _g187685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g187685_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result187145%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result187145%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop187139%_ ()
          (let ((_%pending187142%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending187142%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending187142%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending187142%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk187128%_ _%name187129%_)
        (make-thread
         (lambda ()
           (let _%loop187132%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp187687
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name187129%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp187687))
                   (let ((__tmp187689 (lambda () (_%thunk187128%_)))
                         (__tmp187688
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp187689 __tmp187688)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop187132%_)))))
         _%name187129%_)))
    (define gxc#join!
      (lambda (_%thread187123%_)
        (let ((__tmp187691
               (lambda (_%exn187125%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn187125%_))
                     (let ((__tmp187692
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn187125%_))))
                       (declare (not safe))
                       (raise __tmp187692))
                     (let () (declare (not safe)) (raise _%exn187125%_)))))
              (__tmp187690 (lambda () (thread-join! _%thread187123%_))))
          (declare (not safe))
          (__with-catch __tmp187691 __tmp187690))))))
