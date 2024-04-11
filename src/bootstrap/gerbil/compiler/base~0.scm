(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712786279)
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
       (let ((_%verbosity131926131928%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity131926131928%_
             (let* ((_%verbosity131931%_ _%verbosity131926131928%_)
                    (_%$e131933%_ (string->number _%verbosity131931%_)))
               (if _%$e131933%_ _%$e131933%_ _%verbosity131931%_))
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
      (let ((__tmp131988 (list)) (__tmp131987 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp131988
         '(gensyms bindings)
         __tmp131987
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args131924%_
        (apply make-instance gxc#symbol-table::t _%$args131924%_)))
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
      (lambda (_%self131446131909%_)
        (let* ((_%self131912%_ _%self131446131909%_)
               (_%self131914%_ _%self131912%_))
          (if (let ((__tmp131989
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self131914%_))))
                (declare (not safe))
                (##fx< '2 __tmp131989))
              (begin
                (let ((__tmp131990
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131914%_
                   __tmp131990
                   '1
                   '#f
                   '#f))
                (let ((__tmp131991
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131914%_
                   __tmp131991
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp131992
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self131914%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self131914%_
                       '2
                       __tmp131992))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message131778%_ _%stx131779%_ . _%details131780%_)
        (let ((_%ctx131785%_
               (let ((_%$e131782%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e131782%_ _%$e131782%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx131785%_
                 _%message131778%_
                 _%stx131779%_
                 _%details131780%_))))
    (define gxc#verbose
      (lambda _%args131775%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp131993
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args131775%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp131993))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id131757%_)
        (let* ((_%str131759%_
                (if (symbol? _%id131757%_)
                    (symbol->string _%id131757%_)
                    _%id131757%_))
               (_%len131761%_ (string-length _%str131759%_))
               (_%res131763%_
                (let () (declare (not safe)) (##make-string _%len131761%_))))
          (let _%lp131766%_ ((_%i131768%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131768%_ _%len131761%_))
                (let* ((_%char131770%_ (string-ref _%str131759%_ _%i131768%_))
                       (_%xchar131772%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char131770%_))
                            '#\_
                            _%char131770%_)))
                  (string-set! _%res131763%_ _%i131768%_ _%xchar131772%_)
                  (_%lp131766%_
                   (let () (declare (not safe)) (##fx+ _%i131768%_ '1))))
                _%res131763%_)))))
    (define gxc#map*
      (lambda (_%proc131699%_ _%maybe-improper-list131700%_)
        (let _%recur131702%_ ((_%rest131704%_ _%maybe-improper-list131700%_))
          (let* ((_%rest131705131716%_ _%rest131704%_)
                 (_%E131709131720%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest131705131716%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K131712131745%_
                   (lambda (_%rest131742%_ _%hd131743%_)
                     (cons (_%proc131699%_ _%hd131743%_)
                           (_%recur131702%_ _%rest131742%_))))
                  (_%K131711131736%_ (lambda () '()))
                  (_%K131710131726%_
                   (lambda (_%tail131724%_) (_%proc131699%_ _%tail131724%_))))
              (let ((_%try-match131707131739%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest131705131716%_))
                           (_%K131711131736%_)
                           (let ((_%tail131729%_ _%rest131705131716%_))
                             (declare (not safe))
                             (_%proc131699%_ _%tail131729%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest131705131716%_))
                    (let ((_%tl131714131750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest131705131716%_)))
                          (_%hd131713131748%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest131705131716%_))))
                      (let ((_%hd131753%_ _%hd131713131748%_)
                            (_%rest131755%_ _%tl131714131750%_))
                        (_%K131712131745%_ _%rest131755%_ _%hd131753%_)))
                    (_%try-match131707131739%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym131694%_)
        (let ((_%$e131696%_ (not (gxc#gensym-reference? _%sym131694%_))))
          (if _%$e131696%_
              _%$e131696%_
              (memq _%sym131694%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym131690%_)
        (let ((_%str131692%_ (symbol->string _%sym131690%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str131692%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str131692%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id131661%_)
        (let ((_%$e131663%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id131661%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id131661%_))
                   '#f)))
          (if _%$e131663%_
              ((lambda (_%bind131666%_)
                 (let ((_%eid131668%_
                        (##structure-ref _%bind131666%_ '1 gx#binding::t '#f))
                       (_%ht131669%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid131668%_))
                       _%eid131668%_
                       (let ((_%$e131672%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht131669%_ _%eid131668%_))))
                         (if _%$e131672%_
                             _%$e131672%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind131666%_
                                    'gx#local-binding::t))
                                 (let ((_%gid131676%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid131668%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht131669%_
                                      _%eid131668%_
                                      _%gid131676%_))
                                   _%gid131676%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind131666%_
                                        'gx#module-binding::t))
                                     (let ((_%gid131685%_
                                            (let ((_%$e131679%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind131666%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e131679%_
                                                  ((lambda (_%ns131682%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns131682%_
                                                        '"#"
                                                        _%eid131668%_)))
                                                   _%$e131679%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid131668%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht131669%_
                                          _%eid131668%_
                                          _%gid131685%_))
                                       _%gid131685%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id131661%_
                                      _%eid131668%_
                                      _%bind131666%_))))))))
               _%$e131663%_)
              (if (let ((__tmp131994
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id131661%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp131994))
                  (let () (declare (not safe)) (gx#stx-e _%id131661%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id131661%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id131659%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id131659%_))
            (gxc#generate-runtime-binding-id _%id131659%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top131646%_)
        (if _%top131646%_
            (let ((_%ns131648%_
                   (##structure-ref
                    (let ((__tmp131995
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp131995))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi131649%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns131648%_
                  (if (fxpositive? _%phi131649%_)
                      (let ((__tmp131997 (number->string _%phi131649%_))
                            (__tmp131996
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns131648%_
                         '"["
                         __tmp131997
                         '"]#_"
                         __tmp131996
                         '"_"))
                      (let ((__tmp131998
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns131648%_ '"#_" __tmp131998 '"_")))
                  (if (fxpositive? _%phi131649%_)
                      (let ((__tmp132000 (number->string _%phi131649%_))
                            (__tmp131999
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132000
                         '"]#_"
                         __tmp131999
                         '"_"))
                      (let ((__tmp132001
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132001 '"_")))))
            (let ((__tmp132002 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132002 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top131655%_ '#f))
          (gxc#generate-runtime-temporary__% _%top131655%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132004_
        (let ((_g132003_ (let () (declare (not safe)) (##length _g132004_))))
          (cond ((let () (declare (not safe)) (##fx= _g132003_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132004_))
                ((let () (declare (not safe)) (##fx= _g132003_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132004_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym131624%_ _%quote?131625%_)
        (let* ((_%ht131627%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e131629%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht131627%_ _%sym131624%_))))
          (if _%$e131629%_
              _%$e131629%_
              (let ((_%g131633%_
                     (if _%quote?131625%_
                         (let ((__tmp132005
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym131624%_
                            '"__"
                            __tmp132005))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym131624%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht131627%_ _%sym131624%_ _%g131633%_))
                _%g131633%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym131638%_)
        (let ((_%quote?131640%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym131638%_
           _%quote?131640%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132007_
        (let ((_g132006_ (let () (declare (not safe)) (##length _g132007_))))
          (cond ((let () (declare (not safe)) (##fx= _g132006_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132007_))
                ((let () (declare (not safe)) (##fx= _g132006_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132007_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1131616%_ _%id2131617%_)
        (letrec ((_%symbol-e131619%_
                  (lambda (_%id131621%_)
                    (if (symbol? _%id131621%_)
                        _%id131621%_
                        (gxc#generate-runtime-binding-id _%id131621%_)))))
          (eq? (_%symbol-e131619%_ _%id1131616%_)
               (_%symbol-e131619%_ _%id2131617%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx131614%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx131614%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx131614%_)
            (let () (declare (not safe)) (gx#stx-e _%stx131614%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk131599%_ _%name131600%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job131602%_
               (gxc#make-compile-job _%thunk131599%_ _%name131600%_)))
          (set! gxc#__compile-jobs (cons _%job131602%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk131607%_)
        (let ((_%name131609%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk131607%_ _%name131609%_))))
    (define gxc#add-compile-job!
      (lambda _g132009_
        (let ((_g132008_ (let () (declare (not safe)) (##length _g132009_))))
          (cond ((let () (declare (not safe)) (##fx= _g132008_ 1))
                 (apply gxc#add-compile-job!__0 _g132009_))
                ((let () (declare (not safe)) (##fx= _g132008_ 2))
                 (apply gxc#add-compile-job!__% _g132009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132009_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result131596%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result131596%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131590%_ ()
          (let ((_%pending131593%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131593%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131593%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131593%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131579%_ _%name131580%_)
        (make-thread
         (lambda ()
           (let _%loop131583%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132010
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131580%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132010))
                   (let ((__tmp132012 (lambda () (_%thunk131579%_)))
                         (__tmp132011
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132012 __tmp132011)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131583%_)))))
         _%name131580%_)))
    (define gxc#join!
      (lambda (_%thread131574%_)
        (let ((__tmp132014
               (lambda (_%exn131576%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131576%_))
                     (let ((__tmp132015
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131576%_))))
                       (declare (not safe))
                       (raise __tmp132015))
                     (let () (declare (not safe)) (raise _%exn131576%_)))))
              (__tmp132013 (lambda () (thread-join! _%thread131574%_))))
          (declare (not safe))
          (__with-catch __tmp132014 __tmp132013))))))
