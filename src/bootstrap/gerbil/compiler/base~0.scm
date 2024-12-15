(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734225194)
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
       (let ((_%verbosity134935134937%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity134935134937%_
             (let* ((_%verbosity134940%_ _%verbosity134935134937%_)
                    (_%$e134942%_ (string->number _%verbosity134940%_)))
               (if _%$e134942%_ _%$e134942%_ _%verbosity134940%_))
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
      (let ((__tmp134997 (list)) (__tmp134996 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp134997
         '(gensyms bindings)
         __tmp134996
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args134933%_
        (apply make-instance gxc#symbol-table::t _%$args134933%_)))
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
      (lambda (_%self134455134918%_)
        (let* ((_%self134921%_ _%self134455134918%_)
               (_%self134923%_ _%self134921%_))
          (if (let ((__tmp134998
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134923%_))))
                (declare (not safe))
                (##fx< '2 __tmp134998))
              (begin
                (let ((__tmp134999
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134923%_
                   __tmp134999
                   '1
                   '#f
                   '#f))
                (let ((__tmp135000
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134923%_
                   __tmp135000
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp135001
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134923%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134923%_
                       '2
                       __tmp135001))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134787%_ _%stx134788%_ . _%details134789%_)
        (let ((_%ctx134794%_
               (let ((_%$e134791%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134791%_ _%$e134791%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134794%_
                 _%message134787%_
                 _%stx134788%_
                 _%details134789%_))))
    (define gxc#verbose
      (lambda _%args134784%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp135002
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134784%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp135002))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134766%_)
        (let* ((_%str134768%_
                (if (symbol? _%id134766%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134766%_))
                    _%id134766%_))
               (_%len134770%_ (string-length _%str134768%_))
               (_%res134772%_
                (let () (declare (not safe)) (##make-string _%len134770%_))))
          (let _%lp134775%_ ((_%i134777%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134777%_ _%len134770%_))
                (let* ((_%char134779%_ (string-ref _%str134768%_ _%i134777%_))
                       (_%xchar134781%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134779%_))
                            '#\_
                            _%char134779%_)))
                  (string-set! _%res134772%_ _%i134777%_ _%xchar134781%_)
                  (_%lp134775%_
                   (let () (declare (not safe)) (##fx+ _%i134777%_ '1))))
                _%res134772%_)))))
    (define gxc#map*
      (lambda (_%proc134708%_ _%maybe-improper-list134709%_)
        (let _%recur134711%_ ((_%rest134713%_ _%maybe-improper-list134709%_))
          (let* ((_%rest134714134725%_ _%rest134713%_)
                 (_%E134718134729%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134714134725%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134721134754%_
                   (lambda (_%rest134751%_ _%hd134752%_)
                     (cons (_%proc134708%_ _%hd134752%_)
                           (_%recur134711%_ _%rest134751%_))))
                  (_%K134720134745%_ (lambda () '()))
                  (_%K134719134735%_
                   (lambda (_%tail134733%_) (_%proc134708%_ _%tail134733%_))))
              (let ((_%try-match134716134748%_
                     (lambda ()
                       (if (null? _%rest134714134725%_)
                           (_%K134720134745%_)
                           (let ((_%tail134738%_ _%rest134714134725%_))
                             (declare (not safe))
                             (_%proc134708%_ _%tail134738%_))))))
                (if (pair? _%rest134714134725%_)
                    (let ((_%tl134723134759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134714134725%_)))
                          (_%hd134722134757%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134714134725%_))))
                      (let ((_%hd134762%_ _%hd134722134757%_)
                            (_%rest134764%_ _%tl134723134759%_))
                        (_%K134721134754%_ _%rest134764%_ _%hd134762%_)))
                    (_%try-match134716134748%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134703%_)
        (let ((_%$e134705%_ (not (gxc#gensym-reference? _%sym134703%_))))
          (if _%$e134705%_
              _%$e134705%_
              (memq _%sym134703%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134699%_)
        (let ((_%str134701%_ (symbol->string _%sym134699%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134701%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134701%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134670%_)
        (let ((_%$e134672%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134670%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134670%_))
                   '#f)))
          (if _%$e134672%_
              ((lambda (_%bind134675%_)
                 (let ((_%eid134677%_
                        (##structure-ref _%bind134675%_ '1 gx#binding::t '#f))
                       (_%ht134678%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134677%_))
                       _%eid134677%_
                       (let ((_%$e134681%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134678%_ _%eid134677%_))))
                         (if _%$e134681%_
                             _%$e134681%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134675%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134685%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134677%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134678%_
                                      _%eid134677%_
                                      _%gid134685%_))
                                   _%gid134685%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134675%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134694%_
                                            (let ((_%$e134688%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134675%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134688%_
                                                  ((lambda (_%ns134691%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134691%_
                                                        '"#"
                                                        _%eid134677%_)))
                                                   _%$e134688%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134677%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134678%_
                                          _%eid134677%_
                                          _%gid134694%_))
                                       _%gid134694%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134670%_
                                      _%eid134677%_
                                      _%bind134675%_))))))))
               _%$e134672%_)
              (if (let ((__tmp135003
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134670%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp135003))
                  (let () (declare (not safe)) (gx#stx-e _%id134670%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134670%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134668%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134668%_))
            (gxc#generate-runtime-binding-id _%id134668%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134655%_)
        (if _%top134655%_
            (let ((_%ns134657%_
                   (##structure-ref
                    (let ((__tmp135004
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp135004))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134658%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134657%_
                  (if (fxpositive? _%phi134658%_)
                      (let ((__tmp135006 (number->string _%phi134658%_))
                            (__tmp135005
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134657%_
                         '"["
                         __tmp135006
                         '"]#_"
                         __tmp135005
                         '"_"))
                      (let ((__tmp135007
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134657%_ '"#_" __tmp135007 '"_")))
                  (if (fxpositive? _%phi134658%_)
                      (let ((__tmp135009 (number->string _%phi134658%_))
                            (__tmp135008
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp135009
                         '"]#_"
                         __tmp135008
                         '"_"))
                      (let ((__tmp135010
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135010 '"_")))))
            (let ((__tmp135011 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135011 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134664%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134664%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135013_
        (let ((_g135012_ (let () (declare (not safe)) (##length _g135013_))))
          (cond ((let () (declare (not safe)) (##fx= _g135012_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135013_))
                ((let () (declare (not safe)) (##fx= _g135012_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135013_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134633%_ _%quote?134634%_)
        (let* ((_%ht134636%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134638%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134636%_ _%sym134633%_))))
          (if _%$e134638%_
              _%$e134638%_
              (let ((_%g134642%_
                     (if _%quote?134634%_
                         (let ((__tmp135014
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134633%_
                            '"__"
                            __tmp135014))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134633%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134636%_ _%sym134633%_ _%g134642%_))
                _%g134642%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134647%_)
        (let ((_%quote?134649%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134647%_
           _%quote?134649%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135016_
        (let ((_g135015_ (let () (declare (not safe)) (##length _g135016_))))
          (cond ((let () (declare (not safe)) (##fx= _g135015_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135016_))
                ((let () (declare (not safe)) (##fx= _g135015_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135016_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134625%_ _%id2134626%_)
        (letrec ((_%symbol-e134628%_
                  (lambda (_%id134630%_)
                    (if (symbol? _%id134630%_)
                        _%id134630%_
                        (gxc#generate-runtime-binding-id _%id134630%_)))))
          (eq? (_%symbol-e134628%_ _%id1134625%_)
               (_%symbol-e134628%_ _%id2134626%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134623%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134623%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134623%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134623%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134608%_ _%name134609%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134611%_
               (gxc#make-compile-job _%thunk134608%_ _%name134609%_)))
          (set! gxc#__compile-jobs (cons _%job134611%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134616%_)
        (let ((_%name134618%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134616%_ _%name134618%_))))
    (define gxc#add-compile-job!
      (lambda _g135018_
        (let ((_g135017_ (let () (declare (not safe)) (##length _g135018_))))
          (cond ((let () (declare (not safe)) (##fx= _g135017_ 1))
                 (apply gxc#add-compile-job!__0 _g135018_))
                ((let () (declare (not safe)) (##fx= _g135017_ 2))
                 (apply gxc#add-compile-job!__% _g135018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135018_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134605%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134605%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134599%_ ()
          (let ((_%pending134602%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134602%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134602%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134602%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134588%_ _%name134589%_)
        (make-thread
         (lambda ()
           (let _%loop134592%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135019
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134589%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135019))
                   (let ((__tmp135021 (lambda () (_%thunk134588%_)))
                         (__tmp135020
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135021 __tmp135020)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134592%_)))))
         _%name134589%_)))
    (define gxc#join!
      (lambda (_%thread134583%_)
        (let ((__tmp135023
               (lambda (_%exn134585%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134585%_))
                     (let ((__tmp135024
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134585%_))))
                       (declare (not safe))
                       (raise __tmp135024))
                     (let () (declare (not safe)) (raise _%exn134585%_)))))
              (__tmp135022 (lambda () (thread-join! _%thread134583%_))))
          (declare (not safe))
          (__with-catch __tmp135023 __tmp135022))))))
