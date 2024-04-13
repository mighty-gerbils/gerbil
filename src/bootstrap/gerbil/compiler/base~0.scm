(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713004411)
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
       (let ((_%verbosity132383132385%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity132383132385%_
             (let* ((_%verbosity132388%_ _%verbosity132383132385%_)
                    (_%$e132390%_ (string->number _%verbosity132388%_)))
               (if _%$e132390%_ _%$e132390%_ _%verbosity132388%_))
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
      (let ((__tmp132445 (list)) (__tmp132444 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp132445
         '(gensyms bindings)
         __tmp132444
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args132381%_
        (apply make-instance gxc#symbol-table::t _%$args132381%_)))
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
      (lambda (_%self131903132366%_)
        (let* ((_%self132369%_ _%self131903132366%_)
               (_%self132371%_ _%self132369%_))
          (if (let ((__tmp132446
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self132371%_))))
                (declare (not safe))
                (##fx< '2 __tmp132446))
              (begin
                (let ((__tmp132447
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132371%_
                   __tmp132447
                   '1
                   '#f
                   '#f))
                (let ((__tmp132448
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132371%_
                   __tmp132448
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp132449
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self132371%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self132371%_
                       '2
                       __tmp132449))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message132235%_ _%stx132236%_ . _%details132237%_)
        (let ((_%ctx132242%_
               (let ((_%$e132239%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e132239%_ _%$e132239%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx132242%_
                 _%message132235%_
                 _%stx132236%_
                 _%details132237%_))))
    (define gxc#verbose
      (lambda _%args132232%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp132450
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args132232%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp132450))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id132214%_)
        (let* ((_%str132216%_
                (if (symbol? _%id132214%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id132214%_))
                    _%id132214%_))
               (_%len132218%_ (string-length _%str132216%_))
               (_%res132220%_
                (let () (declare (not safe)) (##make-string _%len132218%_))))
          (let _%lp132223%_ ((_%i132225%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132225%_ _%len132218%_))
                (let* ((_%char132227%_ (string-ref _%str132216%_ _%i132225%_))
                       (_%xchar132229%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char132227%_))
                            '#\_
                            _%char132227%_)))
                  (string-set! _%res132220%_ _%i132225%_ _%xchar132229%_)
                  (_%lp132223%_
                   (let () (declare (not safe)) (##fx+ _%i132225%_ '1))))
                _%res132220%_)))))
    (define gxc#map*
      (lambda (_%proc132156%_ _%maybe-improper-list132157%_)
        (let _%recur132159%_ ((_%rest132161%_ _%maybe-improper-list132157%_))
          (let* ((_%rest132162132173%_ _%rest132161%_)
                 (_%E132166132177%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest132162132173%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K132169132202%_
                   (lambda (_%rest132199%_ _%hd132200%_)
                     (cons (_%proc132156%_ _%hd132200%_)
                           (_%recur132159%_ _%rest132199%_))))
                  (_%K132168132193%_ (lambda () '()))
                  (_%K132167132183%_
                   (lambda (_%tail132181%_) (_%proc132156%_ _%tail132181%_))))
              (let ((_%try-match132164132196%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest132162132173%_))
                           (_%K132168132193%_)
                           (let ((_%tail132186%_ _%rest132162132173%_))
                             (declare (not safe))
                             (_%proc132156%_ _%tail132186%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest132162132173%_))
                    (let ((_%tl132171132207%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest132162132173%_)))
                          (_%hd132170132205%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest132162132173%_))))
                      (let ((_%hd132210%_ _%hd132170132205%_)
                            (_%rest132212%_ _%tl132171132207%_))
                        (_%K132169132202%_ _%rest132212%_ _%hd132210%_)))
                    (_%try-match132164132196%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym132151%_)
        (let ((_%$e132153%_ (not (gxc#gensym-reference? _%sym132151%_))))
          (if _%$e132153%_
              _%$e132153%_
              (memq _%sym132151%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym132147%_)
        (let ((_%str132149%_ (symbol->string _%sym132147%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str132149%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str132149%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id132118%_)
        (let ((_%$e132120%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id132118%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id132118%_))
                   '#f)))
          (if _%$e132120%_
              ((lambda (_%bind132123%_)
                 (let ((_%eid132125%_
                        (##structure-ref _%bind132123%_ '1 gx#binding::t '#f))
                       (_%ht132126%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid132125%_))
                       _%eid132125%_
                       (let ((_%$e132129%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht132126%_ _%eid132125%_))))
                         (if _%$e132129%_
                             _%$e132129%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind132123%_
                                    'gx#local-binding::t))
                                 (let ((_%gid132133%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid132125%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht132126%_
                                      _%eid132125%_
                                      _%gid132133%_))
                                   _%gid132133%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind132123%_
                                        'gx#module-binding::t))
                                     (let ((_%gid132142%_
                                            (let ((_%$e132136%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind132123%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e132136%_
                                                  ((lambda (_%ns132139%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns132139%_
                                                        '"#"
                                                        _%eid132125%_)))
                                                   _%$e132136%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid132125%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht132126%_
                                          _%eid132125%_
                                          _%gid132142%_))
                                       _%gid132142%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id132118%_
                                      _%eid132125%_
                                      _%bind132123%_))))))))
               _%$e132120%_)
              (if (let ((__tmp132451
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id132118%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp132451))
                  (let () (declare (not safe)) (gx#stx-e _%id132118%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id132118%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id132116%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id132116%_))
            (gxc#generate-runtime-binding-id _%id132116%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top132103%_)
        (if _%top132103%_
            (let ((_%ns132105%_
                   (##structure-ref
                    (let ((__tmp132452
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp132452))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi132106%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns132105%_
                  (if (fxpositive? _%phi132106%_)
                      (let ((__tmp132454 (number->string _%phi132106%_))
                            (__tmp132453
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns132105%_
                         '"["
                         __tmp132454
                         '"]#_"
                         __tmp132453
                         '"_"))
                      (let ((__tmp132455
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns132105%_ '"#_" __tmp132455 '"_")))
                  (if (fxpositive? _%phi132106%_)
                      (let ((__tmp132457 (number->string _%phi132106%_))
                            (__tmp132456
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132457
                         '"]#_"
                         __tmp132456
                         '"_"))
                      (let ((__tmp132458
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132458 '"_")))))
            (let ((__tmp132459 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132459 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top132112%_ '#f))
          (gxc#generate-runtime-temporary__% _%top132112%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132461_
        (let ((_g132460_ (let () (declare (not safe)) (##length _g132461_))))
          (cond ((let () (declare (not safe)) (##fx= _g132460_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132461_))
                ((let () (declare (not safe)) (##fx= _g132460_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132461_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym132081%_ _%quote?132082%_)
        (let* ((_%ht132084%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e132086%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht132084%_ _%sym132081%_))))
          (if _%$e132086%_
              _%$e132086%_
              (let ((_%g132090%_
                     (if _%quote?132082%_
                         (let ((__tmp132462
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym132081%_
                            '"__"
                            __tmp132462))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym132081%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht132084%_ _%sym132081%_ _%g132090%_))
                _%g132090%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym132095%_)
        (let ((_%quote?132097%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym132095%_
           _%quote?132097%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132464_
        (let ((_g132463_ (let () (declare (not safe)) (##length _g132464_))))
          (cond ((let () (declare (not safe)) (##fx= _g132463_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132464_))
                ((let () (declare (not safe)) (##fx= _g132463_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132464_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1132073%_ _%id2132074%_)
        (letrec ((_%symbol-e132076%_
                  (lambda (_%id132078%_)
                    (if (symbol? _%id132078%_)
                        _%id132078%_
                        (gxc#generate-runtime-binding-id _%id132078%_)))))
          (eq? (_%symbol-e132076%_ _%id1132073%_)
               (_%symbol-e132076%_ _%id2132074%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx132071%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx132071%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx132071%_)
            (let () (declare (not safe)) (gx#stx-e _%stx132071%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk132056%_ _%name132057%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job132059%_
               (gxc#make-compile-job _%thunk132056%_ _%name132057%_)))
          (set! gxc#__compile-jobs (cons _%job132059%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk132064%_)
        (let ((_%name132066%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk132064%_ _%name132066%_))))
    (define gxc#add-compile-job!
      (lambda _g132466_
        (let ((_g132465_ (let () (declare (not safe)) (##length _g132466_))))
          (cond ((let () (declare (not safe)) (##fx= _g132465_ 1))
                 (apply gxc#add-compile-job!__0 _g132466_))
                ((let () (declare (not safe)) (##fx= _g132465_ 2))
                 (apply gxc#add-compile-job!__% _g132466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132466_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result132053%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result132053%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop132047%_ ()
          (let ((_%pending132050%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending132050%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending132050%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending132050%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk132036%_ _%name132037%_)
        (make-thread
         (lambda ()
           (let _%loop132040%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132467
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name132037%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132467))
                   (let ((__tmp132469 (lambda () (_%thunk132036%_)))
                         (__tmp132468
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132469 __tmp132468)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop132040%_)))))
         _%name132037%_)))
    (define gxc#join!
      (lambda (_%thread132031%_)
        (let ((__tmp132471
               (lambda (_%exn132033%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn132033%_))
                     (let ((__tmp132472
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn132033%_))))
                       (declare (not safe))
                       (raise __tmp132472))
                     (let () (declare (not safe)) (raise _%exn132033%_)))))
              (__tmp132470 (lambda () (thread-join! _%thread132031%_))))
          (declare (not safe))
          (__with-catch __tmp132471 __tmp132470))))))
