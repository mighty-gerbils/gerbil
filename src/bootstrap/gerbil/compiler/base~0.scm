(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713000278)
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
       (let ((_%verbosity133299133301%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity133299133301%_
             (let* ((_%verbosity133304%_ _%verbosity133299133301%_)
                    (_%$e133306%_ (string->number _%verbosity133304%_)))
               (if _%$e133306%_ _%$e133306%_ _%verbosity133304%_))
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
      (let ((__tmp133361 (list)) (__tmp133360 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp133361
         '(gensyms bindings)
         __tmp133360
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args133297%_
        (apply make-instance gxc#symbol-table::t _%$args133297%_)))
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
      (lambda (_%self132819133282%_)
        (let* ((_%self133285%_ _%self132819133282%_)
               (_%self133287%_ _%self133285%_))
          (if (let ((__tmp133362
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self133287%_))))
                (declare (not safe))
                (##fx< '2 __tmp133362))
              (begin
                (let ((__tmp133363
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133287%_
                   __tmp133363
                   '1
                   '#f
                   '#f))
                (let ((__tmp133364
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133287%_
                   __tmp133364
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp133365
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self133287%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self133287%_
                       '2
                       __tmp133365))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133151%_ _%stx133152%_ . _%details133153%_)
        (let ((_%ctx133158%_
               (let ((_%$e133155%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133155%_ _%$e133155%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx133158%_
                 _%message133151%_
                 _%stx133152%_
                 _%details133153%_))))
    (define gxc#verbose
      (lambda _%args133148%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp133366
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133148%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp133366))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133130%_)
        (let* ((_%str133132%_
                (if (symbol? _%id133130%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133130%_))
                    _%id133130%_))
               (_%len133134%_ (string-length _%str133132%_))
               (_%res133136%_
                (let () (declare (not safe)) (##make-string _%len133134%_))))
          (let _%lp133139%_ ((_%i133141%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133141%_ _%len133134%_))
                (let* ((_%char133143%_ (string-ref _%str133132%_ _%i133141%_))
                       (_%xchar133145%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133143%_))
                            '#\_
                            _%char133143%_)))
                  (string-set! _%res133136%_ _%i133141%_ _%xchar133145%_)
                  (_%lp133139%_
                   (let () (declare (not safe)) (##fx+ _%i133141%_ '1))))
                _%res133136%_)))))
    (define gxc#map*
      (lambda (_%proc133072%_ _%maybe-improper-list133073%_)
        (let _%recur133075%_ ((_%rest133077%_ _%maybe-improper-list133073%_))
          (let* ((_%rest133078133089%_ _%rest133077%_)
                 (_%E133082133093%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133078133089%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133085133118%_
                   (lambda (_%rest133115%_ _%hd133116%_)
                     (cons (_%proc133072%_ _%hd133116%_)
                           (_%recur133075%_ _%rest133115%_))))
                  (_%K133084133109%_ (lambda () '()))
                  (_%K133083133099%_
                   (lambda (_%tail133097%_) (_%proc133072%_ _%tail133097%_))))
              (let ((_%try-match133080133112%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest133078133089%_))
                           (_%K133084133109%_)
                           (let ((_%tail133102%_ _%rest133078133089%_))
                             (declare (not safe))
                             (_%proc133072%_ _%tail133102%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest133078133089%_))
                    (let ((_%tl133087133123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133078133089%_)))
                          (_%hd133086133121%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133078133089%_))))
                      (let ((_%hd133126%_ _%hd133086133121%_)
                            (_%rest133128%_ _%tl133087133123%_))
                        (_%K133085133118%_ _%rest133128%_ _%hd133126%_)))
                    (_%try-match133080133112%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133067%_)
        (let ((_%$e133069%_ (not (gxc#gensym-reference? _%sym133067%_))))
          (if _%$e133069%_
              _%$e133069%_
              (memq _%sym133067%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133063%_)
        (let ((_%str133065%_ (symbol->string _%sym133063%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133065%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133065%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133034%_)
        (let ((_%$e133036%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133034%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133034%_))
                   '#f)))
          (if _%$e133036%_
              ((lambda (_%bind133039%_)
                 (let ((_%eid133041%_
                        (##structure-ref _%bind133039%_ '1 gx#binding::t '#f))
                       (_%ht133042%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133041%_))
                       _%eid133041%_
                       (let ((_%$e133045%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133042%_ _%eid133041%_))))
                         (if _%$e133045%_
                             _%$e133045%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133039%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133049%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133041%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133042%_
                                      _%eid133041%_
                                      _%gid133049%_))
                                   _%gid133049%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133039%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133058%_
                                            (let ((_%$e133052%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133039%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133052%_
                                                  ((lambda (_%ns133055%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133055%_
                                                        '"#"
                                                        _%eid133041%_)))
                                                   _%$e133052%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133041%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133042%_
                                          _%eid133041%_
                                          _%gid133058%_))
                                       _%gid133058%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133034%_
                                      _%eid133041%_
                                      _%bind133039%_))))))))
               _%$e133036%_)
              (if (let ((__tmp133367
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133034%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp133367))
                  (let () (declare (not safe)) (gx#stx-e _%id133034%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133034%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133032%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133032%_))
            (gxc#generate-runtime-binding-id _%id133032%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133019%_)
        (if _%top133019%_
            (let ((_%ns133021%_
                   (##structure-ref
                    (let ((__tmp133368
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp133368))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133022%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133021%_
                  (if (fxpositive? _%phi133022%_)
                      (let ((__tmp133370 (number->string _%phi133022%_))
                            (__tmp133369
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133021%_
                         '"["
                         __tmp133370
                         '"]#_"
                         __tmp133369
                         '"_"))
                      (let ((__tmp133371
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133021%_ '"#_" __tmp133371 '"_")))
                  (if (fxpositive? _%phi133022%_)
                      (let ((__tmp133373 (number->string _%phi133022%_))
                            (__tmp133372
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp133373
                         '"]#_"
                         __tmp133372
                         '"_"))
                      (let ((__tmp133374
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp133374 '"_")))))
            (let ((__tmp133375 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp133375 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133028%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133028%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g133377_
        (let ((_g133376_ (let () (declare (not safe)) (##length _g133377_))))
          (cond ((let () (declare (not safe)) (##fx= _g133376_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g133377_))
                ((let () (declare (not safe)) (##fx= _g133376_ 1))
                 (apply gxc#generate-runtime-temporary__% _g133377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g133377_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym132997%_ _%quote?132998%_)
        (let* ((_%ht133000%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133002%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133000%_ _%sym132997%_))))
          (if _%$e133002%_
              _%$e133002%_
              (let ((_%g133006%_
                     (if _%quote?132998%_
                         (let ((__tmp133378
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym132997%_
                            '"__"
                            __tmp133378))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym132997%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133000%_ _%sym132997%_ _%g133006%_))
                _%g133006%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133011%_)
        (let ((_%quote?133013%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133011%_
           _%quote?133013%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g133380_
        (let ((_g133379_ (let () (declare (not safe)) (##length _g133380_))))
          (cond ((let () (declare (not safe)) (##fx= _g133379_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g133380_))
                ((let () (declare (not safe)) (##fx= _g133379_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g133380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g133380_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1132989%_ _%id2132990%_)
        (letrec ((_%symbol-e132992%_
                  (lambda (_%id132994%_)
                    (if (symbol? _%id132994%_)
                        _%id132994%_
                        (gxc#generate-runtime-binding-id _%id132994%_)))))
          (eq? (_%symbol-e132992%_ _%id1132989%_)
               (_%symbol-e132992%_ _%id2132990%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx132987%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx132987%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx132987%_)
            (let () (declare (not safe)) (gx#stx-e _%stx132987%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk132972%_ _%name132973%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job132975%_
               (gxc#make-compile-job _%thunk132972%_ _%name132973%_)))
          (set! gxc#__compile-jobs (cons _%job132975%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk132980%_)
        (let ((_%name132982%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk132980%_ _%name132982%_))))
    (define gxc#add-compile-job!
      (lambda _g133382_
        (let ((_g133381_ (let () (declare (not safe)) (##length _g133382_))))
          (cond ((let () (declare (not safe)) (##fx= _g133381_ 1))
                 (apply gxc#add-compile-job!__0 _g133382_))
                ((let () (declare (not safe)) (##fx= _g133381_ 2))
                 (apply gxc#add-compile-job!__% _g133382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g133382_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result132969%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result132969%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop132963%_ ()
          (let ((_%pending132966%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending132966%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending132966%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending132966%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk132952%_ _%name132953%_)
        (make-thread
         (lambda ()
           (let _%loop132956%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp133383
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name132953%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp133383))
                   (let ((__tmp133385 (lambda () (_%thunk132952%_)))
                         (__tmp133384
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp133385 __tmp133384)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop132956%_)))))
         _%name132953%_)))
    (define gxc#join!
      (lambda (_%thread132947%_)
        (let ((__tmp133387
               (lambda (_%exn132949%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn132949%_))
                     (let ((__tmp133388
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn132949%_))))
                       (declare (not safe))
                       (raise __tmp133388))
                     (let () (declare (not safe)) (raise _%exn132949%_)))))
              (__tmp133386 (lambda () (thread-join! _%thread132947%_))))
          (declare (not safe))
          (__with-catch __tmp133387 __tmp133386))))))
