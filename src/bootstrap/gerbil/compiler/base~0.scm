(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771104509)
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
       (let ((_%verbosity191189191191%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity191189191191%_
             (let* ((_%verbosity191193%_ _%verbosity191189191191%_)
                    (_%$e191195%_ (string->number _%verbosity191193%_)))
               (if _%$e191195%_ _%$e191195%_ _%verbosity191193%_))
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
        (letrec ((_%hash-e191186%_
                  (lambda (_%id191188%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id191188%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e191186%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp191250 (list)) (__tmp191249 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp191250
         '(gensyms bindings)
         __tmp191249
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args191182%_
        (apply make-instance gxc#symbol-table::t _%$args191182%_)))
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
      (lambda (_%self191169%_)
        (let ((_%self191172%_ _%self191169%_))
          (if (let ((__tmp191251
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191172%_))))
                (declare (not safe))
                (##fx< '2 __tmp191251))
              (begin
                (let ((__tmp191252
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191172%_
                   __tmp191252
                   '1
                   '#f
                   '#f))
                (let ((__tmp191253
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191172%_
                   __tmp191253
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp191254
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191172%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191172%_
                       '2
                       __tmp191254))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message191038%_ _%stx191039%_ . _%details191040%_)
        (let ((_%ctx191045%_
               (let ((_%$e191042%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e191042%_ _%$e191042%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx191045%_
                 _%message191038%_
                 _%stx191039%_
                 _%details191040%_))))
    (define gxc#verbose
      (lambda _%args191035%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp191255
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args191035%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp191255))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id191017%_)
        (let* ((_%str191019%_
                (if (symbol? _%id191017%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id191017%_))
                    _%id191017%_))
               (_%len191021%_ (string-length _%str191019%_))
               (_%res191023%_
                (let () (declare (not safe)) (##make-string _%len191021%_))))
          (let _%lp191026%_ ((_%i191028%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i191028%_ _%len191021%_))
                (let* ((_%char191030%_ (string-ref _%str191019%_ _%i191028%_))
                       (_%xchar191032%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char191030%_))
                            '#\_
                            _%char191030%_)))
                  (string-set! _%res191023%_ _%i191028%_ _%xchar191032%_)
                  (_%lp191026%_
                   (let () (declare (not safe)) (##fx+ _%i191028%_ '1))))
                _%res191023%_)))))
    (define gxc#map*
      (lambda (_%proc190959%_ _%maybe-improper-list190960%_)
        (let _%recur190962%_ ((_%rest190964%_ _%maybe-improper-list190960%_))
          (let* ((_%rest190965190976%_ _%rest190964%_)
                 (_%E190969190980%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest190965190976%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K190972191005%_
                   (lambda (_%rest191002%_ _%hd191003%_)
                     (cons (_%proc190959%_ _%hd191003%_)
                           (_%recur190962%_ _%rest191002%_))))
                  (_%K190971190996%_ (lambda () '()))
                  (_%K190970190986%_
                   (lambda (_%tail190984%_) (_%proc190959%_ _%tail190984%_))))
              (let ((_%try-match190967190999%_
                     (lambda ()
                       (if (null? _%rest190965190976%_)
                           (_%K190971190996%_)
                           (let ((_%tail190989%_ _%rest190965190976%_))
                             (declare (not safe))
                             (_%proc190959%_ _%tail190989%_))))))
                (if (pair? _%rest190965190976%_)
                    (let ((_%tl190974191010%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest190965190976%_)))
                          (_%hd190973191008%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest190965190976%_))))
                      (let ((_%hd191013%_ _%hd190973191008%_)
                            (_%rest191015%_ _%tl190974191010%_))
                        (_%K190972191005%_ _%rest191015%_ _%hd191013%_)))
                    (_%try-match190967190999%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym190954%_)
        (let ((_%$e190956%_ (not (gxc#gensym-reference? _%sym190954%_))))
          (if _%$e190956%_
              _%$e190956%_
              (memq _%sym190954%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym190950%_)
        (let ((_%str190952%_ (symbol->string _%sym190950%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str190952%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str190952%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id190921%_)
        (let ((_%$e190923%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id190921%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id190921%_))
                   '#f)))
          (if _%$e190923%_
              ((lambda (_%bind190926%_)
                 (let ((_%eid190928%_
                        (##structure-ref _%bind190926%_ '1 gx#binding::t '#f))
                       (_%ht190929%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid190928%_))
                       _%eid190928%_
                       (let ((_%$e190932%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht190929%_ _%eid190928%_))))
                         (if _%$e190932%_
                             _%$e190932%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind190926%_
                                    'gx#local-binding::t))
                                 (let ((_%gid190936%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid190928%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht190929%_
                                      _%eid190928%_
                                      _%gid190936%_))
                                   _%gid190936%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind190926%_
                                        'gx#module-binding::t))
                                     (let ((_%gid190945%_
                                            (let ((_%$e190939%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind190926%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e190939%_
                                                  ((lambda (_%ns190942%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns190942%_
                                                        '"#"
                                                        _%eid190928%_)))
                                                   _%$e190939%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid190928%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht190929%_
                                          _%eid190928%_
                                          _%gid190945%_))
                                       _%gid190945%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id190921%_
                                      _%eid190928%_
                                      _%bind190926%_))))))))
               _%$e190923%_)
              (if (let ((__tmp191256
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id190921%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp191256))
                  (let () (declare (not safe)) (gx#stx-e _%id190921%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id190921%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id190919%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id190919%_))
            (gxc#generate-runtime-binding-id _%id190919%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top190906%_)
        (if _%top190906%_
            (let ((_%ns190908%_
                   (##structure-ref
                    (let ((__tmp191257
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp191257))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi190909%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns190908%_
                  (if (fxpositive? _%phi190909%_)
                      (let ((__tmp191259 (number->string _%phi190909%_))
                            (__tmp191258
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns190908%_
                         '"["
                         __tmp191259
                         '"]#_"
                         __tmp191258
                         '"_"))
                      (let ((__tmp191260
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns190908%_ '"#_" __tmp191260 '"_")))
                  (if (fxpositive? _%phi190909%_)
                      (let ((__tmp191262 (number->string _%phi190909%_))
                            (__tmp191261
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp191262
                         '"]#_"
                         __tmp191261
                         '"_"))
                      (let ((__tmp191263
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp191263 '"_")))))
            (let ((__tmp191264 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp191264 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top190915%_ '#f))
          (gxc#generate-runtime-temporary__% _%top190915%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g191265_
        (let ((_g191266_ (let () (declare (not safe)) (##length _g191265_))))
          (cond ((let () (declare (not safe)) (##fx= _g191266_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g191265_))
                ((let () (declare (not safe)) (##fx= _g191266_ 1))
                 (apply gxc#generate-runtime-temporary__% _g191265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g191265_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym190884%_ _%quote?190885%_)
        (let* ((_%ht190887%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e190889%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht190887%_ _%sym190884%_))))
          (if _%$e190889%_
              _%$e190889%_
              (let ((_%g190893%_
                     (if _%quote?190885%_
                         (let ((__tmp191267
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym190884%_
                            '"__"
                            __tmp191267))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym190884%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht190887%_ _%sym190884%_ _%g190893%_))
                _%g190893%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym190898%_)
        (let ((_%quote?190900%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym190898%_
           _%quote?190900%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g191268_
        (let ((_g191269_ (let () (declare (not safe)) (##length _g191268_))))
          (cond ((let () (declare (not safe)) (##fx= _g191269_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g191268_))
                ((let () (declare (not safe)) (##fx= _g191269_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g191268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g191268_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id190881%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id190881%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key190836%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key190836%_))
            _%key190836%_
            (if (uninterned-symbol? _%key190836%_)
                (gxc#generate-runtime-gensym-reference__0 _%key190836%_)
                (let* ((_%key190840190847%_ _%key190836%_)
                       (_%E190842190851%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key190840190847%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K190843190869%_
                        (lambda (_%mark190854%_ _%eid190855%_)
                          (let ((_%$e190857%_
                                 (##structure-ref
                                  _%mark190854%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e190857%_
                                ((lambda (_%ht190860%_)
                                   (let ((_%$e190862%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht190860%_
                                             _%eid190855%_))))
                                     (if _%$e190862%_
                                         ((lambda (_%id190865%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id190865%_))
                                                _%id190865%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id190865%_)))
                                          _%$e190862%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid190855%_))))
                                 _%$e190857%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid190855%_))))))
                  (if (pair? _%key190840190847%_)
                      (let ((_%hd190844190872%_
                             (let ()
                               (declare (not safe))
                               (##car _%key190840190847%_)))
                            (_%tl190845190874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key190840190847%_))))
                        (let* ((_%eid190877%_ _%hd190844190872%_)
                               (_%mark190879%_ _%tl190845190874%_))
                          (_%K190843190869%_ _%mark190879%_ _%eid190877%_)))
                      (_%E190842190851%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1190829%_ _%id2190830%_)
        (letrec ((_%symbol-e190832%_
                  (lambda (_%id190834%_)
                    (if (symbol? _%id190834%_)
                        _%id190834%_
                        (gxc#generate-runtime-binding-id _%id190834%_)))))
          (eq? (_%symbol-e190832%_ _%id1190829%_)
               (_%symbol-e190832%_ _%id2190830%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx190827%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx190827%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx190827%_)
            (let () (declare (not safe)) (gx#stx-e _%stx190827%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id190749%_)
        (let* ((_%bind190751%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id190749%_)))
               (_%runtime-props190780%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind190751%_
                       'gx#runtime-binding::t))
                    (let* ((_%props190760%_
                            (let ((_%$e190754%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190751%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e190754%_
                                  ((lambda (_%macro-id190757%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id190757%_)
                                                 '())))
                                   _%$e190754%_)
                                  '())))
                           (_%props190776%_
                            (let ((_%$e190762%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190751%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e190762%_
                                  ((lambda (_%type190765%_)
                                     (let ((_%$e190767%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type190765%_
                                               ':repr))))
                                       (if _%$e190767%_
                                           ((lambda (_%method190770%_)
                                              (let ((_%repr190772%_
                                                     (_%method190770%_
                                                      _%type190765%_)))
                                                (cons 'type:
                                                      (cons _%repr190772%_
                                                            _%props190760%_))))
                                            _%$e190767%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id190749%_
                                            _%type190765%_))))
                                   _%$e190762%_)
                                  _%props190760%_))))
                      _%props190776%_)
                    '()))
               (_%$e190783%_
                (##structure-ref _%bind190751%_ '4 gx#binding::t '#f)))
          (if _%$e190783%_
              ((lambda (_%props190786%_)
                 (let ((__tmp191270
                        (lambda (_%prop190788%_ _%props190789%_)
                          (let* ((_%prop190790190797%_ _%prop190788%_)
                                 (_%E190792190800%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop190790190797%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K190793190814%_
                                  (lambda (_%value190803%_ _%key190804%_)
                                    (let ((_%$e190806%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value190803%_
                                              ':repr))))
                                      (if _%$e190806%_
                                          ((lambda (_%method190809%_)
                                             (let ((_%repr190811%_
                                                    (_%method190809%_
                                                     _%value190803%_)))
                                               (cons _%key190804%_
                                                     (cons _%repr190811%_
                                                           _%props190789%_))))
                                           _%$e190806%_)
                                          (cons _%key190804%_
                                                (cons (cons 'quote
                                                            (cons _%value190803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props190789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop190790190797%_)
                                (let ((_%hd190794190817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop190790190797%_)))
                                      (_%tl190795190819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop190790190797%_))))
                                  (let* ((_%key190822%_ _%hd190794190817%_)
                                         (_%value190824%_ _%tl190795190819%_))
                                    (_%K190793190814%_
                                     _%value190824%_
                                     _%key190822%_)))
                                (_%E190792190800%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp191270
                    _%runtime-props190780%_
                    _%props190786%_)))
               _%$e190783%_)
              _%runtime-props190780%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk190734%_ _%name190735%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job190737%_
               (gxc#make-compile-job _%thunk190734%_ _%name190735%_)))
          (set! gxc#__compile-jobs (cons _%job190737%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk190742%_)
        (let ((_%name190744%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk190742%_ _%name190744%_))))
    (define gxc#add-compile-job!
      (lambda _g191271_
        (let ((_g191272_ (let () (declare (not safe)) (##length _g191271_))))
          (cond ((let () (declare (not safe)) (##fx= _g191272_ 1))
                 (apply gxc#add-compile-job!__0 _g191271_))
                ((let () (declare (not safe)) (##fx= _g191272_ 2))
                 (apply gxc#add-compile-job!__% _g191271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g191271_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result190731%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result190731%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop190725%_ ()
          (let ((_%pending190728%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending190728%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending190728%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending190728%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk190714%_ _%name190715%_)
        (make-thread
         (lambda ()
           (let _%loop190718%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp191273
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name190715%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp191273))
                   (let ((__tmp191275 (lambda () (_%thunk190714%_)))
                         (__tmp191274
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp191275 __tmp191274)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop190718%_)))))
         _%name190715%_)))
    (define gxc#join!
      (lambda (_%thread190709%_)
        (let ((__tmp191277
               (lambda (_%exn190711%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn190711%_))
                     (let ((__tmp191278
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn190711%_))))
                       (declare (not safe))
                       (raise __tmp191278))
                     (let () (declare (not safe)) (raise _%exn190711%_)))))
              (__tmp191276 (lambda () (thread-join! _%thread190709%_))))
          (declare (not safe))
          (__with-catch __tmp191277 __tmp191276))))))
