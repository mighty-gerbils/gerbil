(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770607524)
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
       (let ((_%verbosity188757188759%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity188757188759%_
             (let* ((_%verbosity188761%_ _%verbosity188757188759%_)
                    (_%$e188763%_ (string->number _%verbosity188761%_)))
               (if _%$e188763%_ _%$e188763%_ _%verbosity188761%_))
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
        (letrec ((_%hash-e188754%_
                  (lambda (_%id188756%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id188756%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e188754%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp188818 (list)) (__tmp188817 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp188818
         '(gensyms bindings)
         __tmp188817
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args188750%_
        (apply make-instance gxc#symbol-table::t _%$args188750%_)))
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
      (lambda (_%self188737%_)
        (let ((_%self188740%_ _%self188737%_))
          (if (let ((__tmp188819
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self188740%_))))
                (declare (not safe))
                (##fx< '2 __tmp188819))
              (begin
                (let ((__tmp188820
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self188740%_
                   __tmp188820
                   '1
                   '#f
                   '#f))
                (let ((__tmp188821
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self188740%_
                   __tmp188821
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp188822
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self188740%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self188740%_
                       '2
                       __tmp188822))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message188606%_ _%stx188607%_ . _%details188608%_)
        (let ((_%ctx188613%_
               (let ((_%$e188610%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e188610%_ _%$e188610%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx188613%_
                 _%message188606%_
                 _%stx188607%_
                 _%details188608%_))))
    (define gxc#verbose
      (lambda _%args188603%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp188823
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args188603%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp188823))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id188585%_)
        (let* ((_%str188587%_
                (if (symbol? _%id188585%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id188585%_))
                    _%id188585%_))
               (_%len188589%_ (string-length _%str188587%_))
               (_%res188591%_
                (let () (declare (not safe)) (##make-string _%len188589%_))))
          (let _%lp188594%_ ((_%i188596%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i188596%_ _%len188589%_))
                (let* ((_%char188598%_ (string-ref _%str188587%_ _%i188596%_))
                       (_%xchar188600%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char188598%_))
                            '#\_
                            _%char188598%_)))
                  (string-set! _%res188591%_ _%i188596%_ _%xchar188600%_)
                  (_%lp188594%_
                   (let () (declare (not safe)) (##fx+ _%i188596%_ '1))))
                _%res188591%_)))))
    (define gxc#map*
      (lambda (_%proc188527%_ _%maybe-improper-list188528%_)
        (let _%recur188530%_ ((_%rest188532%_ _%maybe-improper-list188528%_))
          (let* ((_%rest188533188544%_ _%rest188532%_)
                 (_%E188537188548%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest188533188544%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K188540188573%_
                   (lambda (_%rest188570%_ _%hd188571%_)
                     (cons (_%proc188527%_ _%hd188571%_)
                           (_%recur188530%_ _%rest188570%_))))
                  (_%K188539188564%_ (lambda () '()))
                  (_%K188538188554%_
                   (lambda (_%tail188552%_) (_%proc188527%_ _%tail188552%_))))
              (let ((_%try-match188535188567%_
                     (lambda ()
                       (if (null? _%rest188533188544%_)
                           (_%K188539188564%_)
                           (let ((_%tail188557%_ _%rest188533188544%_))
                             (declare (not safe))
                             (_%proc188527%_ _%tail188557%_))))))
                (if (pair? _%rest188533188544%_)
                    (let ((_%tl188542188578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest188533188544%_)))
                          (_%hd188541188576%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest188533188544%_))))
                      (let ((_%hd188581%_ _%hd188541188576%_)
                            (_%rest188583%_ _%tl188542188578%_))
                        (_%K188540188573%_ _%rest188583%_ _%hd188581%_)))
                    (_%try-match188535188567%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym188522%_)
        (let ((_%$e188524%_ (not (gxc#gensym-reference? _%sym188522%_))))
          (if _%$e188524%_
              _%$e188524%_
              (memq _%sym188522%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym188518%_)
        (let ((_%str188520%_ (symbol->string _%sym188518%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str188520%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str188520%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id188489%_)
        (let ((_%$e188491%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id188489%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id188489%_))
                   '#f)))
          (if _%$e188491%_
              ((lambda (_%bind188494%_)
                 (let ((_%eid188496%_
                        (##structure-ref _%bind188494%_ '1 gx#binding::t '#f))
                       (_%ht188497%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid188496%_))
                       _%eid188496%_
                       (let ((_%$e188500%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht188497%_ _%eid188496%_))))
                         (if _%$e188500%_
                             _%$e188500%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind188494%_
                                    'gx#local-binding::t))
                                 (let ((_%gid188504%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid188496%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht188497%_
                                      _%eid188496%_
                                      _%gid188504%_))
                                   _%gid188504%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind188494%_
                                        'gx#module-binding::t))
                                     (let ((_%gid188513%_
                                            (let ((_%$e188507%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind188494%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e188507%_
                                                  ((lambda (_%ns188510%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns188510%_
                                                        '"#"
                                                        _%eid188496%_)))
                                                   _%$e188507%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid188496%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht188497%_
                                          _%eid188496%_
                                          _%gid188513%_))
                                       _%gid188513%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id188489%_
                                      _%eid188496%_
                                      _%bind188494%_))))))))
               _%$e188491%_)
              (if (let ((__tmp188824
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id188489%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp188824))
                  (let () (declare (not safe)) (gx#stx-e _%id188489%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id188489%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id188487%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id188487%_))
            (gxc#generate-runtime-binding-id _%id188487%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top188474%_)
        (if _%top188474%_
            (let ((_%ns188476%_
                   (##structure-ref
                    (let ((__tmp188825
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp188825))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi188477%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns188476%_
                  (if (fxpositive? _%phi188477%_)
                      (let ((__tmp188827 (number->string _%phi188477%_))
                            (__tmp188826
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns188476%_
                         '"["
                         __tmp188827
                         '"]#_"
                         __tmp188826
                         '"_"))
                      (let ((__tmp188828
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns188476%_ '"#_" __tmp188828 '"_")))
                  (if (fxpositive? _%phi188477%_)
                      (let ((__tmp188830 (number->string _%phi188477%_))
                            (__tmp188829
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp188830
                         '"]#_"
                         __tmp188829
                         '"_"))
                      (let ((__tmp188831
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp188831 '"_")))))
            (let ((__tmp188832 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp188832 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top188483%_ '#f))
          (gxc#generate-runtime-temporary__% _%top188483%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g188833_
        (let ((_g188834_ (let () (declare (not safe)) (##length _g188833_))))
          (cond ((let () (declare (not safe)) (##fx= _g188834_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g188833_))
                ((let () (declare (not safe)) (##fx= _g188834_ 1))
                 (apply gxc#generate-runtime-temporary__% _g188833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g188833_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym188452%_ _%quote?188453%_)
        (let* ((_%ht188455%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e188457%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht188455%_ _%sym188452%_))))
          (if _%$e188457%_
              _%$e188457%_
              (let ((_%g188461%_
                     (if _%quote?188453%_
                         (let ((__tmp188835
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym188452%_
                            '"__"
                            __tmp188835))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym188452%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht188455%_ _%sym188452%_ _%g188461%_))
                _%g188461%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym188466%_)
        (let ((_%quote?188468%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym188466%_
           _%quote?188468%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g188836_
        (let ((_g188837_ (let () (declare (not safe)) (##length _g188836_))))
          (cond ((let () (declare (not safe)) (##fx= _g188837_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g188836_))
                ((let () (declare (not safe)) (##fx= _g188837_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g188836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g188836_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id188449%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id188449%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key188404%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key188404%_))
            _%key188404%_
            (if (uninterned-symbol? _%key188404%_)
                (gxc#generate-runtime-gensym-reference__0 _%key188404%_)
                (let* ((_%key188408188415%_ _%key188404%_)
                       (_%E188410188419%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key188408188415%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K188411188437%_
                        (lambda (_%mark188422%_ _%eid188423%_)
                          (let ((_%$e188425%_
                                 (##structure-ref
                                  _%mark188422%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e188425%_
                                ((lambda (_%ht188428%_)
                                   (let ((_%$e188430%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht188428%_
                                             _%eid188423%_))))
                                     (if _%$e188430%_
                                         ((lambda (_%id188433%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id188433%_))
                                                _%id188433%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id188433%_)))
                                          _%$e188430%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid188423%_))))
                                 _%$e188425%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid188423%_))))))
                  (if (pair? _%key188408188415%_)
                      (let ((_%hd188412188440%_
                             (let ()
                               (declare (not safe))
                               (##car _%key188408188415%_)))
                            (_%tl188413188442%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key188408188415%_))))
                        (let* ((_%eid188445%_ _%hd188412188440%_)
                               (_%mark188447%_ _%tl188413188442%_))
                          (_%K188411188437%_ _%mark188447%_ _%eid188445%_)))
                      (_%E188410188419%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1188397%_ _%id2188398%_)
        (letrec ((_%symbol-e188400%_
                  (lambda (_%id188402%_)
                    (if (symbol? _%id188402%_)
                        _%id188402%_
                        (gxc#generate-runtime-binding-id _%id188402%_)))))
          (eq? (_%symbol-e188400%_ _%id1188397%_)
               (_%symbol-e188400%_ _%id2188398%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx188395%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx188395%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx188395%_)
            (let () (declare (not safe)) (gx#stx-e _%stx188395%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id188317%_)
        (let* ((_%bind188319%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id188317%_)))
               (_%runtime-props188348%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind188319%_
                       'gx#runtime-binding::t))
                    (let* ((_%props188328%_
                            (let ((_%$e188322%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind188319%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e188322%_
                                  ((lambda (_%macro-id188325%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id188325%_)
                                                 '())))
                                   _%$e188322%_)
                                  '())))
                           (_%props188344%_
                            (let ((_%$e188330%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind188319%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e188330%_
                                  ((lambda (_%type188333%_)
                                     (let ((_%$e188335%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type188333%_
                                               ':repr))))
                                       (if _%$e188335%_
                                           ((lambda (_%method188338%_)
                                              (let ((_%repr188340%_
                                                     (_%method188338%_
                                                      _%type188333%_)))
                                                (cons 'type:
                                                      (cons _%repr188340%_
                                                            _%props188328%_))))
                                            _%$e188335%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id188317%_
                                            _%type188333%_))))
                                   _%$e188330%_)
                                  _%props188328%_))))
                      _%props188344%_)
                    '()))
               (_%$e188351%_
                (##structure-ref _%bind188319%_ '4 gx#binding::t '#f)))
          (if _%$e188351%_
              ((lambda (_%props188354%_)
                 (let ((__tmp188838
                        (lambda (_%prop188356%_ _%props188357%_)
                          (let* ((_%prop188358188365%_ _%prop188356%_)
                                 (_%E188360188368%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop188358188365%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K188361188382%_
                                  (lambda (_%value188371%_ _%key188372%_)
                                    (let ((_%$e188374%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value188371%_
                                              ':repr))))
                                      (if _%$e188374%_
                                          ((lambda (_%method188377%_)
                                             (let ((_%repr188379%_
                                                    (_%method188377%_
                                                     _%value188371%_)))
                                               (cons _%key188372%_
                                                     (cons _%repr188379%_
                                                           _%props188357%_))))
                                           _%$e188374%_)
                                          (cons _%key188372%_
                                                (cons (cons 'quote
                                                            (cons _%value188371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props188357%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop188358188365%_)
                                (let ((_%hd188362188385%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop188358188365%_)))
                                      (_%tl188363188387%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop188358188365%_))))
                                  (let* ((_%key188390%_ _%hd188362188385%_)
                                         (_%value188392%_ _%tl188363188387%_))
                                    (_%K188361188382%_
                                     _%value188392%_
                                     _%key188390%_)))
                                (_%E188360188368%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp188838
                    _%runtime-props188348%_
                    _%props188354%_)))
               _%$e188351%_)
              _%runtime-props188348%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk188302%_ _%name188303%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job188305%_
               (gxc#make-compile-job _%thunk188302%_ _%name188303%_)))
          (set! gxc#__compile-jobs (cons _%job188305%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk188310%_)
        (let ((_%name188312%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk188310%_ _%name188312%_))))
    (define gxc#add-compile-job!
      (lambda _g188839_
        (let ((_g188840_ (let () (declare (not safe)) (##length _g188839_))))
          (cond ((let () (declare (not safe)) (##fx= _g188840_ 1))
                 (apply gxc#add-compile-job!__0 _g188839_))
                ((let () (declare (not safe)) (##fx= _g188840_ 2))
                 (apply gxc#add-compile-job!__% _g188839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g188839_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result188299%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result188299%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop188293%_ ()
          (let ((_%pending188296%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending188296%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending188296%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending188296%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk188282%_ _%name188283%_)
        (make-thread
         (lambda ()
           (let _%loop188286%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp188841
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name188283%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp188841))
                   (let ((__tmp188843 (lambda () (_%thunk188282%_)))
                         (__tmp188842
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp188843 __tmp188842)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop188286%_)))))
         _%name188283%_)))
    (define gxc#join!
      (lambda (_%thread188277%_)
        (let ((__tmp188845
               (lambda (_%exn188279%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn188279%_))
                     (let ((__tmp188846
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn188279%_))))
                       (declare (not safe))
                       (raise __tmp188846))
                     (let () (declare (not safe)) (raise _%exn188279%_)))))
              (__tmp188844 (lambda () (thread-join! _%thread188277%_))))
          (declare (not safe))
          (__with-catch __tmp188845 __tmp188844))))))
