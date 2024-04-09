(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712643208)
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
       (let ((_%verbosity129830129832%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129830129832%_
             (let* ((_%verbosity129835%_ _%verbosity129830129832%_)
                    (_%$e129837%_ (string->number _%verbosity129835%_)))
               (if _%$e129837%_ _%$e129837%_ _%verbosity129835%_))
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
      (let ((__tmp129892 (list)) (__tmp129891 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129892
         '(gensyms bindings)
         __tmp129891
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129828%_
        (apply make-instance gxc#symbol-table::t _%$args129828%_)))
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
      (lambda (_%self129815%_)
        (let ((_%self129818%_ _%self129815%_))
          (if (let ((__tmp129893
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self129818%_))))
                (declare (not safe))
                (##fx< '2 __tmp129893))
              (begin
                (let ((__tmp129894
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129818%_
                   __tmp129894
                   '1
                   '#f
                   '#f))
                (let ((__tmp129895
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129818%_
                   __tmp129895
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp129896
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self129818%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self129818%_
                       '2
                       __tmp129896))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129684%_ _%stx129685%_ . _%details129686%_)
        (let ((_%ctx129691%_
               (let ((_%$e129688%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129688%_ _%$e129688%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129691%_
                 _%message129684%_
                 _%stx129685%_
                 _%details129686%_))))
    (define gxc#verbose
      (lambda _%args129681%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129897 (lambda () (apply displayln _%args129681%_))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp129897))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129663%_)
        (let* ((_%str129665%_
                (if (symbol? _%id129663%_)
                    (symbol->string _%id129663%_)
                    _%id129663%_))
               (_%len129667%_ (string-length _%str129665%_))
               (_%res129669%_
                (let () (declare (not safe)) (##make-string _%len129667%_))))
          (let _%lp129672%_ ((_%i129674%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129674%_ _%len129667%_))
                (let* ((_%char129676%_ (string-ref _%str129665%_ _%i129674%_))
                       (_%xchar129678%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129676%_))
                            '#\_
                            _%char129676%_)))
                  (string-set! _%res129669%_ _%i129674%_ _%xchar129678%_)
                  (_%lp129672%_
                   (let () (declare (not safe)) (##fx+ _%i129674%_ '1))))
                _%res129669%_)))))
    (define gxc#map*
      (lambda (_%proc129605%_ _%maybe-improper-list129606%_)
        (let _%recur129608%_ ((_%rest129610%_ _%maybe-improper-list129606%_))
          (let* ((_%rest129611129622%_ _%rest129610%_)
                 (_%E129615129626%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129611129622%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129618129651%_
                   (lambda (_%rest129648%_ _%hd129649%_)
                     (cons (_%proc129605%_ _%hd129649%_)
                           (_%recur129608%_ _%rest129648%_))))
                  (_%K129617129642%_ (lambda () '()))
                  (_%K129616129632%_
                   (lambda (_%tail129630%_) (_%proc129605%_ _%tail129630%_))))
              (let ((_%try-match129613129645%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129611129622%_))
                           (_%K129617129642%_)
                           (let ((_%tail129635%_ _%rest129611129622%_))
                             (declare (not safe))
                             (_%proc129605%_ _%tail129635%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129611129622%_))
                    (let ((_%tl129620129656%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129611129622%_)))
                          (_%hd129619129654%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129611129622%_))))
                      (let ((_%hd129659%_ _%hd129619129654%_)
                            (_%rest129661%_ _%tl129620129656%_))
                        (_%K129618129651%_ _%rest129661%_ _%hd129659%_)))
                    (_%try-match129613129645%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129600%_)
        (let ((_%$e129602%_ (not (gxc#gensym-reference? _%sym129600%_))))
          (if _%$e129602%_
              _%$e129602%_
              (memq _%sym129600%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129596%_)
        (let ((_%str129598%_ (symbol->string _%sym129596%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129598%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129598%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129567%_)
        (let ((_%$e129569%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129567%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129567%_))
                   '#f)))
          (if _%$e129569%_
              ((lambda (_%bind129572%_)
                 (let ((_%eid129574%_
                        (##structure-ref _%bind129572%_ '1 gx#binding::t '#f))
                       (_%ht129575%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129574%_))
                       _%eid129574%_
                       (let ((_%$e129578%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129575%_ _%eid129574%_))))
                         (if _%$e129578%_
                             _%$e129578%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129572%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129582%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid129574%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129575%_
                                      _%eid129574%_
                                      _%gid129582%_))
                                   _%gid129582%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129572%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129591%_
                                            (let ((_%$e129585%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129572%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129585%_
                                                  ((lambda (_%ns129588%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129588%_
                                                        '"#"
                                                        _%eid129574%_)))
                                                   _%$e129585%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid129574%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129575%_
                                          _%eid129574%_
                                          _%gid129591%_))
                                       _%gid129591%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id129567%_
                                      _%eid129574%_
                                      _%bind129572%_))))))))
               _%$e129569%_)
              (if (let ((__tmp129898
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129567%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129898))
                  (let () (declare (not safe)) (gx#stx-e _%id129567%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id129567%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129565%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129565%_))
            (gxc#generate-runtime-binding-id _%id129565%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129552%_)
        (if _%top129552%_
            (let ((_%ns129554%_
                   (##structure-ref
                    (let ((__tmp129899
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129899))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129555%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129554%_
                  (if (fxpositive? _%phi129555%_)
                      (let ((__tmp129901 (number->string _%phi129555%_))
                            (__tmp129900
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129554%_
                         '"["
                         __tmp129901
                         '"]#_"
                         __tmp129900
                         '"_"))
                      (let ((__tmp129902
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129554%_ '"#_" __tmp129902 '"_")))
                  (if (fxpositive? _%phi129555%_)
                      (let ((__tmp129904 (number->string _%phi129555%_))
                            (__tmp129903
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129904
                         '"]#_"
                         __tmp129903
                         '"_"))
                      (let ((__tmp129905
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129905 '"_")))))
            (let ((__tmp129906 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129906 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129561%_ '#f))
          (gxc#generate-runtime-temporary__% _%top129561%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129908_
        (let ((_g129907_ (let () (declare (not safe)) (##length _g129908_))))
          (cond ((let () (declare (not safe)) (##fx= _g129907_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g129908_))
                ((let () (declare (not safe)) (##fx= _g129907_ 1))
                 (apply gxc#generate-runtime-temporary__% _g129908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129908_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129530%_ _%quote?129531%_)
        (let* ((_%ht129533%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129535%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129533%_ _%sym129530%_))))
          (if _%$e129535%_
              _%$e129535%_
              (let ((_%g129539%_
                     (if _%quote?129531%_
                         (let ((__tmp129909
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129530%_
                            '"__"
                            __tmp129909))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129530%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129533%_ _%sym129530%_ _%g129539%_))
                _%g129539%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129544%_)
        (let ((_%quote?129546%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129544%_
           _%quote?129546%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129911_
        (let ((_g129910_ (let () (declare (not safe)) (##length _g129911_))))
          (cond ((let () (declare (not safe)) (##fx= _g129910_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g129911_))
                ((let () (declare (not safe)) (##fx= _g129910_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g129911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129911_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129522%_ _%id2129523%_)
        (letrec ((_%symbol-e129525%_
                  (lambda (_%id129527%_)
                    (if (symbol? _%id129527%_)
                        _%id129527%_
                        (gxc#generate-runtime-binding-id _%id129527%_)))))
          (eq? (_%symbol-e129525%_ _%id1129522%_)
               (_%symbol-e129525%_ _%id2129523%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx129520%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129520%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx129520%_)
            (let () (declare (not safe)) (gx#stx-e _%stx129520%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk129505%_ _%name129506%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job129508%_
               (gxc#make-compile-job _%thunk129505%_ _%name129506%_)))
          (set! gxc#__compile-jobs (cons _%job129508%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk129513%_)
        (let ((_%name129515%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk129513%_ _%name129515%_))))
    (define gxc#add-compile-job!
      (lambda _g129913_
        (let ((_g129912_ (let () (declare (not safe)) (##length _g129913_))))
          (cond ((let () (declare (not safe)) (##fx= _g129912_ 1))
                 (apply gxc#add-compile-job!__0 _g129913_))
                ((let () (declare (not safe)) (##fx= _g129912_ 2))
                 (apply gxc#add-compile-job!__% _g129913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g129913_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result129502%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result129502%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop129496%_ ()
          (let ((_%pending129499%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending129499%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending129499%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending129499%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk129485%_ _%name129486%_)
        (make-thread
         (lambda ()
           (let _%loop129489%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp129914
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name129486%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp129914))
                   (let ((__tmp129916 (lambda () (_%thunk129485%_)))
                         (__tmp129915
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp129916 __tmp129915)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop129489%_)))))
         _%name129486%_)))
    (define gxc#join!
      (lambda (_%thread129480%_)
        (let ((__tmp129918
               (lambda (_%exn129482%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn129482%_))
                     (let ((__tmp129919
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn129482%_))))
                       (declare (not safe))
                       (raise __tmp129919))
                     (let () (declare (not safe)) (raise _%exn129482%_)))))
              (__tmp129917 (lambda () (thread-join! _%thread129480%_))))
          (declare (not safe))
          (__with-catch __tmp129918 __tmp129917))))))
