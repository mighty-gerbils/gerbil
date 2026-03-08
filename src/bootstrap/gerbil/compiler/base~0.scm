(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1773012986)
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
       (let ((_%verbosity191737191739%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity191737191739%_
             (let* ((_%verbosity191741%_ _%verbosity191737191739%_)
                    (_%$e191743%_ (string->number _%verbosity191741%_)))
               (if _%$e191743%_ _%$e191743%_ _%verbosity191741%_))
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
        (letrec ((_%hash-e191734%_
                  (lambda (_%id191736%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id191736%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e191734%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp191798 (list)) (__tmp191797 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp191798
         '(gensyms bindings)
         __tmp191797
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args191730%_
        (apply make-instance gxc#symbol-table::t _%$args191730%_)))
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
      (lambda (_%self191717%_)
        (let ((_%self191720%_ _%self191717%_))
          (if (let ((__tmp191799
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191720%_))))
                (declare (not safe))
                (##fx< '2 __tmp191799))
              (begin
                (let ((__tmp191800
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191720%_
                   __tmp191800
                   '1
                   '#f
                   '#f))
                (let ((__tmp191801
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191720%_
                   __tmp191801
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp191802
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191720%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191720%_
                       '2
                       __tmp191802))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message191586%_ _%stx191587%_ . _%details191588%_)
        (let ((_%ctx191593%_
               (let ((_%$e191590%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e191590%_ _%$e191590%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx191593%_
                 _%message191586%_
                 _%stx191587%_
                 _%details191588%_))))
    (define gxc#verbose
      (lambda _%args191583%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp191803
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args191583%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp191803))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id191565%_)
        (let* ((_%str191567%_
                (if (symbol? _%id191565%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id191565%_))
                    _%id191565%_))
               (_%len191569%_ (string-length _%str191567%_))
               (_%res191571%_
                (let () (declare (not safe)) (##make-string _%len191569%_))))
          (let _%lp191574%_ ((_%i191576%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i191576%_ _%len191569%_))
                (let* ((_%char191578%_ (string-ref _%str191567%_ _%i191576%_))
                       (_%xchar191580%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char191578%_))
                            '#\_
                            _%char191578%_)))
                  (string-set! _%res191571%_ _%i191576%_ _%xchar191580%_)
                  (_%lp191574%_
                   (let () (declare (not safe)) (##fx+ _%i191576%_ '1))))
                _%res191571%_)))))
    (define gxc#map*
      (lambda (_%proc191507%_ _%maybe-improper-list191508%_)
        (let _%recur191510%_ ((_%rest191512%_ _%maybe-improper-list191508%_))
          (let* ((_%rest191513191524%_ _%rest191512%_)
                 (_%E191517191528%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest191513191524%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K191520191553%_
                   (lambda (_%rest191550%_ _%hd191551%_)
                     (cons (_%proc191507%_ _%hd191551%_)
                           (_%recur191510%_ _%rest191550%_))))
                  (_%K191519191544%_ (lambda () '()))
                  (_%K191518191534%_
                   (lambda (_%tail191532%_) (_%proc191507%_ _%tail191532%_))))
              (let ((_%try-match191515191547%_
                     (lambda ()
                       (if (null? _%rest191513191524%_)
                           (_%K191519191544%_)
                           (let ((_%tail191537%_ _%rest191513191524%_))
                             (declare (not safe))
                             (_%proc191507%_ _%tail191537%_))))))
                (if (pair? _%rest191513191524%_)
                    (let ((_%tl191522191558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest191513191524%_)))
                          (_%hd191521191556%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest191513191524%_))))
                      (let ((_%hd191561%_ _%hd191521191556%_)
                            (_%rest191563%_ _%tl191522191558%_))
                        (_%K191520191553%_ _%rest191563%_ _%hd191561%_)))
                    (_%try-match191515191547%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym191502%_)
        (let ((_%$e191504%_ (not (gxc#gensym-reference? _%sym191502%_))))
          (if _%$e191504%_
              _%$e191504%_
              (memq _%sym191502%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym191498%_)
        (let ((_%str191500%_ (symbol->string _%sym191498%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str191500%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str191500%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id191469%_)
        (let ((_%$e191471%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id191469%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id191469%_))
                   '#f)))
          (if _%$e191471%_
              ((lambda (_%bind191474%_)
                 (let ((_%eid191476%_
                        (##structure-ref _%bind191474%_ '1 gx#binding::t '#f))
                       (_%ht191477%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid191476%_))
                       _%eid191476%_
                       (let ((_%$e191480%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht191477%_ _%eid191476%_))))
                         (if _%$e191480%_
                             _%$e191480%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind191474%_
                                    'gx#local-binding::t))
                                 (let ((_%gid191484%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid191476%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht191477%_
                                      _%eid191476%_
                                      _%gid191484%_))
                                   _%gid191484%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind191474%_
                                        'gx#module-binding::t))
                                     (let ((_%gid191493%_
                                            (let ((_%$e191487%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind191474%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e191487%_
                                                  ((lambda (_%ns191490%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns191490%_
                                                        '"#"
                                                        _%eid191476%_)))
                                                   _%$e191487%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid191476%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht191477%_
                                          _%eid191476%_
                                          _%gid191493%_))
                                       _%gid191493%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id191469%_
                                      _%eid191476%_
                                      _%bind191474%_))))))))
               _%$e191471%_)
              (if (let ((__tmp191804
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id191469%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp191804))
                  (let () (declare (not safe)) (gx#stx-e _%id191469%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id191469%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id191467%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id191467%_))
            (gxc#generate-runtime-binding-id _%id191467%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top191454%_)
        (if _%top191454%_
            (let ((_%ns191456%_
                   (##structure-ref
                    (let ((__tmp191805
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp191805))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi191457%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns191456%_
                  (if (fxpositive? _%phi191457%_)
                      (let ((__tmp191807 (number->string _%phi191457%_))
                            (__tmp191806
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns191456%_
                         '"["
                         __tmp191807
                         '"]#_"
                         __tmp191806
                         '"_"))
                      (let ((__tmp191808
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns191456%_ '"#_" __tmp191808 '"_")))
                  (if (fxpositive? _%phi191457%_)
                      (let ((__tmp191810 (number->string _%phi191457%_))
                            (__tmp191809
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp191810
                         '"]#_"
                         __tmp191809
                         '"_"))
                      (let ((__tmp191811
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp191811 '"_")))))
            (let ((__tmp191812 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp191812 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top191463%_ '#f))
          (gxc#generate-runtime-temporary__% _%top191463%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g191813_
        (let ((_g191814_ (let () (declare (not safe)) (##length _g191813_))))
          (cond ((let () (declare (not safe)) (##fx= _g191814_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g191813_))
                ((let () (declare (not safe)) (##fx= _g191814_ 1))
                 (apply gxc#generate-runtime-temporary__% _g191813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g191813_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym191432%_ _%quote?191433%_)
        (let* ((_%ht191435%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e191437%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht191435%_ _%sym191432%_))))
          (if _%$e191437%_
              _%$e191437%_
              (let ((_%g191441%_
                     (if _%quote?191433%_
                         (let ((__tmp191815
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym191432%_
                            '"__"
                            __tmp191815))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym191432%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht191435%_ _%sym191432%_ _%g191441%_))
                _%g191441%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym191446%_)
        (let ((_%quote?191448%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym191446%_
           _%quote?191448%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g191816_
        (let ((_g191817_ (let () (declare (not safe)) (##length _g191816_))))
          (cond ((let () (declare (not safe)) (##fx= _g191817_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g191816_))
                ((let () (declare (not safe)) (##fx= _g191817_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g191816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g191816_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id191429%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id191429%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key191384%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key191384%_))
            _%key191384%_
            (if (uninterned-symbol? _%key191384%_)
                (gxc#generate-runtime-gensym-reference__0 _%key191384%_)
                (let* ((_%key191388191395%_ _%key191384%_)
                       (_%E191390191399%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key191388191395%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K191391191417%_
                        (lambda (_%mark191402%_ _%eid191403%_)
                          (let ((_%$e191405%_
                                 (##structure-ref
                                  _%mark191402%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e191405%_
                                ((lambda (_%ht191408%_)
                                   (let ((_%$e191410%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht191408%_
                                             _%eid191403%_))))
                                     (if _%$e191410%_
                                         ((lambda (_%id191413%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id191413%_))
                                                _%id191413%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id191413%_)))
                                          _%$e191410%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid191403%_))))
                                 _%$e191405%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid191403%_))))))
                  (if (pair? _%key191388191395%_)
                      (let ((_%hd191392191420%_
                             (let ()
                               (declare (not safe))
                               (##car _%key191388191395%_)))
                            (_%tl191393191422%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key191388191395%_))))
                        (let* ((_%eid191425%_ _%hd191392191420%_)
                               (_%mark191427%_ _%tl191393191422%_))
                          (_%K191391191417%_ _%mark191427%_ _%eid191425%_)))
                      (_%E191390191399%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1191377%_ _%id2191378%_)
        (letrec ((_%symbol-e191380%_
                  (lambda (_%id191382%_)
                    (if (symbol? _%id191382%_)
                        _%id191382%_
                        (gxc#generate-runtime-binding-id _%id191382%_)))))
          (eq? (_%symbol-e191380%_ _%id1191377%_)
               (_%symbol-e191380%_ _%id2191378%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx191375%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx191375%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx191375%_)
            (let () (declare (not safe)) (gx#stx-e _%stx191375%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id191297%_)
        (let* ((_%bind191299%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id191297%_)))
               (_%runtime-props191328%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind191299%_
                       'gx#runtime-binding::t))
                    (let* ((_%props191308%_
                            (let ((_%$e191302%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191299%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e191302%_
                                  ((lambda (_%macro-id191305%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id191305%_)
                                                 '())))
                                   _%$e191302%_)
                                  '())))
                           (_%props191324%_
                            (let ((_%$e191310%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191299%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e191310%_
                                  ((lambda (_%type191313%_)
                                     (let ((_%$e191315%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type191313%_
                                               ':repr))))
                                       (if _%$e191315%_
                                           ((lambda (_%method191318%_)
                                              (let ((_%repr191320%_
                                                     (_%method191318%_
                                                      _%type191313%_)))
                                                (cons 'type:
                                                      (cons _%repr191320%_
                                                            _%props191308%_))))
                                            _%$e191315%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id191297%_
                                            _%type191313%_))))
                                   _%$e191310%_)
                                  _%props191308%_))))
                      _%props191324%_)
                    '()))
               (_%$e191331%_
                (##structure-ref _%bind191299%_ '4 gx#binding::t '#f)))
          (if _%$e191331%_
              ((lambda (_%props191334%_)
                 (let ((__tmp191818
                        (lambda (_%prop191336%_ _%props191337%_)
                          (let* ((_%prop191338191345%_ _%prop191336%_)
                                 (_%E191340191348%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop191338191345%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K191341191362%_
                                  (lambda (_%value191351%_ _%key191352%_)
                                    (let ((_%$e191354%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value191351%_
                                              ':repr))))
                                      (if _%$e191354%_
                                          ((lambda (_%method191357%_)
                                             (let ((_%repr191359%_
                                                    (_%method191357%_
                                                     _%value191351%_)))
                                               (cons _%key191352%_
                                                     (cons _%repr191359%_
                                                           _%props191337%_))))
                                           _%$e191354%_)
                                          (cons _%key191352%_
                                                (cons (cons 'quote
                                                            (cons _%value191351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props191337%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop191338191345%_)
                                (let ((_%hd191342191365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop191338191345%_)))
                                      (_%tl191343191367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop191338191345%_))))
                                  (let* ((_%key191370%_ _%hd191342191365%_)
                                         (_%value191372%_ _%tl191343191367%_))
                                    (_%K191341191362%_
                                     _%value191372%_
                                     _%key191370%_)))
                                (_%E191340191348%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp191818
                    _%runtime-props191328%_
                    _%props191334%_)))
               _%$e191331%_)
              _%runtime-props191328%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk191282%_ _%name191283%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job191285%_
               (gxc#make-compile-job _%thunk191282%_ _%name191283%_)))
          (set! gxc#__compile-jobs (cons _%job191285%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk191290%_)
        (let ((_%name191292%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk191290%_ _%name191292%_))))
    (define gxc#add-compile-job!
      (lambda _g191819_
        (let ((_g191820_ (let () (declare (not safe)) (##length _g191819_))))
          (cond ((let () (declare (not safe)) (##fx= _g191820_ 1))
                 (apply gxc#add-compile-job!__0 _g191819_))
                ((let () (declare (not safe)) (##fx= _g191820_ 2))
                 (apply gxc#add-compile-job!__% _g191819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g191819_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result191279%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result191279%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop191273%_ ()
          (let ((_%pending191276%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending191276%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending191276%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending191276%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk191262%_ _%name191263%_)
        (make-thread
         (lambda ()
           (let _%loop191266%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp191821
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name191263%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp191821))
                   (let ((__tmp191823 (lambda () (_%thunk191262%_)))
                         (__tmp191822
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp191823 __tmp191822)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop191266%_)))))
         _%name191263%_)))
    (define gxc#join!
      (lambda (_%thread191257%_)
        (let ((__tmp191825
               (lambda (_%exn191259%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn191259%_))
                     (let ((__tmp191826
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn191259%_))))
                       (declare (not safe))
                       (raise __tmp191826))
                     (let () (declare (not safe)) (raise _%exn191259%_)))))
              (__tmp191824 (lambda () (thread-join! _%thread191257%_))))
          (declare (not safe))
          (__with-catch __tmp191825 __tmp191824))))))
