(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1781697564)
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
       (let ((_%$%verbosity195810195812%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity195810195812%_
             (let* ((_%verbosity195814%_ _%$%verbosity195810195812%_)
                    (_%$e195816%_ (string->number _%verbosity195814%_)))
               (if _%$e195816%_ _%$e195816%_ _%verbosity195814%_))
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
        (letrec ((_%hash-e195807%_
                  (lambda (_%id195809%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id195809%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e195807%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp195871 (list)) (__tmp195870 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp195871
         '(gensyms bindings)
         __tmp195870
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args195803%_
        (apply make-instance gxc#symbol-table::t _%$args195803%_)))
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
      (lambda (_%self195790%_)
        (let ((_%self195793%_ _%self195790%_))
          (if (let ((__tmp195872
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195793%_))))
                (declare (not safe))
                (##fx< '2 __tmp195872))
              (begin
                (let ((__tmp195873
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195793%_
                   __tmp195873
                   '1
                   '#f
                   '#f))
                (let ((__tmp195874
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self195793%_
                   __tmp195874
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp195875
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self195793%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self195793%_
                       '2
                       __tmp195875))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message195659%_ _%stx195660%_ . _%details195661%_)
        (let ((_%ctx195666%_
               (let ((_%$e195663%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e195663%_ _%$e195663%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx195666%_
                 _%message195659%_
                 _%stx195660%_
                 _%details195661%_))))
    (define gxc#verbose
      (lambda _%args195656%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp195876
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args195656%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp195876))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id195638%_)
        (let* ((_%str195640%_
                (if (symbol? _%id195638%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id195638%_))
                    _%id195638%_))
               (_%len195642%_ (string-length _%str195640%_))
               (_%res195644%_
                (let () (declare (not safe)) (##make-string _%len195642%_))))
          (let _%lp195647%_ ((_%i195649%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i195649%_ _%len195642%_))
                (let* ((_%char195651%_ (string-ref _%str195640%_ _%i195649%_))
                       (_%xchar195653%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char195651%_))
                            '#\_
                            _%char195651%_)))
                  (string-set! _%res195644%_ _%i195649%_ _%xchar195653%_)
                  (_%lp195647%_
                   (let () (declare (not safe)) (##fx+ _%i195649%_ '1))))
                _%res195644%_)))))
    (define gxc#map*
      (lambda (_%proc195580%_ _%maybe-improper-list195581%_)
        (let _%recur195583%_ ((_%rest195585%_ _%maybe-improper-list195581%_))
          (let* ((_%$%rest195586195597%_ _%rest195585%_)
                 (_%$%E195590195601%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest195586195597%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K195593195626%_
                   (lambda (_%rest195623%_ _%hd195624%_)
                     (cons (_%proc195580%_ _%hd195624%_)
                           (_%recur195583%_ _%rest195623%_))))
                  (_%$%K195592195617%_ (lambda () '()))
                  (_%$%K195591195607%_
                   (lambda (_%tail195605%_) (_%proc195580%_ _%tail195605%_))))
              (let ((_%$%try-match195588195620%_
                     (lambda ()
                       (if (null? _%$%rest195586195597%_)
                           (_%$%K195592195617%_)
                           (let ((_%tail195610%_ _%$%rest195586195597%_))
                             (declare (not safe))
                             (_%proc195580%_ _%tail195610%_))))))
                (if (pair? _%$%rest195586195597%_)
                    (let ((_%$%tl195595195631%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest195586195597%_)))
                          (_%$%hd195594195629%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest195586195597%_))))
                      (let ((_%hd195634%_ _%$%hd195594195629%_)
                            (_%rest195636%_ _%$%tl195595195631%_))
                        (_%$%K195593195626%_ _%rest195636%_ _%hd195634%_)))
                    (_%$%try-match195588195620%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym195575%_)
        (let ((_%$e195577%_ (not (gxc#gensym-reference? _%sym195575%_))))
          (if _%$e195577%_
              _%$e195577%_
              (memq _%sym195575%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym195571%_)
        (let ((_%str195573%_ (symbol->string _%sym195571%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str195573%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str195573%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id195542%_)
        (let ((_%$e195544%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id195542%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id195542%_))
                   '#f)))
          (if _%$e195544%_
              (let ((_%eid195549%_
                     (##structure-ref _%$e195544%_ '1 gx#binding::t '#f))
                    (_%ht195550%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid195549%_))
                    _%eid195549%_
                    (let ((_%$e195553%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht195550%_ _%eid195549%_))))
                      (if _%$e195553%_
                          _%$e195553%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e195544%_
                                 'gx#local-binding::t))
                              (let ((_%gid195557%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid195549%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht195550%_
                                   _%eid195549%_
                                   _%gid195557%_))
                                _%gid195557%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e195544%_
                                     'gx#module-binding::t))
                                  (let ((_%gid195566%_
                                         (let ((_%$e195560%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e195544%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e195560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e195560%_
                                                  '"#"
                                                  _%eid195549%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid195549%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht195550%_
                                       _%eid195549%_
                                       _%gid195566%_))
                                    _%gid195566%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id195542%_
                                   _%eid195549%_
                                   _%$e195544%_)))))))
              (if (let ((__tmp195877
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id195542%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp195877))
                  (let () (declare (not safe)) (gx#stx-e _%id195542%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id195542%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id195540%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id195540%_))
            (gxc#generate-runtime-binding-id _%id195540%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top195527%_)
        (if _%top195527%_
            (let ((_%ns195529%_
                   (##structure-ref
                    (let ((__tmp195878
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp195878))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi195530%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns195529%_
                  (if (fxpositive? _%phi195530%_)
                      (let ((__tmp195880 (number->string _%phi195530%_))
                            (__tmp195879
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns195529%_
                         '"["
                         __tmp195880
                         '"]#_"
                         __tmp195879
                         '"_"))
                      (let ((__tmp195881
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns195529%_ '"#_" __tmp195881 '"_")))
                  (if (fxpositive? _%phi195530%_)
                      (let ((__tmp195883 (number->string _%phi195530%_))
                            (__tmp195882
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp195883
                         '"]#_"
                         __tmp195882
                         '"_"))
                      (let ((__tmp195884
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp195884 '"_")))))
            (let ((__tmp195885 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp195885 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top195536%_ '#f))
          (gxc#generate-runtime-temporary__% _%top195536%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g195886_
        (let ((_g195887_ (let () (declare (not safe)) (##length _g195886_))))
          (cond ((let () (declare (not safe)) (##fx= _g195887_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g195886_))
                ((let () (declare (not safe)) (##fx= _g195887_ 1))
                 (apply gxc#generate-runtime-temporary__% _g195886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g195886_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym195505%_ _%quote?195506%_)
        (let* ((_%ht195508%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e195510%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht195508%_ _%sym195505%_))))
          (if _%$e195510%_
              _%$e195510%_
              (let ((_%g195514%_
                     (if _%quote?195506%_
                         (let ((__tmp195888
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym195505%_
                            '"__"
                            __tmp195888))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym195505%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht195508%_ _%sym195505%_ _%g195514%_))
                _%g195514%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym195519%_)
        (let ((_%quote?195521%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym195519%_
           _%quote?195521%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g195889_
        (let ((_g195890_ (let () (declare (not safe)) (##length _g195889_))))
          (cond ((let () (declare (not safe)) (##fx= _g195890_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g195889_))
                ((let () (declare (not safe)) (##fx= _g195890_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g195889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g195889_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id195502%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id195502%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key195457%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key195457%_))
            _%key195457%_
            (if (uninterned-symbol? _%key195457%_)
                (gxc#generate-runtime-gensym-reference__0 _%key195457%_)
                (let* ((_%$%key195461195468%_ _%key195457%_)
                       (_%$%E195463195472%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key195461195468%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K195464195490%_
                        (lambda (_%mark195475%_ _%eid195476%_)
                          (let ((_%$e195478%_
                                 (##structure-ref
                                  _%mark195475%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e195478%_
                                (let ((_%$e195483%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e195478%_
                                          _%eid195476%_))))
                                  (if _%$e195483%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e195483%_))
                                          _%$e195483%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e195483%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid195476%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid195476%_))))))
                  (if (pair? _%$%key195461195468%_)
                      (let ((_%$%hd195465195493%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key195461195468%_)))
                            (_%$%tl195466195495%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key195461195468%_))))
                        (let* ((_%eid195498%_ _%$%hd195465195493%_)
                               (_%mark195500%_ _%$%tl195466195495%_))
                          (_%$%K195464195490%_ _%mark195500%_ _%eid195498%_)))
                      (_%$%E195463195472%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1195450%_ _%id2195451%_)
        (letrec ((_%symbol-e195453%_
                  (lambda (_%id195455%_)
                    (if (symbol? _%id195455%_)
                        _%id195455%_
                        (gxc#generate-runtime-binding-id _%id195455%_)))))
          (eq? (_%symbol-e195453%_ _%id1195450%_)
               (_%symbol-e195453%_ _%id2195451%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx195448%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx195448%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx195448%_)
            (let () (declare (not safe)) (gx#stx-e _%stx195448%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id195370%_)
        (let* ((_%bind195372%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id195370%_)))
               (_%runtime-props195401%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind195372%_
                       'gx#runtime-binding::t))
                    (let* ((_%props195381%_
                            (let ((_%$e195375%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind195372%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e195375%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e195375%_)
                                              '()))
                                  '())))
                           (_%props195397%_
                            (let ((_%$e195383%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind195372%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e195383%_
                                  (let ((_%$e195388%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e195383%_
                                            ':repr))))
                                    (if _%$e195388%_
                                        (let ((_%repr195393%_
                                               (_%$e195388%_ _%$e195383%_)))
                                          (cons 'type:
                                                (cons _%repr195393%_
                                                      _%props195381%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id195370%_
                                         _%$e195383%_)))
                                  _%props195381%_))))
                      _%props195397%_)
                    '()))
               (_%$e195404%_
                (##structure-ref _%bind195372%_ '4 gx#binding::t '#f)))
          (if _%$e195404%_
              (let ((__tmp195891
                     (lambda (_%prop195409%_ _%props195410%_)
                       (let* ((_%$%prop195411195418%_ _%prop195409%_)
                              (_%$%E195413195421%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop195411195418%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K195414195435%_
                               (lambda (_%value195424%_ _%key195425%_)
                                 (let ((_%$e195427%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value195424%_
                                           ':repr))))
                                   (if _%$e195427%_
                                       (let ((_%repr195432%_
                                              (_%$e195427%_ _%value195424%_)))
                                         (cons _%key195425%_
                                               (cons _%repr195432%_
                                                     _%props195410%_)))
                                       (cons _%key195425%_
                                             (cons (cons 'quote
                                                         (cons _%value195424%_
                                                               '()))
                                                   _%props195410%_)))))))
                         (if (pair? _%$%prop195411195418%_)
                             (let ((_%$%hd195415195438%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop195411195418%_)))
                                   (_%$%tl195416195440%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop195411195418%_))))
                               (let* ((_%key195443%_ _%$%hd195415195438%_)
                                      (_%value195445%_ _%$%tl195416195440%_))
                                 (_%$%K195414195435%_
                                  _%value195445%_
                                  _%key195443%_)))
                             (_%$%E195413195421%_))))))
                (declare (not safe))
                (foldl__0 __tmp195891 _%runtime-props195401%_ _%$e195404%_))
              _%runtime-props195401%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk195355%_ _%name195356%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job195358%_
               (gxc#make-compile-job _%thunk195355%_ _%name195356%_)))
          (set! gxc#__compile-jobs (cons _%job195358%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk195363%_)
        (let ((_%name195365%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk195363%_ _%name195365%_))))
    (define gxc#add-compile-job!
      (lambda _g195892_
        (let ((_g195893_ (let () (declare (not safe)) (##length _g195892_))))
          (cond ((let () (declare (not safe)) (##fx= _g195893_ 1))
                 (apply gxc#add-compile-job!__0 _g195892_))
                ((let () (declare (not safe)) (##fx= _g195893_ 2))
                 (apply gxc#add-compile-job!__% _g195892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g195892_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result195352%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result195352%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop195346%_ ()
          (let ((_%pending195349%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending195349%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending195349%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending195349%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk195335%_ _%name195336%_)
        (make-thread
         (lambda ()
           (let _%loop195339%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp195894
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name195336%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp195894))
                   (let ((__tmp195896 (lambda () (_%thunk195335%_)))
                         (__tmp195895
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp195896 __tmp195895)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop195339%_)))))
         _%name195336%_)))
    (define gxc#join!
      (lambda (_%thread195330%_)
        (let ((__tmp195898
               (lambda (_%exn195332%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn195332%_))
                     (let ((__tmp195899
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn195332%_))))
                       (declare (not safe))
                       (raise __tmp195899))
                     (let () (declare (not safe)) (raise _%exn195332%_)))))
              (__tmp195897 (lambda () (thread-join! _%thread195330%_))))
          (declare (not safe))
          (__with-catch __tmp195898 __tmp195897))))))
