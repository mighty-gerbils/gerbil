(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1756715353)
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
       (let ((_%verbosity142557142559%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity142557142559%_
             (let* ((_%verbosity142562%_ _%verbosity142557142559%_)
                    (_%$e142564%_ (string->number _%verbosity142562%_)))
               (if _%$e142564%_ _%$e142564%_ _%verbosity142562%_))
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
      (let ((__tmp142619 (list)) (__tmp142618 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp142619
         '(gensyms bindings)
         __tmp142618
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args142555%_
        (apply make-instance gxc#symbol-table::t _%$args142555%_)))
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
      (lambda (_%self142542%_)
        (let ((_%self142545%_ _%self142542%_))
          (if (let ((__tmp142620
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142545%_))))
                (declare (not safe))
                (##fx< '2 __tmp142620))
              (begin
                (let ((__tmp142621
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142545%_
                   __tmp142621
                   '1
                   '#f
                   '#f))
                (let ((__tmp142622
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142545%_
                   __tmp142622
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp142623
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142545%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self142545%_
                       '2
                       __tmp142623))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message142411%_ _%stx142412%_ . _%details142413%_)
        (let ((_%ctx142418%_
               (let ((_%$e142415%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e142415%_ _%$e142415%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx142418%_
                 _%message142411%_
                 _%stx142412%_
                 _%details142413%_))))
    (define gxc#verbose
      (lambda _%args142408%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp142624
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args142408%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp142624))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id142390%_)
        (let* ((_%str142392%_
                (if (symbol? _%id142390%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id142390%_))
                    _%id142390%_))
               (_%len142394%_ (string-length _%str142392%_))
               (_%res142396%_
                (let () (declare (not safe)) (##make-string _%len142394%_))))
          (let _%lp142399%_ ((_%i142401%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i142401%_ _%len142394%_))
                (let* ((_%char142403%_ (string-ref _%str142392%_ _%i142401%_))
                       (_%xchar142405%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char142403%_))
                            '#\_
                            _%char142403%_)))
                  (string-set! _%res142396%_ _%i142401%_ _%xchar142405%_)
                  (_%lp142399%_
                   (let () (declare (not safe)) (##fx+ _%i142401%_ '1))))
                _%res142396%_)))))
    (define gxc#map*
      (lambda (_%proc142332%_ _%maybe-improper-list142333%_)
        (let _%recur142335%_ ((_%rest142337%_ _%maybe-improper-list142333%_))
          (let* ((_%rest142338142349%_ _%rest142337%_)
                 (_%E142342142353%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest142338142349%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K142345142378%_
                   (lambda (_%rest142375%_ _%hd142376%_)
                     (cons (_%proc142332%_ _%hd142376%_)
                           (_%recur142335%_ _%rest142375%_))))
                  (_%K142344142369%_ (lambda () '()))
                  (_%K142343142359%_
                   (lambda (_%tail142357%_) (_%proc142332%_ _%tail142357%_))))
              (let ((_%try-match142340142372%_
                     (lambda ()
                       (if (null? _%rest142338142349%_)
                           (_%K142344142369%_)
                           (let ((_%tail142362%_ _%rest142338142349%_))
                             (declare (not safe))
                             (_%proc142332%_ _%tail142362%_))))))
                (if (pair? _%rest142338142349%_)
                    (let ((_%tl142347142383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142338142349%_)))
                          (_%hd142346142381%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142338142349%_))))
                      (let ((_%hd142386%_ _%hd142346142381%_)
                            (_%rest142388%_ _%tl142347142383%_))
                        (_%K142345142378%_ _%rest142388%_ _%hd142386%_)))
                    (_%try-match142340142372%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym142327%_)
        (let ((_%$e142329%_ (not (gxc#gensym-reference? _%sym142327%_))))
          (if _%$e142329%_
              _%$e142329%_
              (memq _%sym142327%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym142323%_)
        (let ((_%str142325%_ (symbol->string _%sym142323%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str142325%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str142325%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id142294%_)
        (let ((_%$e142296%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id142294%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id142294%_))
                   '#f)))
          (if _%$e142296%_
              ((lambda (_%bind142299%_)
                 (let ((_%eid142301%_
                        (##structure-ref _%bind142299%_ '1 gx#binding::t '#f))
                       (_%ht142302%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid142301%_))
                       _%eid142301%_
                       (let ((_%$e142305%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht142302%_ _%eid142301%_))))
                         (if _%$e142305%_
                             _%$e142305%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind142299%_
                                    'gx#local-binding::t))
                                 (let ((_%gid142309%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid142301%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht142302%_
                                      _%eid142301%_
                                      _%gid142309%_))
                                   _%gid142309%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind142299%_
                                        'gx#module-binding::t))
                                     (let ((_%gid142318%_
                                            (let ((_%$e142312%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind142299%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e142312%_
                                                  ((lambda (_%ns142315%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns142315%_
                                                        '"#"
                                                        _%eid142301%_)))
                                                   _%$e142312%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid142301%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht142302%_
                                          _%eid142301%_
                                          _%gid142318%_))
                                       _%gid142318%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id142294%_
                                      _%eid142301%_
                                      _%bind142299%_))))))))
               _%$e142296%_)
              (if (let ((__tmp142625
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id142294%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp142625))
                  (let () (declare (not safe)) (gx#stx-e _%id142294%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id142294%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id142292%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id142292%_))
            (gxc#generate-runtime-binding-id _%id142292%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top142279%_)
        (if _%top142279%_
            (let ((_%ns142281%_
                   (##structure-ref
                    (let ((__tmp142626
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp142626))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi142282%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns142281%_
                  (if (fxpositive? _%phi142282%_)
                      (let ((__tmp142628 (number->string _%phi142282%_))
                            (__tmp142627
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns142281%_
                         '"["
                         __tmp142628
                         '"]#_"
                         __tmp142627
                         '"_"))
                      (let ((__tmp142629
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns142281%_ '"#_" __tmp142629 '"_")))
                  (if (fxpositive? _%phi142282%_)
                      (let ((__tmp142631 (number->string _%phi142282%_))
                            (__tmp142630
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp142631
                         '"]#_"
                         __tmp142630
                         '"_"))
                      (let ((__tmp142632
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp142632 '"_")))))
            (let ((__tmp142633 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp142633 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top142288%_ '#f))
          (gxc#generate-runtime-temporary__% _%top142288%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g142634_
        (let ((_g142635_ (let () (declare (not safe)) (##length _g142634_))))
          (cond ((let () (declare (not safe)) (##fx= _g142635_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g142634_))
                ((let () (declare (not safe)) (##fx= _g142635_ 1))
                 (apply gxc#generate-runtime-temporary__% _g142634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g142634_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym142257%_ _%quote?142258%_)
        (let* ((_%ht142260%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e142262%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht142260%_ _%sym142257%_))))
          (if _%$e142262%_
              _%$e142262%_
              (let ((_%g142266%_
                     (if _%quote?142258%_
                         (let ((__tmp142636
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym142257%_
                            '"__"
                            __tmp142636))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym142257%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht142260%_ _%sym142257%_ _%g142266%_))
                _%g142266%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym142271%_)
        (let ((_%quote?142273%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym142271%_
           _%quote?142273%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g142637_
        (let ((_g142638_ (let () (declare (not safe)) (##length _g142637_))))
          (cond ((let () (declare (not safe)) (##fx= _g142638_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g142637_))
                ((let () (declare (not safe)) (##fx= _g142638_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g142637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g142637_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1142249%_ _%id2142250%_)
        (letrec ((_%symbol-e142252%_
                  (lambda (_%id142254%_)
                    (if (symbol? _%id142254%_)
                        _%id142254%_
                        (gxc#generate-runtime-binding-id _%id142254%_)))))
          (eq? (_%symbol-e142252%_ _%id1142249%_)
               (_%symbol-e142252%_ _%id2142250%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx142247%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx142247%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx142247%_)
            (let () (declare (not safe)) (gx#stx-e _%stx142247%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk142232%_ _%name142233%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job142235%_
               (gxc#make-compile-job _%thunk142232%_ _%name142233%_)))
          (set! gxc#__compile-jobs (cons _%job142235%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk142240%_)
        (let ((_%name142242%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk142240%_ _%name142242%_))))
    (define gxc#add-compile-job!
      (lambda _g142639_
        (let ((_g142640_ (let () (declare (not safe)) (##length _g142639_))))
          (cond ((let () (declare (not safe)) (##fx= _g142640_ 1))
                 (apply gxc#add-compile-job!__0 _g142639_))
                ((let () (declare (not safe)) (##fx= _g142640_ 2))
                 (apply gxc#add-compile-job!__% _g142639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g142639_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result142229%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result142229%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop142223%_ ()
          (let ((_%pending142226%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending142226%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending142226%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending142226%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk142212%_ _%name142213%_)
        (make-thread
         (lambda ()
           (let _%loop142216%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp142641
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name142213%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp142641))
                   (let ((__tmp142643 (lambda () (_%thunk142212%_)))
                         (__tmp142642
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp142643 __tmp142642)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop142216%_)))))
         _%name142213%_)))
    (define gxc#join!
      (lambda (_%thread142207%_)
        (let ((__tmp142645
               (lambda (_%exn142209%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn142209%_))
                     (let ((__tmp142646
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn142209%_))))
                       (declare (not safe))
                       (raise __tmp142646))
                     (let () (declare (not safe)) (raise _%exn142209%_)))))
              (__tmp142644 (lambda () (thread-join! _%thread142207%_))))
          (declare (not safe))
          (__with-catch __tmp142645 __tmp142644))))))
