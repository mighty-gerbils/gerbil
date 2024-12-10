(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1733870075)
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
       (let ((_%verbosity133933133935%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity133933133935%_
             (let* ((_%verbosity133938%_ _%verbosity133933133935%_)
                    (_%$e133940%_ (string->number _%verbosity133938%_)))
               (if _%$e133940%_ _%$e133940%_ _%verbosity133938%_))
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
      (let ((__tmp133995 (list)) (__tmp133994 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp133995
         '(gensyms bindings)
         __tmp133994
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args133931%_
        (apply make-instance gxc#symbol-table::t _%$args133931%_)))
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
      (lambda (_%self133453133916%_)
        (let* ((_%self133919%_ _%self133453133916%_)
               (_%self133921%_ _%self133919%_))
          (if (let ((__tmp133996
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self133921%_))))
                (declare (not safe))
                (##fx< '2 __tmp133996))
              (begin
                (let ((__tmp133997
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133921%_
                   __tmp133997
                   '1
                   '#f
                   '#f))
                (let ((__tmp133998
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133921%_
                   __tmp133998
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp133999
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self133921%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self133921%_
                       '2
                       __tmp133999))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133785%_ _%stx133786%_ . _%details133787%_)
        (let ((_%ctx133792%_
               (let ((_%$e133789%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133789%_ _%$e133789%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx133792%_
                 _%message133785%_
                 _%stx133786%_
                 _%details133787%_))))
    (define gxc#verbose
      (lambda _%args133782%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp134000
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133782%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp134000))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133764%_)
        (let* ((_%str133766%_
                (if (symbol? _%id133764%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133764%_))
                    _%id133764%_))
               (_%len133768%_ (string-length _%str133766%_))
               (_%res133770%_
                (let () (declare (not safe)) (##make-string _%len133768%_))))
          (let _%lp133773%_ ((_%i133775%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133775%_ _%len133768%_))
                (let* ((_%char133777%_ (string-ref _%str133766%_ _%i133775%_))
                       (_%xchar133779%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133777%_))
                            '#\_
                            _%char133777%_)))
                  (string-set! _%res133770%_ _%i133775%_ _%xchar133779%_)
                  (_%lp133773%_
                   (let () (declare (not safe)) (##fx+ _%i133775%_ '1))))
                _%res133770%_)))))
    (define gxc#map*
      (lambda (_%proc133706%_ _%maybe-improper-list133707%_)
        (let _%recur133709%_ ((_%rest133711%_ _%maybe-improper-list133707%_))
          (let* ((_%rest133712133723%_ _%rest133711%_)
                 (_%E133716133727%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133712133723%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133719133752%_
                   (lambda (_%rest133749%_ _%hd133750%_)
                     (cons (_%proc133706%_ _%hd133750%_)
                           (_%recur133709%_ _%rest133749%_))))
                  (_%K133718133743%_ (lambda () '()))
                  (_%K133717133733%_
                   (lambda (_%tail133731%_) (_%proc133706%_ _%tail133731%_))))
              (let ((_%try-match133714133746%_
                     (lambda ()
                       (if (null? _%rest133712133723%_)
                           (_%K133718133743%_)
                           (let ((_%tail133736%_ _%rest133712133723%_))
                             (declare (not safe))
                             (_%proc133706%_ _%tail133736%_))))))
                (if (pair? _%rest133712133723%_)
                    (let ((_%tl133721133757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133712133723%_)))
                          (_%hd133720133755%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133712133723%_))))
                      (let ((_%hd133760%_ _%hd133720133755%_)
                            (_%rest133762%_ _%tl133721133757%_))
                        (_%K133719133752%_ _%rest133762%_ _%hd133760%_)))
                    (_%try-match133714133746%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133701%_)
        (let ((_%$e133703%_ (not (gxc#gensym-reference? _%sym133701%_))))
          (if _%$e133703%_
              _%$e133703%_
              (memq _%sym133701%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133697%_)
        (let ((_%str133699%_ (symbol->string _%sym133697%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133699%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133699%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133668%_)
        (let ((_%$e133670%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133668%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133668%_))
                   '#f)))
          (if _%$e133670%_
              ((lambda (_%bind133673%_)
                 (let ((_%eid133675%_
                        (##structure-ref _%bind133673%_ '1 gx#binding::t '#f))
                       (_%ht133676%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133675%_))
                       _%eid133675%_
                       (let ((_%$e133679%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133676%_ _%eid133675%_))))
                         (if _%$e133679%_
                             _%$e133679%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133673%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133683%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133675%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133676%_
                                      _%eid133675%_
                                      _%gid133683%_))
                                   _%gid133683%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133673%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133692%_
                                            (let ((_%$e133686%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133673%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133686%_
                                                  ((lambda (_%ns133689%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133689%_
                                                        '"#"
                                                        _%eid133675%_)))
                                                   _%$e133686%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133675%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133676%_
                                          _%eid133675%_
                                          _%gid133692%_))
                                       _%gid133692%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133668%_
                                      _%eid133675%_
                                      _%bind133673%_))))))))
               _%$e133670%_)
              (if (let ((__tmp134001
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133668%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp134001))
                  (let () (declare (not safe)) (gx#stx-e _%id133668%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133668%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133666%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133666%_))
            (gxc#generate-runtime-binding-id _%id133666%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133653%_)
        (if _%top133653%_
            (let ((_%ns133655%_
                   (##structure-ref
                    (let ((__tmp134002
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp134002))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133656%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133655%_
                  (if (fxpositive? _%phi133656%_)
                      (let ((__tmp134004 (number->string _%phi133656%_))
                            (__tmp134003
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133655%_
                         '"["
                         __tmp134004
                         '"]#_"
                         __tmp134003
                         '"_"))
                      (let ((__tmp134005
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133655%_ '"#_" __tmp134005 '"_")))
                  (if (fxpositive? _%phi133656%_)
                      (let ((__tmp134007 (number->string _%phi133656%_))
                            (__tmp134006
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp134007
                         '"]#_"
                         __tmp134006
                         '"_"))
                      (let ((__tmp134008
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp134008 '"_")))))
            (let ((__tmp134009 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp134009 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133662%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133662%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g134011_
        (let ((_g134010_ (let () (declare (not safe)) (##length _g134011_))))
          (cond ((let () (declare (not safe)) (##fx= _g134010_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g134011_))
                ((let () (declare (not safe)) (##fx= _g134010_ 1))
                 (apply gxc#generate-runtime-temporary__% _g134011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g134011_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym133631%_ _%quote?133632%_)
        (let* ((_%ht133634%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133636%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133634%_ _%sym133631%_))))
          (if _%$e133636%_
              _%$e133636%_
              (let ((_%g133640%_
                     (if _%quote?133632%_
                         (let ((__tmp134012
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym133631%_
                            '"__"
                            __tmp134012))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym133631%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133634%_ _%sym133631%_ _%g133640%_))
                _%g133640%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133645%_)
        (let ((_%quote?133647%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133645%_
           _%quote?133647%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g134014_
        (let ((_g134013_ (let () (declare (not safe)) (##length _g134014_))))
          (cond ((let () (declare (not safe)) (##fx= _g134013_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g134014_))
                ((let () (declare (not safe)) (##fx= _g134013_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g134014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g134014_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1133623%_ _%id2133624%_)
        (letrec ((_%symbol-e133626%_
                  (lambda (_%id133628%_)
                    (if (symbol? _%id133628%_)
                        _%id133628%_
                        (gxc#generate-runtime-binding-id _%id133628%_)))))
          (eq? (_%symbol-e133626%_ _%id1133623%_)
               (_%symbol-e133626%_ _%id2133624%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx133621%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx133621%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx133621%_)
            (let () (declare (not safe)) (gx#stx-e _%stx133621%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk133606%_ _%name133607%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job133609%_
               (gxc#make-compile-job _%thunk133606%_ _%name133607%_)))
          (set! gxc#__compile-jobs (cons _%job133609%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk133614%_)
        (let ((_%name133616%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk133614%_ _%name133616%_))))
    (define gxc#add-compile-job!
      (lambda _g134016_
        (let ((_g134015_ (let () (declare (not safe)) (##length _g134016_))))
          (cond ((let () (declare (not safe)) (##fx= _g134015_ 1))
                 (apply gxc#add-compile-job!__0 _g134016_))
                ((let () (declare (not safe)) (##fx= _g134015_ 2))
                 (apply gxc#add-compile-job!__% _g134016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g134016_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result133603%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result133603%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop133597%_ ()
          (let ((_%pending133600%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending133600%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending133600%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending133600%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk133586%_ _%name133587%_)
        (make-thread
         (lambda ()
           (let _%loop133590%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp134017
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name133587%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp134017))
                   (let ((__tmp134019 (lambda () (_%thunk133586%_)))
                         (__tmp134018
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp134019 __tmp134018)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop133590%_)))))
         _%name133587%_)))
    (define gxc#join!
      (lambda (_%thread133581%_)
        (let ((__tmp134021
               (lambda (_%exn133583%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn133583%_))
                     (let ((__tmp134022
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn133583%_))))
                       (declare (not safe))
                       (raise __tmp134022))
                     (let () (declare (not safe)) (raise _%exn133583%_)))))
              (__tmp134020 (lambda () (thread-join! _%thread133581%_))))
          (declare (not safe))
          (__with-catch __tmp134021 __tmp134020))))))
