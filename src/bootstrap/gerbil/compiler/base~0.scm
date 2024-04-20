(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713631267)
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
       (let ((_%verbosity133737133739%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity133737133739%_
             (let* ((_%verbosity133742%_ _%verbosity133737133739%_)
                    (_%$e133744%_ (string->number _%verbosity133742%_)))
               (if _%$e133744%_ _%$e133744%_ _%verbosity133742%_))
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
      (let ((__tmp133799 (list)) (__tmp133798 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp133799
         '(gensyms bindings)
         __tmp133798
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args133735%_
        (apply make-instance gxc#symbol-table::t _%$args133735%_)))
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
      (lambda (_%self133257133720%_)
        (let* ((_%self133723%_ _%self133257133720%_)
               (_%self133725%_ _%self133723%_))
          (if (let ((__tmp133800
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self133725%_))))
                (declare (not safe))
                (##fx< '2 __tmp133800))
              (begin
                (let ((__tmp133801
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133725%_
                   __tmp133801
                   '1
                   '#f
                   '#f))
                (let ((__tmp133802
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self133725%_
                   __tmp133802
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp133803
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self133725%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self133725%_
                       '2
                       __tmp133803))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133589%_ _%stx133590%_ . _%details133591%_)
        (let ((_%ctx133596%_
               (let ((_%$e133593%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133593%_ _%$e133593%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx133596%_
                 _%message133589%_
                 _%stx133590%_
                 _%details133591%_))))
    (define gxc#verbose
      (lambda _%args133586%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp133804
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133586%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp133804))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133568%_)
        (let* ((_%str133570%_
                (if (symbol? _%id133568%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133568%_))
                    _%id133568%_))
               (_%len133572%_ (string-length _%str133570%_))
               (_%res133574%_
                (let () (declare (not safe)) (##make-string _%len133572%_))))
          (let _%lp133577%_ ((_%i133579%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133579%_ _%len133572%_))
                (let* ((_%char133581%_ (string-ref _%str133570%_ _%i133579%_))
                       (_%xchar133583%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133581%_))
                            '#\_
                            _%char133581%_)))
                  (string-set! _%res133574%_ _%i133579%_ _%xchar133583%_)
                  (_%lp133577%_
                   (let () (declare (not safe)) (##fx+ _%i133579%_ '1))))
                _%res133574%_)))))
    (define gxc#map*
      (lambda (_%proc133510%_ _%maybe-improper-list133511%_)
        (let _%recur133513%_ ((_%rest133515%_ _%maybe-improper-list133511%_))
          (let* ((_%rest133516133527%_ _%rest133515%_)
                 (_%E133520133531%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133516133527%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133523133556%_
                   (lambda (_%rest133553%_ _%hd133554%_)
                     (cons (_%proc133510%_ _%hd133554%_)
                           (_%recur133513%_ _%rest133553%_))))
                  (_%K133522133547%_ (lambda () '()))
                  (_%K133521133537%_
                   (lambda (_%tail133535%_) (_%proc133510%_ _%tail133535%_))))
              (let ((_%try-match133518133550%_
                     (lambda ()
                       (if (null? _%rest133516133527%_)
                           (_%K133522133547%_)
                           (let ((_%tail133540%_ _%rest133516133527%_))
                             (declare (not safe))
                             (_%proc133510%_ _%tail133540%_))))))
                (if (pair? _%rest133516133527%_)
                    (let ((_%tl133525133561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133516133527%_)))
                          (_%hd133524133559%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133516133527%_))))
                      (let ((_%hd133564%_ _%hd133524133559%_)
                            (_%rest133566%_ _%tl133525133561%_))
                        (_%K133523133556%_ _%rest133566%_ _%hd133564%_)))
                    (_%try-match133518133550%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133505%_)
        (let ((_%$e133507%_ (not (gxc#gensym-reference? _%sym133505%_))))
          (if _%$e133507%_
              _%$e133507%_
              (memq _%sym133505%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133501%_)
        (let ((_%str133503%_ (symbol->string _%sym133501%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133503%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133503%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133472%_)
        (let ((_%$e133474%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133472%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133472%_))
                   '#f)))
          (if _%$e133474%_
              ((lambda (_%bind133477%_)
                 (let ((_%eid133479%_
                        (##structure-ref _%bind133477%_ '1 gx#binding::t '#f))
                       (_%ht133480%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133479%_))
                       _%eid133479%_
                       (let ((_%$e133483%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133480%_ _%eid133479%_))))
                         (if _%$e133483%_
                             _%$e133483%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133477%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133487%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133479%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133480%_
                                      _%eid133479%_
                                      _%gid133487%_))
                                   _%gid133487%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133477%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133496%_
                                            (let ((_%$e133490%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133477%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133490%_
                                                  ((lambda (_%ns133493%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133493%_
                                                        '"#"
                                                        _%eid133479%_)))
                                                   _%$e133490%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133479%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133480%_
                                          _%eid133479%_
                                          _%gid133496%_))
                                       _%gid133496%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133472%_
                                      _%eid133479%_
                                      _%bind133477%_))))))))
               _%$e133474%_)
              (if (let ((__tmp133805
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133472%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp133805))
                  (let () (declare (not safe)) (gx#stx-e _%id133472%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133472%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133470%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133470%_))
            (gxc#generate-runtime-binding-id _%id133470%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133457%_)
        (if _%top133457%_
            (let ((_%ns133459%_
                   (##structure-ref
                    (let ((__tmp133806
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp133806))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133460%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133459%_
                  (if (fxpositive? _%phi133460%_)
                      (let ((__tmp133808 (number->string _%phi133460%_))
                            (__tmp133807
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133459%_
                         '"["
                         __tmp133808
                         '"]#_"
                         __tmp133807
                         '"_"))
                      (let ((__tmp133809
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133459%_ '"#_" __tmp133809 '"_")))
                  (if (fxpositive? _%phi133460%_)
                      (let ((__tmp133811 (number->string _%phi133460%_))
                            (__tmp133810
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp133811
                         '"]#_"
                         __tmp133810
                         '"_"))
                      (let ((__tmp133812
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp133812 '"_")))))
            (let ((__tmp133813 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp133813 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133466%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133466%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g133815_
        (let ((_g133814_ (let () (declare (not safe)) (##length _g133815_))))
          (cond ((let () (declare (not safe)) (##fx= _g133814_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g133815_))
                ((let () (declare (not safe)) (##fx= _g133814_ 1))
                 (apply gxc#generate-runtime-temporary__% _g133815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g133815_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym133435%_ _%quote?133436%_)
        (let* ((_%ht133438%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133440%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133438%_ _%sym133435%_))))
          (if _%$e133440%_
              _%$e133440%_
              (let ((_%g133444%_
                     (if _%quote?133436%_
                         (let ((__tmp133816
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym133435%_
                            '"__"
                            __tmp133816))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym133435%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133438%_ _%sym133435%_ _%g133444%_))
                _%g133444%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133449%_)
        (let ((_%quote?133451%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133449%_
           _%quote?133451%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g133818_
        (let ((_g133817_ (let () (declare (not safe)) (##length _g133818_))))
          (cond ((let () (declare (not safe)) (##fx= _g133817_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g133818_))
                ((let () (declare (not safe)) (##fx= _g133817_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g133818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g133818_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1133427%_ _%id2133428%_)
        (letrec ((_%symbol-e133430%_
                  (lambda (_%id133432%_)
                    (if (symbol? _%id133432%_)
                        _%id133432%_
                        (gxc#generate-runtime-binding-id _%id133432%_)))))
          (eq? (_%symbol-e133430%_ _%id1133427%_)
               (_%symbol-e133430%_ _%id2133428%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx133425%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx133425%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx133425%_)
            (let () (declare (not safe)) (gx#stx-e _%stx133425%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk133410%_ _%name133411%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job133413%_
               (gxc#make-compile-job _%thunk133410%_ _%name133411%_)))
          (set! gxc#__compile-jobs (cons _%job133413%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk133418%_)
        (let ((_%name133420%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk133418%_ _%name133420%_))))
    (define gxc#add-compile-job!
      (lambda _g133820_
        (let ((_g133819_ (let () (declare (not safe)) (##length _g133820_))))
          (cond ((let () (declare (not safe)) (##fx= _g133819_ 1))
                 (apply gxc#add-compile-job!__0 _g133820_))
                ((let () (declare (not safe)) (##fx= _g133819_ 2))
                 (apply gxc#add-compile-job!__% _g133820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g133820_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result133407%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result133407%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop133401%_ ()
          (let ((_%pending133404%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending133404%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending133404%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending133404%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk133390%_ _%name133391%_)
        (make-thread
         (lambda ()
           (let _%loop133394%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp133821
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name133391%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp133821))
                   (let ((__tmp133823 (lambda () (_%thunk133390%_)))
                         (__tmp133822
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp133823 __tmp133822)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop133394%_)))))
         _%name133391%_)))
    (define gxc#join!
      (lambda (_%thread133385%_)
        (let ((__tmp133825
               (lambda (_%exn133387%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn133387%_))
                     (let ((__tmp133826
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn133387%_))))
                       (declare (not safe))
                       (raise __tmp133826))
                     (let () (declare (not safe)) (raise _%exn133387%_)))))
              (__tmp133824 (lambda () (thread-join! _%thread133385%_))))
          (declare (not safe))
          (__with-catch __tmp133825 __tmp133824))))))
