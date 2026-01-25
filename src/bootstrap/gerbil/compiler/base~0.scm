(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1769382895)
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
       (let ((_%verbosity146247146249%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity146247146249%_
             (let* ((_%verbosity146251%_ _%verbosity146247146249%_)
                    (_%$e146253%_ (string->number _%verbosity146251%_)))
               (if _%$e146253%_ _%$e146253%_ _%verbosity146251%_))
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
      (let ((__tmp146308 (list)) (__tmp146307 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp146308
         '(gensyms bindings)
         __tmp146307
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args146245%_
        (apply make-instance gxc#symbol-table::t _%$args146245%_)))
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
      (lambda (_%self146232%_)
        (let ((_%self146235%_ _%self146232%_))
          (if (let ((__tmp146309
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146235%_))))
                (declare (not safe))
                (##fx< '2 __tmp146309))
              (begin
                (let ((__tmp146310
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146235%_
                   __tmp146310
                   '1
                   '#f
                   '#f))
                (let ((__tmp146311
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146235%_
                   __tmp146311
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp146312
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146235%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self146235%_
                       '2
                       __tmp146312))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message146101%_ _%stx146102%_ . _%details146103%_)
        (let ((_%ctx146108%_
               (let ((_%$e146105%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e146105%_ _%$e146105%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx146108%_
                 _%message146101%_
                 _%stx146102%_
                 _%details146103%_))))
    (define gxc#verbose
      (lambda _%args146098%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp146313
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args146098%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp146313))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id146080%_)
        (let* ((_%str146082%_
                (if (symbol? _%id146080%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id146080%_))
                    _%id146080%_))
               (_%len146084%_ (string-length _%str146082%_))
               (_%res146086%_
                (let () (declare (not safe)) (##make-string _%len146084%_))))
          (let _%lp146089%_ ((_%i146091%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i146091%_ _%len146084%_))
                (let* ((_%char146093%_ (string-ref _%str146082%_ _%i146091%_))
                       (_%xchar146095%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char146093%_))
                            '#\_
                            _%char146093%_)))
                  (string-set! _%res146086%_ _%i146091%_ _%xchar146095%_)
                  (_%lp146089%_
                   (let () (declare (not safe)) (##fx+ _%i146091%_ '1))))
                _%res146086%_)))))
    (define gxc#map*
      (lambda (_%proc146022%_ _%maybe-improper-list146023%_)
        (let _%recur146025%_ ((_%rest146027%_ _%maybe-improper-list146023%_))
          (let* ((_%rest146028146039%_ _%rest146027%_)
                 (_%E146032146043%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest146028146039%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K146035146068%_
                   (lambda (_%rest146065%_ _%hd146066%_)
                     (cons (_%proc146022%_ _%hd146066%_)
                           (_%recur146025%_ _%rest146065%_))))
                  (_%K146034146059%_ (lambda () '()))
                  (_%K146033146049%_
                   (lambda (_%tail146047%_) (_%proc146022%_ _%tail146047%_))))
              (let ((_%try-match146030146062%_
                     (lambda ()
                       (if (null? _%rest146028146039%_)
                           (_%K146034146059%_)
                           (let ((_%tail146052%_ _%rest146028146039%_))
                             (declare (not safe))
                             (_%proc146022%_ _%tail146052%_))))))
                (if (pair? _%rest146028146039%_)
                    (let ((_%tl146037146073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146028146039%_)))
                          (_%hd146036146071%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146028146039%_))))
                      (let ((_%hd146076%_ _%hd146036146071%_)
                            (_%rest146078%_ _%tl146037146073%_))
                        (_%K146035146068%_ _%rest146078%_ _%hd146076%_)))
                    (_%try-match146030146062%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym146017%_)
        (let ((_%$e146019%_ (not (gxc#gensym-reference? _%sym146017%_))))
          (if _%$e146019%_
              _%$e146019%_
              (memq _%sym146017%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym146013%_)
        (let ((_%str146015%_ (symbol->string _%sym146013%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str146015%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str146015%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id145984%_)
        (let ((_%$e145986%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id145984%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id145984%_))
                   '#f)))
          (if _%$e145986%_
              ((lambda (_%bind145989%_)
                 (let ((_%eid145991%_
                        (##structure-ref _%bind145989%_ '1 gx#binding::t '#f))
                       (_%ht145992%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid145991%_))
                       _%eid145991%_
                       (let ((_%$e145995%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht145992%_ _%eid145991%_))))
                         (if _%$e145995%_
                             _%$e145995%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind145989%_
                                    'gx#local-binding::t))
                                 (let ((_%gid145999%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid145991%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht145992%_
                                      _%eid145991%_
                                      _%gid145999%_))
                                   _%gid145999%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind145989%_
                                        'gx#module-binding::t))
                                     (let ((_%gid146008%_
                                            (let ((_%$e146002%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind145989%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e146002%_
                                                  ((lambda (_%ns146005%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns146005%_
                                                        '"#"
                                                        _%eid145991%_)))
                                                   _%$e146002%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid145991%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht145992%_
                                          _%eid145991%_
                                          _%gid146008%_))
                                       _%gid146008%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id145984%_
                                      _%eid145991%_
                                      _%bind145989%_))))))))
               _%$e145986%_)
              (if (let ((__tmp146314
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id145984%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp146314))
                  (let () (declare (not safe)) (gx#stx-e _%id145984%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id145984%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id145982%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id145982%_))
            (gxc#generate-runtime-binding-id _%id145982%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top145969%_)
        (if _%top145969%_
            (let ((_%ns145971%_
                   (##structure-ref
                    (let ((__tmp146315
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp146315))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi145972%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns145971%_
                  (if (fxpositive? _%phi145972%_)
                      (let ((__tmp146317 (number->string _%phi145972%_))
                            (__tmp146316
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns145971%_
                         '"["
                         __tmp146317
                         '"]#_"
                         __tmp146316
                         '"_"))
                      (let ((__tmp146318
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns145971%_ '"#_" __tmp146318 '"_")))
                  (if (fxpositive? _%phi145972%_)
                      (let ((__tmp146320 (number->string _%phi145972%_))
                            (__tmp146319
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp146320
                         '"]#_"
                         __tmp146319
                         '"_"))
                      (let ((__tmp146321
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp146321 '"_")))))
            (let ((__tmp146322 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp146322 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top145978%_ '#f))
          (gxc#generate-runtime-temporary__% _%top145978%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g146323_
        (let ((_g146324_ (let () (declare (not safe)) (##length _g146323_))))
          (cond ((let () (declare (not safe)) (##fx= _g146324_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g146323_))
                ((let () (declare (not safe)) (##fx= _g146324_ 1))
                 (apply gxc#generate-runtime-temporary__% _g146323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g146323_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym145947%_ _%quote?145948%_)
        (let* ((_%ht145950%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e145952%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht145950%_ _%sym145947%_))))
          (if _%$e145952%_
              _%$e145952%_
              (let ((_%g145956%_
                     (if _%quote?145948%_
                         (let ((__tmp146325
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym145947%_
                            '"__"
                            __tmp146325))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym145947%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht145950%_ _%sym145947%_ _%g145956%_))
                _%g145956%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym145961%_)
        (let ((_%quote?145963%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym145961%_
           _%quote?145963%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g146326_
        (let ((_g146327_ (let () (declare (not safe)) (##length _g146326_))))
          (cond ((let () (declare (not safe)) (##fx= _g146327_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g146326_))
                ((let () (declare (not safe)) (##fx= _g146327_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g146326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g146326_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1145939%_ _%id2145940%_)
        (letrec ((_%symbol-e145942%_
                  (lambda (_%id145944%_)
                    (if (symbol? _%id145944%_)
                        _%id145944%_
                        (gxc#generate-runtime-binding-id _%id145944%_)))))
          (eq? (_%symbol-e145942%_ _%id1145939%_)
               (_%symbol-e145942%_ _%id2145940%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx145937%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx145937%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx145937%_)
            (let () (declare (not safe)) (gx#stx-e _%stx145937%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk145922%_ _%name145923%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job145925%_
               (gxc#make-compile-job _%thunk145922%_ _%name145923%_)))
          (set! gxc#__compile-jobs (cons _%job145925%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk145930%_)
        (let ((_%name145932%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk145930%_ _%name145932%_))))
    (define gxc#add-compile-job!
      (lambda _g146328_
        (let ((_g146329_ (let () (declare (not safe)) (##length _g146328_))))
          (cond ((let () (declare (not safe)) (##fx= _g146329_ 1))
                 (apply gxc#add-compile-job!__0 _g146328_))
                ((let () (declare (not safe)) (##fx= _g146329_ 2))
                 (apply gxc#add-compile-job!__% _g146328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g146328_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result145919%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result145919%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop145913%_ ()
          (let ((_%pending145916%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending145916%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending145916%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending145916%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk145902%_ _%name145903%_)
        (make-thread
         (lambda ()
           (let _%loop145906%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp146330
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name145903%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp146330))
                   (let ((__tmp146332 (lambda () (_%thunk145902%_)))
                         (__tmp146331
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp146332 __tmp146331)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop145906%_)))))
         _%name145903%_)))
    (define gxc#join!
      (lambda (_%thread145897%_)
        (let ((__tmp146334
               (lambda (_%exn145899%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn145899%_))
                     (let ((__tmp146335
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn145899%_))))
                       (declare (not safe))
                       (raise __tmp146335))
                     (let () (declare (not safe)) (raise _%exn145899%_)))))
              (__tmp146333 (lambda () (thread-join! _%thread145897%_))))
          (declare (not safe))
          (__with-catch __tmp146334 __tmp146333))))))
