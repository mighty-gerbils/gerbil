(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771092629)
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
       (let ((_%verbosity190658190660%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity190658190660%_
             (let* ((_%verbosity190662%_ _%verbosity190658190660%_)
                    (_%$e190664%_ (string->number _%verbosity190662%_)))
               (if _%$e190664%_ _%$e190664%_ _%verbosity190662%_))
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
        (letrec ((_%hash-e190655%_
                  (lambda (_%id190657%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id190657%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e190655%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp190719 (list)) (__tmp190718 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp190719
         '(gensyms bindings)
         __tmp190718
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args190651%_
        (apply make-instance gxc#symbol-table::t _%$args190651%_)))
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
      (lambda (_%self190638%_)
        (let ((_%self190641%_ _%self190638%_))
          (if (let ((__tmp190720
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190641%_))))
                (declare (not safe))
                (##fx< '2 __tmp190720))
              (begin
                (let ((__tmp190721
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190641%_
                   __tmp190721
                   '1
                   '#f
                   '#f))
                (let ((__tmp190722
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190641%_
                   __tmp190722
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp190723
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190641%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self190641%_
                       '2
                       __tmp190723))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message190507%_ _%stx190508%_ . _%details190509%_)
        (let ((_%ctx190514%_
               (let ((_%$e190511%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e190511%_ _%$e190511%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx190514%_
                 _%message190507%_
                 _%stx190508%_
                 _%details190509%_))))
    (define gxc#verbose
      (lambda _%args190504%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp190724
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args190504%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp190724))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id190486%_)
        (let* ((_%str190488%_
                (if (symbol? _%id190486%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id190486%_))
                    _%id190486%_))
               (_%len190490%_ (string-length _%str190488%_))
               (_%res190492%_
                (let () (declare (not safe)) (##make-string _%len190490%_))))
          (let _%lp190495%_ ((_%i190497%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i190497%_ _%len190490%_))
                (let* ((_%char190499%_ (string-ref _%str190488%_ _%i190497%_))
                       (_%xchar190501%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char190499%_))
                            '#\_
                            _%char190499%_)))
                  (string-set! _%res190492%_ _%i190497%_ _%xchar190501%_)
                  (_%lp190495%_
                   (let () (declare (not safe)) (##fx+ _%i190497%_ '1))))
                _%res190492%_)))))
    (define gxc#map*
      (lambda (_%proc190428%_ _%maybe-improper-list190429%_)
        (let _%recur190431%_ ((_%rest190433%_ _%maybe-improper-list190429%_))
          (let* ((_%rest190434190445%_ _%rest190433%_)
                 (_%E190438190449%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest190434190445%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K190441190474%_
                   (lambda (_%rest190471%_ _%hd190472%_)
                     (cons (_%proc190428%_ _%hd190472%_)
                           (_%recur190431%_ _%rest190471%_))))
                  (_%K190440190465%_ (lambda () '()))
                  (_%K190439190455%_
                   (lambda (_%tail190453%_) (_%proc190428%_ _%tail190453%_))))
              (let ((_%try-match190436190468%_
                     (lambda ()
                       (if (null? _%rest190434190445%_)
                           (_%K190440190465%_)
                           (let ((_%tail190458%_ _%rest190434190445%_))
                             (declare (not safe))
                             (_%proc190428%_ _%tail190458%_))))))
                (if (pair? _%rest190434190445%_)
                    (let ((_%tl190443190479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest190434190445%_)))
                          (_%hd190442190477%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest190434190445%_))))
                      (let ((_%hd190482%_ _%hd190442190477%_)
                            (_%rest190484%_ _%tl190443190479%_))
                        (_%K190441190474%_ _%rest190484%_ _%hd190482%_)))
                    (_%try-match190436190468%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym190423%_)
        (let ((_%$e190425%_ (not (gxc#gensym-reference? _%sym190423%_))))
          (if _%$e190425%_
              _%$e190425%_
              (memq _%sym190423%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym190419%_)
        (let ((_%str190421%_ (symbol->string _%sym190419%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str190421%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str190421%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id190390%_)
        (let ((_%$e190392%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id190390%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id190390%_))
                   '#f)))
          (if _%$e190392%_
              ((lambda (_%bind190395%_)
                 (let ((_%eid190397%_
                        (##structure-ref _%bind190395%_ '1 gx#binding::t '#f))
                       (_%ht190398%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid190397%_))
                       _%eid190397%_
                       (let ((_%$e190401%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht190398%_ _%eid190397%_))))
                         (if _%$e190401%_
                             _%$e190401%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind190395%_
                                    'gx#local-binding::t))
                                 (let ((_%gid190405%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid190397%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht190398%_
                                      _%eid190397%_
                                      _%gid190405%_))
                                   _%gid190405%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind190395%_
                                        'gx#module-binding::t))
                                     (let ((_%gid190414%_
                                            (let ((_%$e190408%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind190395%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e190408%_
                                                  ((lambda (_%ns190411%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns190411%_
                                                        '"#"
                                                        _%eid190397%_)))
                                                   _%$e190408%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid190397%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht190398%_
                                          _%eid190397%_
                                          _%gid190414%_))
                                       _%gid190414%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id190390%_
                                      _%eid190397%_
                                      _%bind190395%_))))))))
               _%$e190392%_)
              (if (let ((__tmp190725
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id190390%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp190725))
                  (let () (declare (not safe)) (gx#stx-e _%id190390%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id190390%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id190388%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id190388%_))
            (gxc#generate-runtime-binding-id _%id190388%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top190375%_)
        (if _%top190375%_
            (let ((_%ns190377%_
                   (##structure-ref
                    (let ((__tmp190726
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp190726))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi190378%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns190377%_
                  (if (fxpositive? _%phi190378%_)
                      (let ((__tmp190728 (number->string _%phi190378%_))
                            (__tmp190727
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns190377%_
                         '"["
                         __tmp190728
                         '"]#_"
                         __tmp190727
                         '"_"))
                      (let ((__tmp190729
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns190377%_ '"#_" __tmp190729 '"_")))
                  (if (fxpositive? _%phi190378%_)
                      (let ((__tmp190731 (number->string _%phi190378%_))
                            (__tmp190730
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp190731
                         '"]#_"
                         __tmp190730
                         '"_"))
                      (let ((__tmp190732
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp190732 '"_")))))
            (let ((__tmp190733 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp190733 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top190384%_ '#f))
          (gxc#generate-runtime-temporary__% _%top190384%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g190734_
        (let ((_g190735_ (let () (declare (not safe)) (##length _g190734_))))
          (cond ((let () (declare (not safe)) (##fx= _g190735_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g190734_))
                ((let () (declare (not safe)) (##fx= _g190735_ 1))
                 (apply gxc#generate-runtime-temporary__% _g190734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g190734_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym190353%_ _%quote?190354%_)
        (let* ((_%ht190356%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e190358%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht190356%_ _%sym190353%_))))
          (if _%$e190358%_
              _%$e190358%_
              (let ((_%g190362%_
                     (if _%quote?190354%_
                         (let ((__tmp190736
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym190353%_
                            '"__"
                            __tmp190736))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym190353%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht190356%_ _%sym190353%_ _%g190362%_))
                _%g190362%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym190367%_)
        (let ((_%quote?190369%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym190367%_
           _%quote?190369%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g190737_
        (let ((_g190738_ (let () (declare (not safe)) (##length _g190737_))))
          (cond ((let () (declare (not safe)) (##fx= _g190738_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g190737_))
                ((let () (declare (not safe)) (##fx= _g190738_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g190737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g190737_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id190350%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id190350%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key190305%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key190305%_))
            _%key190305%_
            (if (uninterned-symbol? _%key190305%_)
                (gxc#generate-runtime-gensym-reference__0 _%key190305%_)
                (let* ((_%key190309190316%_ _%key190305%_)
                       (_%E190311190320%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key190309190316%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K190312190338%_
                        (lambda (_%mark190323%_ _%eid190324%_)
                          (let ((_%$e190326%_
                                 (##structure-ref
                                  _%mark190323%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e190326%_
                                ((lambda (_%ht190329%_)
                                   (let ((_%$e190331%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht190329%_
                                             _%eid190324%_))))
                                     (if _%$e190331%_
                                         ((lambda (_%id190334%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id190334%_))
                                                _%id190334%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id190334%_)))
                                          _%$e190331%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid190324%_))))
                                 _%$e190326%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid190324%_))))))
                  (if (pair? _%key190309190316%_)
                      (let ((_%hd190313190341%_
                             (let ()
                               (declare (not safe))
                               (##car _%key190309190316%_)))
                            (_%tl190314190343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key190309190316%_))))
                        (let* ((_%eid190346%_ _%hd190313190341%_)
                               (_%mark190348%_ _%tl190314190343%_))
                          (_%K190312190338%_ _%mark190348%_ _%eid190346%_)))
                      (_%E190311190320%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1190298%_ _%id2190299%_)
        (letrec ((_%symbol-e190301%_
                  (lambda (_%id190303%_)
                    (if (symbol? _%id190303%_)
                        _%id190303%_
                        (gxc#generate-runtime-binding-id _%id190303%_)))))
          (eq? (_%symbol-e190301%_ _%id1190298%_)
               (_%symbol-e190301%_ _%id2190299%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx190296%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx190296%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx190296%_)
            (let () (declare (not safe)) (gx#stx-e _%stx190296%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id190218%_)
        (let* ((_%bind190220%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id190218%_)))
               (_%runtime-props190249%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind190220%_
                       'gx#runtime-binding::t))
                    (let* ((_%props190229%_
                            (let ((_%$e190223%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190220%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e190223%_
                                  ((lambda (_%macro-id190226%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id190226%_)
                                                 '())))
                                   _%$e190223%_)
                                  '())))
                           (_%props190245%_
                            (let ((_%$e190231%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190220%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e190231%_
                                  ((lambda (_%type190234%_)
                                     (let ((_%$e190236%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type190234%_
                                               ':repr))))
                                       (if _%$e190236%_
                                           ((lambda (_%method190239%_)
                                              (let ((_%repr190241%_
                                                     (_%method190239%_
                                                      _%type190234%_)))
                                                (cons 'type:
                                                      (cons _%repr190241%_
                                                            _%props190229%_))))
                                            _%$e190236%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id190218%_
                                            _%type190234%_))))
                                   _%$e190231%_)
                                  _%props190229%_))))
                      _%props190245%_)
                    '()))
               (_%$e190252%_
                (##structure-ref _%bind190220%_ '4 gx#binding::t '#f)))
          (if _%$e190252%_
              ((lambda (_%props190255%_)
                 (let ((__tmp190739
                        (lambda (_%prop190257%_ _%props190258%_)
                          (let* ((_%prop190259190266%_ _%prop190257%_)
                                 (_%E190261190269%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop190259190266%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K190262190283%_
                                  (lambda (_%value190272%_ _%key190273%_)
                                    (let ((_%$e190275%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value190272%_
                                              ':repr))))
                                      (if _%$e190275%_
                                          ((lambda (_%method190278%_)
                                             (let ((_%repr190280%_
                                                    (_%method190278%_
                                                     _%value190272%_)))
                                               (cons _%key190273%_
                                                     (cons _%repr190280%_
                                                           _%props190258%_))))
                                           _%$e190275%_)
                                          (cons _%key190273%_
                                                (cons (cons 'quote
                                                            (cons _%value190272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props190258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop190259190266%_)
                                (let ((_%hd190263190286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop190259190266%_)))
                                      (_%tl190264190288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop190259190266%_))))
                                  (let* ((_%key190291%_ _%hd190263190286%_)
                                         (_%value190293%_ _%tl190264190288%_))
                                    (_%K190262190283%_
                                     _%value190293%_
                                     _%key190291%_)))
                                (_%E190261190269%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp190739
                    _%runtime-props190249%_
                    _%props190255%_)))
               _%$e190252%_)
              _%runtime-props190249%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk190203%_ _%name190204%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job190206%_
               (gxc#make-compile-job _%thunk190203%_ _%name190204%_)))
          (set! gxc#__compile-jobs (cons _%job190206%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk190211%_)
        (let ((_%name190213%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk190211%_ _%name190213%_))))
    (define gxc#add-compile-job!
      (lambda _g190740_
        (let ((_g190741_ (let () (declare (not safe)) (##length _g190740_))))
          (cond ((let () (declare (not safe)) (##fx= _g190741_ 1))
                 (apply gxc#add-compile-job!__0 _g190740_))
                ((let () (declare (not safe)) (##fx= _g190741_ 2))
                 (apply gxc#add-compile-job!__% _g190740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g190740_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result190200%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result190200%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop190194%_ ()
          (let ((_%pending190197%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending190197%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending190197%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending190197%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk190183%_ _%name190184%_)
        (make-thread
         (lambda ()
           (let _%loop190187%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp190742
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name190184%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp190742))
                   (let ((__tmp190744 (lambda () (_%thunk190183%_)))
                         (__tmp190743
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp190744 __tmp190743)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop190187%_)))))
         _%name190184%_)))
    (define gxc#join!
      (lambda (_%thread190178%_)
        (let ((__tmp190746
               (lambda (_%exn190180%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn190180%_))
                     (let ((__tmp190747
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn190180%_))))
                       (declare (not safe))
                       (raise __tmp190747))
                     (let () (declare (not safe)) (raise _%exn190180%_)))))
              (__tmp190745 (lambda () (thread-join! _%thread190178%_))))
          (declare (not safe))
          (__with-catch __tmp190746 __tmp190745))))))
