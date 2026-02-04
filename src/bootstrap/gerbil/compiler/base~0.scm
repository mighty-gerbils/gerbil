(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770248971)
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
       (let ((_%verbosity157631157633%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157631157633%_
             (let* ((_%verbosity157635%_ _%verbosity157631157633%_)
                    (_%$e157637%_ (string->number _%verbosity157635%_)))
               (if _%$e157637%_ _%$e157637%_ _%verbosity157635%_))
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
      (let ((__tmp157692 (list)) (__tmp157691 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157692
         '(gensyms bindings)
         __tmp157691
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157629%_
        (apply make-instance gxc#symbol-table::t _%$args157629%_)))
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
      (lambda (_%self157616%_)
        (let ((_%self157619%_ _%self157616%_))
          (if (let ((__tmp157693
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157619%_))))
                (declare (not safe))
                (##fx< '2 __tmp157693))
              (begin
                (let ((__tmp157694
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157619%_
                   __tmp157694
                   '1
                   '#f
                   '#f))
                (let ((__tmp157695
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157619%_
                   __tmp157695
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157696
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157619%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157619%_
                       '2
                       __tmp157696))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157485%_ _%stx157486%_ . _%details157487%_)
        (let ((_%ctx157492%_
               (let ((_%$e157489%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157489%_ _%$e157489%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157492%_
                 _%message157485%_
                 _%stx157486%_
                 _%details157487%_))))
    (define gxc#verbose
      (lambda _%args157482%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157697
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157482%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157697))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157464%_)
        (let* ((_%str157466%_
                (if (symbol? _%id157464%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157464%_))
                    _%id157464%_))
               (_%len157468%_ (string-length _%str157466%_))
               (_%res157470%_
                (let () (declare (not safe)) (##make-string _%len157468%_))))
          (let _%lp157473%_ ((_%i157475%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157475%_ _%len157468%_))
                (let* ((_%char157477%_ (string-ref _%str157466%_ _%i157475%_))
                       (_%xchar157479%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157477%_))
                            '#\_
                            _%char157477%_)))
                  (string-set! _%res157470%_ _%i157475%_ _%xchar157479%_)
                  (_%lp157473%_
                   (let () (declare (not safe)) (##fx+ _%i157475%_ '1))))
                _%res157470%_)))))
    (define gxc#map*
      (lambda (_%proc157406%_ _%maybe-improper-list157407%_)
        (let _%recur157409%_ ((_%rest157411%_ _%maybe-improper-list157407%_))
          (let* ((_%rest157412157423%_ _%rest157411%_)
                 (_%E157416157427%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157412157423%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157419157452%_
                   (lambda (_%rest157449%_ _%hd157450%_)
                     (cons (_%proc157406%_ _%hd157450%_)
                           (_%recur157409%_ _%rest157449%_))))
                  (_%K157418157443%_ (lambda () '()))
                  (_%K157417157433%_
                   (lambda (_%tail157431%_) (_%proc157406%_ _%tail157431%_))))
              (let ((_%try-match157414157446%_
                     (lambda ()
                       (if (null? _%rest157412157423%_)
                           (_%K157418157443%_)
                           (let ((_%tail157436%_ _%rest157412157423%_))
                             (declare (not safe))
                             (_%proc157406%_ _%tail157436%_))))))
                (if (pair? _%rest157412157423%_)
                    (let ((_%tl157421157457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157412157423%_)))
                          (_%hd157420157455%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157412157423%_))))
                      (let ((_%hd157460%_ _%hd157420157455%_)
                            (_%rest157462%_ _%tl157421157457%_))
                        (_%K157419157452%_ _%rest157462%_ _%hd157460%_)))
                    (_%try-match157414157446%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157401%_)
        (let ((_%$e157403%_ (not (gxc#gensym-reference? _%sym157401%_))))
          (if _%$e157403%_
              _%$e157403%_
              (memq _%sym157401%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157397%_)
        (let ((_%str157399%_ (symbol->string _%sym157397%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157399%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157399%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157368%_)
        (let ((_%$e157370%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157368%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157368%_))
                   '#f)))
          (if _%$e157370%_
              ((lambda (_%bind157373%_)
                 (let ((_%eid157375%_
                        (##structure-ref _%bind157373%_ '1 gx#binding::t '#f))
                       (_%ht157376%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157375%_))
                       _%eid157375%_
                       (let ((_%$e157379%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157376%_ _%eid157375%_))))
                         (if _%$e157379%_
                             _%$e157379%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157373%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157383%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157375%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157376%_
                                      _%eid157375%_
                                      _%gid157383%_))
                                   _%gid157383%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157373%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157392%_
                                            (let ((_%$e157386%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157373%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157386%_
                                                  ((lambda (_%ns157389%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157389%_
                                                        '"#"
                                                        _%eid157375%_)))
                                                   _%$e157386%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157375%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157376%_
                                          _%eid157375%_
                                          _%gid157392%_))
                                       _%gid157392%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157368%_
                                      _%eid157375%_
                                      _%bind157373%_))))))))
               _%$e157370%_)
              (if (let ((__tmp157698
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157368%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157698))
                  (let () (declare (not safe)) (gx#stx-e _%id157368%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157368%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157366%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157366%_))
            (gxc#generate-runtime-binding-id _%id157366%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157353%_)
        (if _%top157353%_
            (let ((_%ns157355%_
                   (##structure-ref
                    (let ((__tmp157699
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157699))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157356%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157355%_
                  (if (fxpositive? _%phi157356%_)
                      (let ((__tmp157701 (number->string _%phi157356%_))
                            (__tmp157700
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157355%_
                         '"["
                         __tmp157701
                         '"]#_"
                         __tmp157700
                         '"_"))
                      (let ((__tmp157702
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157355%_ '"#_" __tmp157702 '"_")))
                  (if (fxpositive? _%phi157356%_)
                      (let ((__tmp157704 (number->string _%phi157356%_))
                            (__tmp157703
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157704
                         '"]#_"
                         __tmp157703
                         '"_"))
                      (let ((__tmp157705
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157705 '"_")))))
            (let ((__tmp157706 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157706 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157362%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157362%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157707_
        (let ((_g157708_ (let () (declare (not safe)) (##length _g157707_))))
          (cond ((let () (declare (not safe)) (##fx= _g157708_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157707_))
                ((let () (declare (not safe)) (##fx= _g157708_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157707_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157331%_ _%quote?157332%_)
        (let* ((_%ht157334%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157336%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157334%_ _%sym157331%_))))
          (if _%$e157336%_
              _%$e157336%_
              (let ((_%g157340%_
                     (if _%quote?157332%_
                         (let ((__tmp157709
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157331%_
                            '"__"
                            __tmp157709))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157331%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157334%_ _%sym157331%_ _%g157340%_))
                _%g157340%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157345%_)
        (let ((_%quote?157347%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157345%_
           _%quote?157347%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157710_
        (let ((_g157711_ (let () (declare (not safe)) (##length _g157710_))))
          (cond ((let () (declare (not safe)) (##fx= _g157711_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157710_))
                ((let () (declare (not safe)) (##fx= _g157711_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157710_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157323%_ _%id2157324%_)
        (letrec ((_%symbol-e157326%_
                  (lambda (_%id157328%_)
                    (if (symbol? _%id157328%_)
                        _%id157328%_
                        (gxc#generate-runtime-binding-id _%id157328%_)))))
          (eq? (_%symbol-e157326%_ _%id1157323%_)
               (_%symbol-e157326%_ _%id2157324%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157321%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157321%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157321%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157321%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157306%_ _%name157307%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157309%_
               (gxc#make-compile-job _%thunk157306%_ _%name157307%_)))
          (set! gxc#__compile-jobs (cons _%job157309%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157314%_)
        (let ((_%name157316%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157314%_ _%name157316%_))))
    (define gxc#add-compile-job!
      (lambda _g157712_
        (let ((_g157713_ (let () (declare (not safe)) (##length _g157712_))))
          (cond ((let () (declare (not safe)) (##fx= _g157713_ 1))
                 (apply gxc#add-compile-job!__0 _g157712_))
                ((let () (declare (not safe)) (##fx= _g157713_ 2))
                 (apply gxc#add-compile-job!__% _g157712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157712_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157303%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157303%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157297%_ ()
          (let ((_%pending157300%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157300%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157300%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157300%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157286%_ _%name157287%_)
        (make-thread
         (lambda ()
           (let _%loop157290%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157714
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157287%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157714))
                   (let ((__tmp157716 (lambda () (_%thunk157286%_)))
                         (__tmp157715
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157716 __tmp157715)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157290%_)))))
         _%name157287%_)))
    (define gxc#join!
      (lambda (_%thread157281%_)
        (let ((__tmp157718
               (lambda (_%exn157283%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157283%_))
                     (let ((__tmp157719
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157283%_))))
                       (declare (not safe))
                       (raise __tmp157719))
                     (let () (declare (not safe)) (raise _%exn157283%_)))))
              (__tmp157717 (lambda () (thread-join! _%thread157281%_))))
          (declare (not safe))
          (__with-catch __tmp157718 __tmp157717))))))
