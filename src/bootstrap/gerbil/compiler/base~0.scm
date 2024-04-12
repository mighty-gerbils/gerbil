(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712944163)
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
       (let ((_%verbosity131927131929%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity131927131929%_
             (let* ((_%verbosity131932%_ _%verbosity131927131929%_)
                    (_%$e131934%_ (string->number _%verbosity131932%_)))
               (if _%$e131934%_ _%$e131934%_ _%verbosity131932%_))
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
      (let ((__tmp131989 (list)) (__tmp131988 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp131989
         '(gensyms bindings)
         __tmp131988
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args131925%_
        (apply make-instance gxc#symbol-table::t _%$args131925%_)))
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
      (lambda (_%self131447131910%_)
        (let* ((_%self131913%_ _%self131447131910%_)
               (_%self131915%_ _%self131913%_))
          (if (let ((__tmp131990
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self131915%_))))
                (declare (not safe))
                (##fx< '2 __tmp131990))
              (begin
                (let ((__tmp131991
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131915%_
                   __tmp131991
                   '1
                   '#f
                   '#f))
                (let ((__tmp131992
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131915%_
                   __tmp131992
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp131993
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self131915%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self131915%_
                       '2
                       __tmp131993))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message131779%_ _%stx131780%_ . _%details131781%_)
        (let ((_%ctx131786%_
               (let ((_%$e131783%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e131783%_ _%$e131783%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx131786%_
                 _%message131779%_
                 _%stx131780%_
                 _%details131781%_))))
    (define gxc#verbose
      (lambda _%args131776%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp131994
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args131776%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp131994))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id131758%_)
        (let* ((_%str131760%_
                (if (symbol? _%id131758%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id131758%_))
                    _%id131758%_))
               (_%len131762%_ (string-length _%str131760%_))
               (_%res131764%_
                (let () (declare (not safe)) (##make-string _%len131762%_))))
          (let _%lp131767%_ ((_%i131769%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131769%_ _%len131762%_))
                (let* ((_%char131771%_ (string-ref _%str131760%_ _%i131769%_))
                       (_%xchar131773%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char131771%_))
                            '#\_
                            _%char131771%_)))
                  (string-set! _%res131764%_ _%i131769%_ _%xchar131773%_)
                  (_%lp131767%_
                   (let () (declare (not safe)) (##fx+ _%i131769%_ '1))))
                _%res131764%_)))))
    (define gxc#map*
      (lambda (_%proc131700%_ _%maybe-improper-list131701%_)
        (let _%recur131703%_ ((_%rest131705%_ _%maybe-improper-list131701%_))
          (let* ((_%rest131706131717%_ _%rest131705%_)
                 (_%E131710131721%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest131706131717%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K131713131746%_
                   (lambda (_%rest131743%_ _%hd131744%_)
                     (cons (_%proc131700%_ _%hd131744%_)
                           (_%recur131703%_ _%rest131743%_))))
                  (_%K131712131737%_ (lambda () '()))
                  (_%K131711131727%_
                   (lambda (_%tail131725%_) (_%proc131700%_ _%tail131725%_))))
              (let ((_%try-match131708131740%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest131706131717%_))
                           (_%K131712131737%_)
                           (let ((_%tail131730%_ _%rest131706131717%_))
                             (declare (not safe))
                             (_%proc131700%_ _%tail131730%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest131706131717%_))
                    (let ((_%tl131715131751%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest131706131717%_)))
                          (_%hd131714131749%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest131706131717%_))))
                      (let ((_%hd131754%_ _%hd131714131749%_)
                            (_%rest131756%_ _%tl131715131751%_))
                        (_%K131713131746%_ _%rest131756%_ _%hd131754%_)))
                    (_%try-match131708131740%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym131695%_)
        (let ((_%$e131697%_ (not (gxc#gensym-reference? _%sym131695%_))))
          (if _%$e131697%_
              _%$e131697%_
              (memq _%sym131695%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym131691%_)
        (let ((_%str131693%_ (symbol->string _%sym131691%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str131693%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str131693%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id131662%_)
        (let ((_%$e131664%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id131662%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id131662%_))
                   '#f)))
          (if _%$e131664%_
              ((lambda (_%bind131667%_)
                 (let ((_%eid131669%_
                        (##structure-ref _%bind131667%_ '1 gx#binding::t '#f))
                       (_%ht131670%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid131669%_))
                       _%eid131669%_
                       (let ((_%$e131673%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht131670%_ _%eid131669%_))))
                         (if _%$e131673%_
                             _%$e131673%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind131667%_
                                    'gx#local-binding::t))
                                 (let ((_%gid131677%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid131669%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht131670%_
                                      _%eid131669%_
                                      _%gid131677%_))
                                   _%gid131677%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind131667%_
                                        'gx#module-binding::t))
                                     (let ((_%gid131686%_
                                            (let ((_%$e131680%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind131667%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e131680%_
                                                  ((lambda (_%ns131683%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns131683%_
                                                        '"#"
                                                        _%eid131669%_)))
                                                   _%$e131680%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid131669%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht131670%_
                                          _%eid131669%_
                                          _%gid131686%_))
                                       _%gid131686%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id131662%_
                                      _%eid131669%_
                                      _%bind131667%_))))))))
               _%$e131664%_)
              (if (let ((__tmp131995
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id131662%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp131995))
                  (let () (declare (not safe)) (gx#stx-e _%id131662%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id131662%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id131660%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id131660%_))
            (gxc#generate-runtime-binding-id _%id131660%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top131647%_)
        (if _%top131647%_
            (let ((_%ns131649%_
                   (##structure-ref
                    (let ((__tmp131996
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp131996))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi131650%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns131649%_
                  (if (fxpositive? _%phi131650%_)
                      (let ((__tmp131998 (number->string _%phi131650%_))
                            (__tmp131997
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns131649%_
                         '"["
                         __tmp131998
                         '"]#_"
                         __tmp131997
                         '"_"))
                      (let ((__tmp131999
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns131649%_ '"#_" __tmp131999 '"_")))
                  (if (fxpositive? _%phi131650%_)
                      (let ((__tmp132001 (number->string _%phi131650%_))
                            (__tmp132000
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132001
                         '"]#_"
                         __tmp132000
                         '"_"))
                      (let ((__tmp132002
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132002 '"_")))))
            (let ((__tmp132003 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132003 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top131656%_ '#f))
          (gxc#generate-runtime-temporary__% _%top131656%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132005_
        (let ((_g132004_ (let () (declare (not safe)) (##length _g132005_))))
          (cond ((let () (declare (not safe)) (##fx= _g132004_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132005_))
                ((let () (declare (not safe)) (##fx= _g132004_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132005_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym131625%_ _%quote?131626%_)
        (let* ((_%ht131628%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e131630%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht131628%_ _%sym131625%_))))
          (if _%$e131630%_
              _%$e131630%_
              (let ((_%g131634%_
                     (if _%quote?131626%_
                         (let ((__tmp132006
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym131625%_
                            '"__"
                            __tmp132006))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym131625%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht131628%_ _%sym131625%_ _%g131634%_))
                _%g131634%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym131639%_)
        (let ((_%quote?131641%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym131639%_
           _%quote?131641%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132008_
        (let ((_g132007_ (let () (declare (not safe)) (##length _g132008_))))
          (cond ((let () (declare (not safe)) (##fx= _g132007_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132008_))
                ((let () (declare (not safe)) (##fx= _g132007_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132008_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1131617%_ _%id2131618%_)
        (letrec ((_%symbol-e131620%_
                  (lambda (_%id131622%_)
                    (if (symbol? _%id131622%_)
                        _%id131622%_
                        (gxc#generate-runtime-binding-id _%id131622%_)))))
          (eq? (_%symbol-e131620%_ _%id1131617%_)
               (_%symbol-e131620%_ _%id2131618%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx131615%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx131615%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx131615%_)
            (let () (declare (not safe)) (gx#stx-e _%stx131615%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk131600%_ _%name131601%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job131603%_
               (gxc#make-compile-job _%thunk131600%_ _%name131601%_)))
          (set! gxc#__compile-jobs (cons _%job131603%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk131608%_)
        (let ((_%name131610%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk131608%_ _%name131610%_))))
    (define gxc#add-compile-job!
      (lambda _g132010_
        (let ((_g132009_ (let () (declare (not safe)) (##length _g132010_))))
          (cond ((let () (declare (not safe)) (##fx= _g132009_ 1))
                 (apply gxc#add-compile-job!__0 _g132010_))
                ((let () (declare (not safe)) (##fx= _g132009_ 2))
                 (apply gxc#add-compile-job!__% _g132010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132010_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result131597%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result131597%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131591%_ ()
          (let ((_%pending131594%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131594%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131594%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131594%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131580%_ _%name131581%_)
        (make-thread
         (lambda ()
           (let _%loop131584%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132011
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131581%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132011))
                   (let ((__tmp132013 (lambda () (_%thunk131580%_)))
                         (__tmp132012
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132013 __tmp132012)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131584%_)))))
         _%name131581%_)))
    (define gxc#join!
      (lambda (_%thread131575%_)
        (let ((__tmp132015
               (lambda (_%exn131577%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131577%_))
                     (let ((__tmp132016
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131577%_))))
                       (declare (not safe))
                       (raise __tmp132016))
                     (let () (declare (not safe)) (raise _%exn131577%_)))))
              (__tmp132014 (lambda () (thread-join! _%thread131575%_))))
          (declare (not safe))
          (__with-catch __tmp132015 __tmp132014))))))
