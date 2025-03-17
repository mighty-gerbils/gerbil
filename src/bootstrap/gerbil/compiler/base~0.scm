(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1742226232)
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
       (let ((_%verbosity135133135135%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity135133135135%_
             (let* ((_%verbosity135138%_ _%verbosity135133135135%_)
                    (_%$e135140%_ (string->number _%verbosity135138%_)))
               (if _%$e135140%_ _%$e135140%_ _%verbosity135138%_))
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
      (let ((__tmp135195 (list)) (__tmp135194 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp135195
         '(gensyms bindings)
         __tmp135194
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args135131%_
        (apply make-instance gxc#symbol-table::t _%$args135131%_)))
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
      (lambda (_%self134653135116%_)
        (let* ((_%self135119%_ _%self134653135116%_)
               (_%self135121%_ _%self135119%_))
          (if (let ((__tmp135196
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135121%_))))
                (declare (not safe))
                (##fx< '2 __tmp135196))
              (begin
                (let ((__tmp135197
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135121%_
                   __tmp135197
                   '1
                   '#f
                   '#f))
                (let ((__tmp135198
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135121%_
                   __tmp135198
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp135199
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135121%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135121%_
                       '2
                       __tmp135199))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134985%_ _%stx134986%_ . _%details134987%_)
        (let ((_%ctx134992%_
               (let ((_%$e134989%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134989%_ _%$e134989%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134992%_
                 _%message134985%_
                 _%stx134986%_
                 _%details134987%_))))
    (define gxc#verbose
      (lambda _%args134982%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp135200
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134982%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp135200))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134964%_)
        (let* ((_%str134966%_
                (if (symbol? _%id134964%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134964%_))
                    _%id134964%_))
               (_%len134968%_ (string-length _%str134966%_))
               (_%res134970%_
                (let () (declare (not safe)) (##make-string _%len134968%_))))
          (let _%lp134973%_ ((_%i134975%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134975%_ _%len134968%_))
                (let* ((_%char134977%_ (string-ref _%str134966%_ _%i134975%_))
                       (_%xchar134979%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134977%_))
                            '#\_
                            _%char134977%_)))
                  (string-set! _%res134970%_ _%i134975%_ _%xchar134979%_)
                  (_%lp134973%_
                   (let () (declare (not safe)) (##fx+ _%i134975%_ '1))))
                _%res134970%_)))))
    (define gxc#map*
      (lambda (_%proc134906%_ _%maybe-improper-list134907%_)
        (let _%recur134909%_ ((_%rest134911%_ _%maybe-improper-list134907%_))
          (let* ((_%rest134912134923%_ _%rest134911%_)
                 (_%E134916134927%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134912134923%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134919134952%_
                   (lambda (_%rest134949%_ _%hd134950%_)
                     (cons (_%proc134906%_ _%hd134950%_)
                           (_%recur134909%_ _%rest134949%_))))
                  (_%K134918134943%_ (lambda () '()))
                  (_%K134917134933%_
                   (lambda (_%tail134931%_) (_%proc134906%_ _%tail134931%_))))
              (let ((_%try-match134914134946%_
                     (lambda ()
                       (if (null? _%rest134912134923%_)
                           (_%K134918134943%_)
                           (let ((_%tail134936%_ _%rest134912134923%_))
                             (declare (not safe))
                             (_%proc134906%_ _%tail134936%_))))))
                (if (pair? _%rest134912134923%_)
                    (let ((_%tl134921134957%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134912134923%_)))
                          (_%hd134920134955%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134912134923%_))))
                      (let ((_%hd134960%_ _%hd134920134955%_)
                            (_%rest134962%_ _%tl134921134957%_))
                        (_%K134919134952%_ _%rest134962%_ _%hd134960%_)))
                    (_%try-match134914134946%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134901%_)
        (let ((_%$e134903%_ (not (gxc#gensym-reference? _%sym134901%_))))
          (if _%$e134903%_
              _%$e134903%_
              (memq _%sym134901%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134897%_)
        (let ((_%str134899%_ (symbol->string _%sym134897%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134899%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134899%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134868%_)
        (let ((_%$e134870%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134868%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134868%_))
                   '#f)))
          (if _%$e134870%_
              ((lambda (_%bind134873%_)
                 (let ((_%eid134875%_
                        (##structure-ref _%bind134873%_ '1 gx#binding::t '#f))
                       (_%ht134876%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134875%_))
                       _%eid134875%_
                       (let ((_%$e134879%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134876%_ _%eid134875%_))))
                         (if _%$e134879%_
                             _%$e134879%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134873%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134883%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134875%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134876%_
                                      _%eid134875%_
                                      _%gid134883%_))
                                   _%gid134883%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134873%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134892%_
                                            (let ((_%$e134886%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134873%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134886%_
                                                  ((lambda (_%ns134889%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134889%_
                                                        '"#"
                                                        _%eid134875%_)))
                                                   _%$e134886%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134875%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134876%_
                                          _%eid134875%_
                                          _%gid134892%_))
                                       _%gid134892%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134868%_
                                      _%eid134875%_
                                      _%bind134873%_))))))))
               _%$e134870%_)
              (if (let ((__tmp135201
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134868%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp135201))
                  (let () (declare (not safe)) (gx#stx-e _%id134868%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134868%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134866%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134866%_))
            (gxc#generate-runtime-binding-id _%id134866%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134853%_)
        (if _%top134853%_
            (let ((_%ns134855%_
                   (##structure-ref
                    (let ((__tmp135202
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp135202))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134856%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134855%_
                  (if (fxpositive? _%phi134856%_)
                      (let ((__tmp135204 (number->string _%phi134856%_))
                            (__tmp135203
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134855%_
                         '"["
                         __tmp135204
                         '"]#_"
                         __tmp135203
                         '"_"))
                      (let ((__tmp135205
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134855%_ '"#_" __tmp135205 '"_")))
                  (if (fxpositive? _%phi134856%_)
                      (let ((__tmp135207 (number->string _%phi134856%_))
                            (__tmp135206
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp135207
                         '"]#_"
                         __tmp135206
                         '"_"))
                      (let ((__tmp135208
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135208 '"_")))))
            (let ((__tmp135209 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135209 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134862%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134862%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135211_
        (let ((_g135210_ (let () (declare (not safe)) (##length _g135211_))))
          (cond ((let () (declare (not safe)) (##fx= _g135210_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135211_))
                ((let () (declare (not safe)) (##fx= _g135210_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135211_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134831%_ _%quote?134832%_)
        (let* ((_%ht134834%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134836%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134834%_ _%sym134831%_))))
          (if _%$e134836%_
              _%$e134836%_
              (let ((_%g134840%_
                     (if _%quote?134832%_
                         (let ((__tmp135212
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134831%_
                            '"__"
                            __tmp135212))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134831%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134834%_ _%sym134831%_ _%g134840%_))
                _%g134840%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134845%_)
        (let ((_%quote?134847%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134845%_
           _%quote?134847%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135214_
        (let ((_g135213_ (let () (declare (not safe)) (##length _g135214_))))
          (cond ((let () (declare (not safe)) (##fx= _g135213_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135214_))
                ((let () (declare (not safe)) (##fx= _g135213_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135214_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134823%_ _%id2134824%_)
        (letrec ((_%symbol-e134826%_
                  (lambda (_%id134828%_)
                    (if (symbol? _%id134828%_)
                        _%id134828%_
                        (gxc#generate-runtime-binding-id _%id134828%_)))))
          (eq? (_%symbol-e134826%_ _%id1134823%_)
               (_%symbol-e134826%_ _%id2134824%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134821%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134821%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134821%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134821%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134806%_ _%name134807%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134809%_
               (gxc#make-compile-job _%thunk134806%_ _%name134807%_)))
          (set! gxc#__compile-jobs (cons _%job134809%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134814%_)
        (let ((_%name134816%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134814%_ _%name134816%_))))
    (define gxc#add-compile-job!
      (lambda _g135216_
        (let ((_g135215_ (let () (declare (not safe)) (##length _g135216_))))
          (cond ((let () (declare (not safe)) (##fx= _g135215_ 1))
                 (apply gxc#add-compile-job!__0 _g135216_))
                ((let () (declare (not safe)) (##fx= _g135215_ 2))
                 (apply gxc#add-compile-job!__% _g135216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135216_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134803%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134803%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134797%_ ()
          (let ((_%pending134800%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134800%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134800%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134800%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134786%_ _%name134787%_)
        (make-thread
         (lambda ()
           (let _%loop134790%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135217
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134787%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135217))
                   (let ((__tmp135219 (lambda () (_%thunk134786%_)))
                         (__tmp135218
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135219 __tmp135218)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134790%_)))))
         _%name134787%_)))
    (define gxc#join!
      (lambda (_%thread134781%_)
        (let ((__tmp135221
               (lambda (_%exn134783%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134783%_))
                     (let ((__tmp135222
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134783%_))))
                       (declare (not safe))
                       (raise __tmp135222))
                     (let () (declare (not safe)) (raise _%exn134783%_)))))
              (__tmp135220 (lambda () (thread-join! _%thread134781%_))))
          (declare (not safe))
          (__with-catch __tmp135221 __tmp135220))))))
