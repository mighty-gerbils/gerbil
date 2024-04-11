(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712823027)
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
       (let ((_%verbosity131924131926%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity131924131926%_
             (let* ((_%verbosity131929%_ _%verbosity131924131926%_)
                    (_%$e131931%_ (string->number _%verbosity131929%_)))
               (if _%$e131931%_ _%$e131931%_ _%verbosity131929%_))
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
      (let ((__tmp131986 (list)) (__tmp131985 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp131986
         '(gensyms bindings)
         __tmp131985
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args131922%_
        (apply make-instance gxc#symbol-table::t _%$args131922%_)))
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
      (lambda (_%self131444131907%_)
        (let* ((_%self131910%_ _%self131444131907%_)
               (_%self131912%_ _%self131910%_))
          (if (let ((__tmp131987
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self131912%_))))
                (declare (not safe))
                (##fx< '2 __tmp131987))
              (begin
                (let ((__tmp131988
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131912%_
                   __tmp131988
                   '1
                   '#f
                   '#f))
                (let ((__tmp131989
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131912%_
                   __tmp131989
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp131990
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self131912%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self131912%_
                       '2
                       __tmp131990))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message131776%_ _%stx131777%_ . _%details131778%_)
        (let ((_%ctx131783%_
               (let ((_%$e131780%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e131780%_ _%$e131780%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx131783%_
                 _%message131776%_
                 _%stx131777%_
                 _%details131778%_))))
    (define gxc#verbose
      (lambda _%args131773%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp131991
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args131773%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp131991))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id131755%_)
        (let* ((_%str131757%_
                (if (symbol? _%id131755%_)
                    (symbol->string _%id131755%_)
                    _%id131755%_))
               (_%len131759%_ (string-length _%str131757%_))
               (_%res131761%_
                (let () (declare (not safe)) (##make-string _%len131759%_))))
          (let _%lp131764%_ ((_%i131766%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131766%_ _%len131759%_))
                (let* ((_%char131768%_ (string-ref _%str131757%_ _%i131766%_))
                       (_%xchar131770%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char131768%_))
                            '#\_
                            _%char131768%_)))
                  (string-set! _%res131761%_ _%i131766%_ _%xchar131770%_)
                  (_%lp131764%_
                   (let () (declare (not safe)) (##fx+ _%i131766%_ '1))))
                _%res131761%_)))))
    (define gxc#map*
      (lambda (_%proc131697%_ _%maybe-improper-list131698%_)
        (let _%recur131700%_ ((_%rest131702%_ _%maybe-improper-list131698%_))
          (let* ((_%rest131703131714%_ _%rest131702%_)
                 (_%E131707131718%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest131703131714%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K131710131743%_
                   (lambda (_%rest131740%_ _%hd131741%_)
                     (cons (_%proc131697%_ _%hd131741%_)
                           (_%recur131700%_ _%rest131740%_))))
                  (_%K131709131734%_ (lambda () '()))
                  (_%K131708131724%_
                   (lambda (_%tail131722%_) (_%proc131697%_ _%tail131722%_))))
              (let ((_%try-match131705131737%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest131703131714%_))
                           (_%K131709131734%_)
                           (let ((_%tail131727%_ _%rest131703131714%_))
                             (declare (not safe))
                             (_%proc131697%_ _%tail131727%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest131703131714%_))
                    (let ((_%tl131712131748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest131703131714%_)))
                          (_%hd131711131746%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest131703131714%_))))
                      (let ((_%hd131751%_ _%hd131711131746%_)
                            (_%rest131753%_ _%tl131712131748%_))
                        (_%K131710131743%_ _%rest131753%_ _%hd131751%_)))
                    (_%try-match131705131737%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym131692%_)
        (let ((_%$e131694%_ (not (gxc#gensym-reference? _%sym131692%_))))
          (if _%$e131694%_
              _%$e131694%_
              (memq _%sym131692%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym131688%_)
        (let ((_%str131690%_ (symbol->string _%sym131688%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str131690%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str131690%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id131659%_)
        (let ((_%$e131661%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id131659%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id131659%_))
                   '#f)))
          (if _%$e131661%_
              ((lambda (_%bind131664%_)
                 (let ((_%eid131666%_
                        (##structure-ref _%bind131664%_ '1 gx#binding::t '#f))
                       (_%ht131667%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid131666%_))
                       _%eid131666%_
                       (let ((_%$e131670%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht131667%_ _%eid131666%_))))
                         (if _%$e131670%_
                             _%$e131670%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind131664%_
                                    'gx#local-binding::t))
                                 (let ((_%gid131674%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid131666%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht131667%_
                                      _%eid131666%_
                                      _%gid131674%_))
                                   _%gid131674%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind131664%_
                                        'gx#module-binding::t))
                                     (let ((_%gid131683%_
                                            (let ((_%$e131677%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind131664%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e131677%_
                                                  ((lambda (_%ns131680%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns131680%_
                                                        '"#"
                                                        _%eid131666%_)))
                                                   _%$e131677%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid131666%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht131667%_
                                          _%eid131666%_
                                          _%gid131683%_))
                                       _%gid131683%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id131659%_
                                      _%eid131666%_
                                      _%bind131664%_))))))))
               _%$e131661%_)
              (if (let ((__tmp131992
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id131659%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp131992))
                  (let () (declare (not safe)) (gx#stx-e _%id131659%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id131659%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id131657%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id131657%_))
            (gxc#generate-runtime-binding-id _%id131657%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top131644%_)
        (if _%top131644%_
            (let ((_%ns131646%_
                   (##structure-ref
                    (let ((__tmp131993
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp131993))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi131647%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns131646%_
                  (if (fxpositive? _%phi131647%_)
                      (let ((__tmp131995 (number->string _%phi131647%_))
                            (__tmp131994
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns131646%_
                         '"["
                         __tmp131995
                         '"]#_"
                         __tmp131994
                         '"_"))
                      (let ((__tmp131996
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns131646%_ '"#_" __tmp131996 '"_")))
                  (if (fxpositive? _%phi131647%_)
                      (let ((__tmp131998 (number->string _%phi131647%_))
                            (__tmp131997
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp131998
                         '"]#_"
                         __tmp131997
                         '"_"))
                      (let ((__tmp131999
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp131999 '"_")))))
            (let ((__tmp132000 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132000 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top131653%_ '#f))
          (gxc#generate-runtime-temporary__% _%top131653%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132002_
        (let ((_g132001_ (let () (declare (not safe)) (##length _g132002_))))
          (cond ((let () (declare (not safe)) (##fx= _g132001_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132002_))
                ((let () (declare (not safe)) (##fx= _g132001_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132002_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym131622%_ _%quote?131623%_)
        (let* ((_%ht131625%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e131627%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht131625%_ _%sym131622%_))))
          (if _%$e131627%_
              _%$e131627%_
              (let ((_%g131631%_
                     (if _%quote?131623%_
                         (let ((__tmp132003
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym131622%_
                            '"__"
                            __tmp132003))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym131622%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht131625%_ _%sym131622%_ _%g131631%_))
                _%g131631%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym131636%_)
        (let ((_%quote?131638%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym131636%_
           _%quote?131638%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132005_
        (let ((_g132004_ (let () (declare (not safe)) (##length _g132005_))))
          (cond ((let () (declare (not safe)) (##fx= _g132004_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132005_))
                ((let () (declare (not safe)) (##fx= _g132004_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132005_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1131614%_ _%id2131615%_)
        (letrec ((_%symbol-e131617%_
                  (lambda (_%id131619%_)
                    (if (symbol? _%id131619%_)
                        _%id131619%_
                        (gxc#generate-runtime-binding-id _%id131619%_)))))
          (eq? (_%symbol-e131617%_ _%id1131614%_)
               (_%symbol-e131617%_ _%id2131615%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx131612%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx131612%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx131612%_)
            (let () (declare (not safe)) (gx#stx-e _%stx131612%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk131597%_ _%name131598%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job131600%_
               (gxc#make-compile-job _%thunk131597%_ _%name131598%_)))
          (set! gxc#__compile-jobs (cons _%job131600%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk131605%_)
        (let ((_%name131607%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk131605%_ _%name131607%_))))
    (define gxc#add-compile-job!
      (lambda _g132007_
        (let ((_g132006_ (let () (declare (not safe)) (##length _g132007_))))
          (cond ((let () (declare (not safe)) (##fx= _g132006_ 1))
                 (apply gxc#add-compile-job!__0 _g132007_))
                ((let () (declare (not safe)) (##fx= _g132006_ 2))
                 (apply gxc#add-compile-job!__% _g132007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132007_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result131594%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result131594%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131588%_ ()
          (let ((_%pending131591%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131591%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131591%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131591%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131577%_ _%name131578%_)
        (make-thread
         (lambda ()
           (let _%loop131581%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132008
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131578%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132008))
                   (let ((__tmp132010 (lambda () (_%thunk131577%_)))
                         (__tmp132009
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132010 __tmp132009)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131581%_)))))
         _%name131578%_)))
    (define gxc#join!
      (lambda (_%thread131572%_)
        (let ((__tmp132012
               (lambda (_%exn131574%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131574%_))
                     (let ((__tmp132013
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131574%_))))
                       (declare (not safe))
                       (raise __tmp132013))
                     (let () (declare (not safe)) (raise _%exn131574%_)))))
              (__tmp132011 (lambda () (thread-join! _%thread131572%_))))
          (declare (not safe))
          (__with-catch __tmp132012 __tmp132011))))))
