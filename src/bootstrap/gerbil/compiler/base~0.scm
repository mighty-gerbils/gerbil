(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1773009269)
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
       (let ((_%verbosity191727191729%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity191727191729%_
             (let* ((_%verbosity191731%_ _%verbosity191727191729%_)
                    (_%$e191733%_ (string->number _%verbosity191731%_)))
               (if _%$e191733%_ _%$e191733%_ _%verbosity191731%_))
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
        (letrec ((_%hash-e191724%_
                  (lambda (_%id191726%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id191726%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e191724%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp191788 (list)) (__tmp191787 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp191788
         '(gensyms bindings)
         __tmp191787
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args191720%_
        (apply make-instance gxc#symbol-table::t _%$args191720%_)))
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
      (lambda (_%self191707%_)
        (let ((_%self191710%_ _%self191707%_))
          (if (let ((__tmp191789
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191710%_))))
                (declare (not safe))
                (##fx< '2 __tmp191789))
              (begin
                (let ((__tmp191790
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191710%_
                   __tmp191790
                   '1
                   '#f
                   '#f))
                (let ((__tmp191791
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191710%_
                   __tmp191791
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp191792
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191710%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191710%_
                       '2
                       __tmp191792))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message191576%_ _%stx191577%_ . _%details191578%_)
        (let ((_%ctx191583%_
               (let ((_%$e191580%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e191580%_ _%$e191580%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx191583%_
                 _%message191576%_
                 _%stx191577%_
                 _%details191578%_))))
    (define gxc#verbose
      (lambda _%args191573%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp191793
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args191573%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp191793))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id191555%_)
        (let* ((_%str191557%_
                (if (symbol? _%id191555%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id191555%_))
                    _%id191555%_))
               (_%len191559%_ (string-length _%str191557%_))
               (_%res191561%_
                (let () (declare (not safe)) (##make-string _%len191559%_))))
          (let _%lp191564%_ ((_%i191566%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i191566%_ _%len191559%_))
                (let* ((_%char191568%_ (string-ref _%str191557%_ _%i191566%_))
                       (_%xchar191570%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char191568%_))
                            '#\_
                            _%char191568%_)))
                  (string-set! _%res191561%_ _%i191566%_ _%xchar191570%_)
                  (_%lp191564%_
                   (let () (declare (not safe)) (##fx+ _%i191566%_ '1))))
                _%res191561%_)))))
    (define gxc#map*
      (lambda (_%proc191497%_ _%maybe-improper-list191498%_)
        (let _%recur191500%_ ((_%rest191502%_ _%maybe-improper-list191498%_))
          (let* ((_%rest191503191514%_ _%rest191502%_)
                 (_%E191507191518%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest191503191514%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K191510191543%_
                   (lambda (_%rest191540%_ _%hd191541%_)
                     (cons (_%proc191497%_ _%hd191541%_)
                           (_%recur191500%_ _%rest191540%_))))
                  (_%K191509191534%_ (lambda () '()))
                  (_%K191508191524%_
                   (lambda (_%tail191522%_) (_%proc191497%_ _%tail191522%_))))
              (let ((_%try-match191505191537%_
                     (lambda ()
                       (if (null? _%rest191503191514%_)
                           (_%K191509191534%_)
                           (let ((_%tail191527%_ _%rest191503191514%_))
                             (declare (not safe))
                             (_%proc191497%_ _%tail191527%_))))))
                (if (pair? _%rest191503191514%_)
                    (let ((_%tl191512191548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest191503191514%_)))
                          (_%hd191511191546%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest191503191514%_))))
                      (let ((_%hd191551%_ _%hd191511191546%_)
                            (_%rest191553%_ _%tl191512191548%_))
                        (_%K191510191543%_ _%rest191553%_ _%hd191551%_)))
                    (_%try-match191505191537%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym191492%_)
        (let ((_%$e191494%_ (not (gxc#gensym-reference? _%sym191492%_))))
          (if _%$e191494%_
              _%$e191494%_
              (memq _%sym191492%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym191488%_)
        (let ((_%str191490%_ (symbol->string _%sym191488%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str191490%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str191490%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id191459%_)
        (let ((_%$e191461%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id191459%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id191459%_))
                   '#f)))
          (if _%$e191461%_
              ((lambda (_%bind191464%_)
                 (let ((_%eid191466%_
                        (##structure-ref _%bind191464%_ '1 gx#binding::t '#f))
                       (_%ht191467%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid191466%_))
                       _%eid191466%_
                       (let ((_%$e191470%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht191467%_ _%eid191466%_))))
                         (if _%$e191470%_
                             _%$e191470%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind191464%_
                                    'gx#local-binding::t))
                                 (let ((_%gid191474%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid191466%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht191467%_
                                      _%eid191466%_
                                      _%gid191474%_))
                                   _%gid191474%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind191464%_
                                        'gx#module-binding::t))
                                     (let ((_%gid191483%_
                                            (let ((_%$e191477%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind191464%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e191477%_
                                                  ((lambda (_%ns191480%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns191480%_
                                                        '"#"
                                                        _%eid191466%_)))
                                                   _%$e191477%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid191466%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht191467%_
                                          _%eid191466%_
                                          _%gid191483%_))
                                       _%gid191483%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id191459%_
                                      _%eid191466%_
                                      _%bind191464%_))))))))
               _%$e191461%_)
              (if (let ((__tmp191794
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id191459%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp191794))
                  (let () (declare (not safe)) (gx#stx-e _%id191459%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id191459%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id191457%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id191457%_))
            (gxc#generate-runtime-binding-id _%id191457%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top191444%_)
        (if _%top191444%_
            (let ((_%ns191446%_
                   (##structure-ref
                    (let ((__tmp191795
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp191795))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi191447%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns191446%_
                  (if (fxpositive? _%phi191447%_)
                      (let ((__tmp191797 (number->string _%phi191447%_))
                            (__tmp191796
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns191446%_
                         '"["
                         __tmp191797
                         '"]#_"
                         __tmp191796
                         '"_"))
                      (let ((__tmp191798
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns191446%_ '"#_" __tmp191798 '"_")))
                  (if (fxpositive? _%phi191447%_)
                      (let ((__tmp191800 (number->string _%phi191447%_))
                            (__tmp191799
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp191800
                         '"]#_"
                         __tmp191799
                         '"_"))
                      (let ((__tmp191801
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp191801 '"_")))))
            (let ((__tmp191802 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp191802 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top191453%_ '#f))
          (gxc#generate-runtime-temporary__% _%top191453%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g191803_
        (let ((_g191804_ (let () (declare (not safe)) (##length _g191803_))))
          (cond ((let () (declare (not safe)) (##fx= _g191804_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g191803_))
                ((let () (declare (not safe)) (##fx= _g191804_ 1))
                 (apply gxc#generate-runtime-temporary__% _g191803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g191803_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym191422%_ _%quote?191423%_)
        (let* ((_%ht191425%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e191427%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht191425%_ _%sym191422%_))))
          (if _%$e191427%_
              _%$e191427%_
              (let ((_%g191431%_
                     (if _%quote?191423%_
                         (let ((__tmp191805
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym191422%_
                            '"__"
                            __tmp191805))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym191422%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht191425%_ _%sym191422%_ _%g191431%_))
                _%g191431%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym191436%_)
        (let ((_%quote?191438%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym191436%_
           _%quote?191438%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g191806_
        (let ((_g191807_ (let () (declare (not safe)) (##length _g191806_))))
          (cond ((let () (declare (not safe)) (##fx= _g191807_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g191806_))
                ((let () (declare (not safe)) (##fx= _g191807_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g191806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g191806_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id191419%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id191419%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key191374%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key191374%_))
            _%key191374%_
            (if (uninterned-symbol? _%key191374%_)
                (gxc#generate-runtime-gensym-reference__0 _%key191374%_)
                (let* ((_%key191378191385%_ _%key191374%_)
                       (_%E191380191389%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key191378191385%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K191381191407%_
                        (lambda (_%mark191392%_ _%eid191393%_)
                          (let ((_%$e191395%_
                                 (##structure-ref
                                  _%mark191392%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e191395%_
                                ((lambda (_%ht191398%_)
                                   (let ((_%$e191400%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht191398%_
                                             _%eid191393%_))))
                                     (if _%$e191400%_
                                         ((lambda (_%id191403%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id191403%_))
                                                _%id191403%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id191403%_)))
                                          _%$e191400%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid191393%_))))
                                 _%$e191395%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid191393%_))))))
                  (if (pair? _%key191378191385%_)
                      (let ((_%hd191382191410%_
                             (let ()
                               (declare (not safe))
                               (##car _%key191378191385%_)))
                            (_%tl191383191412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key191378191385%_))))
                        (let* ((_%eid191415%_ _%hd191382191410%_)
                               (_%mark191417%_ _%tl191383191412%_))
                          (_%K191381191407%_ _%mark191417%_ _%eid191415%_)))
                      (_%E191380191389%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1191367%_ _%id2191368%_)
        (letrec ((_%symbol-e191370%_
                  (lambda (_%id191372%_)
                    (if (symbol? _%id191372%_)
                        _%id191372%_
                        (gxc#generate-runtime-binding-id _%id191372%_)))))
          (eq? (_%symbol-e191370%_ _%id1191367%_)
               (_%symbol-e191370%_ _%id2191368%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx191365%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx191365%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx191365%_)
            (let () (declare (not safe)) (gx#stx-e _%stx191365%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id191287%_)
        (let* ((_%bind191289%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id191287%_)))
               (_%runtime-props191318%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind191289%_
                       'gx#runtime-binding::t))
                    (let* ((_%props191298%_
                            (let ((_%$e191292%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191289%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e191292%_
                                  ((lambda (_%macro-id191295%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id191295%_)
                                                 '())))
                                   _%$e191292%_)
                                  '())))
                           (_%props191314%_
                            (let ((_%$e191300%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191289%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e191300%_
                                  ((lambda (_%type191303%_)
                                     (let ((_%$e191305%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type191303%_
                                               ':repr))))
                                       (if _%$e191305%_
                                           ((lambda (_%method191308%_)
                                              (let ((_%repr191310%_
                                                     (_%method191308%_
                                                      _%type191303%_)))
                                                (cons 'type:
                                                      (cons _%repr191310%_
                                                            _%props191298%_))))
                                            _%$e191305%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id191287%_
                                            _%type191303%_))))
                                   _%$e191300%_)
                                  _%props191298%_))))
                      _%props191314%_)
                    '()))
               (_%$e191321%_
                (##structure-ref _%bind191289%_ '4 gx#binding::t '#f)))
          (if _%$e191321%_
              ((lambda (_%props191324%_)
                 (let ((__tmp191808
                        (lambda (_%prop191326%_ _%props191327%_)
                          (let* ((_%prop191328191335%_ _%prop191326%_)
                                 (_%E191330191338%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop191328191335%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K191331191352%_
                                  (lambda (_%value191341%_ _%key191342%_)
                                    (let ((_%$e191344%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value191341%_
                                              ':repr))))
                                      (if _%$e191344%_
                                          ((lambda (_%method191347%_)
                                             (let ((_%repr191349%_
                                                    (_%method191347%_
                                                     _%value191341%_)))
                                               (cons _%key191342%_
                                                     (cons _%repr191349%_
                                                           _%props191327%_))))
                                           _%$e191344%_)
                                          (cons _%key191342%_
                                                (cons (cons 'quote
                                                            (cons _%value191341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props191327%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop191328191335%_)
                                (let ((_%hd191332191355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop191328191335%_)))
                                      (_%tl191333191357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop191328191335%_))))
                                  (let* ((_%key191360%_ _%hd191332191355%_)
                                         (_%value191362%_ _%tl191333191357%_))
                                    (_%K191331191352%_
                                     _%value191362%_
                                     _%key191360%_)))
                                (_%E191330191338%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp191808
                    _%runtime-props191318%_
                    _%props191324%_)))
               _%$e191321%_)
              _%runtime-props191318%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk191272%_ _%name191273%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job191275%_
               (gxc#make-compile-job _%thunk191272%_ _%name191273%_)))
          (set! gxc#__compile-jobs (cons _%job191275%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk191280%_)
        (let ((_%name191282%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk191280%_ _%name191282%_))))
    (define gxc#add-compile-job!
      (lambda _g191809_
        (let ((_g191810_ (let () (declare (not safe)) (##length _g191809_))))
          (cond ((let () (declare (not safe)) (##fx= _g191810_ 1))
                 (apply gxc#add-compile-job!__0 _g191809_))
                ((let () (declare (not safe)) (##fx= _g191810_ 2))
                 (apply gxc#add-compile-job!__% _g191809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g191809_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result191269%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result191269%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop191263%_ ()
          (let ((_%pending191266%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending191266%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending191266%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending191266%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk191252%_ _%name191253%_)
        (make-thread
         (lambda ()
           (let _%loop191256%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp191811
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name191253%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp191811))
                   (let ((__tmp191813 (lambda () (_%thunk191252%_)))
                         (__tmp191812
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp191813 __tmp191812)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop191256%_)))))
         _%name191253%_)))
    (define gxc#join!
      (lambda (_%thread191247%_)
        (let ((__tmp191815
               (lambda (_%exn191249%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn191249%_))
                     (let ((__tmp191816
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn191249%_))))
                       (declare (not safe))
                       (raise __tmp191816))
                     (let () (declare (not safe)) (raise _%exn191249%_)))))
              (__tmp191814 (lambda () (thread-join! _%thread191247%_))))
          (declare (not safe))
          (__with-catch __tmp191815 __tmp191814))))))
