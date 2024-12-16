(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734357962)
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
       (let ((_%verbosity135024135026%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity135024135026%_
             (let* ((_%verbosity135029%_ _%verbosity135024135026%_)
                    (_%$e135031%_ (string->number _%verbosity135029%_)))
               (if _%$e135031%_ _%$e135031%_ _%verbosity135029%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp135086 (list)) (__tmp135085 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp135086
         '(gensyms bindings)
         __tmp135085
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args135022%_
        (apply make-instance gxc#symbol-table::t _%$args135022%_)))
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
      (lambda (_%self134544135007%_)
        (let* ((_%self135010%_ _%self134544135007%_)
               (_%self135012%_ _%self135010%_))
          (if (let ((__tmp135087
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135012%_))))
                (declare (not safe))
                (##fx< '2 __tmp135087))
              (begin
                (let ((__tmp135088
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135012%_
                   __tmp135088
                   '1
                   '#f
                   '#f))
                (let ((__tmp135089
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135012%_
                   __tmp135089
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp135090
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135012%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135012%_
                       '2
                       __tmp135090))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134876%_ _%stx134877%_ . _%details134878%_)
        (let ((_%ctx134883%_
               (let ((_%$e134880%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134880%_ _%$e134880%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134883%_
                 _%message134876%_
                 _%stx134877%_
                 _%details134878%_))))
    (define gxc#verbose
      (lambda _%args134873%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp135091
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134873%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp135091))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134855%_)
        (let* ((_%str134857%_
                (if (symbol? _%id134855%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134855%_))
                    _%id134855%_))
               (_%len134859%_ (string-length _%str134857%_))
               (_%res134861%_
                (let () (declare (not safe)) (##make-string _%len134859%_))))
          (let _%lp134864%_ ((_%i134866%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134866%_ _%len134859%_))
                (let* ((_%char134868%_ (string-ref _%str134857%_ _%i134866%_))
                       (_%xchar134870%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134868%_))
                            '#\_
                            _%char134868%_)))
                  (string-set! _%res134861%_ _%i134866%_ _%xchar134870%_)
                  (_%lp134864%_
                   (let () (declare (not safe)) (##fx+ _%i134866%_ '1))))
                _%res134861%_)))))
    (define gxc#map*
      (lambda (_%proc134797%_ _%maybe-improper-list134798%_)
        (let _%recur134800%_ ((_%rest134802%_ _%maybe-improper-list134798%_))
          (let* ((_%rest134803134814%_ _%rest134802%_)
                 (_%E134807134818%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134803134814%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134810134843%_
                   (lambda (_%rest134840%_ _%hd134841%_)
                     (cons (_%proc134797%_ _%hd134841%_)
                           (_%recur134800%_ _%rest134840%_))))
                  (_%K134809134834%_ (lambda () '()))
                  (_%K134808134824%_
                   (lambda (_%tail134822%_) (_%proc134797%_ _%tail134822%_))))
              (let ((_%try-match134805134837%_
                     (lambda ()
                       (if (null? _%rest134803134814%_)
                           (_%K134809134834%_)
                           (let ((_%tail134827%_ _%rest134803134814%_))
                             (declare (not safe))
                             (_%proc134797%_ _%tail134827%_))))))
                (if (pair? _%rest134803134814%_)
                    (let ((_%tl134812134848%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134803134814%_)))
                          (_%hd134811134846%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134803134814%_))))
                      (let ((_%hd134851%_ _%hd134811134846%_)
                            (_%rest134853%_ _%tl134812134848%_))
                        (_%K134810134843%_ _%rest134853%_ _%hd134851%_)))
                    (_%try-match134805134837%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134792%_)
        (let ((_%$e134794%_ (not (gxc#gensym-reference? _%sym134792%_))))
          (if _%$e134794%_
              _%$e134794%_
              (memq _%sym134792%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134788%_)
        (let ((_%str134790%_ (symbol->string _%sym134788%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134790%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134790%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134759%_)
        (let ((_%$e134761%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134759%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134759%_))
                   '#f)))
          (if _%$e134761%_
              ((lambda (_%bind134764%_)
                 (let ((_%eid134766%_
                        (##structure-ref _%bind134764%_ '1 gx#binding::t '#f))
                       (_%ht134767%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134766%_))
                       _%eid134766%_
                       (let ((_%$e134770%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134767%_ _%eid134766%_))))
                         (if _%$e134770%_
                             _%$e134770%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134764%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134774%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134766%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134767%_
                                      _%eid134766%_
                                      _%gid134774%_))
                                   _%gid134774%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134764%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134783%_
                                            (let ((_%$e134777%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134764%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134777%_
                                                  ((lambda (_%ns134780%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134780%_
                                                        '"#"
                                                        _%eid134766%_)))
                                                   _%$e134777%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134766%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134767%_
                                          _%eid134766%_
                                          _%gid134783%_))
                                       _%gid134783%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134759%_
                                      _%eid134766%_
                                      _%bind134764%_))))))))
               _%$e134761%_)
              (if (let ((__tmp135092
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134759%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp135092))
                  (let () (declare (not safe)) (gx#stx-e _%id134759%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134759%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134757%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134757%_))
            (gxc#generate-runtime-binding-id _%id134757%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134744%_)
        (if _%top134744%_
            (let ((_%ns134746%_
                   (##structure-ref
                    (let ((__tmp135093
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp135093))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134747%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134746%_
                  (if (fxpositive? _%phi134747%_)
                      (let ((__tmp135095 (number->string _%phi134747%_))
                            (__tmp135094
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134746%_
                         '"["
                         __tmp135095
                         '"]#_"
                         __tmp135094
                         '"_"))
                      (let ((__tmp135096
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134746%_ '"#_" __tmp135096 '"_")))
                  (if (fxpositive? _%phi134747%_)
                      (let ((__tmp135098 (number->string _%phi134747%_))
                            (__tmp135097
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp135098
                         '"]#_"
                         __tmp135097
                         '"_"))
                      (let ((__tmp135099
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135099 '"_")))))
            (let ((__tmp135100 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135100 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134753%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134753%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135102_
        (let ((_g135101_ (let () (declare (not safe)) (##length _g135102_))))
          (cond ((let () (declare (not safe)) (##fx= _g135101_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135102_))
                ((let () (declare (not safe)) (##fx= _g135101_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135102_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134722%_ _%quote?134723%_)
        (let* ((_%ht134725%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134727%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134725%_ _%sym134722%_))))
          (if _%$e134727%_
              _%$e134727%_
              (let ((_%g134731%_
                     (if _%quote?134723%_
                         (let ((__tmp135103
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134722%_
                            '"__"
                            __tmp135103))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134722%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134725%_ _%sym134722%_ _%g134731%_))
                _%g134731%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134736%_)
        (let ((_%quote?134738%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134736%_
           _%quote?134738%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135105_
        (let ((_g135104_ (let () (declare (not safe)) (##length _g135105_))))
          (cond ((let () (declare (not safe)) (##fx= _g135104_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135105_))
                ((let () (declare (not safe)) (##fx= _g135104_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135105_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134714%_ _%id2134715%_)
        (letrec ((_%symbol-e134717%_
                  (lambda (_%id134719%_)
                    (if (symbol? _%id134719%_)
                        _%id134719%_
                        (gxc#generate-runtime-binding-id _%id134719%_)))))
          (eq? (_%symbol-e134717%_ _%id1134714%_)
               (_%symbol-e134717%_ _%id2134715%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134712%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134712%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134712%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134712%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134697%_ _%name134698%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134700%_
               (gxc#make-compile-job _%thunk134697%_ _%name134698%_)))
          (set! gxc#__compile-jobs (cons _%job134700%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134705%_)
        (let ((_%name134707%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134705%_ _%name134707%_))))
    (define gxc#add-compile-job!
      (lambda _g135107_
        (let ((_g135106_ (let () (declare (not safe)) (##length _g135107_))))
          (cond ((let () (declare (not safe)) (##fx= _g135106_ 1))
                 (apply gxc#add-compile-job!__0 _g135107_))
                ((let () (declare (not safe)) (##fx= _g135106_ 2))
                 (apply gxc#add-compile-job!__% _g135107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135107_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134694%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134694%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134688%_ ()
          (let ((_%pending134691%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134691%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134691%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134691%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134677%_ _%name134678%_)
        (make-thread
         (lambda ()
           (let _%loop134681%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135108
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134678%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135108))
                   (let ((__tmp135110 (lambda () (_%thunk134677%_)))
                         (__tmp135109
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135110 __tmp135109)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134681%_)))))
         _%name134678%_)))
    (define gxc#join!
      (lambda (_%thread134672%_)
        (let ((__tmp135112
               (lambda (_%exn134674%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134674%_))
                     (let ((__tmp135113
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134674%_))))
                       (declare (not safe))
                       (raise __tmp135113))
                     (let () (declare (not safe)) (raise _%exn134674%_)))))
              (__tmp135111 (lambda () (thread-join! _%thread134672%_))))
          (declare (not safe))
          (__with-catch __tmp135112 __tmp135111))))))
