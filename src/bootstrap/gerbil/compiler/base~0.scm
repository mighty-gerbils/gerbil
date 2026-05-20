(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1779274772)
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
       (let ((_%verbosity192016192018%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity192016192018%_
             (let* ((_%verbosity192020%_ _%verbosity192016192018%_)
                    (_%$e192022%_ (string->number _%verbosity192020%_)))
               (if _%$e192022%_ _%$e192022%_ _%verbosity192020%_))
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
        (letrec ((_%hash-e192013%_
                  (lambda (_%id192015%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id192015%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e192013%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp192077 (list)) (__tmp192076 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp192077
         '(gensyms bindings)
         __tmp192076
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args192009%_
        (apply make-instance gxc#symbol-table::t _%$args192009%_)))
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
      (lambda (_%self191996%_)
        (let ((_%self191999%_ _%self191996%_))
          (if (let ((__tmp192078
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191999%_))))
                (declare (not safe))
                (##fx< '2 __tmp192078))
              (begin
                (let ((__tmp192079
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191999%_
                   __tmp192079
                   '1
                   '#f
                   '#f))
                (let ((__tmp192080
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self191999%_
                   __tmp192080
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp192081
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self191999%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self191999%_
                       '2
                       __tmp192081))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message191865%_ _%stx191866%_ . _%details191867%_)
        (let ((_%ctx191872%_
               (let ((_%$e191869%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e191869%_ _%$e191869%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx191872%_
                 _%message191865%_
                 _%stx191866%_
                 _%details191867%_))))
    (define gxc#verbose
      (lambda _%args191862%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp192082
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args191862%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp192082))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id191844%_)
        (let* ((_%str191846%_
                (if (symbol? _%id191844%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id191844%_))
                    _%id191844%_))
               (_%len191848%_ (string-length _%str191846%_))
               (_%res191850%_
                (let () (declare (not safe)) (##make-string _%len191848%_))))
          (let _%lp191853%_ ((_%i191855%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i191855%_ _%len191848%_))
                (let* ((_%char191857%_ (string-ref _%str191846%_ _%i191855%_))
                       (_%xchar191859%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char191857%_))
                            '#\_
                            _%char191857%_)))
                  (string-set! _%res191850%_ _%i191855%_ _%xchar191859%_)
                  (_%lp191853%_
                   (let () (declare (not safe)) (##fx+ _%i191855%_ '1))))
                _%res191850%_)))))
    (define gxc#map*
      (lambda (_%proc191786%_ _%maybe-improper-list191787%_)
        (let _%recur191789%_ ((_%rest191791%_ _%maybe-improper-list191787%_))
          (let* ((_%rest191792191803%_ _%rest191791%_)
                 (_%E191796191807%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest191792191803%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K191799191832%_
                   (lambda (_%rest191829%_ _%hd191830%_)
                     (cons (_%proc191786%_ _%hd191830%_)
                           (_%recur191789%_ _%rest191829%_))))
                  (_%K191798191823%_ (lambda () '()))
                  (_%K191797191813%_
                   (lambda (_%tail191811%_) (_%proc191786%_ _%tail191811%_))))
              (let ((_%try-match191794191826%_
                     (lambda ()
                       (if (null? _%rest191792191803%_)
                           (_%K191798191823%_)
                           (let ((_%tail191816%_ _%rest191792191803%_))
                             (declare (not safe))
                             (_%proc191786%_ _%tail191816%_))))))
                (if (pair? _%rest191792191803%_)
                    (let ((_%tl191801191837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest191792191803%_)))
                          (_%hd191800191835%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest191792191803%_))))
                      (let ((_%hd191840%_ _%hd191800191835%_)
                            (_%rest191842%_ _%tl191801191837%_))
                        (_%K191799191832%_ _%rest191842%_ _%hd191840%_)))
                    (_%try-match191794191826%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym191781%_)
        (let ((_%$e191783%_ (not (gxc#gensym-reference? _%sym191781%_))))
          (if _%$e191783%_
              _%$e191783%_
              (memq _%sym191781%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym191777%_)
        (let ((_%str191779%_ (symbol->string _%sym191777%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str191779%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str191779%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id191748%_)
        (let ((_%$e191750%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id191748%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id191748%_))
                   '#f)))
          (if _%$e191750%_
              ((lambda (_%bind191753%_)
                 (let ((_%eid191755%_
                        (##structure-ref _%bind191753%_ '1 gx#binding::t '#f))
                       (_%ht191756%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid191755%_))
                       _%eid191755%_
                       (let ((_%$e191759%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht191756%_ _%eid191755%_))))
                         (if _%$e191759%_
                             _%$e191759%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind191753%_
                                    'gx#local-binding::t))
                                 (let ((_%gid191763%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid191755%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht191756%_
                                      _%eid191755%_
                                      _%gid191763%_))
                                   _%gid191763%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind191753%_
                                        'gx#module-binding::t))
                                     (let ((_%gid191772%_
                                            (let ((_%$e191766%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind191753%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e191766%_
                                                  ((lambda (_%ns191769%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns191769%_
                                                        '"#"
                                                        _%eid191755%_)))
                                                   _%$e191766%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid191755%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht191756%_
                                          _%eid191755%_
                                          _%gid191772%_))
                                       _%gid191772%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id191748%_
                                      _%eid191755%_
                                      _%bind191753%_))))))))
               _%$e191750%_)
              (if (let ((__tmp192083
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id191748%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp192083))
                  (let () (declare (not safe)) (gx#stx-e _%id191748%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id191748%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id191746%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id191746%_))
            (gxc#generate-runtime-binding-id _%id191746%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top191733%_)
        (if _%top191733%_
            (let ((_%ns191735%_
                   (##structure-ref
                    (let ((__tmp192084
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp192084))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi191736%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns191735%_
                  (if (fxpositive? _%phi191736%_)
                      (let ((__tmp192086 (number->string _%phi191736%_))
                            (__tmp192085
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns191735%_
                         '"["
                         __tmp192086
                         '"]#_"
                         __tmp192085
                         '"_"))
                      (let ((__tmp192087
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns191735%_ '"#_" __tmp192087 '"_")))
                  (if (fxpositive? _%phi191736%_)
                      (let ((__tmp192089 (number->string _%phi191736%_))
                            (__tmp192088
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp192089
                         '"]#_"
                         __tmp192088
                         '"_"))
                      (let ((__tmp192090
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp192090 '"_")))))
            (let ((__tmp192091 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp192091 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top191742%_ '#f))
          (gxc#generate-runtime-temporary__% _%top191742%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g192092_
        (let ((_g192093_ (let () (declare (not safe)) (##length _g192092_))))
          (cond ((let () (declare (not safe)) (##fx= _g192093_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g192092_))
                ((let () (declare (not safe)) (##fx= _g192093_ 1))
                 (apply gxc#generate-runtime-temporary__% _g192092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g192092_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym191711%_ _%quote?191712%_)
        (let* ((_%ht191714%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e191716%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht191714%_ _%sym191711%_))))
          (if _%$e191716%_
              _%$e191716%_
              (let ((_%g191720%_
                     (if _%quote?191712%_
                         (let ((__tmp192094
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym191711%_
                            '"__"
                            __tmp192094))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym191711%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht191714%_ _%sym191711%_ _%g191720%_))
                _%g191720%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym191725%_)
        (let ((_%quote?191727%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym191725%_
           _%quote?191727%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g192095_
        (let ((_g192096_ (let () (declare (not safe)) (##length _g192095_))))
          (cond ((let () (declare (not safe)) (##fx= _g192096_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g192095_))
                ((let () (declare (not safe)) (##fx= _g192096_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g192095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g192095_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id191708%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id191708%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key191663%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key191663%_))
            _%key191663%_
            (if (uninterned-symbol? _%key191663%_)
                (gxc#generate-runtime-gensym-reference__0 _%key191663%_)
                (let* ((_%key191667191674%_ _%key191663%_)
                       (_%E191669191678%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key191667191674%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K191670191696%_
                        (lambda (_%mark191681%_ _%eid191682%_)
                          (let ((_%$e191684%_
                                 (##structure-ref
                                  _%mark191681%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e191684%_
                                ((lambda (_%ht191687%_)
                                   (let ((_%$e191689%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht191687%_
                                             _%eid191682%_))))
                                     (if _%$e191689%_
                                         ((lambda (_%id191692%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id191692%_))
                                                _%id191692%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id191692%_)))
                                          _%$e191689%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid191682%_))))
                                 _%$e191684%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid191682%_))))))
                  (if (pair? _%key191667191674%_)
                      (let ((_%hd191671191699%_
                             (let ()
                               (declare (not safe))
                               (##car _%key191667191674%_)))
                            (_%tl191672191701%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key191667191674%_))))
                        (let* ((_%eid191704%_ _%hd191671191699%_)
                               (_%mark191706%_ _%tl191672191701%_))
                          (_%K191670191696%_ _%mark191706%_ _%eid191704%_)))
                      (_%E191669191678%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1191656%_ _%id2191657%_)
        (letrec ((_%symbol-e191659%_
                  (lambda (_%id191661%_)
                    (if (symbol? _%id191661%_)
                        _%id191661%_
                        (gxc#generate-runtime-binding-id _%id191661%_)))))
          (eq? (_%symbol-e191659%_ _%id1191656%_)
               (_%symbol-e191659%_ _%id2191657%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx191654%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx191654%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx191654%_)
            (let () (declare (not safe)) (gx#stx-e _%stx191654%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id191576%_)
        (let* ((_%bind191578%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id191576%_)))
               (_%runtime-props191607%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind191578%_
                       'gx#runtime-binding::t))
                    (let* ((_%props191587%_
                            (let ((_%$e191581%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191578%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e191581%_
                                  ((lambda (_%macro-id191584%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id191584%_)
                                                 '())))
                                   _%$e191581%_)
                                  '())))
                           (_%props191603%_
                            (let ((_%$e191589%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind191578%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e191589%_
                                  ((lambda (_%type191592%_)
                                     (let ((_%$e191594%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type191592%_
                                               ':repr))))
                                       (if _%$e191594%_
                                           ((lambda (_%method191597%_)
                                              (let ((_%repr191599%_
                                                     (_%method191597%_
                                                      _%type191592%_)))
                                                (cons 'type:
                                                      (cons _%repr191599%_
                                                            _%props191587%_))))
                                            _%$e191594%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id191576%_
                                            _%type191592%_))))
                                   _%$e191589%_)
                                  _%props191587%_))))
                      _%props191603%_)
                    '()))
               (_%$e191610%_
                (##structure-ref _%bind191578%_ '4 gx#binding::t '#f)))
          (if _%$e191610%_
              ((lambda (_%props191613%_)
                 (let ((__tmp192097
                        (lambda (_%prop191615%_ _%props191616%_)
                          (let* ((_%prop191617191624%_ _%prop191615%_)
                                 (_%E191619191627%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop191617191624%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K191620191641%_
                                  (lambda (_%value191630%_ _%key191631%_)
                                    (let ((_%$e191633%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value191630%_
                                              ':repr))))
                                      (if _%$e191633%_
                                          ((lambda (_%method191636%_)
                                             (let ((_%repr191638%_
                                                    (_%method191636%_
                                                     _%value191630%_)))
                                               (cons _%key191631%_
                                                     (cons _%repr191638%_
                                                           _%props191616%_))))
                                           _%$e191633%_)
                                          (cons _%key191631%_
                                                (cons (cons 'quote
                                                            (cons _%value191630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props191616%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop191617191624%_)
                                (let ((_%hd191621191644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop191617191624%_)))
                                      (_%tl191622191646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop191617191624%_))))
                                  (let* ((_%key191649%_ _%hd191621191644%_)
                                         (_%value191651%_ _%tl191622191646%_))
                                    (_%K191620191641%_
                                     _%value191651%_
                                     _%key191649%_)))
                                (_%E191619191627%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp192097
                    _%runtime-props191607%_
                    _%props191613%_)))
               _%$e191610%_)
              _%runtime-props191607%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk191561%_ _%name191562%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job191564%_
               (gxc#make-compile-job _%thunk191561%_ _%name191562%_)))
          (set! gxc#__compile-jobs (cons _%job191564%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk191569%_)
        (let ((_%name191571%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk191569%_ _%name191571%_))))
    (define gxc#add-compile-job!
      (lambda _g192098_
        (let ((_g192099_ (let () (declare (not safe)) (##length _g192098_))))
          (cond ((let () (declare (not safe)) (##fx= _g192099_ 1))
                 (apply gxc#add-compile-job!__0 _g192098_))
                ((let () (declare (not safe)) (##fx= _g192099_ 2))
                 (apply gxc#add-compile-job!__% _g192098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g192098_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result191558%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result191558%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop191552%_ ()
          (let ((_%pending191555%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending191555%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending191555%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending191555%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk191541%_ _%name191542%_)
        (make-thread
         (lambda ()
           (let _%loop191545%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp192100
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name191542%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp192100))
                   (let ((__tmp192102 (lambda () (_%thunk191541%_)))
                         (__tmp192101
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp192102 __tmp192101)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop191545%_)))))
         _%name191542%_)))
    (define gxc#join!
      (lambda (_%thread191536%_)
        (let ((__tmp192104
               (lambda (_%exn191538%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn191538%_))
                     (let ((__tmp192105
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn191538%_))))
                       (declare (not safe))
                       (raise __tmp192105))
                     (let () (declare (not safe)) (raise _%exn191538%_)))))
              (__tmp192103 (lambda () (thread-join! _%thread191536%_))))
          (declare (not safe))
          (__with-catch __tmp192104 __tmp192103))))))
