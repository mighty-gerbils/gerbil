(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770342549)
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
       (let ((_%verbosity180178180180%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity180178180180%_
             (let* ((_%verbosity180182%_ _%verbosity180178180180%_)
                    (_%$e180184%_ (string->number _%verbosity180182%_)))
               (if _%$e180184%_ _%$e180184%_ _%verbosity180182%_))
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
        (letrec ((_%hash-e180175%_
                  (lambda (_%id180177%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id180177%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e180175%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp180239 (list)) (__tmp180238 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp180239
         '(gensyms bindings)
         __tmp180238
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args180171%_
        (apply make-instance gxc#symbol-table::t _%$args180171%_)))
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
      (lambda (_%self180158%_)
        (let ((_%self180161%_ _%self180158%_))
          (if (let ((__tmp180240
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self180161%_))))
                (declare (not safe))
                (##fx< '2 __tmp180240))
              (begin
                (let ((__tmp180241
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self180161%_
                   __tmp180241
                   '1
                   '#f
                   '#f))
                (let ((__tmp180242
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self180161%_
                   __tmp180242
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp180243
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self180161%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self180161%_
                       '2
                       __tmp180243))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message180027%_ _%stx180028%_ . _%details180029%_)
        (let ((_%ctx180034%_
               (let ((_%$e180031%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e180031%_ _%$e180031%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx180034%_
                 _%message180027%_
                 _%stx180028%_
                 _%details180029%_))))
    (define gxc#verbose
      (lambda _%args180024%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp180244
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args180024%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp180244))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id180006%_)
        (let* ((_%str180008%_
                (if (symbol? _%id180006%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id180006%_))
                    _%id180006%_))
               (_%len180010%_ (string-length _%str180008%_))
               (_%res180012%_
                (let () (declare (not safe)) (##make-string _%len180010%_))))
          (let _%lp180015%_ ((_%i180017%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i180017%_ _%len180010%_))
                (let* ((_%char180019%_ (string-ref _%str180008%_ _%i180017%_))
                       (_%xchar180021%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char180019%_))
                            '#\_
                            _%char180019%_)))
                  (string-set! _%res180012%_ _%i180017%_ _%xchar180021%_)
                  (_%lp180015%_
                   (let () (declare (not safe)) (##fx+ _%i180017%_ '1))))
                _%res180012%_)))))
    (define gxc#map*
      (lambda (_%proc179948%_ _%maybe-improper-list179949%_)
        (let _%recur179951%_ ((_%rest179953%_ _%maybe-improper-list179949%_))
          (let* ((_%rest179954179965%_ _%rest179953%_)
                 (_%E179958179969%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest179954179965%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K179961179994%_
                   (lambda (_%rest179991%_ _%hd179992%_)
                     (cons (_%proc179948%_ _%hd179992%_)
                           (_%recur179951%_ _%rest179991%_))))
                  (_%K179960179985%_ (lambda () '()))
                  (_%K179959179975%_
                   (lambda (_%tail179973%_) (_%proc179948%_ _%tail179973%_))))
              (let ((_%try-match179956179988%_
                     (lambda ()
                       (if (null? _%rest179954179965%_)
                           (_%K179960179985%_)
                           (let ((_%tail179978%_ _%rest179954179965%_))
                             (declare (not safe))
                             (_%proc179948%_ _%tail179978%_))))))
                (if (pair? _%rest179954179965%_)
                    (let ((_%tl179963179999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest179954179965%_)))
                          (_%hd179962179997%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest179954179965%_))))
                      (let ((_%hd180002%_ _%hd179962179997%_)
                            (_%rest180004%_ _%tl179963179999%_))
                        (_%K179961179994%_ _%rest180004%_ _%hd180002%_)))
                    (_%try-match179956179988%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym179943%_)
        (let ((_%$e179945%_ (not (gxc#gensym-reference? _%sym179943%_))))
          (if _%$e179945%_
              _%$e179945%_
              (memq _%sym179943%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym179939%_)
        (let ((_%str179941%_ (symbol->string _%sym179939%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str179941%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str179941%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id179910%_)
        (let ((_%$e179912%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id179910%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id179910%_))
                   '#f)))
          (if _%$e179912%_
              ((lambda (_%bind179915%_)
                 (let ((_%eid179917%_
                        (##structure-ref _%bind179915%_ '1 gx#binding::t '#f))
                       (_%ht179918%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid179917%_))
                       _%eid179917%_
                       (let ((_%$e179921%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht179918%_ _%eid179917%_))))
                         (if _%$e179921%_
                             _%$e179921%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind179915%_
                                    'gx#local-binding::t))
                                 (let ((_%gid179925%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid179917%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht179918%_
                                      _%eid179917%_
                                      _%gid179925%_))
                                   _%gid179925%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind179915%_
                                        'gx#module-binding::t))
                                     (let ((_%gid179934%_
                                            (let ((_%$e179928%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind179915%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e179928%_
                                                  ((lambda (_%ns179931%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns179931%_
                                                        '"#"
                                                        _%eid179917%_)))
                                                   _%$e179928%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid179917%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht179918%_
                                          _%eid179917%_
                                          _%gid179934%_))
                                       _%gid179934%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id179910%_
                                      _%eid179917%_
                                      _%bind179915%_))))))))
               _%$e179912%_)
              (if (let ((__tmp180245
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id179910%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp180245))
                  (let () (declare (not safe)) (gx#stx-e _%id179910%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id179910%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id179908%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id179908%_))
            (gxc#generate-runtime-binding-id _%id179908%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top179895%_)
        (if _%top179895%_
            (let ((_%ns179897%_
                   (##structure-ref
                    (let ((__tmp180246
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp180246))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi179898%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns179897%_
                  (if (fxpositive? _%phi179898%_)
                      (let ((__tmp180248 (number->string _%phi179898%_))
                            (__tmp180247
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns179897%_
                         '"["
                         __tmp180248
                         '"]#_"
                         __tmp180247
                         '"_"))
                      (let ((__tmp180249
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns179897%_ '"#_" __tmp180249 '"_")))
                  (if (fxpositive? _%phi179898%_)
                      (let ((__tmp180251 (number->string _%phi179898%_))
                            (__tmp180250
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp180251
                         '"]#_"
                         __tmp180250
                         '"_"))
                      (let ((__tmp180252
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp180252 '"_")))))
            (let ((__tmp180253 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp180253 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top179904%_ '#f))
          (gxc#generate-runtime-temporary__% _%top179904%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g180254_
        (let ((_g180255_ (let () (declare (not safe)) (##length _g180254_))))
          (cond ((let () (declare (not safe)) (##fx= _g180255_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g180254_))
                ((let () (declare (not safe)) (##fx= _g180255_ 1))
                 (apply gxc#generate-runtime-temporary__% _g180254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g180254_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym179873%_ _%quote?179874%_)
        (let* ((_%ht179876%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e179878%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht179876%_ _%sym179873%_))))
          (if _%$e179878%_
              _%$e179878%_
              (let ((_%g179882%_
                     (if _%quote?179874%_
                         (let ((__tmp180256
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym179873%_
                            '"__"
                            __tmp180256))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym179873%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht179876%_ _%sym179873%_ _%g179882%_))
                _%g179882%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym179887%_)
        (let ((_%quote?179889%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym179887%_
           _%quote?179889%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g180257_
        (let ((_g180258_ (let () (declare (not safe)) (##length _g180257_))))
          (cond ((let () (declare (not safe)) (##fx= _g180258_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g180257_))
                ((let () (declare (not safe)) (##fx= _g180258_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g180257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g180257_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id179870%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id179870%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key179825%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key179825%_))
            _%key179825%_
            (if (uninterned-symbol? _%key179825%_)
                (gxc#generate-runtime-gensym-reference__0 _%key179825%_)
                (let* ((_%key179829179836%_ _%key179825%_)
                       (_%E179831179840%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key179829179836%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K179832179858%_
                        (lambda (_%mark179843%_ _%eid179844%_)
                          (let ((_%$e179846%_
                                 (##structure-ref
                                  _%mark179843%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e179846%_
                                ((lambda (_%ht179849%_)
                                   (let ((_%$e179851%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht179849%_
                                             _%eid179844%_))))
                                     (if _%$e179851%_
                                         ((lambda (_%id179854%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id179854%_))
                                                _%id179854%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id179854%_)))
                                          _%$e179851%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid179844%_))))
                                 _%$e179846%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid179844%_))))))
                  (if (pair? _%key179829179836%_)
                      (let ((_%hd179833179861%_
                             (let ()
                               (declare (not safe))
                               (##car _%key179829179836%_)))
                            (_%tl179834179863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key179829179836%_))))
                        (let* ((_%eid179866%_ _%hd179833179861%_)
                               (_%mark179868%_ _%tl179834179863%_))
                          (_%K179832179858%_ _%mark179868%_ _%eid179866%_)))
                      (_%E179831179840%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1179818%_ _%id2179819%_)
        (letrec ((_%symbol-e179821%_
                  (lambda (_%id179823%_)
                    (if (symbol? _%id179823%_)
                        _%id179823%_
                        (gxc#generate-runtime-binding-id _%id179823%_)))))
          (eq? (_%symbol-e179821%_ _%id1179818%_)
               (_%symbol-e179821%_ _%id2179819%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx179816%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx179816%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx179816%_)
            (let () (declare (not safe)) (gx#stx-e _%stx179816%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id179738%_)
        (let* ((_%bind179740%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id179738%_)))
               (_%runtime-props179769%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind179740%_
                       'gx#runtime-binding::t))
                    (let* ((_%props179749%_
                            (let ((_%$e179743%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind179740%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e179743%_
                                  ((lambda (_%macro-id179746%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id179746%_)
                                                 '())))
                                   _%$e179743%_)
                                  '())))
                           (_%props179765%_
                            (let ((_%$e179751%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind179740%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e179751%_
                                  ((lambda (_%type179754%_)
                                     (let ((_%$e179756%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type179754%_
                                               ':repr))))
                                       (if _%$e179756%_
                                           ((lambda (_%method179759%_)
                                              (let ((_%repr179761%_
                                                     (_%method179759%_
                                                      _%type179754%_)))
                                                (cons 'type:
                                                      (cons _%repr179761%_
                                                            _%props179749%_))))
                                            _%$e179756%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id179738%_
                                            _%type179754%_))))
                                   _%$e179751%_)
                                  _%props179749%_))))
                      _%props179765%_)
                    '()))
               (_%$e179772%_
                (##structure-ref _%bind179740%_ '4 gx#binding::t '#f)))
          (if _%$e179772%_
              ((lambda (_%props179775%_)
                 (let ((__tmp180259
                        (lambda (_%prop179777%_ _%props179778%_)
                          (let* ((_%prop179779179786%_ _%prop179777%_)
                                 (_%E179781179789%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop179779179786%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K179782179803%_
                                  (lambda (_%value179792%_ _%key179793%_)
                                    (let ((_%$e179795%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value179792%_
                                              ':repr))))
                                      (if _%$e179795%_
                                          ((lambda (_%method179798%_)
                                             (let ((_%repr179800%_
                                                    (_%method179798%_
                                                     _%value179792%_)))
                                               (cons _%key179793%_
                                                     (cons _%repr179800%_
                                                           _%props179778%_))))
                                           _%$e179795%_)
                                          (cons _%key179793%_
                                                (cons (cons 'quote
                                                            (cons _%value179792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props179778%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop179779179786%_)
                                (let ((_%hd179783179806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop179779179786%_)))
                                      (_%tl179784179808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop179779179786%_))))
                                  (let* ((_%key179811%_ _%hd179783179806%_)
                                         (_%value179813%_ _%tl179784179808%_))
                                    (_%K179782179803%_
                                     _%value179813%_
                                     _%key179811%_)))
                                (_%E179781179789%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp180259
                    _%runtime-props179769%_
                    _%props179775%_)))
               _%$e179772%_)
              _%runtime-props179769%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk179723%_ _%name179724%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job179726%_
               (gxc#make-compile-job _%thunk179723%_ _%name179724%_)))
          (set! gxc#__compile-jobs (cons _%job179726%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk179731%_)
        (let ((_%name179733%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk179731%_ _%name179733%_))))
    (define gxc#add-compile-job!
      (lambda _g180260_
        (let ((_g180261_ (let () (declare (not safe)) (##length _g180260_))))
          (cond ((let () (declare (not safe)) (##fx= _g180261_ 1))
                 (apply gxc#add-compile-job!__0 _g180260_))
                ((let () (declare (not safe)) (##fx= _g180261_ 2))
                 (apply gxc#add-compile-job!__% _g180260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g180260_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result179720%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result179720%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop179714%_ ()
          (let ((_%pending179717%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending179717%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending179717%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending179717%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk179703%_ _%name179704%_)
        (make-thread
         (lambda ()
           (let _%loop179707%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp180262
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name179704%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp180262))
                   (let ((__tmp180264 (lambda () (_%thunk179703%_)))
                         (__tmp180263
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp180264 __tmp180263)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop179707%_)))))
         _%name179704%_)))
    (define gxc#join!
      (lambda (_%thread179698%_)
        (let ((__tmp180266
               (lambda (_%exn179700%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn179700%_))
                     (let ((__tmp180267
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn179700%_))))
                       (declare (not safe))
                       (raise __tmp180267))
                     (let () (declare (not safe)) (raise _%exn179700%_)))))
              (__tmp180265 (lambda () (thread-join! _%thread179698%_))))
          (declare (not safe))
          (__with-catch __tmp180266 __tmp180265))))))
