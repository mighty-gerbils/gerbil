(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771037610)
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
       (let ((_%verbosity199665199667%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity199665199667%_
             (let* ((_%verbosity199669%_ _%verbosity199665199667%_)
                    (_%$e199671%_ (string->number _%verbosity199669%_)))
               (if _%$e199671%_ _%$e199671%_ _%verbosity199669%_))
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
        (letrec ((_%hash-e199662%_
                  (lambda (_%id199664%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id199664%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e199662%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp199726 (list)) (__tmp199725 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp199726
         '(gensyms bindings)
         __tmp199725
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args199658%_
        (apply make-instance gxc#symbol-table::t _%$args199658%_)))
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
      (lambda (_%self199645%_)
        (let ((_%self199648%_ _%self199645%_))
          (if (let ((__tmp199727
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199648%_))))
                (declare (not safe))
                (##fx< '2 __tmp199727))
              (begin
                (let ((__tmp199728
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199648%_
                   __tmp199728
                   '1
                   '#f
                   '#f))
                (let ((__tmp199729
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199648%_
                   __tmp199729
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp199730
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199648%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self199648%_
                       '2
                       __tmp199730))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message199514%_ _%stx199515%_ . _%details199516%_)
        (let ((_%ctx199521%_
               (let ((_%$e199518%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e199518%_ _%$e199518%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx199521%_
                 _%message199514%_
                 _%stx199515%_
                 _%details199516%_))))
    (define gxc#verbose
      (lambda _%args199511%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp199731
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args199511%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp199731))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id199493%_)
        (let* ((_%str199495%_
                (if (symbol? _%id199493%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id199493%_))
                    _%id199493%_))
               (_%len199497%_ (string-length _%str199495%_))
               (_%res199499%_
                (let () (declare (not safe)) (##make-string _%len199497%_))))
          (let _%lp199502%_ ((_%i199504%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i199504%_ _%len199497%_))
                (let* ((_%char199506%_ (string-ref _%str199495%_ _%i199504%_))
                       (_%xchar199508%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char199506%_))
                            '#\_
                            _%char199506%_)))
                  (string-set! _%res199499%_ _%i199504%_ _%xchar199508%_)
                  (_%lp199502%_
                   (let () (declare (not safe)) (##fx+ _%i199504%_ '1))))
                _%res199499%_)))))
    (define gxc#map*
      (lambda (_%proc199435%_ _%maybe-improper-list199436%_)
        (let _%recur199438%_ ((_%rest199440%_ _%maybe-improper-list199436%_))
          (let* ((_%rest199441199452%_ _%rest199440%_)
                 (_%E199445199456%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest199441199452%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K199448199481%_
                   (lambda (_%rest199478%_ _%hd199479%_)
                     (cons (_%proc199435%_ _%hd199479%_)
                           (_%recur199438%_ _%rest199478%_))))
                  (_%K199447199472%_ (lambda () '()))
                  (_%K199446199462%_
                   (lambda (_%tail199460%_) (_%proc199435%_ _%tail199460%_))))
              (let ((_%try-match199443199475%_
                     (lambda ()
                       (if (null? _%rest199441199452%_)
                           (_%K199447199472%_)
                           (let ((_%tail199465%_ _%rest199441199452%_))
                             (declare (not safe))
                             (_%proc199435%_ _%tail199465%_))))))
                (if (pair? _%rest199441199452%_)
                    (let ((_%tl199450199486%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199441199452%_)))
                          (_%hd199449199484%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199441199452%_))))
                      (let ((_%hd199489%_ _%hd199449199484%_)
                            (_%rest199491%_ _%tl199450199486%_))
                        (_%K199448199481%_ _%rest199491%_ _%hd199489%_)))
                    (_%try-match199443199475%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym199430%_)
        (let ((_%$e199432%_ (not (gxc#gensym-reference? _%sym199430%_))))
          (if _%$e199432%_
              _%$e199432%_
              (memq _%sym199430%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym199426%_)
        (let ((_%str199428%_ (symbol->string _%sym199426%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str199428%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str199428%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id199397%_)
        (let ((_%$e199399%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id199397%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id199397%_))
                   '#f)))
          (if _%$e199399%_
              ((lambda (_%bind199402%_)
                 (let ((_%eid199404%_
                        (##structure-ref _%bind199402%_ '1 gx#binding::t '#f))
                       (_%ht199405%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid199404%_))
                       _%eid199404%_
                       (let ((_%$e199408%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht199405%_ _%eid199404%_))))
                         (if _%$e199408%_
                             _%$e199408%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind199402%_
                                    'gx#local-binding::t))
                                 (let ((_%gid199412%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid199404%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht199405%_
                                      _%eid199404%_
                                      _%gid199412%_))
                                   _%gid199412%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind199402%_
                                        'gx#module-binding::t))
                                     (let ((_%gid199421%_
                                            (let ((_%$e199415%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind199402%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e199415%_
                                                  ((lambda (_%ns199418%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns199418%_
                                                        '"#"
                                                        _%eid199404%_)))
                                                   _%$e199415%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid199404%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht199405%_
                                          _%eid199404%_
                                          _%gid199421%_))
                                       _%gid199421%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id199397%_
                                      _%eid199404%_
                                      _%bind199402%_))))))))
               _%$e199399%_)
              (if (let ((__tmp199732
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id199397%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp199732))
                  (let () (declare (not safe)) (gx#stx-e _%id199397%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id199397%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id199395%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id199395%_))
            (gxc#generate-runtime-binding-id _%id199395%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top199382%_)
        (if _%top199382%_
            (let ((_%ns199384%_
                   (##structure-ref
                    (let ((__tmp199733
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp199733))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi199385%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns199384%_
                  (if (fxpositive? _%phi199385%_)
                      (let ((__tmp199735 (number->string _%phi199385%_))
                            (__tmp199734
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns199384%_
                         '"["
                         __tmp199735
                         '"]#_"
                         __tmp199734
                         '"_"))
                      (let ((__tmp199736
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns199384%_ '"#_" __tmp199736 '"_")))
                  (if (fxpositive? _%phi199385%_)
                      (let ((__tmp199738 (number->string _%phi199385%_))
                            (__tmp199737
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp199738
                         '"]#_"
                         __tmp199737
                         '"_"))
                      (let ((__tmp199739
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp199739 '"_")))))
            (let ((__tmp199740 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp199740 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top199391%_ '#f))
          (gxc#generate-runtime-temporary__% _%top199391%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g199741_
        (let ((_g199742_ (let () (declare (not safe)) (##length _g199741_))))
          (cond ((let () (declare (not safe)) (##fx= _g199742_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g199741_))
                ((let () (declare (not safe)) (##fx= _g199742_ 1))
                 (apply gxc#generate-runtime-temporary__% _g199741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g199741_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym199360%_ _%quote?199361%_)
        (let* ((_%ht199363%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e199365%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht199363%_ _%sym199360%_))))
          (if _%$e199365%_
              _%$e199365%_
              (let ((_%g199369%_
                     (if _%quote?199361%_
                         (let ((__tmp199743
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym199360%_
                            '"__"
                            __tmp199743))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym199360%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht199363%_ _%sym199360%_ _%g199369%_))
                _%g199369%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym199374%_)
        (let ((_%quote?199376%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym199374%_
           _%quote?199376%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g199744_
        (let ((_g199745_ (let () (declare (not safe)) (##length _g199744_))))
          (cond ((let () (declare (not safe)) (##fx= _g199745_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g199744_))
                ((let () (declare (not safe)) (##fx= _g199745_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g199744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g199744_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id199357%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id199357%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key199312%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key199312%_))
            _%key199312%_
            (if (uninterned-symbol? _%key199312%_)
                (gxc#generate-runtime-gensym-reference__0 _%key199312%_)
                (let* ((_%key199316199323%_ _%key199312%_)
                       (_%E199318199327%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key199316199323%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K199319199345%_
                        (lambda (_%mark199330%_ _%eid199331%_)
                          (let ((_%$e199333%_
                                 (##structure-ref
                                  _%mark199330%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e199333%_
                                ((lambda (_%ht199336%_)
                                   (let ((_%$e199338%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht199336%_
                                             _%eid199331%_))))
                                     (if _%$e199338%_
                                         ((lambda (_%id199341%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id199341%_))
                                                _%id199341%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id199341%_)))
                                          _%$e199338%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid199331%_))))
                                 _%$e199333%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid199331%_))))))
                  (if (pair? _%key199316199323%_)
                      (let ((_%hd199320199348%_
                             (let ()
                               (declare (not safe))
                               (##car _%key199316199323%_)))
                            (_%tl199321199350%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key199316199323%_))))
                        (let* ((_%eid199353%_ _%hd199320199348%_)
                               (_%mark199355%_ _%tl199321199350%_))
                          (_%K199319199345%_ _%mark199355%_ _%eid199353%_)))
                      (_%E199318199327%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1199305%_ _%id2199306%_)
        (letrec ((_%symbol-e199308%_
                  (lambda (_%id199310%_)
                    (if (symbol? _%id199310%_)
                        _%id199310%_
                        (gxc#generate-runtime-binding-id _%id199310%_)))))
          (eq? (_%symbol-e199308%_ _%id1199305%_)
               (_%symbol-e199308%_ _%id2199306%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx199303%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx199303%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx199303%_)
            (let () (declare (not safe)) (gx#stx-e _%stx199303%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id199225%_)
        (let* ((_%bind199227%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id199225%_)))
               (_%runtime-props199256%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind199227%_
                       'gx#runtime-binding::t))
                    (let* ((_%props199236%_
                            (let ((_%$e199230%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199227%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e199230%_
                                  ((lambda (_%macro-id199233%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id199233%_)
                                                 '())))
                                   _%$e199230%_)
                                  '())))
                           (_%props199252%_
                            (let ((_%$e199238%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199227%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e199238%_
                                  ((lambda (_%type199241%_)
                                     (let ((_%$e199243%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type199241%_
                                               ':repr))))
                                       (if _%$e199243%_
                                           ((lambda (_%method199246%_)
                                              (let ((_%repr199248%_
                                                     (_%method199246%_
                                                      _%type199241%_)))
                                                (cons 'type:
                                                      (cons _%repr199248%_
                                                            _%props199236%_))))
                                            _%$e199243%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id199225%_
                                            _%type199241%_))))
                                   _%$e199238%_)
                                  _%props199236%_))))
                      _%props199252%_)
                    '()))
               (_%$e199259%_
                (##structure-ref _%bind199227%_ '4 gx#binding::t '#f)))
          (if _%$e199259%_
              ((lambda (_%props199262%_)
                 (let ((__tmp199746
                        (lambda (_%prop199264%_ _%props199265%_)
                          (let* ((_%prop199266199273%_ _%prop199264%_)
                                 (_%E199268199276%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop199266199273%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K199269199290%_
                                  (lambda (_%value199279%_ _%key199280%_)
                                    (let ((_%$e199282%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value199279%_
                                              ':repr))))
                                      (if _%$e199282%_
                                          ((lambda (_%method199285%_)
                                             (let ((_%repr199287%_
                                                    (_%method199285%_
                                                     _%value199279%_)))
                                               (cons _%key199280%_
                                                     (cons _%repr199287%_
                                                           _%props199265%_))))
                                           _%$e199282%_)
                                          (cons _%key199280%_
                                                (cons (cons 'quote
                                                            (cons _%value199279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props199265%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop199266199273%_)
                                (let ((_%hd199270199293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop199266199273%_)))
                                      (_%tl199271199295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop199266199273%_))))
                                  (let* ((_%key199298%_ _%hd199270199293%_)
                                         (_%value199300%_ _%tl199271199295%_))
                                    (_%K199269199290%_
                                     _%value199300%_
                                     _%key199298%_)))
                                (_%E199268199276%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp199746
                    _%runtime-props199256%_
                    _%props199262%_)))
               _%$e199259%_)
              _%runtime-props199256%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk199210%_ _%name199211%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job199213%_
               (gxc#make-compile-job _%thunk199210%_ _%name199211%_)))
          (set! gxc#__compile-jobs (cons _%job199213%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk199218%_)
        (let ((_%name199220%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk199218%_ _%name199220%_))))
    (define gxc#add-compile-job!
      (lambda _g199747_
        (let ((_g199748_ (let () (declare (not safe)) (##length _g199747_))))
          (cond ((let () (declare (not safe)) (##fx= _g199748_ 1))
                 (apply gxc#add-compile-job!__0 _g199747_))
                ((let () (declare (not safe)) (##fx= _g199748_ 2))
                 (apply gxc#add-compile-job!__% _g199747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g199747_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result199207%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result199207%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop199201%_ ()
          (let ((_%pending199204%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending199204%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending199204%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending199204%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk199190%_ _%name199191%_)
        (make-thread
         (lambda ()
           (let _%loop199194%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp199749
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name199191%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp199749))
                   (let ((__tmp199751 (lambda () (_%thunk199190%_)))
                         (__tmp199750
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp199751 __tmp199750)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop199194%_)))))
         _%name199191%_)))
    (define gxc#join!
      (lambda (_%thread199185%_)
        (let ((__tmp199753
               (lambda (_%exn199187%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn199187%_))
                     (let ((__tmp199754
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn199187%_))))
                       (declare (not safe))
                       (raise __tmp199754))
                     (let () (declare (not safe)) (raise _%exn199187%_)))))
              (__tmp199752 (lambda () (thread-join! _%thread199185%_))))
          (declare (not safe))
          (__with-catch __tmp199753 __tmp199752))))))
