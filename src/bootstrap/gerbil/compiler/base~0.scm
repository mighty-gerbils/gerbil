(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1784471385)
  (begin
    (define gxc#__DEBUG-COMPILE
      (if (string? __DEBUG)
          (let ()
            (declare (not safe))
            (##string-contains __DEBUG '"compilation"))
          '#f))
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose
      (make-parameter
       (let ((_%$%verbosity200085200087%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity200085200087%_
             (let* ((_%verbosity200089%_ _%$%verbosity200085200087%_)
                    (_%$e200091%_ (string->number _%verbosity200089%_)))
               (if _%$e200091%_ _%$e200091%_ _%verbosity200089%_))
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
        (letrec ((_%hash-e200082%_
                  (lambda (_%id200084%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id200084%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e200082%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp200146 (list)) (__tmp200145 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp200146
         '(gensyms bindings)
         __tmp200145
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args200078%_
        (apply make-instance gxc#symbol-table::t _%$args200078%_)))
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
      (lambda (_%self200065%_)
        (let ((_%self200068%_ _%self200065%_))
          (if (let ((__tmp200147
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200068%_))))
                (declare (not safe))
                (##fx< '2 __tmp200147))
              (begin
                (let ((__tmp200148
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200068%_
                   __tmp200148
                   '1
                   '#f
                   '#f))
                (let ((__tmp200149
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200068%_
                   __tmp200149
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp200150
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200068%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self200068%_
                       '2
                       __tmp200150))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message199934%_ _%stx199935%_ . _%details199936%_)
        (let ((_%ctx199941%_
               (let ((_%$e199938%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e199938%_ _%$e199938%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx199941%_
                 _%message199934%_
                 _%stx199935%_
                 _%details199936%_))))
    (define gxc#verbose
      (lambda _%args199931%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp200151
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args199931%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp200151))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id199913%_)
        (let* ((_%str199915%_
                (if (symbol? _%id199913%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id199913%_))
                    _%id199913%_))
               (_%len199917%_ (string-length _%str199915%_))
               (_%res199919%_
                (let () (declare (not safe)) (##make-string _%len199917%_))))
          (let _%lp199922%_ ((_%i199924%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i199924%_ _%len199917%_))
                (let* ((_%char199926%_ (string-ref _%str199915%_ _%i199924%_))
                       (_%xchar199928%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char199926%_))
                            '#\_
                            _%char199926%_)))
                  (string-set! _%res199919%_ _%i199924%_ _%xchar199928%_)
                  (_%lp199922%_
                   (let () (declare (not safe)) (##fx+ _%i199924%_ '1))))
                _%res199919%_)))))
    (define gxc#map*
      (lambda (_%proc199855%_ _%maybe-improper-list199856%_)
        (let _%recur199858%_ ((_%rest199860%_ _%maybe-improper-list199856%_))
          (let* ((_%$%rest199861199872%_ _%rest199860%_)
                 (_%$%E199865199876%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest199861199872%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K199868199901%_
                   (lambda (_%rest199898%_ _%hd199899%_)
                     (cons (_%proc199855%_ _%hd199899%_)
                           (_%recur199858%_ _%rest199898%_))))
                  (_%$%K199867199892%_ (lambda () '()))
                  (_%$%K199866199882%_
                   (lambda (_%tail199880%_) (_%proc199855%_ _%tail199880%_))))
              (let ((_%$%try-match199863199895%_
                     (lambda ()
                       (if (null? _%$%rest199861199872%_)
                           (_%$%K199867199892%_)
                           (let ((_%tail199885%_ _%$%rest199861199872%_))
                             (declare (not safe))
                             (_%proc199855%_ _%tail199885%_))))))
                (if (pair? _%$%rest199861199872%_)
                    (let ((_%$%tl199870199906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest199861199872%_)))
                          (_%$%hd199869199904%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest199861199872%_))))
                      (let ((_%hd199909%_ _%$%hd199869199904%_)
                            (_%rest199911%_ _%$%tl199870199906%_))
                        (_%$%K199868199901%_ _%rest199911%_ _%hd199909%_)))
                    (_%$%try-match199863199895%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym199850%_)
        (let ((_%$e199852%_ (not (gxc#gensym-reference? _%sym199850%_))))
          (if _%$e199852%_
              _%$e199852%_
              (memq _%sym199850%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym199846%_)
        (let ((_%str199848%_ (symbol->string _%sym199846%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str199848%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str199848%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id199817%_)
        (let ((_%$e199819%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id199817%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id199817%_))
                   '#f)))
          (if _%$e199819%_
              (let ((_%eid199824%_
                     (##structure-ref _%$e199819%_ '1 gx#binding::t '#f))
                    (_%ht199825%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid199824%_))
                    _%eid199824%_
                    (let ((_%$e199828%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht199825%_ _%eid199824%_))))
                      (if _%$e199828%_
                          _%$e199828%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e199819%_
                                 'gx#local-binding::t))
                              (let ((_%gid199832%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid199824%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht199825%_
                                   _%eid199824%_
                                   _%gid199832%_))
                                _%gid199832%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e199819%_
                                     'gx#module-binding::t))
                                  (let ((_%gid199841%_
                                         (let ((_%$e199835%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e199819%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e199835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e199835%_
                                                  '"#"
                                                  _%eid199824%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid199824%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht199825%_
                                       _%eid199824%_
                                       _%gid199841%_))
                                    _%gid199841%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id199817%_
                                   _%eid199824%_
                                   _%$e199819%_)))))))
              (if (let ((__tmp200152
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id199817%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp200152))
                  (let () (declare (not safe)) (gx#stx-e _%id199817%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id199817%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id199815%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id199815%_))
            (gxc#generate-runtime-binding-id _%id199815%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top199802%_)
        (if _%top199802%_
            (let ((_%ns199804%_
                   (##structure-ref
                    (let ((__tmp200153
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp200153))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi199805%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns199804%_
                  (if (fxpositive? _%phi199805%_)
                      (let ((__tmp200155 (number->string _%phi199805%_))
                            (__tmp200154
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns199804%_
                         '"["
                         __tmp200155
                         '"]#_"
                         __tmp200154
                         '"_"))
                      (let ((__tmp200156
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns199804%_ '"#_" __tmp200156 '"_")))
                  (if (fxpositive? _%phi199805%_)
                      (let ((__tmp200158 (number->string _%phi199805%_))
                            (__tmp200157
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp200158
                         '"]#_"
                         __tmp200157
                         '"_"))
                      (let ((__tmp200159
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp200159 '"_")))))
            (let ((__tmp200160 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp200160 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top199811%_ '#f))
          (gxc#generate-runtime-temporary__% _%top199811%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g200161_
        (let ((_g200162_ (let () (declare (not safe)) (##length _g200161_))))
          (cond ((let () (declare (not safe)) (##fx= _g200162_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g200161_))
                ((let () (declare (not safe)) (##fx= _g200162_ 1))
                 (apply gxc#generate-runtime-temporary__% _g200161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g200161_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym199780%_ _%quote?199781%_)
        (let* ((_%ht199783%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e199785%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht199783%_ _%sym199780%_))))
          (if _%$e199785%_
              _%$e199785%_
              (let ((_%g199789%_
                     (if _%quote?199781%_
                         (let ((__tmp200163
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym199780%_
                            '"__"
                            __tmp200163))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym199780%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht199783%_ _%sym199780%_ _%g199789%_))
                _%g199789%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym199794%_)
        (let ((_%quote?199796%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym199794%_
           _%quote?199796%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g200164_
        (let ((_g200165_ (let () (declare (not safe)) (##length _g200164_))))
          (cond ((let () (declare (not safe)) (##fx= _g200165_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g200164_))
                ((let () (declare (not safe)) (##fx= _g200165_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g200164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g200164_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id199777%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id199777%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key199732%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key199732%_))
            _%key199732%_
            (if (uninterned-symbol? _%key199732%_)
                (gxc#generate-runtime-gensym-reference__0 _%key199732%_)
                (let* ((_%$%key199736199743%_ _%key199732%_)
                       (_%$%E199738199747%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key199736199743%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K199739199765%_
                        (lambda (_%mark199750%_ _%eid199751%_)
                          (let ((_%$e199753%_
                                 (##structure-ref
                                  _%mark199750%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e199753%_
                                (let ((_%$e199758%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e199753%_
                                          _%eid199751%_))))
                                  (if _%$e199758%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e199758%_))
                                          _%$e199758%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e199758%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid199751%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid199751%_))))))
                  (if (pair? _%$%key199736199743%_)
                      (let ((_%$%hd199740199768%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key199736199743%_)))
                            (_%$%tl199741199770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key199736199743%_))))
                        (let* ((_%eid199773%_ _%$%hd199740199768%_)
                               (_%mark199775%_ _%$%tl199741199770%_))
                          (_%$%K199739199765%_ _%mark199775%_ _%eid199773%_)))
                      (_%$%E199738199747%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1199725%_ _%id2199726%_)
        (letrec ((_%symbol-e199728%_
                  (lambda (_%id199730%_)
                    (if (symbol? _%id199730%_)
                        _%id199730%_
                        (gxc#generate-runtime-binding-id _%id199730%_)))))
          (eq? (_%symbol-e199728%_ _%id1199725%_)
               (_%symbol-e199728%_ _%id2199726%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx199723%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx199723%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx199723%_)
            (let () (declare (not safe)) (gx#stx-e _%stx199723%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id199645%_)
        (let* ((_%bind199647%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id199645%_)))
               (_%runtime-props199676%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind199647%_
                       'gx#runtime-binding::t))
                    (let* ((_%props199656%_
                            (let ((_%$e199650%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199647%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e199650%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e199650%_)
                                              '()))
                                  '())))
                           (_%props199672%_
                            (let ((_%$e199658%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199647%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e199658%_
                                  (let ((_%$e199663%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e199658%_
                                            ':repr))))
                                    (if _%$e199663%_
                                        (let ((_%repr199668%_
                                               (_%$e199663%_ _%$e199658%_)))
                                          (cons 'type:
                                                (cons _%repr199668%_
                                                      _%props199656%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id199645%_
                                         _%$e199658%_)))
                                  _%props199656%_))))
                      _%props199672%_)
                    '()))
               (_%$e199679%_
                (##structure-ref _%bind199647%_ '4 gx#binding::t '#f)))
          (if _%$e199679%_
              (let ((__tmp200166
                     (lambda (_%prop199684%_ _%props199685%_)
                       (let* ((_%$%prop199686199693%_ _%prop199684%_)
                              (_%$%E199688199696%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop199686199693%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K199689199710%_
                               (lambda (_%value199699%_ _%key199700%_)
                                 (let ((_%$e199702%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value199699%_
                                           ':repr))))
                                   (if _%$e199702%_
                                       (let ((_%repr199707%_
                                              (_%$e199702%_ _%value199699%_)))
                                         (cons _%key199700%_
                                               (cons _%repr199707%_
                                                     _%props199685%_)))
                                       (cons _%key199700%_
                                             (cons (cons 'quote
                                                         (cons _%value199699%_
                                                               '()))
                                                   _%props199685%_)))))))
                         (if (pair? _%$%prop199686199693%_)
                             (let ((_%$%hd199690199713%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop199686199693%_)))
                                   (_%$%tl199691199715%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop199686199693%_))))
                               (let* ((_%key199718%_ _%$%hd199690199713%_)
                                      (_%value199720%_ _%$%tl199691199715%_))
                                 (_%$%K199689199710%_
                                  _%value199720%_
                                  _%key199718%_)))
                             (_%$%E199688199696%_))))))
                (declare (not safe))
                (foldl__0 __tmp200166 _%runtime-props199676%_ _%$e199679%_))
              _%runtime-props199676%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk199630%_ _%name199631%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job199633%_
               (gxc#make-compile-job _%thunk199630%_ _%name199631%_)))
          (set! gxc#__compile-jobs (cons _%job199633%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk199638%_)
        (let ((_%name199640%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk199638%_ _%name199640%_))))
    (define gxc#add-compile-job!
      (lambda _g200167_
        (let ((_g200168_ (let () (declare (not safe)) (##length _g200167_))))
          (cond ((let () (declare (not safe)) (##fx= _g200168_ 1))
                 (apply gxc#add-compile-job!__0 _g200167_))
                ((let () (declare (not safe)) (##fx= _g200168_ 2))
                 (apply gxc#add-compile-job!__% _g200167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g200167_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result199627%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result199627%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop199621%_ ()
          (let ((_%pending199624%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending199624%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending199624%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending199624%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk199610%_ _%name199611%_)
        (make-thread
         (lambda ()
           (let _%loop199614%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp200169
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name199611%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp200169))
                   (let ((__tmp200171 (lambda () (_%thunk199610%_)))
                         (__tmp200170
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp200171 __tmp200170)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop199614%_)))))
         _%name199611%_)))
    (define gxc#join!
      (lambda (_%thread199605%_)
        (let ((__tmp200173
               (lambda (_%exn199607%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn199607%_))
                     (let ((__tmp200174
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn199607%_))))
                       (declare (not safe))
                       (raise __tmp200174))
                     (let () (declare (not safe)) (raise _%exn199607%_)))))
              (__tmp200172 (lambda () (thread-join! _%thread199605%_))))
          (declare (not safe))
          (__with-catch __tmp200173 __tmp200172))))))
