(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1784279016)
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
       (let ((_%$%verbosity199952199954%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity199952199954%_
             (let* ((_%verbosity199956%_ _%$%verbosity199952199954%_)
                    (_%$e199958%_ (string->number _%verbosity199956%_)))
               (if _%$e199958%_ _%$e199958%_ _%verbosity199956%_))
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
        (letrec ((_%hash-e199949%_
                  (lambda (_%id199951%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id199951%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e199949%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp200013 (list)) (__tmp200012 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp200013
         '(gensyms bindings)
         __tmp200012
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args199945%_
        (apply make-instance gxc#symbol-table::t _%$args199945%_)))
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
      (lambda (_%self199932%_)
        (let ((_%self199935%_ _%self199932%_))
          (if (let ((__tmp200014
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199935%_))))
                (declare (not safe))
                (##fx< '2 __tmp200014))
              (begin
                (let ((__tmp200015
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199935%_
                   __tmp200015
                   '1
                   '#f
                   '#f))
                (let ((__tmp200016
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199935%_
                   __tmp200016
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp200017
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199935%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self199935%_
                       '2
                       __tmp200017))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message199801%_ _%stx199802%_ . _%details199803%_)
        (let ((_%ctx199808%_
               (let ((_%$e199805%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e199805%_ _%$e199805%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx199808%_
                 _%message199801%_
                 _%stx199802%_
                 _%details199803%_))))
    (define gxc#verbose
      (lambda _%args199798%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp200018
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args199798%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp200018))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id199780%_)
        (let* ((_%str199782%_
                (if (symbol? _%id199780%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id199780%_))
                    _%id199780%_))
               (_%len199784%_ (string-length _%str199782%_))
               (_%res199786%_
                (let () (declare (not safe)) (##make-string _%len199784%_))))
          (let _%lp199789%_ ((_%i199791%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i199791%_ _%len199784%_))
                (let* ((_%char199793%_ (string-ref _%str199782%_ _%i199791%_))
                       (_%xchar199795%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char199793%_))
                            '#\_
                            _%char199793%_)))
                  (string-set! _%res199786%_ _%i199791%_ _%xchar199795%_)
                  (_%lp199789%_
                   (let () (declare (not safe)) (##fx+ _%i199791%_ '1))))
                _%res199786%_)))))
    (define gxc#map*
      (lambda (_%proc199722%_ _%maybe-improper-list199723%_)
        (let _%recur199725%_ ((_%rest199727%_ _%maybe-improper-list199723%_))
          (let* ((_%$%rest199728199739%_ _%rest199727%_)
                 (_%$%E199732199743%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest199728199739%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K199735199768%_
                   (lambda (_%rest199765%_ _%hd199766%_)
                     (cons (_%proc199722%_ _%hd199766%_)
                           (_%recur199725%_ _%rest199765%_))))
                  (_%$%K199734199759%_ (lambda () '()))
                  (_%$%K199733199749%_
                   (lambda (_%tail199747%_) (_%proc199722%_ _%tail199747%_))))
              (let ((_%$%try-match199730199762%_
                     (lambda ()
                       (if (null? _%$%rest199728199739%_)
                           (_%$%K199734199759%_)
                           (let ((_%tail199752%_ _%$%rest199728199739%_))
                             (declare (not safe))
                             (_%proc199722%_ _%tail199752%_))))))
                (if (pair? _%$%rest199728199739%_)
                    (let ((_%$%tl199737199773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest199728199739%_)))
                          (_%$%hd199736199771%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest199728199739%_))))
                      (let ((_%hd199776%_ _%$%hd199736199771%_)
                            (_%rest199778%_ _%$%tl199737199773%_))
                        (_%$%K199735199768%_ _%rest199778%_ _%hd199776%_)))
                    (_%$%try-match199730199762%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym199717%_)
        (let ((_%$e199719%_ (not (gxc#gensym-reference? _%sym199717%_))))
          (if _%$e199719%_
              _%$e199719%_
              (memq _%sym199717%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym199713%_)
        (let ((_%str199715%_ (symbol->string _%sym199713%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str199715%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str199715%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id199684%_)
        (let ((_%$e199686%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id199684%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id199684%_))
                   '#f)))
          (if _%$e199686%_
              (let ((_%eid199691%_
                     (##structure-ref _%$e199686%_ '1 gx#binding::t '#f))
                    (_%ht199692%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid199691%_))
                    _%eid199691%_
                    (let ((_%$e199695%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht199692%_ _%eid199691%_))))
                      (if _%$e199695%_
                          _%$e199695%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e199686%_
                                 'gx#local-binding::t))
                              (let ((_%gid199699%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid199691%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht199692%_
                                   _%eid199691%_
                                   _%gid199699%_))
                                _%gid199699%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e199686%_
                                     'gx#module-binding::t))
                                  (let ((_%gid199708%_
                                         (let ((_%$e199702%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e199686%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e199702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e199702%_
                                                  '"#"
                                                  _%eid199691%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid199691%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht199692%_
                                       _%eid199691%_
                                       _%gid199708%_))
                                    _%gid199708%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id199684%_
                                   _%eid199691%_
                                   _%$e199686%_)))))))
              (if (let ((__tmp200019
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id199684%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp200019))
                  (let () (declare (not safe)) (gx#stx-e _%id199684%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id199684%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id199682%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id199682%_))
            (gxc#generate-runtime-binding-id _%id199682%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top199669%_)
        (if _%top199669%_
            (let ((_%ns199671%_
                   (##structure-ref
                    (let ((__tmp200020
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp200020))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi199672%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns199671%_
                  (if (fxpositive? _%phi199672%_)
                      (let ((__tmp200022 (number->string _%phi199672%_))
                            (__tmp200021
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns199671%_
                         '"["
                         __tmp200022
                         '"]#_"
                         __tmp200021
                         '"_"))
                      (let ((__tmp200023
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns199671%_ '"#_" __tmp200023 '"_")))
                  (if (fxpositive? _%phi199672%_)
                      (let ((__tmp200025 (number->string _%phi199672%_))
                            (__tmp200024
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp200025
                         '"]#_"
                         __tmp200024
                         '"_"))
                      (let ((__tmp200026
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp200026 '"_")))))
            (let ((__tmp200027 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp200027 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top199678%_ '#f))
          (gxc#generate-runtime-temporary__% _%top199678%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g200028_
        (let ((_g200029_ (let () (declare (not safe)) (##length _g200028_))))
          (cond ((let () (declare (not safe)) (##fx= _g200029_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g200028_))
                ((let () (declare (not safe)) (##fx= _g200029_ 1))
                 (apply gxc#generate-runtime-temporary__% _g200028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g200028_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym199647%_ _%quote?199648%_)
        (let* ((_%ht199650%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e199652%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht199650%_ _%sym199647%_))))
          (if _%$e199652%_
              _%$e199652%_
              (let ((_%g199656%_
                     (if _%quote?199648%_
                         (let ((__tmp200030
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym199647%_
                            '"__"
                            __tmp200030))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym199647%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht199650%_ _%sym199647%_ _%g199656%_))
                _%g199656%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym199661%_)
        (let ((_%quote?199663%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym199661%_
           _%quote?199663%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g200031_
        (let ((_g200032_ (let () (declare (not safe)) (##length _g200031_))))
          (cond ((let () (declare (not safe)) (##fx= _g200032_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g200031_))
                ((let () (declare (not safe)) (##fx= _g200032_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g200031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g200031_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id199644%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id199644%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key199599%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key199599%_))
            _%key199599%_
            (if (uninterned-symbol? _%key199599%_)
                (gxc#generate-runtime-gensym-reference__0 _%key199599%_)
                (let* ((_%$%key199603199610%_ _%key199599%_)
                       (_%$%E199605199614%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key199603199610%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K199606199632%_
                        (lambda (_%mark199617%_ _%eid199618%_)
                          (let ((_%$e199620%_
                                 (##structure-ref
                                  _%mark199617%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e199620%_
                                (let ((_%$e199625%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e199620%_
                                          _%eid199618%_))))
                                  (if _%$e199625%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e199625%_))
                                          _%$e199625%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e199625%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid199618%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid199618%_))))))
                  (if (pair? _%$%key199603199610%_)
                      (let ((_%$%hd199607199635%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key199603199610%_)))
                            (_%$%tl199608199637%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key199603199610%_))))
                        (let* ((_%eid199640%_ _%$%hd199607199635%_)
                               (_%mark199642%_ _%$%tl199608199637%_))
                          (_%$%K199606199632%_ _%mark199642%_ _%eid199640%_)))
                      (_%$%E199605199614%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1199592%_ _%id2199593%_)
        (letrec ((_%symbol-e199595%_
                  (lambda (_%id199597%_)
                    (if (symbol? _%id199597%_)
                        _%id199597%_
                        (gxc#generate-runtime-binding-id _%id199597%_)))))
          (eq? (_%symbol-e199595%_ _%id1199592%_)
               (_%symbol-e199595%_ _%id2199593%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx199590%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx199590%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx199590%_)
            (let () (declare (not safe)) (gx#stx-e _%stx199590%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id199512%_)
        (let* ((_%bind199514%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id199512%_)))
               (_%runtime-props199543%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind199514%_
                       'gx#runtime-binding::t))
                    (let* ((_%props199523%_
                            (let ((_%$e199517%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199514%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e199517%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e199517%_)
                                              '()))
                                  '())))
                           (_%props199539%_
                            (let ((_%$e199525%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind199514%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e199525%_
                                  (let ((_%$e199530%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e199525%_
                                            ':repr))))
                                    (if _%$e199530%_
                                        (let ((_%repr199535%_
                                               (_%$e199530%_ _%$e199525%_)))
                                          (cons 'type:
                                                (cons _%repr199535%_
                                                      _%props199523%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id199512%_
                                         _%$e199525%_)))
                                  _%props199523%_))))
                      _%props199539%_)
                    '()))
               (_%$e199546%_
                (##structure-ref _%bind199514%_ '4 gx#binding::t '#f)))
          (if _%$e199546%_
              (let ((__tmp200033
                     (lambda (_%prop199551%_ _%props199552%_)
                       (let* ((_%$%prop199553199560%_ _%prop199551%_)
                              (_%$%E199555199563%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop199553199560%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K199556199577%_
                               (lambda (_%value199566%_ _%key199567%_)
                                 (let ((_%$e199569%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value199566%_
                                           ':repr))))
                                   (if _%$e199569%_
                                       (let ((_%repr199574%_
                                              (_%$e199569%_ _%value199566%_)))
                                         (cons _%key199567%_
                                               (cons _%repr199574%_
                                                     _%props199552%_)))
                                       (cons _%key199567%_
                                             (cons (cons 'quote
                                                         (cons _%value199566%_
                                                               '()))
                                                   _%props199552%_)))))))
                         (if (pair? _%$%prop199553199560%_)
                             (let ((_%$%hd199557199580%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop199553199560%_)))
                                   (_%$%tl199558199582%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop199553199560%_))))
                               (let* ((_%key199585%_ _%$%hd199557199580%_)
                                      (_%value199587%_ _%$%tl199558199582%_))
                                 (_%$%K199556199577%_
                                  _%value199587%_
                                  _%key199585%_)))
                             (_%$%E199555199563%_))))))
                (declare (not safe))
                (foldl__0 __tmp200033 _%runtime-props199543%_ _%$e199546%_))
              _%runtime-props199543%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk199497%_ _%name199498%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job199500%_
               (gxc#make-compile-job _%thunk199497%_ _%name199498%_)))
          (set! gxc#__compile-jobs (cons _%job199500%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk199505%_)
        (let ((_%name199507%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk199505%_ _%name199507%_))))
    (define gxc#add-compile-job!
      (lambda _g200034_
        (let ((_g200035_ (let () (declare (not safe)) (##length _g200034_))))
          (cond ((let () (declare (not safe)) (##fx= _g200035_ 1))
                 (apply gxc#add-compile-job!__0 _g200034_))
                ((let () (declare (not safe)) (##fx= _g200035_ 2))
                 (apply gxc#add-compile-job!__% _g200034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g200034_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result199494%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result199494%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop199488%_ ()
          (let ((_%pending199491%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending199491%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending199491%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending199491%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk199477%_ _%name199478%_)
        (make-thread
         (lambda ()
           (let _%loop199481%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp200036
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name199478%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp200036))
                   (let ((__tmp200038 (lambda () (_%thunk199477%_)))
                         (__tmp200037
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp200038 __tmp200037)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop199481%_)))))
         _%name199478%_)))
    (define gxc#join!
      (lambda (_%thread199472%_)
        (let ((__tmp200040
               (lambda (_%exn199474%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn199474%_))
                     (let ((__tmp200041
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn199474%_))))
                       (declare (not safe))
                       (raise __tmp200041))
                     (let () (declare (not safe)) (raise _%exn199474%_)))))
              (__tmp200039 (lambda () (thread-join! _%thread199472%_))))
          (declare (not safe))
          (__with-catch __tmp200040 __tmp200039))))))
