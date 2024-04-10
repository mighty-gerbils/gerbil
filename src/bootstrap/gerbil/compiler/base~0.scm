(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712757955)
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
       (let ((_%verbosity130377130379%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130377130379%_
             (let* ((_%verbosity130382%_ _%verbosity130377130379%_)
                    (_%$e130384%_ (string->number _%verbosity130382%_)))
               (if _%$e130384%_ _%$e130384%_ _%verbosity130382%_))
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
      (let ((__tmp130439 (list)) (__tmp130438 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130439
         '(gensyms bindings)
         __tmp130438
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130375%_
        (apply make-instance gxc#symbol-table::t _%$args130375%_)))
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
      (lambda (_%self130362%_)
        (let ((_%self130365%_ _%self130362%_))
          (if (let ((__tmp130440
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130365%_))))
                (declare (not safe))
                (##fx< '2 __tmp130440))
              (begin
                (let ((__tmp130441
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130365%_
                   __tmp130441
                   '1
                   '#f
                   '#f))
                (let ((__tmp130442
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130365%_
                   __tmp130442
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130443
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130365%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130365%_
                       '2
                       __tmp130443))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130231%_ _%stx130232%_ . _%details130233%_)
        (let ((_%ctx130238%_
               (let ((_%$e130235%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130235%_ _%$e130235%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130238%_
                 _%message130231%_
                 _%stx130232%_
                 _%details130233%_))))
    (define gxc#verbose
      (lambda _%args130228%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130444
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args130228%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp130444))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130210%_)
        (let* ((_%str130212%_
                (if (symbol? _%id130210%_)
                    (symbol->string _%id130210%_)
                    _%id130210%_))
               (_%len130214%_ (string-length _%str130212%_))
               (_%res130216%_
                (let () (declare (not safe)) (##make-string _%len130214%_))))
          (let _%lp130219%_ ((_%i130221%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130221%_ _%len130214%_))
                (let* ((_%char130223%_ (string-ref _%str130212%_ _%i130221%_))
                       (_%xchar130225%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130223%_))
                            '#\_
                            _%char130223%_)))
                  (string-set! _%res130216%_ _%i130221%_ _%xchar130225%_)
                  (_%lp130219%_
                   (let () (declare (not safe)) (##fx+ _%i130221%_ '1))))
                _%res130216%_)))))
    (define gxc#map*
      (lambda (_%proc130152%_ _%maybe-improper-list130153%_)
        (let _%recur130155%_ ((_%rest130157%_ _%maybe-improper-list130153%_))
          (let* ((_%rest130158130169%_ _%rest130157%_)
                 (_%E130162130173%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130158130169%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130165130198%_
                   (lambda (_%rest130195%_ _%hd130196%_)
                     (cons (_%proc130152%_ _%hd130196%_)
                           (_%recur130155%_ _%rest130195%_))))
                  (_%K130164130189%_ (lambda () '()))
                  (_%K130163130179%_
                   (lambda (_%tail130177%_) (_%proc130152%_ _%tail130177%_))))
              (let ((_%try-match130160130192%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130158130169%_))
                           (_%K130164130189%_)
                           (let ((_%tail130182%_ _%rest130158130169%_))
                             (declare (not safe))
                             (_%proc130152%_ _%tail130182%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130158130169%_))
                    (let ((_%tl130167130203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130158130169%_)))
                          (_%hd130166130201%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130158130169%_))))
                      (let ((_%hd130206%_ _%hd130166130201%_)
                            (_%rest130208%_ _%tl130167130203%_))
                        (_%K130165130198%_ _%rest130208%_ _%hd130206%_)))
                    (_%try-match130160130192%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130147%_)
        (let ((_%$e130149%_ (not (gxc#gensym-reference? _%sym130147%_))))
          (if _%$e130149%_
              _%$e130149%_
              (memq _%sym130147%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130143%_)
        (let ((_%str130145%_ (symbol->string _%sym130143%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130145%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130145%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130114%_)
        (let ((_%$e130116%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130114%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130114%_))
                   '#f)))
          (if _%$e130116%_
              ((lambda (_%bind130119%_)
                 (let ((_%eid130121%_
                        (##structure-ref _%bind130119%_ '1 gx#binding::t '#f))
                       (_%ht130122%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130121%_))
                       _%eid130121%_
                       (let ((_%$e130125%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130122%_ _%eid130121%_))))
                         (if _%$e130125%_
                             _%$e130125%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130119%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130129%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid130121%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130122%_
                                      _%eid130121%_
                                      _%gid130129%_))
                                   _%gid130129%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130119%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130138%_
                                            (let ((_%$e130132%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130119%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130132%_
                                                  ((lambda (_%ns130135%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130135%_
                                                        '"#"
                                                        _%eid130121%_)))
                                                   _%$e130132%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid130121%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130122%_
                                          _%eid130121%_
                                          _%gid130138%_))
                                       _%gid130138%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id130114%_
                                      _%eid130121%_
                                      _%bind130119%_))))))))
               _%$e130116%_)
              (if (let ((__tmp130445
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130114%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130445))
                  (let () (declare (not safe)) (gx#stx-e _%id130114%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id130114%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130112%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130112%_))
            (gxc#generate-runtime-binding-id _%id130112%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130099%_)
        (if _%top130099%_
            (let ((_%ns130101%_
                   (##structure-ref
                    (let ((__tmp130446
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130446))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130102%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130101%_
                  (if (fxpositive? _%phi130102%_)
                      (let ((__tmp130448 (number->string _%phi130102%_))
                            (__tmp130447
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130101%_
                         '"["
                         __tmp130448
                         '"]#_"
                         __tmp130447
                         '"_"))
                      (let ((__tmp130449
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130101%_ '"#_" __tmp130449 '"_")))
                  (if (fxpositive? _%phi130102%_)
                      (let ((__tmp130451 (number->string _%phi130102%_))
                            (__tmp130450
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130451
                         '"]#_"
                         __tmp130450
                         '"_"))
                      (let ((__tmp130452
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130452 '"_")))))
            (let ((__tmp130453 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130453 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130108%_ '#f))
          (gxc#generate-runtime-temporary__% _%top130108%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130455_
        (let ((_g130454_ (let () (declare (not safe)) (##length _g130455_))))
          (cond ((let () (declare (not safe)) (##fx= _g130454_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g130455_))
                ((let () (declare (not safe)) (##fx= _g130454_ 1))
                 (apply gxc#generate-runtime-temporary__% _g130455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130455_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130077%_ _%quote?130078%_)
        (let* ((_%ht130080%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130082%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130080%_ _%sym130077%_))))
          (if _%$e130082%_
              _%$e130082%_
              (let ((_%g130086%_
                     (if _%quote?130078%_
                         (let ((__tmp130456
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130077%_
                            '"__"
                            __tmp130456))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130077%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130080%_ _%sym130077%_ _%g130086%_))
                _%g130086%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130091%_)
        (let ((_%quote?130093%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130091%_
           _%quote?130093%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130458_
        (let ((_g130457_ (let () (declare (not safe)) (##length _g130458_))))
          (cond ((let () (declare (not safe)) (##fx= _g130457_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g130458_))
                ((let () (declare (not safe)) (##fx= _g130457_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g130458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130458_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130069%_ _%id2130070%_)
        (letrec ((_%symbol-e130072%_
                  (lambda (_%id130074%_)
                    (if (symbol? _%id130074%_)
                        _%id130074%_
                        (gxc#generate-runtime-binding-id _%id130074%_)))))
          (eq? (_%symbol-e130072%_ _%id1130069%_)
               (_%symbol-e130072%_ _%id2130070%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx130067%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130067%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx130067%_)
            (let () (declare (not safe)) (gx#stx-e _%stx130067%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk130052%_ _%name130053%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job130055%_
               (gxc#make-compile-job _%thunk130052%_ _%name130053%_)))
          (set! gxc#__compile-jobs (cons _%job130055%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk130060%_)
        (let ((_%name130062%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk130060%_ _%name130062%_))))
    (define gxc#add-compile-job!
      (lambda _g130460_
        (let ((_g130459_ (let () (declare (not safe)) (##length _g130460_))))
          (cond ((let () (declare (not safe)) (##fx= _g130459_ 1))
                 (apply gxc#add-compile-job!__0 _g130460_))
                ((let () (declare (not safe)) (##fx= _g130459_ 2))
                 (apply gxc#add-compile-job!__% _g130460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g130460_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result130049%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result130049%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop130043%_ ()
          (let ((_%pending130046%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending130046%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending130046%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending130046%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk130032%_ _%name130033%_)
        (make-thread
         (lambda ()
           (let _%loop130036%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp130461
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name130033%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp130461))
                   (let ((__tmp130463 (lambda () (_%thunk130032%_)))
                         (__tmp130462
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp130463 __tmp130462)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop130036%_)))))
         _%name130033%_)))
    (define gxc#join!
      (lambda (_%thread130027%_)
        (let ((__tmp130465
               (lambda (_%exn130029%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn130029%_))
                     (let ((__tmp130466
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn130029%_))))
                       (declare (not safe))
                       (raise __tmp130466))
                     (let () (declare (not safe)) (raise _%exn130029%_)))))
              (__tmp130464 (lambda () (thread-join! _%thread130027%_))))
          (declare (not safe))
          (__with-catch __tmp130465 __tmp130464))))))
