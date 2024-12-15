(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734278445)
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
       (let ((_%verbosity134931134933%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity134931134933%_
             (let* ((_%verbosity134936%_ _%verbosity134931134933%_)
                    (_%$e134938%_ (string->number _%verbosity134936%_)))
               (if _%$e134938%_ _%$e134938%_ _%verbosity134936%_))
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
      (let ((__tmp134993 (list)) (__tmp134992 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp134993
         '(gensyms bindings)
         __tmp134992
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args134929%_
        (apply make-instance gxc#symbol-table::t _%$args134929%_)))
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
      (lambda (_%self134451134914%_)
        (let* ((_%self134917%_ _%self134451134914%_)
               (_%self134919%_ _%self134917%_))
          (if (let ((__tmp134994
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134919%_))))
                (declare (not safe))
                (##fx< '2 __tmp134994))
              (begin
                (let ((__tmp134995
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134919%_
                   __tmp134995
                   '1
                   '#f
                   '#f))
                (let ((__tmp134996
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134919%_
                   __tmp134996
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp134997
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134919%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134919%_
                       '2
                       __tmp134997))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134783%_ _%stx134784%_ . _%details134785%_)
        (let ((_%ctx134790%_
               (let ((_%$e134787%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134787%_ _%$e134787%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134790%_
                 _%message134783%_
                 _%stx134784%_
                 _%details134785%_))))
    (define gxc#verbose
      (lambda _%args134780%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp134998
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134780%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp134998))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134762%_)
        (let* ((_%str134764%_
                (if (symbol? _%id134762%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134762%_))
                    _%id134762%_))
               (_%len134766%_ (string-length _%str134764%_))
               (_%res134768%_
                (let () (declare (not safe)) (##make-string _%len134766%_))))
          (let _%lp134771%_ ((_%i134773%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134773%_ _%len134766%_))
                (let* ((_%char134775%_ (string-ref _%str134764%_ _%i134773%_))
                       (_%xchar134777%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134775%_))
                            '#\_
                            _%char134775%_)))
                  (string-set! _%res134768%_ _%i134773%_ _%xchar134777%_)
                  (_%lp134771%_
                   (let () (declare (not safe)) (##fx+ _%i134773%_ '1))))
                _%res134768%_)))))
    (define gxc#map*
      (lambda (_%proc134704%_ _%maybe-improper-list134705%_)
        (let _%recur134707%_ ((_%rest134709%_ _%maybe-improper-list134705%_))
          (let* ((_%rest134710134721%_ _%rest134709%_)
                 (_%E134714134725%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134710134721%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134717134750%_
                   (lambda (_%rest134747%_ _%hd134748%_)
                     (cons (_%proc134704%_ _%hd134748%_)
                           (_%recur134707%_ _%rest134747%_))))
                  (_%K134716134741%_ (lambda () '()))
                  (_%K134715134731%_
                   (lambda (_%tail134729%_) (_%proc134704%_ _%tail134729%_))))
              (let ((_%try-match134712134744%_
                     (lambda ()
                       (if (null? _%rest134710134721%_)
                           (_%K134716134741%_)
                           (let ((_%tail134734%_ _%rest134710134721%_))
                             (declare (not safe))
                             (_%proc134704%_ _%tail134734%_))))))
                (if (pair? _%rest134710134721%_)
                    (let ((_%tl134719134755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134710134721%_)))
                          (_%hd134718134753%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134710134721%_))))
                      (let ((_%hd134758%_ _%hd134718134753%_)
                            (_%rest134760%_ _%tl134719134755%_))
                        (_%K134717134750%_ _%rest134760%_ _%hd134758%_)))
                    (_%try-match134712134744%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134699%_)
        (let ((_%$e134701%_ (not (gxc#gensym-reference? _%sym134699%_))))
          (if _%$e134701%_
              _%$e134701%_
              (memq _%sym134699%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134695%_)
        (let ((_%str134697%_ (symbol->string _%sym134695%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134697%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134697%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134666%_)
        (let ((_%$e134668%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134666%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134666%_))
                   '#f)))
          (if _%$e134668%_
              ((lambda (_%bind134671%_)
                 (let ((_%eid134673%_
                        (##structure-ref _%bind134671%_ '1 gx#binding::t '#f))
                       (_%ht134674%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134673%_))
                       _%eid134673%_
                       (let ((_%$e134677%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134674%_ _%eid134673%_))))
                         (if _%$e134677%_
                             _%$e134677%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134671%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134681%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134673%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134674%_
                                      _%eid134673%_
                                      _%gid134681%_))
                                   _%gid134681%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134671%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134690%_
                                            (let ((_%$e134684%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134671%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134684%_
                                                  ((lambda (_%ns134687%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134687%_
                                                        '"#"
                                                        _%eid134673%_)))
                                                   _%$e134684%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134673%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134674%_
                                          _%eid134673%_
                                          _%gid134690%_))
                                       _%gid134690%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134666%_
                                      _%eid134673%_
                                      _%bind134671%_))))))))
               _%$e134668%_)
              (if (let ((__tmp134999
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134666%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp134999))
                  (let () (declare (not safe)) (gx#stx-e _%id134666%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134666%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134664%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134664%_))
            (gxc#generate-runtime-binding-id _%id134664%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134651%_)
        (if _%top134651%_
            (let ((_%ns134653%_
                   (##structure-ref
                    (let ((__tmp135000
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp135000))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134654%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134653%_
                  (if (fxpositive? _%phi134654%_)
                      (let ((__tmp135002 (number->string _%phi134654%_))
                            (__tmp135001
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134653%_
                         '"["
                         __tmp135002
                         '"]#_"
                         __tmp135001
                         '"_"))
                      (let ((__tmp135003
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134653%_ '"#_" __tmp135003 '"_")))
                  (if (fxpositive? _%phi134654%_)
                      (let ((__tmp135005 (number->string _%phi134654%_))
                            (__tmp135004
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp135005
                         '"]#_"
                         __tmp135004
                         '"_"))
                      (let ((__tmp135006
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135006 '"_")))))
            (let ((__tmp135007 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135007 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134660%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134660%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135009_
        (let ((_g135008_ (let () (declare (not safe)) (##length _g135009_))))
          (cond ((let () (declare (not safe)) (##fx= _g135008_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135009_))
                ((let () (declare (not safe)) (##fx= _g135008_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135009_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134629%_ _%quote?134630%_)
        (let* ((_%ht134632%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134634%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134632%_ _%sym134629%_))))
          (if _%$e134634%_
              _%$e134634%_
              (let ((_%g134638%_
                     (if _%quote?134630%_
                         (let ((__tmp135010
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134629%_
                            '"__"
                            __tmp135010))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134629%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134632%_ _%sym134629%_ _%g134638%_))
                _%g134638%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134643%_)
        (let ((_%quote?134645%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134643%_
           _%quote?134645%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135012_
        (let ((_g135011_ (let () (declare (not safe)) (##length _g135012_))))
          (cond ((let () (declare (not safe)) (##fx= _g135011_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135012_))
                ((let () (declare (not safe)) (##fx= _g135011_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135012_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134621%_ _%id2134622%_)
        (letrec ((_%symbol-e134624%_
                  (lambda (_%id134626%_)
                    (if (symbol? _%id134626%_)
                        _%id134626%_
                        (gxc#generate-runtime-binding-id _%id134626%_)))))
          (eq? (_%symbol-e134624%_ _%id1134621%_)
               (_%symbol-e134624%_ _%id2134622%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134619%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134619%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134619%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134619%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134604%_ _%name134605%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134607%_
               (gxc#make-compile-job _%thunk134604%_ _%name134605%_)))
          (set! gxc#__compile-jobs (cons _%job134607%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134612%_)
        (let ((_%name134614%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134612%_ _%name134614%_))))
    (define gxc#add-compile-job!
      (lambda _g135014_
        (let ((_g135013_ (let () (declare (not safe)) (##length _g135014_))))
          (cond ((let () (declare (not safe)) (##fx= _g135013_ 1))
                 (apply gxc#add-compile-job!__0 _g135014_))
                ((let () (declare (not safe)) (##fx= _g135013_ 2))
                 (apply gxc#add-compile-job!__% _g135014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135014_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134601%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134601%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134595%_ ()
          (let ((_%pending134598%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134598%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134598%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134598%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134584%_ _%name134585%_)
        (make-thread
         (lambda ()
           (let _%loop134588%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135015
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134585%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135015))
                   (let ((__tmp135017 (lambda () (_%thunk134584%_)))
                         (__tmp135016
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135017 __tmp135016)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134588%_)))))
         _%name134585%_)))
    (define gxc#join!
      (lambda (_%thread134579%_)
        (let ((__tmp135019
               (lambda (_%exn134581%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134581%_))
                     (let ((__tmp135020
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134581%_))))
                       (declare (not safe))
                       (raise __tmp135020))
                     (let () (declare (not safe)) (raise _%exn134581%_)))))
              (__tmp135018 (lambda () (thread-join! _%thread134579%_))))
          (declare (not safe))
          (__with-catch __tmp135019 __tmp135018))))))
