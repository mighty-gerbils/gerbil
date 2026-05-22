(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1779435582)
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
       (let ((_%verbosity192463192465%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity192463192465%_
             (let* ((_%verbosity192467%_ _%verbosity192463192465%_)
                    (_%$e192469%_ (string->number _%verbosity192467%_)))
               (if _%$e192469%_ _%$e192469%_ _%verbosity192467%_))
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
        (letrec ((_%hash-e192460%_
                  (lambda (_%id192462%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id192462%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e192460%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp192524 (list)) (__tmp192523 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp192524
         '(gensyms bindings)
         __tmp192523
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args192456%_
        (apply make-instance gxc#symbol-table::t _%$args192456%_)))
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
      (lambda (_%self192443%_)
        (let ((_%self192446%_ _%self192443%_))
          (if (let ((__tmp192525
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192446%_))))
                (declare (not safe))
                (##fx< '2 __tmp192525))
              (begin
                (let ((__tmp192526
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192446%_
                   __tmp192526
                   '1
                   '#f
                   '#f))
                (let ((__tmp192527
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self192446%_
                   __tmp192527
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp192528
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self192446%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self192446%_
                       '2
                       __tmp192528))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message192312%_ _%stx192313%_ . _%details192314%_)
        (let ((_%ctx192319%_
               (let ((_%$e192316%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e192316%_ _%$e192316%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx192319%_
                 _%message192312%_
                 _%stx192313%_
                 _%details192314%_))))
    (define gxc#verbose
      (lambda _%args192309%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp192529
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args192309%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp192529))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id192291%_)
        (let* ((_%str192293%_
                (if (symbol? _%id192291%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id192291%_))
                    _%id192291%_))
               (_%len192295%_ (string-length _%str192293%_))
               (_%res192297%_
                (let () (declare (not safe)) (##make-string _%len192295%_))))
          (let _%lp192300%_ ((_%i192302%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i192302%_ _%len192295%_))
                (let* ((_%char192304%_ (string-ref _%str192293%_ _%i192302%_))
                       (_%xchar192306%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char192304%_))
                            '#\_
                            _%char192304%_)))
                  (string-set! _%res192297%_ _%i192302%_ _%xchar192306%_)
                  (_%lp192300%_
                   (let () (declare (not safe)) (##fx+ _%i192302%_ '1))))
                _%res192297%_)))))
    (define gxc#map*
      (lambda (_%proc192233%_ _%maybe-improper-list192234%_)
        (let _%recur192236%_ ((_%rest192238%_ _%maybe-improper-list192234%_))
          (let* ((_%rest192239192250%_ _%rest192238%_)
                 (_%E192243192254%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest192239192250%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K192246192279%_
                   (lambda (_%rest192276%_ _%hd192277%_)
                     (cons (_%proc192233%_ _%hd192277%_)
                           (_%recur192236%_ _%rest192276%_))))
                  (_%K192245192270%_ (lambda () '()))
                  (_%K192244192260%_
                   (lambda (_%tail192258%_) (_%proc192233%_ _%tail192258%_))))
              (let ((_%try-match192241192273%_
                     (lambda ()
                       (if (null? _%rest192239192250%_)
                           (_%K192245192270%_)
                           (let ((_%tail192263%_ _%rest192239192250%_))
                             (declare (not safe))
                             (_%proc192233%_ _%tail192263%_))))))
                (if (pair? _%rest192239192250%_)
                    (let ((_%tl192248192284%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest192239192250%_)))
                          (_%hd192247192282%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest192239192250%_))))
                      (let ((_%hd192287%_ _%hd192247192282%_)
                            (_%rest192289%_ _%tl192248192284%_))
                        (_%K192246192279%_ _%rest192289%_ _%hd192287%_)))
                    (_%try-match192241192273%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym192228%_)
        (let ((_%$e192230%_ (not (gxc#gensym-reference? _%sym192228%_))))
          (if _%$e192230%_
              _%$e192230%_
              (memq _%sym192228%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym192224%_)
        (let ((_%str192226%_ (symbol->string _%sym192224%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str192226%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str192226%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id192195%_)
        (let ((_%$e192197%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id192195%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id192195%_))
                   '#f)))
          (if _%$e192197%_
              (let ((_%eid192202%_
                     (##structure-ref _%$e192197%_ '1 gx#binding::t '#f))
                    (_%ht192203%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid192202%_))
                    _%eid192202%_
                    (let ((_%$e192206%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht192203%_ _%eid192202%_))))
                      (if _%$e192206%_
                          _%$e192206%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e192197%_
                                 'gx#local-binding::t))
                              (let ((_%gid192210%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid192202%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht192203%_
                                   _%eid192202%_
                                   _%gid192210%_))
                                _%gid192210%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e192197%_
                                     'gx#module-binding::t))
                                  (let ((_%gid192219%_
                                         (let ((_%$e192213%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e192197%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e192213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e192213%_
                                                  '"#"
                                                  _%eid192202%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid192202%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht192203%_
                                       _%eid192202%_
                                       _%gid192219%_))
                                    _%gid192219%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id192195%_
                                   _%eid192202%_
                                   _%$e192197%_)))))))
              (if (let ((__tmp192530
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id192195%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp192530))
                  (let () (declare (not safe)) (gx#stx-e _%id192195%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id192195%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id192193%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id192193%_))
            (gxc#generate-runtime-binding-id _%id192193%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top192180%_)
        (if _%top192180%_
            (let ((_%ns192182%_
                   (##structure-ref
                    (let ((__tmp192531
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp192531))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi192183%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns192182%_
                  (if (fxpositive? _%phi192183%_)
                      (let ((__tmp192533 (number->string _%phi192183%_))
                            (__tmp192532
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns192182%_
                         '"["
                         __tmp192533
                         '"]#_"
                         __tmp192532
                         '"_"))
                      (let ((__tmp192534
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns192182%_ '"#_" __tmp192534 '"_")))
                  (if (fxpositive? _%phi192183%_)
                      (let ((__tmp192536 (number->string _%phi192183%_))
                            (__tmp192535
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp192536
                         '"]#_"
                         __tmp192535
                         '"_"))
                      (let ((__tmp192537
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp192537 '"_")))))
            (let ((__tmp192538 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp192538 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top192189%_ '#f))
          (gxc#generate-runtime-temporary__% _%top192189%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g192539_
        (let ((_g192540_ (let () (declare (not safe)) (##length _g192539_))))
          (cond ((let () (declare (not safe)) (##fx= _g192540_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g192539_))
                ((let () (declare (not safe)) (##fx= _g192540_ 1))
                 (apply gxc#generate-runtime-temporary__% _g192539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g192539_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym192158%_ _%quote?192159%_)
        (let* ((_%ht192161%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e192163%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht192161%_ _%sym192158%_))))
          (if _%$e192163%_
              _%$e192163%_
              (let ((_%g192167%_
                     (if _%quote?192159%_
                         (let ((__tmp192541
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym192158%_
                            '"__"
                            __tmp192541))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym192158%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht192161%_ _%sym192158%_ _%g192167%_))
                _%g192167%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym192172%_)
        (let ((_%quote?192174%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym192172%_
           _%quote?192174%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g192542_
        (let ((_g192543_ (let () (declare (not safe)) (##length _g192542_))))
          (cond ((let () (declare (not safe)) (##fx= _g192543_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g192542_))
                ((let () (declare (not safe)) (##fx= _g192543_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g192542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g192542_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id192155%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id192155%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key192110%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key192110%_))
            _%key192110%_
            (if (uninterned-symbol? _%key192110%_)
                (gxc#generate-runtime-gensym-reference__0 _%key192110%_)
                (let* ((_%key192114192121%_ _%key192110%_)
                       (_%E192116192125%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key192114192121%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K192117192143%_
                        (lambda (_%mark192128%_ _%eid192129%_)
                          (let ((_%$e192131%_
                                 (##structure-ref
                                  _%mark192128%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e192131%_
                                (let ((_%$e192136%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e192131%_
                                          _%eid192129%_))))
                                  (if _%$e192136%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e192136%_))
                                          _%$e192136%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e192136%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid192129%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid192129%_))))))
                  (if (pair? _%key192114192121%_)
                      (let ((_%hd192118192146%_
                             (let ()
                               (declare (not safe))
                               (##car _%key192114192121%_)))
                            (_%tl192119192148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key192114192121%_))))
                        (let* ((_%eid192151%_ _%hd192118192146%_)
                               (_%mark192153%_ _%tl192119192148%_))
                          (_%K192117192143%_ _%mark192153%_ _%eid192151%_)))
                      (_%E192116192125%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1192103%_ _%id2192104%_)
        (letrec ((_%symbol-e192106%_
                  (lambda (_%id192108%_)
                    (if (symbol? _%id192108%_)
                        _%id192108%_
                        (gxc#generate-runtime-binding-id _%id192108%_)))))
          (eq? (_%symbol-e192106%_ _%id1192103%_)
               (_%symbol-e192106%_ _%id2192104%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx192101%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx192101%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx192101%_)
            (let () (declare (not safe)) (gx#stx-e _%stx192101%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id192023%_)
        (let* ((_%bind192025%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id192023%_)))
               (_%runtime-props192054%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind192025%_
                       'gx#runtime-binding::t))
                    (let* ((_%props192034%_
                            (let ((_%$e192028%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192025%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e192028%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e192028%_)
                                              '()))
                                  '())))
                           (_%props192050%_
                            (let ((_%$e192036%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192025%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e192036%_
                                  (let ((_%$e192041%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e192036%_
                                            ':repr))))
                                    (if _%$e192041%_
                                        (let ((_%repr192046%_
                                               (_%$e192041%_ _%$e192036%_)))
                                          (cons 'type:
                                                (cons _%repr192046%_
                                                      _%props192034%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id192023%_
                                         _%$e192036%_)))
                                  _%props192034%_))))
                      _%props192050%_)
                    '()))
               (_%$e192057%_
                (##structure-ref _%bind192025%_ '4 gx#binding::t '#f)))
          (if _%$e192057%_
              (let ((__tmp192544
                     (lambda (_%prop192062%_ _%props192063%_)
                       (let* ((_%prop192064192071%_ _%prop192062%_)
                              (_%E192066192074%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%prop192064192071%_
                                          '([key . value])))
                                 '#!void))
                              (_%K192067192088%_
                               (lambda (_%value192077%_ _%key192078%_)
                                 (let ((_%$e192080%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value192077%_
                                           ':repr))))
                                   (if _%$e192080%_
                                       (let ((_%repr192085%_
                                              (_%$e192080%_ _%value192077%_)))
                                         (cons _%key192078%_
                                               (cons _%repr192085%_
                                                     _%props192063%_)))
                                       (cons _%key192078%_
                                             (cons (cons 'quote
                                                         (cons _%value192077%_
                                                               '()))
                                                   _%props192063%_)))))))
                         (if (pair? _%prop192064192071%_)
                             (let ((_%hd192068192091%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%prop192064192071%_)))
                                   (_%tl192069192093%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%prop192064192071%_))))
                               (let* ((_%key192096%_ _%hd192068192091%_)
                                      (_%value192098%_ _%tl192069192093%_))
                                 (_%K192067192088%_
                                  _%value192098%_
                                  _%key192096%_)))
                             (_%E192066192074%_))))))
                (declare (not safe))
                (foldl__0 __tmp192544 _%runtime-props192054%_ _%$e192057%_))
              _%runtime-props192054%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk192008%_ _%name192009%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job192011%_
               (gxc#make-compile-job _%thunk192008%_ _%name192009%_)))
          (set! gxc#__compile-jobs (cons _%job192011%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk192016%_)
        (let ((_%name192018%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk192016%_ _%name192018%_))))
    (define gxc#add-compile-job!
      (lambda _g192545_
        (let ((_g192546_ (let () (declare (not safe)) (##length _g192545_))))
          (cond ((let () (declare (not safe)) (##fx= _g192546_ 1))
                 (apply gxc#add-compile-job!__0 _g192545_))
                ((let () (declare (not safe)) (##fx= _g192546_ 2))
                 (apply gxc#add-compile-job!__% _g192545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g192545_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result192005%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result192005%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop191999%_ ()
          (let ((_%pending192002%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending192002%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending192002%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending192002%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk191988%_ _%name191989%_)
        (make-thread
         (lambda ()
           (let _%loop191992%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp192547
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name191989%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp192547))
                   (let ((__tmp192549 (lambda () (_%thunk191988%_)))
                         (__tmp192548
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp192549 __tmp192548)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop191992%_)))))
         _%name191989%_)))
    (define gxc#join!
      (lambda (_%thread191983%_)
        (let ((__tmp192551
               (lambda (_%exn191985%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn191985%_))
                     (let ((__tmp192552
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn191985%_))))
                       (declare (not safe))
                       (raise __tmp192552))
                     (let () (declare (not safe)) (raise _%exn191985%_)))))
              (__tmp192550 (lambda () (thread-join! _%thread191983%_))))
          (declare (not safe))
          (__with-catch __tmp192551 __tmp192550))))))
