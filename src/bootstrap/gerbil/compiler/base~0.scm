(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734279329)
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
       (let ((_%verbosity134925134927%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity134925134927%_
             (let* ((_%verbosity134930%_ _%verbosity134925134927%_)
                    (_%$e134932%_ (string->number _%verbosity134930%_)))
               (if _%$e134932%_ _%$e134932%_ _%verbosity134930%_))
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
      (let ((__tmp134987 (list)) (__tmp134986 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp134987
         '(gensyms bindings)
         __tmp134986
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args134923%_
        (apply make-instance gxc#symbol-table::t _%$args134923%_)))
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
      (lambda (_%self134445134908%_)
        (let* ((_%self134911%_ _%self134445134908%_)
               (_%self134913%_ _%self134911%_))
          (if (let ((__tmp134988
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134913%_))))
                (declare (not safe))
                (##fx< '2 __tmp134988))
              (begin
                (let ((__tmp134989
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134913%_
                   __tmp134989
                   '1
                   '#f
                   '#f))
                (let ((__tmp134990
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134913%_
                   __tmp134990
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp134991
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134913%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134913%_
                       '2
                       __tmp134991))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134777%_ _%stx134778%_ . _%details134779%_)
        (let ((_%ctx134784%_
               (let ((_%$e134781%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134781%_ _%$e134781%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134784%_
                 _%message134777%_
                 _%stx134778%_
                 _%details134779%_))))
    (define gxc#verbose
      (lambda _%args134774%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp134992
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134774%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp134992))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134756%_)
        (let* ((_%str134758%_
                (if (symbol? _%id134756%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134756%_))
                    _%id134756%_))
               (_%len134760%_ (string-length _%str134758%_))
               (_%res134762%_
                (let () (declare (not safe)) (##make-string _%len134760%_))))
          (let _%lp134765%_ ((_%i134767%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134767%_ _%len134760%_))
                (let* ((_%char134769%_ (string-ref _%str134758%_ _%i134767%_))
                       (_%xchar134771%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134769%_))
                            '#\_
                            _%char134769%_)))
                  (string-set! _%res134762%_ _%i134767%_ _%xchar134771%_)
                  (_%lp134765%_
                   (let () (declare (not safe)) (##fx+ _%i134767%_ '1))))
                _%res134762%_)))))
    (define gxc#map*
      (lambda (_%proc134698%_ _%maybe-improper-list134699%_)
        (let _%recur134701%_ ((_%rest134703%_ _%maybe-improper-list134699%_))
          (let* ((_%rest134704134715%_ _%rest134703%_)
                 (_%E134708134719%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134704134715%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134711134744%_
                   (lambda (_%rest134741%_ _%hd134742%_)
                     (cons (_%proc134698%_ _%hd134742%_)
                           (_%recur134701%_ _%rest134741%_))))
                  (_%K134710134735%_ (lambda () '()))
                  (_%K134709134725%_
                   (lambda (_%tail134723%_) (_%proc134698%_ _%tail134723%_))))
              (let ((_%try-match134706134738%_
                     (lambda ()
                       (if (null? _%rest134704134715%_)
                           (_%K134710134735%_)
                           (let ((_%tail134728%_ _%rest134704134715%_))
                             (declare (not safe))
                             (_%proc134698%_ _%tail134728%_))))))
                (if (pair? _%rest134704134715%_)
                    (let ((_%tl134713134749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134704134715%_)))
                          (_%hd134712134747%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134704134715%_))))
                      (let ((_%hd134752%_ _%hd134712134747%_)
                            (_%rest134754%_ _%tl134713134749%_))
                        (_%K134711134744%_ _%rest134754%_ _%hd134752%_)))
                    (_%try-match134706134738%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134693%_)
        (let ((_%$e134695%_ (not (gxc#gensym-reference? _%sym134693%_))))
          (if _%$e134695%_
              _%$e134695%_
              (memq _%sym134693%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134689%_)
        (let ((_%str134691%_ (symbol->string _%sym134689%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134691%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134691%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134660%_)
        (let ((_%$e134662%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134660%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134660%_))
                   '#f)))
          (if _%$e134662%_
              ((lambda (_%bind134665%_)
                 (let ((_%eid134667%_
                        (##structure-ref _%bind134665%_ '1 gx#binding::t '#f))
                       (_%ht134668%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134667%_))
                       _%eid134667%_
                       (let ((_%$e134671%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134668%_ _%eid134667%_))))
                         (if _%$e134671%_
                             _%$e134671%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134665%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134675%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134667%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134668%_
                                      _%eid134667%_
                                      _%gid134675%_))
                                   _%gid134675%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134665%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134684%_
                                            (let ((_%$e134678%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134665%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134678%_
                                                  ((lambda (_%ns134681%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134681%_
                                                        '"#"
                                                        _%eid134667%_)))
                                                   _%$e134678%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134667%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134668%_
                                          _%eid134667%_
                                          _%gid134684%_))
                                       _%gid134684%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134660%_
                                      _%eid134667%_
                                      _%bind134665%_))))))))
               _%$e134662%_)
              (if (let ((__tmp134993
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134660%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp134993))
                  (let () (declare (not safe)) (gx#stx-e _%id134660%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134660%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134658%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134658%_))
            (gxc#generate-runtime-binding-id _%id134658%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134645%_)
        (if _%top134645%_
            (let ((_%ns134647%_
                   (##structure-ref
                    (let ((__tmp134994
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp134994))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134648%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134647%_
                  (if (fxpositive? _%phi134648%_)
                      (let ((__tmp134996 (number->string _%phi134648%_))
                            (__tmp134995
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134647%_
                         '"["
                         __tmp134996
                         '"]#_"
                         __tmp134995
                         '"_"))
                      (let ((__tmp134997
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134647%_ '"#_" __tmp134997 '"_")))
                  (if (fxpositive? _%phi134648%_)
                      (let ((__tmp134999 (number->string _%phi134648%_))
                            (__tmp134998
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp134999
                         '"]#_"
                         __tmp134998
                         '"_"))
                      (let ((__tmp135000
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135000 '"_")))))
            (let ((__tmp135001 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135001 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134654%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134654%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135003_
        (let ((_g135002_ (let () (declare (not safe)) (##length _g135003_))))
          (cond ((let () (declare (not safe)) (##fx= _g135002_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135003_))
                ((let () (declare (not safe)) (##fx= _g135002_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135003_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134623%_ _%quote?134624%_)
        (let* ((_%ht134626%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134628%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134626%_ _%sym134623%_))))
          (if _%$e134628%_
              _%$e134628%_
              (let ((_%g134632%_
                     (if _%quote?134624%_
                         (let ((__tmp135004
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134623%_
                            '"__"
                            __tmp135004))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134623%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134626%_ _%sym134623%_ _%g134632%_))
                _%g134632%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134637%_)
        (let ((_%quote?134639%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134637%_
           _%quote?134639%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135006_
        (let ((_g135005_ (let () (declare (not safe)) (##length _g135006_))))
          (cond ((let () (declare (not safe)) (##fx= _g135005_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135006_))
                ((let () (declare (not safe)) (##fx= _g135005_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135006_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134615%_ _%id2134616%_)
        (letrec ((_%symbol-e134618%_
                  (lambda (_%id134620%_)
                    (if (symbol? _%id134620%_)
                        _%id134620%_
                        (gxc#generate-runtime-binding-id _%id134620%_)))))
          (eq? (_%symbol-e134618%_ _%id1134615%_)
               (_%symbol-e134618%_ _%id2134616%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134613%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134613%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134613%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134613%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134598%_ _%name134599%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134601%_
               (gxc#make-compile-job _%thunk134598%_ _%name134599%_)))
          (set! gxc#__compile-jobs (cons _%job134601%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134606%_)
        (let ((_%name134608%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134606%_ _%name134608%_))))
    (define gxc#add-compile-job!
      (lambda _g135008_
        (let ((_g135007_ (let () (declare (not safe)) (##length _g135008_))))
          (cond ((let () (declare (not safe)) (##fx= _g135007_ 1))
                 (apply gxc#add-compile-job!__0 _g135008_))
                ((let () (declare (not safe)) (##fx= _g135007_ 2))
                 (apply gxc#add-compile-job!__% _g135008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135008_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134595%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134595%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134589%_ ()
          (let ((_%pending134592%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134592%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134592%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134592%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134578%_ _%name134579%_)
        (make-thread
         (lambda ()
           (let _%loop134582%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135009
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134579%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135009))
                   (let ((__tmp135011 (lambda () (_%thunk134578%_)))
                         (__tmp135010
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135011 __tmp135010)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134582%_)))))
         _%name134579%_)))
    (define gxc#join!
      (lambda (_%thread134573%_)
        (let ((__tmp135013
               (lambda (_%exn134575%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134575%_))
                     (let ((__tmp135014
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134575%_))))
                       (declare (not safe))
                       (raise __tmp135014))
                     (let () (declare (not safe)) (raise _%exn134575%_)))))
              (__tmp135012 (lambda () (thread-join! _%thread134573%_))))
          (declare (not safe))
          (__with-catch __tmp135013 __tmp135012))))))
