(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712702631)
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
       (let ((_%verbosity129892129894%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129892129894%_
             (let* ((_%verbosity129897%_ _%verbosity129892129894%_)
                    (_%$e129899%_ (string->number _%verbosity129897%_)))
               (if _%$e129899%_ _%$e129899%_ _%verbosity129897%_))
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
      (let ((__tmp129954 (list)) (__tmp129953 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129954
         '(gensyms bindings)
         __tmp129953
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129890%_
        (apply make-instance gxc#symbol-table::t _%$args129890%_)))
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
      (lambda (_%self129877%_)
        (let ((_%self129880%_ _%self129877%_))
          (if (let ((__tmp129955
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self129880%_))))
                (declare (not safe))
                (##fx< '2 __tmp129955))
              (begin
                (let ((__tmp129956
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129880%_
                   __tmp129956
                   '1
                   '#f
                   '#f))
                (let ((__tmp129957
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129880%_
                   __tmp129957
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp129958
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self129880%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self129880%_
                       '2
                       __tmp129958))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129746%_ _%stx129747%_ . _%details129748%_)
        (let ((_%ctx129753%_
               (let ((_%$e129750%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129750%_ _%$e129750%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129753%_
                 _%message129746%_
                 _%stx129747%_
                 _%details129748%_))))
    (define gxc#verbose
      (lambda _%args129743%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129959 (lambda () (apply displayln _%args129743%_))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp129959))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129725%_)
        (let* ((_%str129727%_
                (if (symbol? _%id129725%_)
                    (symbol->string _%id129725%_)
                    _%id129725%_))
               (_%len129729%_ (string-length _%str129727%_))
               (_%res129731%_
                (let () (declare (not safe)) (##make-string _%len129729%_))))
          (let _%lp129734%_ ((_%i129736%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129736%_ _%len129729%_))
                (let* ((_%char129738%_ (string-ref _%str129727%_ _%i129736%_))
                       (_%xchar129740%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129738%_))
                            '#\_
                            _%char129738%_)))
                  (string-set! _%res129731%_ _%i129736%_ _%xchar129740%_)
                  (_%lp129734%_
                   (let () (declare (not safe)) (##fx+ _%i129736%_ '1))))
                _%res129731%_)))))
    (define gxc#map*
      (lambda (_%proc129667%_ _%maybe-improper-list129668%_)
        (let _%recur129670%_ ((_%rest129672%_ _%maybe-improper-list129668%_))
          (let* ((_%rest129673129684%_ _%rest129672%_)
                 (_%E129677129688%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129673129684%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129680129713%_
                   (lambda (_%rest129710%_ _%hd129711%_)
                     (cons (_%proc129667%_ _%hd129711%_)
                           (_%recur129670%_ _%rest129710%_))))
                  (_%K129679129704%_ (lambda () '()))
                  (_%K129678129694%_
                   (lambda (_%tail129692%_) (_%proc129667%_ _%tail129692%_))))
              (let ((_%try-match129675129707%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129673129684%_))
                           (_%K129679129704%_)
                           (let ((_%tail129697%_ _%rest129673129684%_))
                             (declare (not safe))
                             (_%proc129667%_ _%tail129697%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129673129684%_))
                    (let ((_%tl129682129718%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129673129684%_)))
                          (_%hd129681129716%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129673129684%_))))
                      (let ((_%hd129721%_ _%hd129681129716%_)
                            (_%rest129723%_ _%tl129682129718%_))
                        (_%K129680129713%_ _%rest129723%_ _%hd129721%_)))
                    (_%try-match129675129707%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129662%_)
        (let ((_%$e129664%_ (not (gxc#gensym-reference? _%sym129662%_))))
          (if _%$e129664%_
              _%$e129664%_
              (memq _%sym129662%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129658%_)
        (let ((_%str129660%_ (symbol->string _%sym129658%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129660%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129660%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129629%_)
        (let ((_%$e129631%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129629%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129629%_))
                   '#f)))
          (if _%$e129631%_
              ((lambda (_%bind129634%_)
                 (let ((_%eid129636%_
                        (##structure-ref _%bind129634%_ '1 gx#binding::t '#f))
                       (_%ht129637%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129636%_))
                       _%eid129636%_
                       (let ((_%$e129640%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129637%_ _%eid129636%_))))
                         (if _%$e129640%_
                             _%$e129640%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129634%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129644%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid129636%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129637%_
                                      _%eid129636%_
                                      _%gid129644%_))
                                   _%gid129644%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129634%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129653%_
                                            (let ((_%$e129647%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129634%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129647%_
                                                  ((lambda (_%ns129650%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129650%_
                                                        '"#"
                                                        _%eid129636%_)))
                                                   _%$e129647%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid129636%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129637%_
                                          _%eid129636%_
                                          _%gid129653%_))
                                       _%gid129653%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id129629%_
                                      _%eid129636%_
                                      _%bind129634%_))))))))
               _%$e129631%_)
              (if (let ((__tmp129960
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129629%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129960))
                  (let () (declare (not safe)) (gx#stx-e _%id129629%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id129629%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129627%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129627%_))
            (gxc#generate-runtime-binding-id _%id129627%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129614%_)
        (if _%top129614%_
            (let ((_%ns129616%_
                   (##structure-ref
                    (let ((__tmp129961
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129961))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129617%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129616%_
                  (if (fxpositive? _%phi129617%_)
                      (let ((__tmp129963 (number->string _%phi129617%_))
                            (__tmp129962
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129616%_
                         '"["
                         __tmp129963
                         '"]#_"
                         __tmp129962
                         '"_"))
                      (let ((__tmp129964
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129616%_ '"#_" __tmp129964 '"_")))
                  (if (fxpositive? _%phi129617%_)
                      (let ((__tmp129966 (number->string _%phi129617%_))
                            (__tmp129965
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129966
                         '"]#_"
                         __tmp129965
                         '"_"))
                      (let ((__tmp129967
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129967 '"_")))))
            (let ((__tmp129968 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129968 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129623%_ '#f))
          (gxc#generate-runtime-temporary__% _%top129623%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129970_
        (let ((_g129969_ (let () (declare (not safe)) (##length _g129970_))))
          (cond ((let () (declare (not safe)) (##fx= _g129969_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g129970_))
                ((let () (declare (not safe)) (##fx= _g129969_ 1))
                 (apply gxc#generate-runtime-temporary__% _g129970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129970_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129592%_ _%quote?129593%_)
        (let* ((_%ht129595%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129597%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129595%_ _%sym129592%_))))
          (if _%$e129597%_
              _%$e129597%_
              (let ((_%g129601%_
                     (if _%quote?129593%_
                         (let ((__tmp129971
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129592%_
                            '"__"
                            __tmp129971))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129592%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129595%_ _%sym129592%_ _%g129601%_))
                _%g129601%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129606%_)
        (let ((_%quote?129608%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129606%_
           _%quote?129608%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129973_
        (let ((_g129972_ (let () (declare (not safe)) (##length _g129973_))))
          (cond ((let () (declare (not safe)) (##fx= _g129972_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g129973_))
                ((let () (declare (not safe)) (##fx= _g129972_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g129973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129973_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129584%_ _%id2129585%_)
        (letrec ((_%symbol-e129587%_
                  (lambda (_%id129589%_)
                    (if (symbol? _%id129589%_)
                        _%id129589%_
                        (gxc#generate-runtime-binding-id _%id129589%_)))))
          (eq? (_%symbol-e129587%_ _%id1129584%_)
               (_%symbol-e129587%_ _%id2129585%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx129582%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129582%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx129582%_)
            (let () (declare (not safe)) (gx#stx-e _%stx129582%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk129567%_ _%name129568%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job129570%_
               (gxc#make-compile-job _%thunk129567%_ _%name129568%_)))
          (set! gxc#__compile-jobs (cons _%job129570%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk129575%_)
        (let ((_%name129577%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk129575%_ _%name129577%_))))
    (define gxc#add-compile-job!
      (lambda _g129975_
        (let ((_g129974_ (let () (declare (not safe)) (##length _g129975_))))
          (cond ((let () (declare (not safe)) (##fx= _g129974_ 1))
                 (apply gxc#add-compile-job!__0 _g129975_))
                ((let () (declare (not safe)) (##fx= _g129974_ 2))
                 (apply gxc#add-compile-job!__% _g129975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g129975_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result129564%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result129564%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop129558%_ ()
          (let ((_%pending129561%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending129561%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending129561%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending129561%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk129547%_ _%name129548%_)
        (make-thread
         (lambda ()
           (let _%loop129551%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp129976
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name129548%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp129976))
                   (let ((__tmp129978 (lambda () (_%thunk129547%_)))
                         (__tmp129977
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp129978 __tmp129977)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop129551%_)))))
         _%name129548%_)))
    (define gxc#join!
      (lambda (_%thread129542%_)
        (let ((__tmp129980
               (lambda (_%exn129544%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn129544%_))
                     (let ((__tmp129981
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn129544%_))))
                       (declare (not safe))
                       (raise __tmp129981))
                     (let () (declare (not safe)) (raise _%exn129544%_)))))
              (__tmp129979 (lambda () (thread-join! _%thread129542%_))))
          (declare (not safe))
          (__with-catch __tmp129980 __tmp129979))))))
