(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713001408)
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
       (let ((_%verbosity132272132274%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity132272132274%_
             (let* ((_%verbosity132277%_ _%verbosity132272132274%_)
                    (_%$e132279%_ (string->number _%verbosity132277%_)))
               (if _%$e132279%_ _%$e132279%_ _%verbosity132277%_))
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
      (let ((__tmp132334 (list)) (__tmp132333 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp132334
         '(gensyms bindings)
         __tmp132333
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args132270%_
        (apply make-instance gxc#symbol-table::t _%$args132270%_)))
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
      (lambda (_%self131792132255%_)
        (let* ((_%self132258%_ _%self131792132255%_)
               (_%self132260%_ _%self132258%_))
          (if (let ((__tmp132335
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self132260%_))))
                (declare (not safe))
                (##fx< '2 __tmp132335))
              (begin
                (let ((__tmp132336
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132260%_
                   __tmp132336
                   '1
                   '#f
                   '#f))
                (let ((__tmp132337
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132260%_
                   __tmp132337
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp132338
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self132260%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self132260%_
                       '2
                       __tmp132338))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message132124%_ _%stx132125%_ . _%details132126%_)
        (let ((_%ctx132131%_
               (let ((_%$e132128%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e132128%_ _%$e132128%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx132131%_
                 _%message132124%_
                 _%stx132125%_
                 _%details132126%_))))
    (define gxc#verbose
      (lambda _%args132121%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp132339
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args132121%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp132339))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id132103%_)
        (let* ((_%str132105%_
                (if (symbol? _%id132103%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id132103%_))
                    _%id132103%_))
               (_%len132107%_ (string-length _%str132105%_))
               (_%res132109%_
                (let () (declare (not safe)) (##make-string _%len132107%_))))
          (let _%lp132112%_ ((_%i132114%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132114%_ _%len132107%_))
                (let* ((_%char132116%_ (string-ref _%str132105%_ _%i132114%_))
                       (_%xchar132118%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char132116%_))
                            '#\_
                            _%char132116%_)))
                  (string-set! _%res132109%_ _%i132114%_ _%xchar132118%_)
                  (_%lp132112%_
                   (let () (declare (not safe)) (##fx+ _%i132114%_ '1))))
                _%res132109%_)))))
    (define gxc#map*
      (lambda (_%proc132045%_ _%maybe-improper-list132046%_)
        (let _%recur132048%_ ((_%rest132050%_ _%maybe-improper-list132046%_))
          (let* ((_%rest132051132062%_ _%rest132050%_)
                 (_%E132055132066%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest132051132062%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K132058132091%_
                   (lambda (_%rest132088%_ _%hd132089%_)
                     (cons (_%proc132045%_ _%hd132089%_)
                           (_%recur132048%_ _%rest132088%_))))
                  (_%K132057132082%_ (lambda () '()))
                  (_%K132056132072%_
                   (lambda (_%tail132070%_) (_%proc132045%_ _%tail132070%_))))
              (let ((_%try-match132053132085%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest132051132062%_))
                           (_%K132057132082%_)
                           (let ((_%tail132075%_ _%rest132051132062%_))
                             (declare (not safe))
                             (_%proc132045%_ _%tail132075%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest132051132062%_))
                    (let ((_%tl132060132096%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest132051132062%_)))
                          (_%hd132059132094%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest132051132062%_))))
                      (let ((_%hd132099%_ _%hd132059132094%_)
                            (_%rest132101%_ _%tl132060132096%_))
                        (_%K132058132091%_ _%rest132101%_ _%hd132099%_)))
                    (_%try-match132053132085%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym132040%_)
        (let ((_%$e132042%_ (not (gxc#gensym-reference? _%sym132040%_))))
          (if _%$e132042%_
              _%$e132042%_
              (memq _%sym132040%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym132036%_)
        (let ((_%str132038%_ (symbol->string _%sym132036%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str132038%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str132038%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id132007%_)
        (let ((_%$e132009%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id132007%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id132007%_))
                   '#f)))
          (if _%$e132009%_
              ((lambda (_%bind132012%_)
                 (let ((_%eid132014%_
                        (##structure-ref _%bind132012%_ '1 gx#binding::t '#f))
                       (_%ht132015%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid132014%_))
                       _%eid132014%_
                       (let ((_%$e132018%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht132015%_ _%eid132014%_))))
                         (if _%$e132018%_
                             _%$e132018%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind132012%_
                                    'gx#local-binding::t))
                                 (let ((_%gid132022%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid132014%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht132015%_
                                      _%eid132014%_
                                      _%gid132022%_))
                                   _%gid132022%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind132012%_
                                        'gx#module-binding::t))
                                     (let ((_%gid132031%_
                                            (let ((_%$e132025%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind132012%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e132025%_
                                                  ((lambda (_%ns132028%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns132028%_
                                                        '"#"
                                                        _%eid132014%_)))
                                                   _%$e132025%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid132014%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht132015%_
                                          _%eid132014%_
                                          _%gid132031%_))
                                       _%gid132031%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id132007%_
                                      _%eid132014%_
                                      _%bind132012%_))))))))
               _%$e132009%_)
              (if (let ((__tmp132340
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id132007%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp132340))
                  (let () (declare (not safe)) (gx#stx-e _%id132007%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id132007%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id132005%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id132005%_))
            (gxc#generate-runtime-binding-id _%id132005%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top131992%_)
        (if _%top131992%_
            (let ((_%ns131994%_
                   (##structure-ref
                    (let ((__tmp132341
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp132341))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi131995%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns131994%_
                  (if (fxpositive? _%phi131995%_)
                      (let ((__tmp132343 (number->string _%phi131995%_))
                            (__tmp132342
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns131994%_
                         '"["
                         __tmp132343
                         '"]#_"
                         __tmp132342
                         '"_"))
                      (let ((__tmp132344
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns131994%_ '"#_" __tmp132344 '"_")))
                  (if (fxpositive? _%phi131995%_)
                      (let ((__tmp132346 (number->string _%phi131995%_))
                            (__tmp132345
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132346
                         '"]#_"
                         __tmp132345
                         '"_"))
                      (let ((__tmp132347
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132347 '"_")))))
            (let ((__tmp132348 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132348 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top132001%_ '#f))
          (gxc#generate-runtime-temporary__% _%top132001%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132350_
        (let ((_g132349_ (let () (declare (not safe)) (##length _g132350_))))
          (cond ((let () (declare (not safe)) (##fx= _g132349_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132350_))
                ((let () (declare (not safe)) (##fx= _g132349_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132350_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym131970%_ _%quote?131971%_)
        (let* ((_%ht131973%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e131975%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht131973%_ _%sym131970%_))))
          (if _%$e131975%_
              _%$e131975%_
              (let ((_%g131979%_
                     (if _%quote?131971%_
                         (let ((__tmp132351
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym131970%_
                            '"__"
                            __tmp132351))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym131970%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht131973%_ _%sym131970%_ _%g131979%_))
                _%g131979%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym131984%_)
        (let ((_%quote?131986%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym131984%_
           _%quote?131986%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132353_
        (let ((_g132352_ (let () (declare (not safe)) (##length _g132353_))))
          (cond ((let () (declare (not safe)) (##fx= _g132352_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132353_))
                ((let () (declare (not safe)) (##fx= _g132352_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132353_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1131962%_ _%id2131963%_)
        (letrec ((_%symbol-e131965%_
                  (lambda (_%id131967%_)
                    (if (symbol? _%id131967%_)
                        _%id131967%_
                        (gxc#generate-runtime-binding-id _%id131967%_)))))
          (eq? (_%symbol-e131965%_ _%id1131962%_)
               (_%symbol-e131965%_ _%id2131963%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx131960%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx131960%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx131960%_)
            (let () (declare (not safe)) (gx#stx-e _%stx131960%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk131945%_ _%name131946%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job131948%_
               (gxc#make-compile-job _%thunk131945%_ _%name131946%_)))
          (set! gxc#__compile-jobs (cons _%job131948%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk131953%_)
        (let ((_%name131955%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk131953%_ _%name131955%_))))
    (define gxc#add-compile-job!
      (lambda _g132355_
        (let ((_g132354_ (let () (declare (not safe)) (##length _g132355_))))
          (cond ((let () (declare (not safe)) (##fx= _g132354_ 1))
                 (apply gxc#add-compile-job!__0 _g132355_))
                ((let () (declare (not safe)) (##fx= _g132354_ 2))
                 (apply gxc#add-compile-job!__% _g132355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132355_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result131942%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result131942%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131936%_ ()
          (let ((_%pending131939%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131939%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131939%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131939%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131925%_ _%name131926%_)
        (make-thread
         (lambda ()
           (let _%loop131929%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132356
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131926%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132356))
                   (let ((__tmp132358 (lambda () (_%thunk131925%_)))
                         (__tmp132357
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132358 __tmp132357)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131929%_)))))
         _%name131926%_)))
    (define gxc#join!
      (lambda (_%thread131920%_)
        (let ((__tmp132360
               (lambda (_%exn131922%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131922%_))
                     (let ((__tmp132361
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131922%_))))
                       (declare (not safe))
                       (raise __tmp132361))
                     (let () (declare (not safe)) (raise _%exn131922%_)))))
              (__tmp132359 (lambda () (thread-join! _%thread131920%_))))
          (declare (not safe))
          (__with-catch __tmp132360 __tmp132359))))))
