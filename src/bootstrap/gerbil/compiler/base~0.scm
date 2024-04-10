(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712784666)
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
       (let ((_%verbosity131208131210%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity131208131210%_
             (let* ((_%verbosity131213%_ _%verbosity131208131210%_)
                    (_%$e131215%_ (string->number _%verbosity131213%_)))
               (if _%$e131215%_ _%$e131215%_ _%verbosity131213%_))
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
      (let ((__tmp131270 (list)) (__tmp131269 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp131270
         '(gensyms bindings)
         __tmp131269
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args131206%_
        (apply make-instance gxc#symbol-table::t _%$args131206%_)))
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
      (lambda (_%self130728131191%_)
        (let* ((_%self131194%_ _%self130728131191%_)
               (_%self131196%_ _%self131194%_))
          (if (let ((__tmp131271
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self131196%_))))
                (declare (not safe))
                (##fx< '2 __tmp131271))
              (begin
                (let ((__tmp131272
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131196%_
                   __tmp131272
                   '1
                   '#f
                   '#f))
                (let ((__tmp131273
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131196%_
                   __tmp131273
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp131274
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self131196%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self131196%_
                       '2
                       __tmp131274))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message131060%_ _%stx131061%_ . _%details131062%_)
        (let ((_%ctx131067%_
               (let ((_%$e131064%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e131064%_ _%$e131064%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx131067%_
                 _%message131060%_
                 _%stx131061%_
                 _%details131062%_))))
    (define gxc#verbose
      (lambda _%args131057%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp131275
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args131057%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp131275))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id131039%_)
        (let* ((_%str131041%_
                (if (symbol? _%id131039%_)
                    (symbol->string _%id131039%_)
                    _%id131039%_))
               (_%len131043%_ (string-length _%str131041%_))
               (_%res131045%_
                (let () (declare (not safe)) (##make-string _%len131043%_))))
          (let _%lp131048%_ ((_%i131050%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131050%_ _%len131043%_))
                (let* ((_%char131052%_ (string-ref _%str131041%_ _%i131050%_))
                       (_%xchar131054%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char131052%_))
                            '#\_
                            _%char131052%_)))
                  (string-set! _%res131045%_ _%i131050%_ _%xchar131054%_)
                  (_%lp131048%_
                   (let () (declare (not safe)) (##fx+ _%i131050%_ '1))))
                _%res131045%_)))))
    (define gxc#map*
      (lambda (_%proc130981%_ _%maybe-improper-list130982%_)
        (let _%recur130984%_ ((_%rest130986%_ _%maybe-improper-list130982%_))
          (let* ((_%rest130987130998%_ _%rest130986%_)
                 (_%E130991131002%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130987130998%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130994131027%_
                   (lambda (_%rest131024%_ _%hd131025%_)
                     (cons (_%proc130981%_ _%hd131025%_)
                           (_%recur130984%_ _%rest131024%_))))
                  (_%K130993131018%_ (lambda () '()))
                  (_%K130992131008%_
                   (lambda (_%tail131006%_) (_%proc130981%_ _%tail131006%_))))
              (let ((_%try-match130989131021%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130987130998%_))
                           (_%K130993131018%_)
                           (let ((_%tail131011%_ _%rest130987130998%_))
                             (declare (not safe))
                             (_%proc130981%_ _%tail131011%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130987130998%_))
                    (let ((_%tl130996131032%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130987130998%_)))
                          (_%hd130995131030%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130987130998%_))))
                      (let ((_%hd131035%_ _%hd130995131030%_)
                            (_%rest131037%_ _%tl130996131032%_))
                        (_%K130994131027%_ _%rest131037%_ _%hd131035%_)))
                    (_%try-match130989131021%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130976%_)
        (let ((_%$e130978%_ (not (gxc#gensym-reference? _%sym130976%_))))
          (if _%$e130978%_
              _%$e130978%_
              (memq _%sym130976%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130972%_)
        (let ((_%str130974%_ (symbol->string _%sym130972%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130974%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130974%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130943%_)
        (let ((_%$e130945%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130943%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130943%_))
                   '#f)))
          (if _%$e130945%_
              ((lambda (_%bind130948%_)
                 (let ((_%eid130950%_
                        (##structure-ref _%bind130948%_ '1 gx#binding::t '#f))
                       (_%ht130951%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130950%_))
                       _%eid130950%_
                       (let ((_%$e130954%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130951%_ _%eid130950%_))))
                         (if _%$e130954%_
                             _%$e130954%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130948%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130958%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid130950%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130951%_
                                      _%eid130950%_
                                      _%gid130958%_))
                                   _%gid130958%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130948%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130967%_
                                            (let ((_%$e130961%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130948%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130961%_
                                                  ((lambda (_%ns130964%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130964%_
                                                        '"#"
                                                        _%eid130950%_)))
                                                   _%$e130961%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid130950%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130951%_
                                          _%eid130950%_
                                          _%gid130967%_))
                                       _%gid130967%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id130943%_
                                      _%eid130950%_
                                      _%bind130948%_))))))))
               _%$e130945%_)
              (if (let ((__tmp131276
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130943%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp131276))
                  (let () (declare (not safe)) (gx#stx-e _%id130943%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id130943%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130941%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130941%_))
            (gxc#generate-runtime-binding-id _%id130941%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130928%_)
        (if _%top130928%_
            (let ((_%ns130930%_
                   (##structure-ref
                    (let ((__tmp131277
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp131277))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130931%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130930%_
                  (if (fxpositive? _%phi130931%_)
                      (let ((__tmp131279 (number->string _%phi130931%_))
                            (__tmp131278
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130930%_
                         '"["
                         __tmp131279
                         '"]#_"
                         __tmp131278
                         '"_"))
                      (let ((__tmp131280
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130930%_ '"#_" __tmp131280 '"_")))
                  (if (fxpositive? _%phi130931%_)
                      (let ((__tmp131282 (number->string _%phi130931%_))
                            (__tmp131281
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp131282
                         '"]#_"
                         __tmp131281
                         '"_"))
                      (let ((__tmp131283
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp131283 '"_")))))
            (let ((__tmp131284 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp131284 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130937%_ '#f))
          (gxc#generate-runtime-temporary__% _%top130937%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g131286_
        (let ((_g131285_ (let () (declare (not safe)) (##length _g131286_))))
          (cond ((let () (declare (not safe)) (##fx= _g131285_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g131286_))
                ((let () (declare (not safe)) (##fx= _g131285_ 1))
                 (apply gxc#generate-runtime-temporary__% _g131286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g131286_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130906%_ _%quote?130907%_)
        (let* ((_%ht130909%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130911%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130909%_ _%sym130906%_))))
          (if _%$e130911%_
              _%$e130911%_
              (let ((_%g130915%_
                     (if _%quote?130907%_
                         (let ((__tmp131287
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130906%_
                            '"__"
                            __tmp131287))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130906%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130909%_ _%sym130906%_ _%g130915%_))
                _%g130915%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130920%_)
        (let ((_%quote?130922%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130920%_
           _%quote?130922%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g131289_
        (let ((_g131288_ (let () (declare (not safe)) (##length _g131289_))))
          (cond ((let () (declare (not safe)) (##fx= _g131288_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g131289_))
                ((let () (declare (not safe)) (##fx= _g131288_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g131289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g131289_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130898%_ _%id2130899%_)
        (letrec ((_%symbol-e130901%_
                  (lambda (_%id130903%_)
                    (if (symbol? _%id130903%_)
                        _%id130903%_
                        (gxc#generate-runtime-binding-id _%id130903%_)))))
          (eq? (_%symbol-e130901%_ _%id1130898%_)
               (_%symbol-e130901%_ _%id2130899%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx130896%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130896%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx130896%_)
            (let () (declare (not safe)) (gx#stx-e _%stx130896%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk130881%_ _%name130882%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job130884%_
               (gxc#make-compile-job _%thunk130881%_ _%name130882%_)))
          (set! gxc#__compile-jobs (cons _%job130884%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk130889%_)
        (let ((_%name130891%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk130889%_ _%name130891%_))))
    (define gxc#add-compile-job!
      (lambda _g131291_
        (let ((_g131290_ (let () (declare (not safe)) (##length _g131291_))))
          (cond ((let () (declare (not safe)) (##fx= _g131290_ 1))
                 (apply gxc#add-compile-job!__0 _g131291_))
                ((let () (declare (not safe)) (##fx= _g131290_ 2))
                 (apply gxc#add-compile-job!__% _g131291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g131291_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result130878%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result130878%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop130872%_ ()
          (let ((_%pending130875%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending130875%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending130875%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending130875%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk130861%_ _%name130862%_)
        (make-thread
         (lambda ()
           (let _%loop130865%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp131292
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name130862%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp131292))
                   (let ((__tmp131294 (lambda () (_%thunk130861%_)))
                         (__tmp131293
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp131294 __tmp131293)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop130865%_)))))
         _%name130862%_)))
    (define gxc#join!
      (lambda (_%thread130856%_)
        (let ((__tmp131296
               (lambda (_%exn130858%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn130858%_))
                     (let ((__tmp131297
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn130858%_))))
                       (declare (not safe))
                       (raise __tmp131297))
                     (let () (declare (not safe)) (raise _%exn130858%_)))))
              (__tmp131295 (lambda () (thread-join! _%thread130856%_))))
          (declare (not safe))
          (__with-catch __tmp131296 __tmp131295))))))
