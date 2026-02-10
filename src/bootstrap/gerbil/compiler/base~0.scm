(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770752337)
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
       (let ((_%verbosity188764188766%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity188764188766%_
             (let* ((_%verbosity188768%_ _%verbosity188764188766%_)
                    (_%$e188770%_ (string->number _%verbosity188768%_)))
               (if _%$e188770%_ _%$e188770%_ _%verbosity188768%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e188761%_
                  (lambda (_%id188763%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id188763%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e188761%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp188825 (list)) (__tmp188824 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp188825
         '(gensyms bindings)
         __tmp188824
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args188757%_
        (apply make-instance gxc#symbol-table::t _%$args188757%_)))
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
      (lambda (_%self188744%_)
        (let ((_%self188747%_ _%self188744%_))
          (if (let ((__tmp188826
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self188747%_))))
                (declare (not safe))
                (##fx< '2 __tmp188826))
              (begin
                (let ((__tmp188827
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self188747%_
                   __tmp188827
                   '1
                   '#f
                   '#f))
                (let ((__tmp188828
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self188747%_
                   __tmp188828
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp188829
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self188747%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self188747%_
                       '2
                       __tmp188829))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message188613%_ _%stx188614%_ . _%details188615%_)
        (let ((_%ctx188620%_
               (let ((_%$e188617%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e188617%_ _%$e188617%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx188620%_
                 _%message188613%_
                 _%stx188614%_
                 _%details188615%_))))
    (define gxc#verbose
      (lambda _%args188610%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp188830
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args188610%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp188830))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id188592%_)
        (let* ((_%str188594%_
                (if (symbol? _%id188592%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id188592%_))
                    _%id188592%_))
               (_%len188596%_ (string-length _%str188594%_))
               (_%res188598%_
                (let () (declare (not safe)) (##make-string _%len188596%_))))
          (let _%lp188601%_ ((_%i188603%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i188603%_ _%len188596%_))
                (let* ((_%char188605%_ (string-ref _%str188594%_ _%i188603%_))
                       (_%xchar188607%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char188605%_))
                            '#\_
                            _%char188605%_)))
                  (string-set! _%res188598%_ _%i188603%_ _%xchar188607%_)
                  (_%lp188601%_
                   (let () (declare (not safe)) (##fx+ _%i188603%_ '1))))
                _%res188598%_)))))
    (define gxc#map*
      (lambda (_%proc188534%_ _%maybe-improper-list188535%_)
        (let _%recur188537%_ ((_%rest188539%_ _%maybe-improper-list188535%_))
          (let* ((_%rest188540188551%_ _%rest188539%_)
                 (_%E188544188555%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest188540188551%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K188547188580%_
                   (lambda (_%rest188577%_ _%hd188578%_)
                     (cons (_%proc188534%_ _%hd188578%_)
                           (_%recur188537%_ _%rest188577%_))))
                  (_%K188546188571%_ (lambda () '()))
                  (_%K188545188561%_
                   (lambda (_%tail188559%_) (_%proc188534%_ _%tail188559%_))))
              (let ((_%try-match188542188574%_
                     (lambda ()
                       (if (null? _%rest188540188551%_)
                           (_%K188546188571%_)
                           (let ((_%tail188564%_ _%rest188540188551%_))
                             (declare (not safe))
                             (_%proc188534%_ _%tail188564%_))))))
                (if (pair? _%rest188540188551%_)
                    (let ((_%tl188549188585%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest188540188551%_)))
                          (_%hd188548188583%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest188540188551%_))))
                      (let ((_%hd188588%_ _%hd188548188583%_)
                            (_%rest188590%_ _%tl188549188585%_))
                        (_%K188547188580%_ _%rest188590%_ _%hd188588%_)))
                    (_%try-match188542188574%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym188529%_)
        (let ((_%$e188531%_ (not (gxc#gensym-reference? _%sym188529%_))))
          (if _%$e188531%_
              _%$e188531%_
              (memq _%sym188529%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym188525%_)
        (let ((_%str188527%_ (symbol->string _%sym188525%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str188527%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str188527%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id188496%_)
        (let ((_%$e188498%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id188496%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id188496%_))
                   '#f)))
          (if _%$e188498%_
              ((lambda (_%bind188501%_)
                 (let ((_%eid188503%_
                        (##structure-ref _%bind188501%_ '1 gx#binding::t '#f))
                       (_%ht188504%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid188503%_))
                       _%eid188503%_
                       (let ((_%$e188507%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht188504%_ _%eid188503%_))))
                         (if _%$e188507%_
                             _%$e188507%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind188501%_
                                    'gx#local-binding::t))
                                 (let ((_%gid188511%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid188503%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht188504%_
                                      _%eid188503%_
                                      _%gid188511%_))
                                   _%gid188511%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind188501%_
                                        'gx#module-binding::t))
                                     (let ((_%gid188520%_
                                            (let ((_%$e188514%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind188501%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e188514%_
                                                  ((lambda (_%ns188517%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns188517%_
                                                        '"#"
                                                        _%eid188503%_)))
                                                   _%$e188514%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid188503%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht188504%_
                                          _%eid188503%_
                                          _%gid188520%_))
                                       _%gid188520%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id188496%_
                                      _%eid188503%_
                                      _%bind188501%_))))))))
               _%$e188498%_)
              (if (let ((__tmp188831
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id188496%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp188831))
                  (let () (declare (not safe)) (gx#stx-e _%id188496%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id188496%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id188494%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id188494%_))
            (gxc#generate-runtime-binding-id _%id188494%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top188481%_)
        (if _%top188481%_
            (let ((_%ns188483%_
                   (##structure-ref
                    (let ((__tmp188832
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp188832))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi188484%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns188483%_
                  (if (fxpositive? _%phi188484%_)
                      (let ((__tmp188834 (number->string _%phi188484%_))
                            (__tmp188833
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns188483%_
                         '"["
                         __tmp188834
                         '"]#_"
                         __tmp188833
                         '"_"))
                      (let ((__tmp188835
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns188483%_ '"#_" __tmp188835 '"_")))
                  (if (fxpositive? _%phi188484%_)
                      (let ((__tmp188837 (number->string _%phi188484%_))
                            (__tmp188836
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp188837
                         '"]#_"
                         __tmp188836
                         '"_"))
                      (let ((__tmp188838
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp188838 '"_")))))
            (let ((__tmp188839 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp188839 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top188490%_ '#f))
          (gxc#generate-runtime-temporary__% _%top188490%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g188840_
        (let ((_g188841_ (let () (declare (not safe)) (##length _g188840_))))
          (cond ((let () (declare (not safe)) (##fx= _g188841_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g188840_))
                ((let () (declare (not safe)) (##fx= _g188841_ 1))
                 (apply gxc#generate-runtime-temporary__% _g188840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g188840_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym188459%_ _%quote?188460%_)
        (let* ((_%ht188462%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e188464%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht188462%_ _%sym188459%_))))
          (if _%$e188464%_
              _%$e188464%_
              (let ((_%g188468%_
                     (if _%quote?188460%_
                         (let ((__tmp188842
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym188459%_
                            '"__"
                            __tmp188842))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym188459%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht188462%_ _%sym188459%_ _%g188468%_))
                _%g188468%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym188473%_)
        (let ((_%quote?188475%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym188473%_
           _%quote?188475%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g188843_
        (let ((_g188844_ (let () (declare (not safe)) (##length _g188843_))))
          (cond ((let () (declare (not safe)) (##fx= _g188844_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g188843_))
                ((let () (declare (not safe)) (##fx= _g188844_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g188843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g188843_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id188456%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id188456%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key188411%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key188411%_))
            _%key188411%_
            (if (uninterned-symbol? _%key188411%_)
                (gxc#generate-runtime-gensym-reference__0 _%key188411%_)
                (let* ((_%key188415188422%_ _%key188411%_)
                       (_%E188417188426%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key188415188422%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K188418188444%_
                        (lambda (_%mark188429%_ _%eid188430%_)
                          (let ((_%$e188432%_
                                 (##structure-ref
                                  _%mark188429%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e188432%_
                                ((lambda (_%ht188435%_)
                                   (let ((_%$e188437%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht188435%_
                                             _%eid188430%_))))
                                     (if _%$e188437%_
                                         ((lambda (_%id188440%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id188440%_))
                                                _%id188440%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id188440%_)))
                                          _%$e188437%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid188430%_))))
                                 _%$e188432%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid188430%_))))))
                  (if (pair? _%key188415188422%_)
                      (let ((_%hd188419188447%_
                             (let ()
                               (declare (not safe))
                               (##car _%key188415188422%_)))
                            (_%tl188420188449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key188415188422%_))))
                        (let* ((_%eid188452%_ _%hd188419188447%_)
                               (_%mark188454%_ _%tl188420188449%_))
                          (_%K188418188444%_ _%mark188454%_ _%eid188452%_)))
                      (_%E188417188426%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1188404%_ _%id2188405%_)
        (letrec ((_%symbol-e188407%_
                  (lambda (_%id188409%_)
                    (if (symbol? _%id188409%_)
                        _%id188409%_
                        (gxc#generate-runtime-binding-id _%id188409%_)))))
          (eq? (_%symbol-e188407%_ _%id1188404%_)
               (_%symbol-e188407%_ _%id2188405%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx188402%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx188402%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx188402%_)
            (let () (declare (not safe)) (gx#stx-e _%stx188402%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id188324%_)
        (let* ((_%bind188326%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id188324%_)))
               (_%runtime-props188355%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind188326%_
                       'gx#runtime-binding::t))
                    (let* ((_%props188335%_
                            (let ((_%$e188329%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind188326%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e188329%_
                                  ((lambda (_%macro-id188332%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id188332%_)
                                                 '())))
                                   _%$e188329%_)
                                  '())))
                           (_%props188351%_
                            (let ((_%$e188337%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind188326%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e188337%_
                                  ((lambda (_%type188340%_)
                                     (let ((_%$e188342%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type188340%_
                                               ':repr))))
                                       (if _%$e188342%_
                                           ((lambda (_%method188345%_)
                                              (let ((_%repr188347%_
                                                     (_%method188345%_
                                                      _%type188340%_)))
                                                (cons 'type:
                                                      (cons _%repr188347%_
                                                            _%props188335%_))))
                                            _%$e188342%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id188324%_
                                            _%type188340%_))))
                                   _%$e188337%_)
                                  _%props188335%_))))
                      _%props188351%_)
                    '()))
               (_%$e188358%_
                (##structure-ref _%bind188326%_ '4 gx#binding::t '#f)))
          (if _%$e188358%_
              ((lambda (_%props188361%_)
                 (let ((__tmp188845
                        (lambda (_%prop188363%_ _%props188364%_)
                          (let* ((_%prop188365188372%_ _%prop188363%_)
                                 (_%E188367188375%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop188365188372%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K188368188389%_
                                  (lambda (_%value188378%_ _%key188379%_)
                                    (let ((_%$e188381%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value188378%_
                                              ':repr))))
                                      (if _%$e188381%_
                                          ((lambda (_%method188384%_)
                                             (let ((_%repr188386%_
                                                    (_%method188384%_
                                                     _%value188378%_)))
                                               (cons _%key188379%_
                                                     (cons _%repr188386%_
                                                           _%props188364%_))))
                                           _%$e188381%_)
                                          (cons _%key188379%_
                                                (cons (cons 'quote
                                                            (cons _%value188378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props188364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop188365188372%_)
                                (let ((_%hd188369188392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop188365188372%_)))
                                      (_%tl188370188394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop188365188372%_))))
                                  (let* ((_%key188397%_ _%hd188369188392%_)
                                         (_%value188399%_ _%tl188370188394%_))
                                    (_%K188368188389%_
                                     _%value188399%_
                                     _%key188397%_)))
                                (_%E188367188375%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp188845
                    _%runtime-props188355%_
                    _%props188361%_)))
               _%$e188358%_)
              _%runtime-props188355%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk188309%_ _%name188310%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job188312%_
               (gxc#make-compile-job _%thunk188309%_ _%name188310%_)))
          (set! gxc#__compile-jobs (cons _%job188312%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk188317%_)
        (let ((_%name188319%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk188317%_ _%name188319%_))))
    (define gxc#add-compile-job!
      (lambda _g188846_
        (let ((_g188847_ (let () (declare (not safe)) (##length _g188846_))))
          (cond ((let () (declare (not safe)) (##fx= _g188847_ 1))
                 (apply gxc#add-compile-job!__0 _g188846_))
                ((let () (declare (not safe)) (##fx= _g188847_ 2))
                 (apply gxc#add-compile-job!__% _g188846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g188846_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result188306%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result188306%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop188300%_ ()
          (let ((_%pending188303%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending188303%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending188303%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending188303%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk188289%_ _%name188290%_)
        (make-thread
         (lambda ()
           (let _%loop188293%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp188848
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name188290%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp188848))
                   (let ((__tmp188850 (lambda () (_%thunk188289%_)))
                         (__tmp188849
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp188850 __tmp188849)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop188293%_)))))
         _%name188290%_)))
    (define gxc#join!
      (lambda (_%thread188284%_)
        (let ((__tmp188852
               (lambda (_%exn188286%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn188286%_))
                     (let ((__tmp188853
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn188286%_))))
                       (declare (not safe))
                       (raise __tmp188853))
                     (let () (declare (not safe)) (raise _%exn188286%_)))))
              (__tmp188851 (lambda () (thread-join! _%thread188284%_))))
          (declare (not safe))
          (__with-catch __tmp188852 __tmp188851))))))
