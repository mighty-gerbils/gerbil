(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1733687560)
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
       (let ((_%verbosity133896133898%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity133896133898%_
             (let* ((_%verbosity133901%_ _%verbosity133896133898%_)
                    (_%$e133903%_ (string->number _%verbosity133901%_)))
               (if _%$e133903%_ _%$e133903%_ _%verbosity133901%_))
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
      (let ((__tmp133958 (list)) (__tmp133957 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp133958
         '(gensyms bindings)
         __tmp133957
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args133894%_
        (apply make-instance gxc#symbol-table::t _%$args133894%_)))
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
      (lambda (_%self133416133879%_)
        (let* ((_%self133882%_ _%self133416133879%_)
               (_%self133884%_ _%self133882%_))
          (if (let ((__tmp133959
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self133884%_))))
                (declare (not safe))
                (##fx< '2 __tmp133959))
              (begin
                (let ((__tmp133960
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133884%_
                   __tmp133960
                   '1
                   '#f
                   '#f))
                (let ((__tmp133961
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133884%_
                   __tmp133961
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp133962
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self133884%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self133884%_
                       '2
                       __tmp133962))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133748%_ _%stx133749%_ . _%details133750%_)
        (let ((_%ctx133755%_
               (let ((_%$e133752%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133752%_ _%$e133752%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx133755%_
                 _%message133748%_
                 _%stx133749%_
                 _%details133750%_))))
    (define gxc#verbose
      (lambda _%args133745%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp133963
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133745%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp133963))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133727%_)
        (let* ((_%str133729%_
                (if (symbol? _%id133727%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133727%_))
                    _%id133727%_))
               (_%len133731%_ (string-length _%str133729%_))
               (_%res133733%_
                (let () (declare (not safe)) (##make-string _%len133731%_))))
          (let _%lp133736%_ ((_%i133738%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133738%_ _%len133731%_))
                (let* ((_%char133740%_ (string-ref _%str133729%_ _%i133738%_))
                       (_%xchar133742%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133740%_))
                            '#\_
                            _%char133740%_)))
                  (string-set! _%res133733%_ _%i133738%_ _%xchar133742%_)
                  (_%lp133736%_
                   (let () (declare (not safe)) (##fx+ _%i133738%_ '1))))
                _%res133733%_)))))
    (define gxc#map*
      (lambda (_%proc133669%_ _%maybe-improper-list133670%_)
        (let _%recur133672%_ ((_%rest133674%_ _%maybe-improper-list133670%_))
          (let* ((_%rest133675133686%_ _%rest133674%_)
                 (_%E133679133690%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133675133686%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133682133715%_
                   (lambda (_%rest133712%_ _%hd133713%_)
                     (cons (_%proc133669%_ _%hd133713%_)
                           (_%recur133672%_ _%rest133712%_))))
                  (_%K133681133706%_ (lambda () '()))
                  (_%K133680133696%_
                   (lambda (_%tail133694%_) (_%proc133669%_ _%tail133694%_))))
              (let ((_%try-match133677133709%_
                     (lambda ()
                       (if (null? _%rest133675133686%_)
                           (_%K133681133706%_)
                           (let ((_%tail133699%_ _%rest133675133686%_))
                             (declare (not safe))
                             (_%proc133669%_ _%tail133699%_))))))
                (if (pair? _%rest133675133686%_)
                    (let ((_%tl133684133720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133675133686%_)))
                          (_%hd133683133718%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133675133686%_))))
                      (let ((_%hd133723%_ _%hd133683133718%_)
                            (_%rest133725%_ _%tl133684133720%_))
                        (_%K133682133715%_ _%rest133725%_ _%hd133723%_)))
                    (_%try-match133677133709%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133664%_)
        (let ((_%$e133666%_ (not (gxc#gensym-reference? _%sym133664%_))))
          (if _%$e133666%_
              _%$e133666%_
              (memq _%sym133664%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133660%_)
        (let ((_%str133662%_ (symbol->string _%sym133660%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133662%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133662%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133631%_)
        (let ((_%$e133633%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133631%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133631%_))
                   '#f)))
          (if _%$e133633%_
              ((lambda (_%bind133636%_)
                 (let ((_%eid133638%_
                        (##structure-ref _%bind133636%_ '1 gx#binding::t '#f))
                       (_%ht133639%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133638%_))
                       _%eid133638%_
                       (let ((_%$e133642%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133639%_ _%eid133638%_))))
                         (if _%$e133642%_
                             _%$e133642%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133636%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133646%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133638%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133639%_
                                      _%eid133638%_
                                      _%gid133646%_))
                                   _%gid133646%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133636%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133655%_
                                            (let ((_%$e133649%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133636%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133649%_
                                                  ((lambda (_%ns133652%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133652%_
                                                        '"#"
                                                        _%eid133638%_)))
                                                   _%$e133649%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133638%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133639%_
                                          _%eid133638%_
                                          _%gid133655%_))
                                       _%gid133655%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133631%_
                                      _%eid133638%_
                                      _%bind133636%_))))))))
               _%$e133633%_)
              (if (let ((__tmp133964
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133631%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp133964))
                  (let () (declare (not safe)) (gx#stx-e _%id133631%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133631%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133629%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133629%_))
            (gxc#generate-runtime-binding-id _%id133629%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133616%_)
        (if _%top133616%_
            (let ((_%ns133618%_
                   (##structure-ref
                    (let ((__tmp133965
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp133965))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133619%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133618%_
                  (if (fxpositive? _%phi133619%_)
                      (let ((__tmp133967 (number->string _%phi133619%_))
                            (__tmp133966
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133618%_
                         '"["
                         __tmp133967
                         '"]#_"
                         __tmp133966
                         '"_"))
                      (let ((__tmp133968
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133618%_ '"#_" __tmp133968 '"_")))
                  (if (fxpositive? _%phi133619%_)
                      (let ((__tmp133970 (number->string _%phi133619%_))
                            (__tmp133969
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp133970
                         '"]#_"
                         __tmp133969
                         '"_"))
                      (let ((__tmp133971
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp133971 '"_")))))
            (let ((__tmp133972 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp133972 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133625%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133625%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g133974_
        (let ((_g133973_ (let () (declare (not safe)) (##length _g133974_))))
          (cond ((let () (declare (not safe)) (##fx= _g133973_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g133974_))
                ((let () (declare (not safe)) (##fx= _g133973_ 1))
                 (apply gxc#generate-runtime-temporary__% _g133974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g133974_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym133594%_ _%quote?133595%_)
        (let* ((_%ht133597%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133599%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133597%_ _%sym133594%_))))
          (if _%$e133599%_
              _%$e133599%_
              (let ((_%g133603%_
                     (if _%quote?133595%_
                         (let ((__tmp133975
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym133594%_
                            '"__"
                            __tmp133975))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym133594%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133597%_ _%sym133594%_ _%g133603%_))
                _%g133603%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133608%_)
        (let ((_%quote?133610%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133608%_
           _%quote?133610%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g133977_
        (let ((_g133976_ (let () (declare (not safe)) (##length _g133977_))))
          (cond ((let () (declare (not safe)) (##fx= _g133976_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g133977_))
                ((let () (declare (not safe)) (##fx= _g133976_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g133977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g133977_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1133586%_ _%id2133587%_)
        (letrec ((_%symbol-e133589%_
                  (lambda (_%id133591%_)
                    (if (symbol? _%id133591%_)
                        _%id133591%_
                        (gxc#generate-runtime-binding-id _%id133591%_)))))
          (eq? (_%symbol-e133589%_ _%id1133586%_)
               (_%symbol-e133589%_ _%id2133587%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx133584%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx133584%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx133584%_)
            (let () (declare (not safe)) (gx#stx-e _%stx133584%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk133569%_ _%name133570%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job133572%_
               (gxc#make-compile-job _%thunk133569%_ _%name133570%_)))
          (set! gxc#__compile-jobs (cons _%job133572%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk133577%_)
        (let ((_%name133579%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk133577%_ _%name133579%_))))
    (define gxc#add-compile-job!
      (lambda _g133979_
        (let ((_g133978_ (let () (declare (not safe)) (##length _g133979_))))
          (cond ((let () (declare (not safe)) (##fx= _g133978_ 1))
                 (apply gxc#add-compile-job!__0 _g133979_))
                ((let () (declare (not safe)) (##fx= _g133978_ 2))
                 (apply gxc#add-compile-job!__% _g133979_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g133979_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result133566%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result133566%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop133560%_ ()
          (let ((_%pending133563%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending133563%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending133563%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending133563%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk133549%_ _%name133550%_)
        (make-thread
         (lambda ()
           (let _%loop133553%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp133980
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name133550%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp133980))
                   (let ((__tmp133982 (lambda () (_%thunk133549%_)))
                         (__tmp133981
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp133982 __tmp133981)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop133553%_)))))
         _%name133550%_)))
    (define gxc#join!
      (lambda (_%thread133544%_)
        (let ((__tmp133984
               (lambda (_%exn133546%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn133546%_))
                     (let ((__tmp133985
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn133546%_))))
                       (declare (not safe))
                       (raise __tmp133985))
                     (let () (declare (not safe)) (raise _%exn133546%_)))))
              (__tmp133983 (lambda () (thread-join! _%thread133544%_))))
          (declare (not safe))
          (__with-catch __tmp133984 __tmp133983))))))
