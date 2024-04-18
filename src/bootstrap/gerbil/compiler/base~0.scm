(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713454411)
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
       (let ((_%verbosity132605132607%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity132605132607%_
             (let* ((_%verbosity132610%_ _%verbosity132605132607%_)
                    (_%$e132612%_ (string->number _%verbosity132610%_)))
               (if _%$e132612%_ _%$e132612%_ _%verbosity132610%_))
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
      (let ((__tmp132667 (list)) (__tmp132666 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp132667
         '(gensyms bindings)
         __tmp132666
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args132603%_
        (apply make-instance gxc#symbol-table::t _%$args132603%_)))
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
      (lambda (_%self132125132588%_)
        (let* ((_%self132591%_ _%self132125132588%_)
               (_%self132593%_ _%self132591%_))
          (if (let ((__tmp132668
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self132593%_))))
                (declare (not safe))
                (##fx< '2 __tmp132668))
              (begin
                (let ((__tmp132669
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132593%_
                   __tmp132669
                   '1
                   '#f
                   '#f))
                (let ((__tmp132670
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132593%_
                   __tmp132670
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp132671
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self132593%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self132593%_
                       '2
                       __tmp132671))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message132457%_ _%stx132458%_ . _%details132459%_)
        (let ((_%ctx132464%_
               (let ((_%$e132461%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e132461%_ _%$e132461%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx132464%_
                 _%message132457%_
                 _%stx132458%_
                 _%details132459%_))))
    (define gxc#verbose
      (lambda _%args132454%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp132672
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args132454%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp132672))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id132436%_)
        (let* ((_%str132438%_
                (if (symbol? _%id132436%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id132436%_))
                    _%id132436%_))
               (_%len132440%_ (string-length _%str132438%_))
               (_%res132442%_
                (let () (declare (not safe)) (##make-string _%len132440%_))))
          (let _%lp132445%_ ((_%i132447%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132447%_ _%len132440%_))
                (let* ((_%char132449%_ (string-ref _%str132438%_ _%i132447%_))
                       (_%xchar132451%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char132449%_))
                            '#\_
                            _%char132449%_)))
                  (string-set! _%res132442%_ _%i132447%_ _%xchar132451%_)
                  (_%lp132445%_
                   (let () (declare (not safe)) (##fx+ _%i132447%_ '1))))
                _%res132442%_)))))
    (define gxc#map*
      (lambda (_%proc132378%_ _%maybe-improper-list132379%_)
        (let _%recur132381%_ ((_%rest132383%_ _%maybe-improper-list132379%_))
          (let* ((_%rest132384132395%_ _%rest132383%_)
                 (_%E132388132399%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest132384132395%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K132391132424%_
                   (lambda (_%rest132421%_ _%hd132422%_)
                     (cons (_%proc132378%_ _%hd132422%_)
                           (_%recur132381%_ _%rest132421%_))))
                  (_%K132390132415%_ (lambda () '()))
                  (_%K132389132405%_
                   (lambda (_%tail132403%_) (_%proc132378%_ _%tail132403%_))))
              (let ((_%try-match132386132418%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest132384132395%_))
                           (_%K132390132415%_)
                           (let ((_%tail132408%_ _%rest132384132395%_))
                             (declare (not safe))
                             (_%proc132378%_ _%tail132408%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest132384132395%_))
                    (let ((_%tl132393132429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest132384132395%_)))
                          (_%hd132392132427%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest132384132395%_))))
                      (let ((_%hd132432%_ _%hd132392132427%_)
                            (_%rest132434%_ _%tl132393132429%_))
                        (_%K132391132424%_ _%rest132434%_ _%hd132432%_)))
                    (_%try-match132386132418%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym132373%_)
        (let ((_%$e132375%_ (not (gxc#gensym-reference? _%sym132373%_))))
          (if _%$e132375%_
              _%$e132375%_
              (memq _%sym132373%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym132369%_)
        (let ((_%str132371%_ (symbol->string _%sym132369%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str132371%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str132371%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id132340%_)
        (let ((_%$e132342%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id132340%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id132340%_))
                   '#f)))
          (if _%$e132342%_
              ((lambda (_%bind132345%_)
                 (let ((_%eid132347%_
                        (##structure-ref _%bind132345%_ '1 gx#binding::t '#f))
                       (_%ht132348%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid132347%_))
                       _%eid132347%_
                       (let ((_%$e132351%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht132348%_ _%eid132347%_))))
                         (if _%$e132351%_
                             _%$e132351%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind132345%_
                                    'gx#local-binding::t))
                                 (let ((_%gid132355%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid132347%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht132348%_
                                      _%eid132347%_
                                      _%gid132355%_))
                                   _%gid132355%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind132345%_
                                        'gx#module-binding::t))
                                     (let ((_%gid132364%_
                                            (let ((_%$e132358%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind132345%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e132358%_
                                                  ((lambda (_%ns132361%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns132361%_
                                                        '"#"
                                                        _%eid132347%_)))
                                                   _%$e132358%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid132347%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht132348%_
                                          _%eid132347%_
                                          _%gid132364%_))
                                       _%gid132364%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id132340%_
                                      _%eid132347%_
                                      _%bind132345%_))))))))
               _%$e132342%_)
              (if (let ((__tmp132673
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id132340%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp132673))
                  (let () (declare (not safe)) (gx#stx-e _%id132340%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id132340%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id132338%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id132338%_))
            (gxc#generate-runtime-binding-id _%id132338%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top132325%_)
        (if _%top132325%_
            (let ((_%ns132327%_
                   (##structure-ref
                    (let ((__tmp132674
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp132674))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi132328%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns132327%_
                  (if (fxpositive? _%phi132328%_)
                      (let ((__tmp132676 (number->string _%phi132328%_))
                            (__tmp132675
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns132327%_
                         '"["
                         __tmp132676
                         '"]#_"
                         __tmp132675
                         '"_"))
                      (let ((__tmp132677
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns132327%_ '"#_" __tmp132677 '"_")))
                  (if (fxpositive? _%phi132328%_)
                      (let ((__tmp132679 (number->string _%phi132328%_))
                            (__tmp132678
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132679
                         '"]#_"
                         __tmp132678
                         '"_"))
                      (let ((__tmp132680
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132680 '"_")))))
            (let ((__tmp132681 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132681 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top132334%_ '#f))
          (gxc#generate-runtime-temporary__% _%top132334%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132683_
        (let ((_g132682_ (let () (declare (not safe)) (##length _g132683_))))
          (cond ((let () (declare (not safe)) (##fx= _g132682_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132683_))
                ((let () (declare (not safe)) (##fx= _g132682_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132683_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym132303%_ _%quote?132304%_)
        (let* ((_%ht132306%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e132308%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht132306%_ _%sym132303%_))))
          (if _%$e132308%_
              _%$e132308%_
              (let ((_%g132312%_
                     (if _%quote?132304%_
                         (let ((__tmp132684
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym132303%_
                            '"__"
                            __tmp132684))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym132303%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht132306%_ _%sym132303%_ _%g132312%_))
                _%g132312%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym132317%_)
        (let ((_%quote?132319%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym132317%_
           _%quote?132319%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132686_
        (let ((_g132685_ (let () (declare (not safe)) (##length _g132686_))))
          (cond ((let () (declare (not safe)) (##fx= _g132685_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132686_))
                ((let () (declare (not safe)) (##fx= _g132685_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132686_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1132295%_ _%id2132296%_)
        (letrec ((_%symbol-e132298%_
                  (lambda (_%id132300%_)
                    (if (symbol? _%id132300%_)
                        _%id132300%_
                        (gxc#generate-runtime-binding-id _%id132300%_)))))
          (eq? (_%symbol-e132298%_ _%id1132295%_)
               (_%symbol-e132298%_ _%id2132296%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx132293%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx132293%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx132293%_)
            (let () (declare (not safe)) (gx#stx-e _%stx132293%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk132278%_ _%name132279%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job132281%_
               (gxc#make-compile-job _%thunk132278%_ _%name132279%_)))
          (set! gxc#__compile-jobs (cons _%job132281%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk132286%_)
        (let ((_%name132288%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk132286%_ _%name132288%_))))
    (define gxc#add-compile-job!
      (lambda _g132688_
        (let ((_g132687_ (let () (declare (not safe)) (##length _g132688_))))
          (cond ((let () (declare (not safe)) (##fx= _g132687_ 1))
                 (apply gxc#add-compile-job!__0 _g132688_))
                ((let () (declare (not safe)) (##fx= _g132687_ 2))
                 (apply gxc#add-compile-job!__% _g132688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132688_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result132275%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result132275%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop132269%_ ()
          (let ((_%pending132272%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending132272%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending132272%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending132272%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk132258%_ _%name132259%_)
        (make-thread
         (lambda ()
           (let _%loop132262%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132689
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name132259%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132689))
                   (let ((__tmp132691 (lambda () (_%thunk132258%_)))
                         (__tmp132690
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132691 __tmp132690)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop132262%_)))))
         _%name132259%_)))
    (define gxc#join!
      (lambda (_%thread132253%_)
        (let ((__tmp132693
               (lambda (_%exn132255%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn132255%_))
                     (let ((__tmp132694
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn132255%_))))
                       (declare (not safe))
                       (raise __tmp132694))
                     (let () (declare (not safe)) (raise _%exn132255%_)))))
              (__tmp132692 (lambda () (thread-join! _%thread132253%_))))
          (declare (not safe))
          (__with-catch __tmp132693 __tmp132692))))))
