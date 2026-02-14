(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771036677)
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
       (let ((_%verbosity373480373482%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity373480373482%_
             (let* ((_%verbosity373484%_ _%verbosity373480373482%_)
                    (_%$e373486%_ (string->number _%verbosity373484%_)))
               (if _%$e373486%_ _%$e373486%_ _%verbosity373484%_))
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
        (letrec ((_%hash-e373477%_
                  (lambda (_%id373479%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id373479%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e373477%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp373541 (list)) (__tmp373540 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp373541
         '(gensyms bindings)
         __tmp373540
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args373473%_
        (apply make-instance gxc#symbol-table::t _%$args373473%_)))
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
      (lambda (_%self373460%_)
        (let ((_%self373463%_ _%self373460%_))
          (if (let ((__tmp373542
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self373463%_))))
                (declare (not safe))
                (##fx< '2 __tmp373542))
              (begin
                (let ((__tmp373543
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self373463%_
                   __tmp373543
                   '1
                   '#f
                   '#f))
                (let ((__tmp373544
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self373463%_
                   __tmp373544
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp373545
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self373463%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self373463%_
                       '2
                       __tmp373545))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message373329%_ _%stx373330%_ . _%details373331%_)
        (let ((_%ctx373336%_
               (let ((_%$e373333%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e373333%_ _%$e373333%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx373336%_
                 _%message373329%_
                 _%stx373330%_
                 _%details373331%_))))
    (define gxc#verbose
      (lambda _%args373326%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp373546
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args373326%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp373546))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id373308%_)
        (let* ((_%str373310%_
                (if (symbol? _%id373308%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id373308%_))
                    _%id373308%_))
               (_%len373312%_ (string-length _%str373310%_))
               (_%res373314%_
                (let () (declare (not safe)) (##make-string _%len373312%_))))
          (let _%lp373317%_ ((_%i373319%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i373319%_ _%len373312%_))
                (let* ((_%char373321%_ (string-ref _%str373310%_ _%i373319%_))
                       (_%xchar373323%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char373321%_))
                            '#\_
                            _%char373321%_)))
                  (string-set! _%res373314%_ _%i373319%_ _%xchar373323%_)
                  (_%lp373317%_
                   (let () (declare (not safe)) (##fx+ _%i373319%_ '1))))
                _%res373314%_)))))
    (define gxc#map*
      (lambda (_%proc373250%_ _%maybe-improper-list373251%_)
        (let _%recur373253%_ ((_%rest373255%_ _%maybe-improper-list373251%_))
          (let* ((_%rest373256373267%_ _%rest373255%_)
                 (_%E373260373271%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest373256373267%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K373263373296%_
                   (lambda (_%rest373293%_ _%hd373294%_)
                     (cons (_%proc373250%_ _%hd373294%_)
                           (_%recur373253%_ _%rest373293%_))))
                  (_%K373262373287%_ (lambda () '()))
                  (_%K373261373277%_
                   (lambda (_%tail373275%_) (_%proc373250%_ _%tail373275%_))))
              (let ((_%try-match373258373290%_
                     (lambda ()
                       (if (null? _%rest373256373267%_)
                           (_%K373262373287%_)
                           (let ((_%tail373280%_ _%rest373256373267%_))
                             (declare (not safe))
                             (_%proc373250%_ _%tail373280%_))))))
                (if (pair? _%rest373256373267%_)
                    (let ((_%tl373265373301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest373256373267%_)))
                          (_%hd373264373299%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest373256373267%_))))
                      (let ((_%hd373304%_ _%hd373264373299%_)
                            (_%rest373306%_ _%tl373265373301%_))
                        (_%K373263373296%_ _%rest373306%_ _%hd373304%_)))
                    (_%try-match373258373290%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym373245%_)
        (let ((_%$e373247%_ (not (gxc#gensym-reference? _%sym373245%_))))
          (if _%$e373247%_
              _%$e373247%_
              (memq _%sym373245%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym373241%_)
        (let ((_%str373243%_ (symbol->string _%sym373241%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str373243%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str373243%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id373212%_)
        (let ((_%$e373214%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id373212%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id373212%_))
                   '#f)))
          (if _%$e373214%_
              ((lambda (_%bind373217%_)
                 (let ((_%eid373219%_
                        (##structure-ref _%bind373217%_ '1 gx#binding::t '#f))
                       (_%ht373220%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid373219%_))
                       _%eid373219%_
                       (let ((_%$e373223%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht373220%_ _%eid373219%_))))
                         (if _%$e373223%_
                             _%$e373223%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind373217%_
                                    'gx#local-binding::t))
                                 (let ((_%gid373227%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid373219%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht373220%_
                                      _%eid373219%_
                                      _%gid373227%_))
                                   _%gid373227%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind373217%_
                                        'gx#module-binding::t))
                                     (let ((_%gid373236%_
                                            (let ((_%$e373230%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind373217%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e373230%_
                                                  ((lambda (_%ns373233%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns373233%_
                                                        '"#"
                                                        _%eid373219%_)))
                                                   _%$e373230%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid373219%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht373220%_
                                          _%eid373219%_
                                          _%gid373236%_))
                                       _%gid373236%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id373212%_
                                      _%eid373219%_
                                      _%bind373217%_))))))))
               _%$e373214%_)
              (if (let ((__tmp373547
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id373212%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp373547))
                  (let () (declare (not safe)) (gx#stx-e _%id373212%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id373212%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id373210%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id373210%_))
            (gxc#generate-runtime-binding-id _%id373210%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top373197%_)
        (if _%top373197%_
            (let ((_%ns373199%_
                   (##structure-ref
                    (let ((__tmp373548
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp373548))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi373200%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns373199%_
                  (if (fxpositive? _%phi373200%_)
                      (let ((__tmp373550 (number->string _%phi373200%_))
                            (__tmp373549
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns373199%_
                         '"["
                         __tmp373550
                         '"]#_"
                         __tmp373549
                         '"_"))
                      (let ((__tmp373551
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns373199%_ '"#_" __tmp373551 '"_")))
                  (if (fxpositive? _%phi373200%_)
                      (let ((__tmp373553 (number->string _%phi373200%_))
                            (__tmp373552
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp373553
                         '"]#_"
                         __tmp373552
                         '"_"))
                      (let ((__tmp373554
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp373554 '"_")))))
            (let ((__tmp373555 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp373555 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top373206%_ '#f))
          (gxc#generate-runtime-temporary__% _%top373206%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g373556_
        (let ((_g373557_ (let () (declare (not safe)) (##length _g373556_))))
          (cond ((let () (declare (not safe)) (##fx= _g373557_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g373556_))
                ((let () (declare (not safe)) (##fx= _g373557_ 1))
                 (apply gxc#generate-runtime-temporary__% _g373556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g373556_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym373175%_ _%quote?373176%_)
        (let* ((_%ht373178%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e373180%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht373178%_ _%sym373175%_))))
          (if _%$e373180%_
              _%$e373180%_
              (let ((_%g373184%_
                     (if _%quote?373176%_
                         (let ((__tmp373558
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym373175%_
                            '"__"
                            __tmp373558))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym373175%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht373178%_ _%sym373175%_ _%g373184%_))
                _%g373184%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym373189%_)
        (let ((_%quote?373191%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym373189%_
           _%quote?373191%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g373559_
        (let ((_g373560_ (let () (declare (not safe)) (##length _g373559_))))
          (cond ((let () (declare (not safe)) (##fx= _g373560_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g373559_))
                ((let () (declare (not safe)) (##fx= _g373560_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g373559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g373559_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id373172%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id373172%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key373127%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key373127%_))
            _%key373127%_
            (if (uninterned-symbol? _%key373127%_)
                (gxc#generate-runtime-gensym-reference__0 _%key373127%_)
                (let* ((_%key373131373138%_ _%key373127%_)
                       (_%E373133373142%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key373131373138%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K373134373160%_
                        (lambda (_%mark373145%_ _%eid373146%_)
                          (let ((_%$e373148%_
                                 (##structure-ref
                                  _%mark373145%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e373148%_
                                ((lambda (_%ht373151%_)
                                   (let ((_%$e373153%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht373151%_
                                             _%eid373146%_))))
                                     (if _%$e373153%_
                                         ((lambda (_%id373156%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id373156%_))
                                                _%id373156%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id373156%_)))
                                          _%$e373153%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid373146%_))))
                                 _%$e373148%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid373146%_))))))
                  (if (pair? _%key373131373138%_)
                      (let ((_%hd373135373163%_
                             (let ()
                               (declare (not safe))
                               (##car _%key373131373138%_)))
                            (_%tl373136373165%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key373131373138%_))))
                        (let* ((_%eid373168%_ _%hd373135373163%_)
                               (_%mark373170%_ _%tl373136373165%_))
                          (_%K373134373160%_ _%mark373170%_ _%eid373168%_)))
                      (_%E373133373142%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1373120%_ _%id2373121%_)
        (letrec ((_%symbol-e373123%_
                  (lambda (_%id373125%_)
                    (if (symbol? _%id373125%_)
                        _%id373125%_
                        (gxc#generate-runtime-binding-id _%id373125%_)))))
          (eq? (_%symbol-e373123%_ _%id1373120%_)
               (_%symbol-e373123%_ _%id2373121%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx373118%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx373118%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx373118%_)
            (let () (declare (not safe)) (gx#stx-e _%stx373118%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id373040%_)
        (let* ((_%bind373042%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id373040%_)))
               (_%runtime-props373071%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind373042%_
                       'gx#runtime-binding::t))
                    (let* ((_%props373051%_
                            (let ((_%$e373045%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind373042%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e373045%_
                                  ((lambda (_%macro-id373048%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id373048%_)
                                                 '())))
                                   _%$e373045%_)
                                  '())))
                           (_%props373067%_
                            (let ((_%$e373053%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind373042%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e373053%_
                                  ((lambda (_%type373056%_)
                                     (let ((_%$e373058%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type373056%_
                                               ':repr))))
                                       (if _%$e373058%_
                                           ((lambda (_%method373061%_)
                                              (let ((_%repr373063%_
                                                     (_%method373061%_
                                                      _%type373056%_)))
                                                (cons 'type:
                                                      (cons _%repr373063%_
                                                            _%props373051%_))))
                                            _%$e373058%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id373040%_
                                            _%type373056%_))))
                                   _%$e373053%_)
                                  _%props373051%_))))
                      _%props373067%_)
                    '()))
               (_%$e373074%_
                (##structure-ref _%bind373042%_ '4 gx#binding::t '#f)))
          (if _%$e373074%_
              ((lambda (_%props373077%_)
                 (let ((__tmp373561
                        (lambda (_%prop373079%_ _%props373080%_)
                          (let* ((_%prop373081373088%_ _%prop373079%_)
                                 (_%E373083373091%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop373081373088%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K373084373105%_
                                  (lambda (_%value373094%_ _%key373095%_)
                                    (let ((_%$e373097%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value373094%_
                                              ':repr))))
                                      (if _%$e373097%_
                                          ((lambda (_%method373100%_)
                                             (let ((_%repr373102%_
                                                    (_%method373100%_
                                                     _%value373094%_)))
                                               (cons _%key373095%_
                                                     (cons _%repr373102%_
                                                           _%props373080%_))))
                                           _%$e373097%_)
                                          (cons _%key373095%_
                                                (cons (cons 'quote
                                                            (cons _%value373094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props373080%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop373081373088%_)
                                (let ((_%hd373085373108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop373081373088%_)))
                                      (_%tl373086373110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop373081373088%_))))
                                  (let* ((_%key373113%_ _%hd373085373108%_)
                                         (_%value373115%_ _%tl373086373110%_))
                                    (_%K373084373105%_
                                     _%value373115%_
                                     _%key373113%_)))
                                (_%E373083373091%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp373561
                    _%runtime-props373071%_
                    _%props373077%_)))
               _%$e373074%_)
              _%runtime-props373071%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk373025%_ _%name373026%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job373028%_
               (gxc#make-compile-job _%thunk373025%_ _%name373026%_)))
          (set! gxc#__compile-jobs (cons _%job373028%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk373033%_)
        (let ((_%name373035%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk373033%_ _%name373035%_))))
    (define gxc#add-compile-job!
      (lambda _g373562_
        (let ((_g373563_ (let () (declare (not safe)) (##length _g373562_))))
          (cond ((let () (declare (not safe)) (##fx= _g373563_ 1))
                 (apply gxc#add-compile-job!__0 _g373562_))
                ((let () (declare (not safe)) (##fx= _g373563_ 2))
                 (apply gxc#add-compile-job!__% _g373562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g373562_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result373022%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result373022%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop373016%_ ()
          (let ((_%pending373019%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending373019%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending373019%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending373019%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk373005%_ _%name373006%_)
        (make-thread
         (lambda ()
           (let _%loop373009%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp373564
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name373006%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp373564))
                   (let ((__tmp373566 (lambda () (_%thunk373005%_)))
                         (__tmp373565
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp373566 __tmp373565)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop373009%_)))))
         _%name373006%_)))
    (define gxc#join!
      (lambda (_%thread373000%_)
        (let ((__tmp373568
               (lambda (_%exn373002%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn373002%_))
                     (let ((__tmp373569
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn373002%_))))
                       (declare (not safe))
                       (raise __tmp373569))
                     (let () (declare (not safe)) (raise _%exn373002%_)))))
              (__tmp373567 (lambda () (thread-join! _%thread373000%_))))
          (declare (not safe))
          (__with-catch __tmp373568 __tmp373567))))))
