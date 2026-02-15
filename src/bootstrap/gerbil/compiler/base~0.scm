(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771178565)
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
       (let ((_%verbosity191138191140%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity191138191140%_
             (let* ((_%verbosity191142%_ _%verbosity191138191140%_)
                    (_%$e191144%_ (string->number _%verbosity191142%_)))
               (if _%$e191144%_ _%$e191144%_ _%verbosity191142%_))
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
        (letrec ((_%hash-e191135%_
                  (lambda (_%id191137%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id191137%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e191135%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp191199 (list)) (__tmp191198 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp191199
         '(gensyms bindings)
         __tmp191198
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args191131%_
        (apply make-instance gxc#symbol-table::t _%$args191131%_)))
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
      (lambda (_%self191118%_)
        (let ((_%self191121%_ _%self191118%_))
          (if (let ((__tmp191200
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191121%_))))
                (declare (not safe))
                (##fx< '2 __tmp191200))
              (begin
                (let ((__tmp191201
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191121%_
                   __tmp191201
                   '1
                   '#f
                   '#f))
                (let ((__tmp191202
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191121%_
                   __tmp191202
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp191203
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191121%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191121%_
                       '2
                       __tmp191203))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message190987%_ _%stx190988%_ . _%details190989%_)
        (let ((_%ctx190994%_
               (let ((_%$e190991%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e190991%_ _%$e190991%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx190994%_
                 _%message190987%_
                 _%stx190988%_
                 _%details190989%_))))
    (define gxc#verbose
      (lambda _%args190984%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp191204
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args190984%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp191204))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id190966%_)
        (let* ((_%str190968%_
                (if (symbol? _%id190966%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id190966%_))
                    _%id190966%_))
               (_%len190970%_ (string-length _%str190968%_))
               (_%res190972%_
                (let () (declare (not safe)) (##make-string _%len190970%_))))
          (let _%lp190975%_ ((_%i190977%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i190977%_ _%len190970%_))
                (let* ((_%char190979%_ (string-ref _%str190968%_ _%i190977%_))
                       (_%xchar190981%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char190979%_))
                            '#\_
                            _%char190979%_)))
                  (string-set! _%res190972%_ _%i190977%_ _%xchar190981%_)
                  (_%lp190975%_
                   (let () (declare (not safe)) (##fx+ _%i190977%_ '1))))
                _%res190972%_)))))
    (define gxc#map*
      (lambda (_%proc190908%_ _%maybe-improper-list190909%_)
        (let _%recur190911%_ ((_%rest190913%_ _%maybe-improper-list190909%_))
          (let* ((_%rest190914190925%_ _%rest190913%_)
                 (_%E190918190929%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest190914190925%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K190921190954%_
                   (lambda (_%rest190951%_ _%hd190952%_)
                     (cons (_%proc190908%_ _%hd190952%_)
                           (_%recur190911%_ _%rest190951%_))))
                  (_%K190920190945%_ (lambda () '()))
                  (_%K190919190935%_
                   (lambda (_%tail190933%_) (_%proc190908%_ _%tail190933%_))))
              (let ((_%try-match190916190948%_
                     (lambda ()
                       (if (null? _%rest190914190925%_)
                           (_%K190920190945%_)
                           (let ((_%tail190938%_ _%rest190914190925%_))
                             (declare (not safe))
                             (_%proc190908%_ _%tail190938%_))))))
                (if (pair? _%rest190914190925%_)
                    (let ((_%tl190923190959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest190914190925%_)))
                          (_%hd190922190957%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest190914190925%_))))
                      (let ((_%hd190962%_ _%hd190922190957%_)
                            (_%rest190964%_ _%tl190923190959%_))
                        (_%K190921190954%_ _%rest190964%_ _%hd190962%_)))
                    (_%try-match190916190948%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym190903%_)
        (let ((_%$e190905%_ (not (gxc#gensym-reference? _%sym190903%_))))
          (if _%$e190905%_
              _%$e190905%_
              (memq _%sym190903%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym190899%_)
        (let ((_%str190901%_ (symbol->string _%sym190899%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str190901%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str190901%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id190870%_)
        (let ((_%$e190872%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id190870%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id190870%_))
                   '#f)))
          (if _%$e190872%_
              ((lambda (_%bind190875%_)
                 (let ((_%eid190877%_
                        (##structure-ref _%bind190875%_ '1 gx#binding::t '#f))
                       (_%ht190878%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid190877%_))
                       _%eid190877%_
                       (let ((_%$e190881%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht190878%_ _%eid190877%_))))
                         (if _%$e190881%_
                             _%$e190881%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind190875%_
                                    'gx#local-binding::t))
                                 (let ((_%gid190885%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid190877%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht190878%_
                                      _%eid190877%_
                                      _%gid190885%_))
                                   _%gid190885%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind190875%_
                                        'gx#module-binding::t))
                                     (let ((_%gid190894%_
                                            (let ((_%$e190888%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind190875%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e190888%_
                                                  ((lambda (_%ns190891%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns190891%_
                                                        '"#"
                                                        _%eid190877%_)))
                                                   _%$e190888%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid190877%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht190878%_
                                          _%eid190877%_
                                          _%gid190894%_))
                                       _%gid190894%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id190870%_
                                      _%eid190877%_
                                      _%bind190875%_))))))))
               _%$e190872%_)
              (if (let ((__tmp191205
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id190870%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp191205))
                  (let () (declare (not safe)) (gx#stx-e _%id190870%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id190870%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id190868%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id190868%_))
            (gxc#generate-runtime-binding-id _%id190868%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top190855%_)
        (if _%top190855%_
            (let ((_%ns190857%_
                   (##structure-ref
                    (let ((__tmp191206
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp191206))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi190858%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns190857%_
                  (if (fxpositive? _%phi190858%_)
                      (let ((__tmp191208 (number->string _%phi190858%_))
                            (__tmp191207
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns190857%_
                         '"["
                         __tmp191208
                         '"]#_"
                         __tmp191207
                         '"_"))
                      (let ((__tmp191209
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns190857%_ '"#_" __tmp191209 '"_")))
                  (if (fxpositive? _%phi190858%_)
                      (let ((__tmp191211 (number->string _%phi190858%_))
                            (__tmp191210
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp191211
                         '"]#_"
                         __tmp191210
                         '"_"))
                      (let ((__tmp191212
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp191212 '"_")))))
            (let ((__tmp191213 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp191213 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top190864%_ '#f))
          (gxc#generate-runtime-temporary__% _%top190864%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g191214_
        (let ((_g191215_ (let () (declare (not safe)) (##length _g191214_))))
          (cond ((let () (declare (not safe)) (##fx= _g191215_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g191214_))
                ((let () (declare (not safe)) (##fx= _g191215_ 1))
                 (apply gxc#generate-runtime-temporary__% _g191214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g191214_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym190833%_ _%quote?190834%_)
        (let* ((_%ht190836%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e190838%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht190836%_ _%sym190833%_))))
          (if _%$e190838%_
              _%$e190838%_
              (let ((_%g190842%_
                     (if _%quote?190834%_
                         (let ((__tmp191216
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym190833%_
                            '"__"
                            __tmp191216))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym190833%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht190836%_ _%sym190833%_ _%g190842%_))
                _%g190842%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym190847%_)
        (let ((_%quote?190849%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym190847%_
           _%quote?190849%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g191217_
        (let ((_g191218_ (let () (declare (not safe)) (##length _g191217_))))
          (cond ((let () (declare (not safe)) (##fx= _g191218_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g191217_))
                ((let () (declare (not safe)) (##fx= _g191218_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g191217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g191217_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id190830%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id190830%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key190785%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key190785%_))
            _%key190785%_
            (if (uninterned-symbol? _%key190785%_)
                (gxc#generate-runtime-gensym-reference__0 _%key190785%_)
                (let* ((_%key190789190796%_ _%key190785%_)
                       (_%E190791190800%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key190789190796%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K190792190818%_
                        (lambda (_%mark190803%_ _%eid190804%_)
                          (let ((_%$e190806%_
                                 (##structure-ref
                                  _%mark190803%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e190806%_
                                ((lambda (_%ht190809%_)
                                   (let ((_%$e190811%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht190809%_
                                             _%eid190804%_))))
                                     (if _%$e190811%_
                                         ((lambda (_%id190814%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id190814%_))
                                                _%id190814%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id190814%_)))
                                          _%$e190811%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid190804%_))))
                                 _%$e190806%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid190804%_))))))
                  (if (pair? _%key190789190796%_)
                      (let ((_%hd190793190821%_
                             (let ()
                               (declare (not safe))
                               (##car _%key190789190796%_)))
                            (_%tl190794190823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key190789190796%_))))
                        (let* ((_%eid190826%_ _%hd190793190821%_)
                               (_%mark190828%_ _%tl190794190823%_))
                          (_%K190792190818%_ _%mark190828%_ _%eid190826%_)))
                      (_%E190791190800%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1190778%_ _%id2190779%_)
        (letrec ((_%symbol-e190781%_
                  (lambda (_%id190783%_)
                    (if (symbol? _%id190783%_)
                        _%id190783%_
                        (gxc#generate-runtime-binding-id _%id190783%_)))))
          (eq? (_%symbol-e190781%_ _%id1190778%_)
               (_%symbol-e190781%_ _%id2190779%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx190776%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx190776%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx190776%_)
            (let () (declare (not safe)) (gx#stx-e _%stx190776%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id190698%_)
        (let* ((_%bind190700%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id190698%_)))
               (_%runtime-props190729%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind190700%_
                       'gx#runtime-binding::t))
                    (let* ((_%props190709%_
                            (let ((_%$e190703%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190700%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e190703%_
                                  ((lambda (_%macro-id190706%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id190706%_)
                                                 '())))
                                   _%$e190703%_)
                                  '())))
                           (_%props190725%_
                            (let ((_%$e190711%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190700%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e190711%_
                                  ((lambda (_%type190714%_)
                                     (let ((_%$e190716%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type190714%_
                                               ':repr))))
                                       (if _%$e190716%_
                                           ((lambda (_%method190719%_)
                                              (let ((_%repr190721%_
                                                     (_%method190719%_
                                                      _%type190714%_)))
                                                (cons 'type:
                                                      (cons _%repr190721%_
                                                            _%props190709%_))))
                                            _%$e190716%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id190698%_
                                            _%type190714%_))))
                                   _%$e190711%_)
                                  _%props190709%_))))
                      _%props190725%_)
                    '()))
               (_%$e190732%_
                (##structure-ref _%bind190700%_ '4 gx#binding::t '#f)))
          (if _%$e190732%_
              ((lambda (_%props190735%_)
                 (let ((__tmp191219
                        (lambda (_%prop190737%_ _%props190738%_)
                          (let* ((_%prop190739190746%_ _%prop190737%_)
                                 (_%E190741190749%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop190739190746%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K190742190763%_
                                  (lambda (_%value190752%_ _%key190753%_)
                                    (let ((_%$e190755%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value190752%_
                                              ':repr))))
                                      (if _%$e190755%_
                                          ((lambda (_%method190758%_)
                                             (let ((_%repr190760%_
                                                    (_%method190758%_
                                                     _%value190752%_)))
                                               (cons _%key190753%_
                                                     (cons _%repr190760%_
                                                           _%props190738%_))))
                                           _%$e190755%_)
                                          (cons _%key190753%_
                                                (cons (cons 'quote
                                                            (cons _%value190752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props190738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop190739190746%_)
                                (let ((_%hd190743190766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop190739190746%_)))
                                      (_%tl190744190768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop190739190746%_))))
                                  (let* ((_%key190771%_ _%hd190743190766%_)
                                         (_%value190773%_ _%tl190744190768%_))
                                    (_%K190742190763%_
                                     _%value190773%_
                                     _%key190771%_)))
                                (_%E190741190749%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp191219
                    _%runtime-props190729%_
                    _%props190735%_)))
               _%$e190732%_)
              _%runtime-props190729%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk190683%_ _%name190684%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job190686%_
               (gxc#make-compile-job _%thunk190683%_ _%name190684%_)))
          (set! gxc#__compile-jobs (cons _%job190686%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk190691%_)
        (let ((_%name190693%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk190691%_ _%name190693%_))))
    (define gxc#add-compile-job!
      (lambda _g191220_
        (let ((_g191221_ (let () (declare (not safe)) (##length _g191220_))))
          (cond ((let () (declare (not safe)) (##fx= _g191221_ 1))
                 (apply gxc#add-compile-job!__0 _g191220_))
                ((let () (declare (not safe)) (##fx= _g191221_ 2))
                 (apply gxc#add-compile-job!__% _g191220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g191220_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result190680%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result190680%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop190674%_ ()
          (let ((_%pending190677%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending190677%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending190677%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending190677%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk190663%_ _%name190664%_)
        (make-thread
         (lambda ()
           (let _%loop190667%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp191222
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name190664%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp191222))
                   (let ((__tmp191224 (lambda () (_%thunk190663%_)))
                         (__tmp191223
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp191224 __tmp191223)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop190667%_)))))
         _%name190664%_)))
    (define gxc#join!
      (lambda (_%thread190658%_)
        (let ((__tmp191226
               (lambda (_%exn190660%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn190660%_))
                     (let ((__tmp191227
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn190660%_))))
                       (declare (not safe))
                       (raise __tmp191227))
                     (let () (declare (not safe)) (raise _%exn190660%_)))))
              (__tmp191225 (lambda () (thread-join! _%thread190658%_))))
          (declare (not safe))
          (__with-catch __tmp191226 __tmp191225))))))
