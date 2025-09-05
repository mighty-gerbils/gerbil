(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1756721296)
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
       (let ((_%verbosity142555142557%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity142555142557%_
             (let* ((_%verbosity142560%_ _%verbosity142555142557%_)
                    (_%$e142562%_ (string->number _%verbosity142560%_)))
               (if _%$e142562%_ _%$e142562%_ _%verbosity142560%_))
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
      (let ((__tmp142617 (list)) (__tmp142616 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp142617
         '(gensyms bindings)
         __tmp142616
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args142553%_
        (apply make-instance gxc#symbol-table::t _%$args142553%_)))
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
      (lambda (_%self142540%_)
        (let ((_%self142543%_ _%self142540%_))
          (if (let ((__tmp142618
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142543%_))))
                (declare (not safe))
                (##fx< '2 __tmp142618))
              (begin
                (let ((__tmp142619
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142543%_
                   __tmp142619
                   '1
                   '#f
                   '#f))
                (let ((__tmp142620
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142543%_
                   __tmp142620
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp142621
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142543%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self142543%_
                       '2
                       __tmp142621))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message142409%_ _%stx142410%_ . _%details142411%_)
        (let ((_%ctx142416%_
               (let ((_%$e142413%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e142413%_ _%$e142413%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx142416%_
                 _%message142409%_
                 _%stx142410%_
                 _%details142411%_))))
    (define gxc#verbose
      (lambda _%args142406%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp142622
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args142406%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp142622))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id142388%_)
        (let* ((_%str142390%_
                (if (symbol? _%id142388%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id142388%_))
                    _%id142388%_))
               (_%len142392%_ (string-length _%str142390%_))
               (_%res142394%_
                (let () (declare (not safe)) (##make-string _%len142392%_))))
          (let _%lp142397%_ ((_%i142399%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i142399%_ _%len142392%_))
                (let* ((_%char142401%_ (string-ref _%str142390%_ _%i142399%_))
                       (_%xchar142403%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char142401%_))
                            '#\_
                            _%char142401%_)))
                  (string-set! _%res142394%_ _%i142399%_ _%xchar142403%_)
                  (_%lp142397%_
                   (let () (declare (not safe)) (##fx+ _%i142399%_ '1))))
                _%res142394%_)))))
    (define gxc#map*
      (lambda (_%proc142330%_ _%maybe-improper-list142331%_)
        (let _%recur142333%_ ((_%rest142335%_ _%maybe-improper-list142331%_))
          (let* ((_%rest142336142347%_ _%rest142335%_)
                 (_%E142340142351%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest142336142347%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K142343142376%_
                   (lambda (_%rest142373%_ _%hd142374%_)
                     (cons (_%proc142330%_ _%hd142374%_)
                           (_%recur142333%_ _%rest142373%_))))
                  (_%K142342142367%_ (lambda () '()))
                  (_%K142341142357%_
                   (lambda (_%tail142355%_) (_%proc142330%_ _%tail142355%_))))
              (let ((_%try-match142338142370%_
                     (lambda ()
                       (if (null? _%rest142336142347%_)
                           (_%K142342142367%_)
                           (let ((_%tail142360%_ _%rest142336142347%_))
                             (declare (not safe))
                             (_%proc142330%_ _%tail142360%_))))))
                (if (pair? _%rest142336142347%_)
                    (let ((_%tl142345142381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142336142347%_)))
                          (_%hd142344142379%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142336142347%_))))
                      (let ((_%hd142384%_ _%hd142344142379%_)
                            (_%rest142386%_ _%tl142345142381%_))
                        (_%K142343142376%_ _%rest142386%_ _%hd142384%_)))
                    (_%try-match142338142370%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym142325%_)
        (let ((_%$e142327%_ (not (gxc#gensym-reference? _%sym142325%_))))
          (if _%$e142327%_
              _%$e142327%_
              (memq _%sym142325%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym142321%_)
        (let ((_%str142323%_ (symbol->string _%sym142321%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str142323%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str142323%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id142292%_)
        (let ((_%$e142294%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id142292%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id142292%_))
                   '#f)))
          (if _%$e142294%_
              ((lambda (_%bind142297%_)
                 (let ((_%eid142299%_
                        (##structure-ref _%bind142297%_ '1 gx#binding::t '#f))
                       (_%ht142300%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid142299%_))
                       _%eid142299%_
                       (let ((_%$e142303%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht142300%_ _%eid142299%_))))
                         (if _%$e142303%_
                             _%$e142303%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind142297%_
                                    'gx#local-binding::t))
                                 (let ((_%gid142307%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid142299%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht142300%_
                                      _%eid142299%_
                                      _%gid142307%_))
                                   _%gid142307%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind142297%_
                                        'gx#module-binding::t))
                                     (let ((_%gid142316%_
                                            (let ((_%$e142310%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind142297%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e142310%_
                                                  ((lambda (_%ns142313%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns142313%_
                                                        '"#"
                                                        _%eid142299%_)))
                                                   _%$e142310%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid142299%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht142300%_
                                          _%eid142299%_
                                          _%gid142316%_))
                                       _%gid142316%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id142292%_
                                      _%eid142299%_
                                      _%bind142297%_))))))))
               _%$e142294%_)
              (if (let ((__tmp142623
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id142292%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp142623))
                  (let () (declare (not safe)) (gx#stx-e _%id142292%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id142292%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id142290%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id142290%_))
            (gxc#generate-runtime-binding-id _%id142290%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top142277%_)
        (if _%top142277%_
            (let ((_%ns142279%_
                   (##structure-ref
                    (let ((__tmp142624
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp142624))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi142280%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns142279%_
                  (if (fxpositive? _%phi142280%_)
                      (let ((__tmp142626 (number->string _%phi142280%_))
                            (__tmp142625
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns142279%_
                         '"["
                         __tmp142626
                         '"]#_"
                         __tmp142625
                         '"_"))
                      (let ((__tmp142627
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns142279%_ '"#_" __tmp142627 '"_")))
                  (if (fxpositive? _%phi142280%_)
                      (let ((__tmp142629 (number->string _%phi142280%_))
                            (__tmp142628
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp142629
                         '"]#_"
                         __tmp142628
                         '"_"))
                      (let ((__tmp142630
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp142630 '"_")))))
            (let ((__tmp142631 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp142631 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top142286%_ '#f))
          (gxc#generate-runtime-temporary__% _%top142286%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g142632_
        (let ((_g142633_ (let () (declare (not safe)) (##length _g142632_))))
          (cond ((let () (declare (not safe)) (##fx= _g142633_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g142632_))
                ((let () (declare (not safe)) (##fx= _g142633_ 1))
                 (apply gxc#generate-runtime-temporary__% _g142632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g142632_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym142255%_ _%quote?142256%_)
        (let* ((_%ht142258%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e142260%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht142258%_ _%sym142255%_))))
          (if _%$e142260%_
              _%$e142260%_
              (let ((_%g142264%_
                     (if _%quote?142256%_
                         (let ((__tmp142634
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym142255%_
                            '"__"
                            __tmp142634))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym142255%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht142258%_ _%sym142255%_ _%g142264%_))
                _%g142264%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym142269%_)
        (let ((_%quote?142271%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym142269%_
           _%quote?142271%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g142635_
        (let ((_g142636_ (let () (declare (not safe)) (##length _g142635_))))
          (cond ((let () (declare (not safe)) (##fx= _g142636_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g142635_))
                ((let () (declare (not safe)) (##fx= _g142636_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g142635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g142635_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1142247%_ _%id2142248%_)
        (letrec ((_%symbol-e142250%_
                  (lambda (_%id142252%_)
                    (if (symbol? _%id142252%_)
                        _%id142252%_
                        (gxc#generate-runtime-binding-id _%id142252%_)))))
          (eq? (_%symbol-e142250%_ _%id1142247%_)
               (_%symbol-e142250%_ _%id2142248%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx142245%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx142245%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx142245%_)
            (let () (declare (not safe)) (gx#stx-e _%stx142245%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk142230%_ _%name142231%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job142233%_
               (gxc#make-compile-job _%thunk142230%_ _%name142231%_)))
          (set! gxc#__compile-jobs (cons _%job142233%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk142238%_)
        (let ((_%name142240%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk142238%_ _%name142240%_))))
    (define gxc#add-compile-job!
      (lambda _g142637_
        (let ((_g142638_ (let () (declare (not safe)) (##length _g142637_))))
          (cond ((let () (declare (not safe)) (##fx= _g142638_ 1))
                 (apply gxc#add-compile-job!__0 _g142637_))
                ((let () (declare (not safe)) (##fx= _g142638_ 2))
                 (apply gxc#add-compile-job!__% _g142637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g142637_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result142227%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result142227%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop142221%_ ()
          (let ((_%pending142224%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending142224%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending142224%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending142224%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk142210%_ _%name142211%_)
        (make-thread
         (lambda ()
           (let _%loop142214%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp142639
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name142211%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp142639))
                   (let ((__tmp142641 (lambda () (_%thunk142210%_)))
                         (__tmp142640
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp142641 __tmp142640)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop142214%_)))))
         _%name142211%_)))
    (define gxc#join!
      (lambda (_%thread142205%_)
        (let ((__tmp142643
               (lambda (_%exn142207%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn142207%_))
                     (let ((__tmp142644
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn142207%_))))
                       (declare (not safe))
                       (raise __tmp142644))
                     (let () (declare (not safe)) (raise _%exn142207%_)))))
              (__tmp142642 (lambda () (thread-join! _%thread142205%_))))
          (declare (not safe))
          (__with-catch __tmp142643 __tmp142642))))))
