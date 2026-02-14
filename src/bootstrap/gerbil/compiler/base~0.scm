(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771101403)
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
       (let ((_%verbosity191085191087%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity191085191087%_
             (let* ((_%verbosity191089%_ _%verbosity191085191087%_)
                    (_%$e191091%_ (string->number _%verbosity191089%_)))
               (if _%$e191091%_ _%$e191091%_ _%verbosity191089%_))
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
        (letrec ((_%hash-e191082%_
                  (lambda (_%id191084%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id191084%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e191082%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp191146 (list)) (__tmp191145 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp191146
         '(gensyms bindings)
         __tmp191145
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args191078%_
        (apply make-instance gxc#symbol-table::t _%$args191078%_)))
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
      (lambda (_%self191065%_)
        (let ((_%self191068%_ _%self191065%_))
          (if (let ((__tmp191147
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191068%_))))
                (declare (not safe))
                (##fx< '2 __tmp191147))
              (begin
                (let ((__tmp191148
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191068%_
                   __tmp191148
                   '1
                   '#f
                   '#f))
                (let ((__tmp191149
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191068%_
                   __tmp191149
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp191150
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191068%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191068%_
                       '2
                       __tmp191150))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message190934%_ _%stx190935%_ . _%details190936%_)
        (let ((_%ctx190941%_
               (let ((_%$e190938%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e190938%_ _%$e190938%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx190941%_
                 _%message190934%_
                 _%stx190935%_
                 _%details190936%_))))
    (define gxc#verbose
      (lambda _%args190931%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp191151
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args190931%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp191151))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id190913%_)
        (let* ((_%str190915%_
                (if (symbol? _%id190913%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id190913%_))
                    _%id190913%_))
               (_%len190917%_ (string-length _%str190915%_))
               (_%res190919%_
                (let () (declare (not safe)) (##make-string _%len190917%_))))
          (let _%lp190922%_ ((_%i190924%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i190924%_ _%len190917%_))
                (let* ((_%char190926%_ (string-ref _%str190915%_ _%i190924%_))
                       (_%xchar190928%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char190926%_))
                            '#\_
                            _%char190926%_)))
                  (string-set! _%res190919%_ _%i190924%_ _%xchar190928%_)
                  (_%lp190922%_
                   (let () (declare (not safe)) (##fx+ _%i190924%_ '1))))
                _%res190919%_)))))
    (define gxc#map*
      (lambda (_%proc190855%_ _%maybe-improper-list190856%_)
        (let _%recur190858%_ ((_%rest190860%_ _%maybe-improper-list190856%_))
          (let* ((_%rest190861190872%_ _%rest190860%_)
                 (_%E190865190876%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest190861190872%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K190868190901%_
                   (lambda (_%rest190898%_ _%hd190899%_)
                     (cons (_%proc190855%_ _%hd190899%_)
                           (_%recur190858%_ _%rest190898%_))))
                  (_%K190867190892%_ (lambda () '()))
                  (_%K190866190882%_
                   (lambda (_%tail190880%_) (_%proc190855%_ _%tail190880%_))))
              (let ((_%try-match190863190895%_
                     (lambda ()
                       (if (null? _%rest190861190872%_)
                           (_%K190867190892%_)
                           (let ((_%tail190885%_ _%rest190861190872%_))
                             (declare (not safe))
                             (_%proc190855%_ _%tail190885%_))))))
                (if (pair? _%rest190861190872%_)
                    (let ((_%tl190870190906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest190861190872%_)))
                          (_%hd190869190904%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest190861190872%_))))
                      (let ((_%hd190909%_ _%hd190869190904%_)
                            (_%rest190911%_ _%tl190870190906%_))
                        (_%K190868190901%_ _%rest190911%_ _%hd190909%_)))
                    (_%try-match190863190895%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym190850%_)
        (let ((_%$e190852%_ (not (gxc#gensym-reference? _%sym190850%_))))
          (if _%$e190852%_
              _%$e190852%_
              (memq _%sym190850%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym190846%_)
        (let ((_%str190848%_ (symbol->string _%sym190846%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str190848%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str190848%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id190817%_)
        (let ((_%$e190819%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id190817%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id190817%_))
                   '#f)))
          (if _%$e190819%_
              ((lambda (_%bind190822%_)
                 (let ((_%eid190824%_
                        (##structure-ref _%bind190822%_ '1 gx#binding::t '#f))
                       (_%ht190825%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid190824%_))
                       _%eid190824%_
                       (let ((_%$e190828%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht190825%_ _%eid190824%_))))
                         (if _%$e190828%_
                             _%$e190828%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind190822%_
                                    'gx#local-binding::t))
                                 (let ((_%gid190832%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid190824%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht190825%_
                                      _%eid190824%_
                                      _%gid190832%_))
                                   _%gid190832%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind190822%_
                                        'gx#module-binding::t))
                                     (let ((_%gid190841%_
                                            (let ((_%$e190835%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind190822%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e190835%_
                                                  ((lambda (_%ns190838%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns190838%_
                                                        '"#"
                                                        _%eid190824%_)))
                                                   _%$e190835%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid190824%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht190825%_
                                          _%eid190824%_
                                          _%gid190841%_))
                                       _%gid190841%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id190817%_
                                      _%eid190824%_
                                      _%bind190822%_))))))))
               _%$e190819%_)
              (if (let ((__tmp191152
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id190817%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp191152))
                  (let () (declare (not safe)) (gx#stx-e _%id190817%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id190817%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id190815%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id190815%_))
            (gxc#generate-runtime-binding-id _%id190815%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top190802%_)
        (if _%top190802%_
            (let ((_%ns190804%_
                   (##structure-ref
                    (let ((__tmp191153
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp191153))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi190805%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns190804%_
                  (if (fxpositive? _%phi190805%_)
                      (let ((__tmp191155 (number->string _%phi190805%_))
                            (__tmp191154
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns190804%_
                         '"["
                         __tmp191155
                         '"]#_"
                         __tmp191154
                         '"_"))
                      (let ((__tmp191156
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns190804%_ '"#_" __tmp191156 '"_")))
                  (if (fxpositive? _%phi190805%_)
                      (let ((__tmp191158 (number->string _%phi190805%_))
                            (__tmp191157
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp191158
                         '"]#_"
                         __tmp191157
                         '"_"))
                      (let ((__tmp191159
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp191159 '"_")))))
            (let ((__tmp191160 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp191160 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top190811%_ '#f))
          (gxc#generate-runtime-temporary__% _%top190811%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g191161_
        (let ((_g191162_ (let () (declare (not safe)) (##length _g191161_))))
          (cond ((let () (declare (not safe)) (##fx= _g191162_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g191161_))
                ((let () (declare (not safe)) (##fx= _g191162_ 1))
                 (apply gxc#generate-runtime-temporary__% _g191161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g191161_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym190780%_ _%quote?190781%_)
        (let* ((_%ht190783%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e190785%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht190783%_ _%sym190780%_))))
          (if _%$e190785%_
              _%$e190785%_
              (let ((_%g190789%_
                     (if _%quote?190781%_
                         (let ((__tmp191163
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym190780%_
                            '"__"
                            __tmp191163))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym190780%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht190783%_ _%sym190780%_ _%g190789%_))
                _%g190789%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym190794%_)
        (let ((_%quote?190796%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym190794%_
           _%quote?190796%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g191164_
        (let ((_g191165_ (let () (declare (not safe)) (##length _g191164_))))
          (cond ((let () (declare (not safe)) (##fx= _g191165_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g191164_))
                ((let () (declare (not safe)) (##fx= _g191165_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g191164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g191164_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id190777%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id190777%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key190732%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key190732%_))
            _%key190732%_
            (if (uninterned-symbol? _%key190732%_)
                (gxc#generate-runtime-gensym-reference__0 _%key190732%_)
                (let* ((_%key190736190743%_ _%key190732%_)
                       (_%E190738190747%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key190736190743%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K190739190765%_
                        (lambda (_%mark190750%_ _%eid190751%_)
                          (let ((_%$e190753%_
                                 (##structure-ref
                                  _%mark190750%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e190753%_
                                ((lambda (_%ht190756%_)
                                   (let ((_%$e190758%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht190756%_
                                             _%eid190751%_))))
                                     (if _%$e190758%_
                                         ((lambda (_%id190761%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id190761%_))
                                                _%id190761%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id190761%_)))
                                          _%$e190758%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid190751%_))))
                                 _%$e190753%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid190751%_))))))
                  (if (pair? _%key190736190743%_)
                      (let ((_%hd190740190768%_
                             (let ()
                               (declare (not safe))
                               (##car _%key190736190743%_)))
                            (_%tl190741190770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key190736190743%_))))
                        (let* ((_%eid190773%_ _%hd190740190768%_)
                               (_%mark190775%_ _%tl190741190770%_))
                          (_%K190739190765%_ _%mark190775%_ _%eid190773%_)))
                      (_%E190738190747%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1190725%_ _%id2190726%_)
        (letrec ((_%symbol-e190728%_
                  (lambda (_%id190730%_)
                    (if (symbol? _%id190730%_)
                        _%id190730%_
                        (gxc#generate-runtime-binding-id _%id190730%_)))))
          (eq? (_%symbol-e190728%_ _%id1190725%_)
               (_%symbol-e190728%_ _%id2190726%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx190723%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx190723%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx190723%_)
            (let () (declare (not safe)) (gx#stx-e _%stx190723%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id190645%_)
        (let* ((_%bind190647%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id190645%_)))
               (_%runtime-props190676%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind190647%_
                       'gx#runtime-binding::t))
                    (let* ((_%props190656%_
                            (let ((_%$e190650%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190647%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e190650%_
                                  ((lambda (_%macro-id190653%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id190653%_)
                                                 '())))
                                   _%$e190650%_)
                                  '())))
                           (_%props190672%_
                            (let ((_%$e190658%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190647%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e190658%_
                                  ((lambda (_%type190661%_)
                                     (let ((_%$e190663%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type190661%_
                                               ':repr))))
                                       (if _%$e190663%_
                                           ((lambda (_%method190666%_)
                                              (let ((_%repr190668%_
                                                     (_%method190666%_
                                                      _%type190661%_)))
                                                (cons 'type:
                                                      (cons _%repr190668%_
                                                            _%props190656%_))))
                                            _%$e190663%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id190645%_
                                            _%type190661%_))))
                                   _%$e190658%_)
                                  _%props190656%_))))
                      _%props190672%_)
                    '()))
               (_%$e190679%_
                (##structure-ref _%bind190647%_ '4 gx#binding::t '#f)))
          (if _%$e190679%_
              ((lambda (_%props190682%_)
                 (let ((__tmp191166
                        (lambda (_%prop190684%_ _%props190685%_)
                          (let* ((_%prop190686190693%_ _%prop190684%_)
                                 (_%E190688190696%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop190686190693%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K190689190710%_
                                  (lambda (_%value190699%_ _%key190700%_)
                                    (let ((_%$e190702%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value190699%_
                                              ':repr))))
                                      (if _%$e190702%_
                                          ((lambda (_%method190705%_)
                                             (let ((_%repr190707%_
                                                    (_%method190705%_
                                                     _%value190699%_)))
                                               (cons _%key190700%_
                                                     (cons _%repr190707%_
                                                           _%props190685%_))))
                                           _%$e190702%_)
                                          (cons _%key190700%_
                                                (cons (cons 'quote
                                                            (cons _%value190699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props190685%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop190686190693%_)
                                (let ((_%hd190690190713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop190686190693%_)))
                                      (_%tl190691190715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop190686190693%_))))
                                  (let* ((_%key190718%_ _%hd190690190713%_)
                                         (_%value190720%_ _%tl190691190715%_))
                                    (_%K190689190710%_
                                     _%value190720%_
                                     _%key190718%_)))
                                (_%E190688190696%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp191166
                    _%runtime-props190676%_
                    _%props190682%_)))
               _%$e190679%_)
              _%runtime-props190676%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk190630%_ _%name190631%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job190633%_
               (gxc#make-compile-job _%thunk190630%_ _%name190631%_)))
          (set! gxc#__compile-jobs (cons _%job190633%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk190638%_)
        (let ((_%name190640%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk190638%_ _%name190640%_))))
    (define gxc#add-compile-job!
      (lambda _g191167_
        (let ((_g191168_ (let () (declare (not safe)) (##length _g191167_))))
          (cond ((let () (declare (not safe)) (##fx= _g191168_ 1))
                 (apply gxc#add-compile-job!__0 _g191167_))
                ((let () (declare (not safe)) (##fx= _g191168_ 2))
                 (apply gxc#add-compile-job!__% _g191167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g191167_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result190627%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result190627%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop190621%_ ()
          (let ((_%pending190624%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending190624%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending190624%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending190624%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk190610%_ _%name190611%_)
        (make-thread
         (lambda ()
           (let _%loop190614%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp191169
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name190611%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp191169))
                   (let ((__tmp191171 (lambda () (_%thunk190610%_)))
                         (__tmp191170
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp191171 __tmp191170)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop190614%_)))))
         _%name190611%_)))
    (define gxc#join!
      (lambda (_%thread190605%_)
        (let ((__tmp191173
               (lambda (_%exn190607%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn190607%_))
                     (let ((__tmp191174
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn190607%_))))
                       (declare (not safe))
                       (raise __tmp191174))
                     (let () (declare (not safe)) (raise _%exn190607%_)))))
              (__tmp191172 (lambda () (thread-join! _%thread190605%_))))
          (declare (not safe))
          (__with-catch __tmp191173 __tmp191172))))))
