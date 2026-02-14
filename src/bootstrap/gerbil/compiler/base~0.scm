(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771093450)
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
       (let ((_%verbosity190662190664%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity190662190664%_
             (let* ((_%verbosity190666%_ _%verbosity190662190664%_)
                    (_%$e190668%_ (string->number _%verbosity190666%_)))
               (if _%$e190668%_ _%$e190668%_ _%verbosity190666%_))
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
        (letrec ((_%hash-e190659%_
                  (lambda (_%id190661%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id190661%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e190659%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp190723 (list)) (__tmp190722 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp190723
         '(gensyms bindings)
         __tmp190722
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args190655%_
        (apply make-instance gxc#symbol-table::t _%$args190655%_)))
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
      (lambda (_%self190642%_)
        (let ((_%self190645%_ _%self190642%_))
          (if (let ((__tmp190724
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190645%_))))
                (declare (not safe))
                (##fx< '2 __tmp190724))
              (begin
                (let ((__tmp190725
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190645%_
                   __tmp190725
                   '1
                   '#f
                   '#f))
                (let ((__tmp190726
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190645%_
                   __tmp190726
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp190727
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190645%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self190645%_
                       '2
                       __tmp190727))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message190511%_ _%stx190512%_ . _%details190513%_)
        (let ((_%ctx190518%_
               (let ((_%$e190515%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e190515%_ _%$e190515%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx190518%_
                 _%message190511%_
                 _%stx190512%_
                 _%details190513%_))))
    (define gxc#verbose
      (lambda _%args190508%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp190728
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args190508%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp190728))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id190490%_)
        (let* ((_%str190492%_
                (if (symbol? _%id190490%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id190490%_))
                    _%id190490%_))
               (_%len190494%_ (string-length _%str190492%_))
               (_%res190496%_
                (let () (declare (not safe)) (##make-string _%len190494%_))))
          (let _%lp190499%_ ((_%i190501%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i190501%_ _%len190494%_))
                (let* ((_%char190503%_ (string-ref _%str190492%_ _%i190501%_))
                       (_%xchar190505%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char190503%_))
                            '#\_
                            _%char190503%_)))
                  (string-set! _%res190496%_ _%i190501%_ _%xchar190505%_)
                  (_%lp190499%_
                   (let () (declare (not safe)) (##fx+ _%i190501%_ '1))))
                _%res190496%_)))))
    (define gxc#map*
      (lambda (_%proc190432%_ _%maybe-improper-list190433%_)
        (let _%recur190435%_ ((_%rest190437%_ _%maybe-improper-list190433%_))
          (let* ((_%rest190438190449%_ _%rest190437%_)
                 (_%E190442190453%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest190438190449%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K190445190478%_
                   (lambda (_%rest190475%_ _%hd190476%_)
                     (cons (_%proc190432%_ _%hd190476%_)
                           (_%recur190435%_ _%rest190475%_))))
                  (_%K190444190469%_ (lambda () '()))
                  (_%K190443190459%_
                   (lambda (_%tail190457%_) (_%proc190432%_ _%tail190457%_))))
              (let ((_%try-match190440190472%_
                     (lambda ()
                       (if (null? _%rest190438190449%_)
                           (_%K190444190469%_)
                           (let ((_%tail190462%_ _%rest190438190449%_))
                             (declare (not safe))
                             (_%proc190432%_ _%tail190462%_))))))
                (if (pair? _%rest190438190449%_)
                    (let ((_%tl190447190483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest190438190449%_)))
                          (_%hd190446190481%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest190438190449%_))))
                      (let ((_%hd190486%_ _%hd190446190481%_)
                            (_%rest190488%_ _%tl190447190483%_))
                        (_%K190445190478%_ _%rest190488%_ _%hd190486%_)))
                    (_%try-match190440190472%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym190427%_)
        (let ((_%$e190429%_ (not (gxc#gensym-reference? _%sym190427%_))))
          (if _%$e190429%_
              _%$e190429%_
              (memq _%sym190427%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym190423%_)
        (let ((_%str190425%_ (symbol->string _%sym190423%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str190425%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str190425%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id190394%_)
        (let ((_%$e190396%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id190394%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id190394%_))
                   '#f)))
          (if _%$e190396%_
              ((lambda (_%bind190399%_)
                 (let ((_%eid190401%_
                        (##structure-ref _%bind190399%_ '1 gx#binding::t '#f))
                       (_%ht190402%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid190401%_))
                       _%eid190401%_
                       (let ((_%$e190405%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht190402%_ _%eid190401%_))))
                         (if _%$e190405%_
                             _%$e190405%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind190399%_
                                    'gx#local-binding::t))
                                 (let ((_%gid190409%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid190401%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht190402%_
                                      _%eid190401%_
                                      _%gid190409%_))
                                   _%gid190409%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind190399%_
                                        'gx#module-binding::t))
                                     (let ((_%gid190418%_
                                            (let ((_%$e190412%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind190399%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e190412%_
                                                  ((lambda (_%ns190415%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns190415%_
                                                        '"#"
                                                        _%eid190401%_)))
                                                   _%$e190412%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid190401%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht190402%_
                                          _%eid190401%_
                                          _%gid190418%_))
                                       _%gid190418%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id190394%_
                                      _%eid190401%_
                                      _%bind190399%_))))))))
               _%$e190396%_)
              (if (let ((__tmp190729
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id190394%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp190729))
                  (let () (declare (not safe)) (gx#stx-e _%id190394%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id190394%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id190392%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id190392%_))
            (gxc#generate-runtime-binding-id _%id190392%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top190379%_)
        (if _%top190379%_
            (let ((_%ns190381%_
                   (##structure-ref
                    (let ((__tmp190730
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp190730))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi190382%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns190381%_
                  (if (fxpositive? _%phi190382%_)
                      (let ((__tmp190732 (number->string _%phi190382%_))
                            (__tmp190731
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns190381%_
                         '"["
                         __tmp190732
                         '"]#_"
                         __tmp190731
                         '"_"))
                      (let ((__tmp190733
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns190381%_ '"#_" __tmp190733 '"_")))
                  (if (fxpositive? _%phi190382%_)
                      (let ((__tmp190735 (number->string _%phi190382%_))
                            (__tmp190734
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp190735
                         '"]#_"
                         __tmp190734
                         '"_"))
                      (let ((__tmp190736
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp190736 '"_")))))
            (let ((__tmp190737 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp190737 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top190388%_ '#f))
          (gxc#generate-runtime-temporary__% _%top190388%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g190738_
        (let ((_g190739_ (let () (declare (not safe)) (##length _g190738_))))
          (cond ((let () (declare (not safe)) (##fx= _g190739_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g190738_))
                ((let () (declare (not safe)) (##fx= _g190739_ 1))
                 (apply gxc#generate-runtime-temporary__% _g190738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g190738_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym190357%_ _%quote?190358%_)
        (let* ((_%ht190360%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e190362%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht190360%_ _%sym190357%_))))
          (if _%$e190362%_
              _%$e190362%_
              (let ((_%g190366%_
                     (if _%quote?190358%_
                         (let ((__tmp190740
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym190357%_
                            '"__"
                            __tmp190740))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym190357%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht190360%_ _%sym190357%_ _%g190366%_))
                _%g190366%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym190371%_)
        (let ((_%quote?190373%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym190371%_
           _%quote?190373%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g190741_
        (let ((_g190742_ (let () (declare (not safe)) (##length _g190741_))))
          (cond ((let () (declare (not safe)) (##fx= _g190742_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g190741_))
                ((let () (declare (not safe)) (##fx= _g190742_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g190741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g190741_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id190354%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id190354%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key190309%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key190309%_))
            _%key190309%_
            (if (uninterned-symbol? _%key190309%_)
                (gxc#generate-runtime-gensym-reference__0 _%key190309%_)
                (let* ((_%key190313190320%_ _%key190309%_)
                       (_%E190315190324%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key190313190320%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K190316190342%_
                        (lambda (_%mark190327%_ _%eid190328%_)
                          (let ((_%$e190330%_
                                 (##structure-ref
                                  _%mark190327%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e190330%_
                                ((lambda (_%ht190333%_)
                                   (let ((_%$e190335%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht190333%_
                                             _%eid190328%_))))
                                     (if _%$e190335%_
                                         ((lambda (_%id190338%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id190338%_))
                                                _%id190338%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id190338%_)))
                                          _%$e190335%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid190328%_))))
                                 _%$e190330%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid190328%_))))))
                  (if (pair? _%key190313190320%_)
                      (let ((_%hd190317190345%_
                             (let ()
                               (declare (not safe))
                               (##car _%key190313190320%_)))
                            (_%tl190318190347%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key190313190320%_))))
                        (let* ((_%eid190350%_ _%hd190317190345%_)
                               (_%mark190352%_ _%tl190318190347%_))
                          (_%K190316190342%_ _%mark190352%_ _%eid190350%_)))
                      (_%E190315190324%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1190302%_ _%id2190303%_)
        (letrec ((_%symbol-e190305%_
                  (lambda (_%id190307%_)
                    (if (symbol? _%id190307%_)
                        _%id190307%_
                        (gxc#generate-runtime-binding-id _%id190307%_)))))
          (eq? (_%symbol-e190305%_ _%id1190302%_)
               (_%symbol-e190305%_ _%id2190303%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx190300%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx190300%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx190300%_)
            (let () (declare (not safe)) (gx#stx-e _%stx190300%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id190222%_)
        (let* ((_%bind190224%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id190222%_)))
               (_%runtime-props190253%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind190224%_
                       'gx#runtime-binding::t))
                    (let* ((_%props190233%_
                            (let ((_%$e190227%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190224%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e190227%_
                                  ((lambda (_%macro-id190230%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id190230%_)
                                                 '())))
                                   _%$e190227%_)
                                  '())))
                           (_%props190249%_
                            (let ((_%$e190235%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind190224%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e190235%_
                                  ((lambda (_%type190238%_)
                                     (let ((_%$e190240%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type190238%_
                                               ':repr))))
                                       (if _%$e190240%_
                                           ((lambda (_%method190243%_)
                                              (let ((_%repr190245%_
                                                     (_%method190243%_
                                                      _%type190238%_)))
                                                (cons 'type:
                                                      (cons _%repr190245%_
                                                            _%props190233%_))))
                                            _%$e190240%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id190222%_
                                            _%type190238%_))))
                                   _%$e190235%_)
                                  _%props190233%_))))
                      _%props190249%_)
                    '()))
               (_%$e190256%_
                (##structure-ref _%bind190224%_ '4 gx#binding::t '#f)))
          (if _%$e190256%_
              ((lambda (_%props190259%_)
                 (let ((__tmp190743
                        (lambda (_%prop190261%_ _%props190262%_)
                          (let* ((_%prop190263190270%_ _%prop190261%_)
                                 (_%E190265190273%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop190263190270%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K190266190287%_
                                  (lambda (_%value190276%_ _%key190277%_)
                                    (let ((_%$e190279%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value190276%_
                                              ':repr))))
                                      (if _%$e190279%_
                                          ((lambda (_%method190282%_)
                                             (let ((_%repr190284%_
                                                    (_%method190282%_
                                                     _%value190276%_)))
                                               (cons _%key190277%_
                                                     (cons _%repr190284%_
                                                           _%props190262%_))))
                                           _%$e190279%_)
                                          (cons _%key190277%_
                                                (cons (cons 'quote
                                                            (cons _%value190276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props190262%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop190263190270%_)
                                (let ((_%hd190267190290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop190263190270%_)))
                                      (_%tl190268190292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop190263190270%_))))
                                  (let* ((_%key190295%_ _%hd190267190290%_)
                                         (_%value190297%_ _%tl190268190292%_))
                                    (_%K190266190287%_
                                     _%value190297%_
                                     _%key190295%_)))
                                (_%E190265190273%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp190743
                    _%runtime-props190253%_
                    _%props190259%_)))
               _%$e190256%_)
              _%runtime-props190253%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk190207%_ _%name190208%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job190210%_
               (gxc#make-compile-job _%thunk190207%_ _%name190208%_)))
          (set! gxc#__compile-jobs (cons _%job190210%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk190215%_)
        (let ((_%name190217%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk190215%_ _%name190217%_))))
    (define gxc#add-compile-job!
      (lambda _g190744_
        (let ((_g190745_ (let () (declare (not safe)) (##length _g190744_))))
          (cond ((let () (declare (not safe)) (##fx= _g190745_ 1))
                 (apply gxc#add-compile-job!__0 _g190744_))
                ((let () (declare (not safe)) (##fx= _g190745_ 2))
                 (apply gxc#add-compile-job!__% _g190744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g190744_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result190204%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result190204%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop190198%_ ()
          (let ((_%pending190201%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending190201%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending190201%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending190201%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk190187%_ _%name190188%_)
        (make-thread
         (lambda ()
           (let _%loop190191%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp190746
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name190188%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp190746))
                   (let ((__tmp190748 (lambda () (_%thunk190187%_)))
                         (__tmp190747
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp190748 __tmp190747)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop190191%_)))))
         _%name190188%_)))
    (define gxc#join!
      (lambda (_%thread190182%_)
        (let ((__tmp190750
               (lambda (_%exn190184%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn190184%_))
                     (let ((__tmp190751
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn190184%_))))
                       (declare (not safe))
                       (raise __tmp190751))
                     (let () (declare (not safe)) (raise _%exn190184%_)))))
              (__tmp190749 (lambda () (thread-join! _%thread190182%_))))
          (declare (not safe))
          (__with-catch __tmp190750 __tmp190749))))))
