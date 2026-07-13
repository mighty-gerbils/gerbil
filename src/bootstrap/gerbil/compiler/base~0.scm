(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1783939350)
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
       (let ((_%$%verbosity197428197430%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity197428197430%_
             (let* ((_%verbosity197432%_ _%$%verbosity197428197430%_)
                    (_%$e197434%_ (string->number _%verbosity197432%_)))
               (if _%$e197434%_ _%$e197434%_ _%verbosity197432%_))
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
        (letrec ((_%hash-e197425%_
                  (lambda (_%id197427%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id197427%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e197425%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp197489 (list)) (__tmp197488 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp197489
         '(gensyms bindings)
         __tmp197488
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args197421%_
        (apply make-instance gxc#symbol-table::t _%$args197421%_)))
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
      (lambda (_%self197408%_)
        (let ((_%self197411%_ _%self197408%_))
          (if (let ((__tmp197490
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197411%_))))
                (declare (not safe))
                (##fx< '2 __tmp197490))
              (begin
                (let ((__tmp197491
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197411%_
                   __tmp197491
                   '1
                   '#f
                   '#f))
                (let ((__tmp197492
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197411%_
                   __tmp197492
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp197493
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197411%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self197411%_
                       '2
                       __tmp197493))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message197277%_ _%stx197278%_ . _%details197279%_)
        (let ((_%ctx197284%_
               (let ((_%$e197281%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e197281%_ _%$e197281%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx197284%_
                 _%message197277%_
                 _%stx197278%_
                 _%details197279%_))))
    (define gxc#verbose
      (lambda _%args197274%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp197494
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args197274%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp197494))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id197256%_)
        (let* ((_%str197258%_
                (if (symbol? _%id197256%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id197256%_))
                    _%id197256%_))
               (_%len197260%_ (string-length _%str197258%_))
               (_%res197262%_
                (let () (declare (not safe)) (##make-string _%len197260%_))))
          (let _%lp197265%_ ((_%i197267%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i197267%_ _%len197260%_))
                (let* ((_%char197269%_ (string-ref _%str197258%_ _%i197267%_))
                       (_%xchar197271%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char197269%_))
                            '#\_
                            _%char197269%_)))
                  (string-set! _%res197262%_ _%i197267%_ _%xchar197271%_)
                  (_%lp197265%_
                   (let () (declare (not safe)) (##fx+ _%i197267%_ '1))))
                _%res197262%_)))))
    (define gxc#map*
      (lambda (_%proc197198%_ _%maybe-improper-list197199%_)
        (let _%recur197201%_ ((_%rest197203%_ _%maybe-improper-list197199%_))
          (let* ((_%$%rest197204197215%_ _%rest197203%_)
                 (_%$%E197208197219%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest197204197215%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K197211197244%_
                   (lambda (_%rest197241%_ _%hd197242%_)
                     (cons (_%proc197198%_ _%hd197242%_)
                           (_%recur197201%_ _%rest197241%_))))
                  (_%$%K197210197235%_ (lambda () '()))
                  (_%$%K197209197225%_
                   (lambda (_%tail197223%_) (_%proc197198%_ _%tail197223%_))))
              (let ((_%$%try-match197206197238%_
                     (lambda ()
                       (if (null? _%$%rest197204197215%_)
                           (_%$%K197210197235%_)
                           (let ((_%tail197228%_ _%$%rest197204197215%_))
                             (declare (not safe))
                             (_%proc197198%_ _%tail197228%_))))))
                (if (pair? _%$%rest197204197215%_)
                    (let ((_%$%tl197213197249%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest197204197215%_)))
                          (_%$%hd197212197247%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest197204197215%_))))
                      (let ((_%hd197252%_ _%$%hd197212197247%_)
                            (_%rest197254%_ _%$%tl197213197249%_))
                        (_%$%K197211197244%_ _%rest197254%_ _%hd197252%_)))
                    (_%$%try-match197206197238%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym197193%_)
        (let ((_%$e197195%_ (not (gxc#gensym-reference? _%sym197193%_))))
          (if _%$e197195%_
              _%$e197195%_
              (memq _%sym197193%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym197189%_)
        (let ((_%str197191%_ (symbol->string _%sym197189%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str197191%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str197191%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id197160%_)
        (let ((_%$e197162%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id197160%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id197160%_))
                   '#f)))
          (if _%$e197162%_
              (let ((_%eid197167%_
                     (##structure-ref _%$e197162%_ '1 gx#binding::t '#f))
                    (_%ht197168%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid197167%_))
                    _%eid197167%_
                    (let ((_%$e197171%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht197168%_ _%eid197167%_))))
                      (if _%$e197171%_
                          _%$e197171%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e197162%_
                                 'gx#local-binding::t))
                              (let ((_%gid197175%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid197167%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht197168%_
                                   _%eid197167%_
                                   _%gid197175%_))
                                _%gid197175%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e197162%_
                                     'gx#module-binding::t))
                                  (let ((_%gid197184%_
                                         (let ((_%$e197178%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e197162%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e197178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e197178%_
                                                  '"#"
                                                  _%eid197167%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid197167%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht197168%_
                                       _%eid197167%_
                                       _%gid197184%_))
                                    _%gid197184%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id197160%_
                                   _%eid197167%_
                                   _%$e197162%_)))))))
              (if (let ((__tmp197495
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id197160%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp197495))
                  (let () (declare (not safe)) (gx#stx-e _%id197160%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id197160%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id197158%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id197158%_))
            (gxc#generate-runtime-binding-id _%id197158%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top197145%_)
        (if _%top197145%_
            (let ((_%ns197147%_
                   (##structure-ref
                    (let ((__tmp197496
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp197496))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi197148%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns197147%_
                  (if (fxpositive? _%phi197148%_)
                      (let ((__tmp197498 (number->string _%phi197148%_))
                            (__tmp197497
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns197147%_
                         '"["
                         __tmp197498
                         '"]#_"
                         __tmp197497
                         '"_"))
                      (let ((__tmp197499
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns197147%_ '"#_" __tmp197499 '"_")))
                  (if (fxpositive? _%phi197148%_)
                      (let ((__tmp197501 (number->string _%phi197148%_))
                            (__tmp197500
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp197501
                         '"]#_"
                         __tmp197500
                         '"_"))
                      (let ((__tmp197502
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp197502 '"_")))))
            (let ((__tmp197503 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp197503 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top197154%_ '#f))
          (gxc#generate-runtime-temporary__% _%top197154%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g197504_
        (let ((_g197505_ (let () (declare (not safe)) (##length _g197504_))))
          (cond ((let () (declare (not safe)) (##fx= _g197505_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g197504_))
                ((let () (declare (not safe)) (##fx= _g197505_ 1))
                 (apply gxc#generate-runtime-temporary__% _g197504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g197504_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym197123%_ _%quote?197124%_)
        (let* ((_%ht197126%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e197128%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht197126%_ _%sym197123%_))))
          (if _%$e197128%_
              _%$e197128%_
              (let ((_%g197132%_
                     (if _%quote?197124%_
                         (let ((__tmp197506
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym197123%_
                            '"__"
                            __tmp197506))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym197123%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht197126%_ _%sym197123%_ _%g197132%_))
                _%g197132%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym197137%_)
        (let ((_%quote?197139%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym197137%_
           _%quote?197139%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g197507_
        (let ((_g197508_ (let () (declare (not safe)) (##length _g197507_))))
          (cond ((let () (declare (not safe)) (##fx= _g197508_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g197507_))
                ((let () (declare (not safe)) (##fx= _g197508_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g197507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g197507_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id197120%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id197120%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key197075%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key197075%_))
            _%key197075%_
            (if (uninterned-symbol? _%key197075%_)
                (gxc#generate-runtime-gensym-reference__0 _%key197075%_)
                (let* ((_%$%key197079197086%_ _%key197075%_)
                       (_%$%E197081197090%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key197079197086%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K197082197108%_
                        (lambda (_%mark197093%_ _%eid197094%_)
                          (let ((_%$e197096%_
                                 (##structure-ref
                                  _%mark197093%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e197096%_
                                (let ((_%$e197101%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e197096%_
                                          _%eid197094%_))))
                                  (if _%$e197101%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e197101%_))
                                          _%$e197101%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e197101%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid197094%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid197094%_))))))
                  (if (pair? _%$%key197079197086%_)
                      (let ((_%$%hd197083197111%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key197079197086%_)))
                            (_%$%tl197084197113%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key197079197086%_))))
                        (let* ((_%eid197116%_ _%$%hd197083197111%_)
                               (_%mark197118%_ _%$%tl197084197113%_))
                          (_%$%K197082197108%_ _%mark197118%_ _%eid197116%_)))
                      (_%$%E197081197090%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1197068%_ _%id2197069%_)
        (letrec ((_%symbol-e197071%_
                  (lambda (_%id197073%_)
                    (if (symbol? _%id197073%_)
                        _%id197073%_
                        (gxc#generate-runtime-binding-id _%id197073%_)))))
          (eq? (_%symbol-e197071%_ _%id1197068%_)
               (_%symbol-e197071%_ _%id2197069%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx197066%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx197066%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx197066%_)
            (let () (declare (not safe)) (gx#stx-e _%stx197066%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id196988%_)
        (let* ((_%bind196990%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id196988%_)))
               (_%runtime-props197019%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind196990%_
                       'gx#runtime-binding::t))
                    (let* ((_%props196999%_
                            (let ((_%$e196993%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind196990%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e196993%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e196993%_)
                                              '()))
                                  '())))
                           (_%props197015%_
                            (let ((_%$e197001%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind196990%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e197001%_
                                  (let ((_%$e197006%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e197001%_
                                            ':repr))))
                                    (if _%$e197006%_
                                        (let ((_%repr197011%_
                                               (_%$e197006%_ _%$e197001%_)))
                                          (cons 'type:
                                                (cons _%repr197011%_
                                                      _%props196999%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id196988%_
                                         _%$e197001%_)))
                                  _%props196999%_))))
                      _%props197015%_)
                    '()))
               (_%$e197022%_
                (##structure-ref _%bind196990%_ '4 gx#binding::t '#f)))
          (if _%$e197022%_
              (let ((__tmp197509
                     (lambda (_%prop197027%_ _%props197028%_)
                       (let* ((_%$%prop197029197036%_ _%prop197027%_)
                              (_%$%E197031197039%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop197029197036%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K197032197053%_
                               (lambda (_%value197042%_ _%key197043%_)
                                 (let ((_%$e197045%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value197042%_
                                           ':repr))))
                                   (if _%$e197045%_
                                       (let ((_%repr197050%_
                                              (_%$e197045%_ _%value197042%_)))
                                         (cons _%key197043%_
                                               (cons _%repr197050%_
                                                     _%props197028%_)))
                                       (cons _%key197043%_
                                             (cons (cons 'quote
                                                         (cons _%value197042%_
                                                               '()))
                                                   _%props197028%_)))))))
                         (if (pair? _%$%prop197029197036%_)
                             (let ((_%$%hd197033197056%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop197029197036%_)))
                                   (_%$%tl197034197058%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop197029197036%_))))
                               (let* ((_%key197061%_ _%$%hd197033197056%_)
                                      (_%value197063%_ _%$%tl197034197058%_))
                                 (_%$%K197032197053%_
                                  _%value197063%_
                                  _%key197061%_)))
                             (_%$%E197031197039%_))))))
                (declare (not safe))
                (foldl__0 __tmp197509 _%runtime-props197019%_ _%$e197022%_))
              _%runtime-props197019%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk196973%_ _%name196974%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job196976%_
               (gxc#make-compile-job _%thunk196973%_ _%name196974%_)))
          (set! gxc#__compile-jobs (cons _%job196976%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk196981%_)
        (let ((_%name196983%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk196981%_ _%name196983%_))))
    (define gxc#add-compile-job!
      (lambda _g197510_
        (let ((_g197511_ (let () (declare (not safe)) (##length _g197510_))))
          (cond ((let () (declare (not safe)) (##fx= _g197511_ 1))
                 (apply gxc#add-compile-job!__0 _g197510_))
                ((let () (declare (not safe)) (##fx= _g197511_ 2))
                 (apply gxc#add-compile-job!__% _g197510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g197510_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result196970%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result196970%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop196964%_ ()
          (let ((_%pending196967%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending196967%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending196967%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending196967%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk196953%_ _%name196954%_)
        (make-thread
         (lambda ()
           (let _%loop196957%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp197512
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name196954%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp197512))
                   (let ((__tmp197514 (lambda () (_%thunk196953%_)))
                         (__tmp197513
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp197514 __tmp197513)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop196957%_)))))
         _%name196954%_)))
    (define gxc#join!
      (lambda (_%thread196948%_)
        (let ((__tmp197516
               (lambda (_%exn196950%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn196950%_))
                     (let ((__tmp197517
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn196950%_))))
                       (declare (not safe))
                       (raise __tmp197517))
                     (let () (declare (not safe)) (raise _%exn196950%_)))))
              (__tmp197515 (lambda () (thread-join! _%thread196948%_))))
          (declare (not safe))
          (__with-catch __tmp197516 __tmp197515))))))
