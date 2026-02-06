(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770336543)
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
       (let ((_%verbosity157868157870%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157868157870%_
             (let* ((_%verbosity157872%_ _%verbosity157868157870%_)
                    (_%$e157874%_ (string->number _%verbosity157872%_)))
               (if _%$e157874%_ _%$e157874%_ _%verbosity157872%_))
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
        (letrec ((_%hash-e157865%_
                  (lambda (_%id157867%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id157867%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e157865%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp157929 (list)) (__tmp157928 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157929
         '(gensyms bindings)
         __tmp157928
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157861%_
        (apply make-instance gxc#symbol-table::t _%$args157861%_)))
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
      (lambda (_%self157848%_)
        (let ((_%self157851%_ _%self157848%_))
          (if (let ((__tmp157930
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157851%_))))
                (declare (not safe))
                (##fx< '2 __tmp157930))
              (begin
                (let ((__tmp157931
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157851%_
                   __tmp157931
                   '1
                   '#f
                   '#f))
                (let ((__tmp157932
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157851%_
                   __tmp157932
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157933
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157851%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157851%_
                       '2
                       __tmp157933))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157717%_ _%stx157718%_ . _%details157719%_)
        (let ((_%ctx157724%_
               (let ((_%$e157721%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157721%_ _%$e157721%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157724%_
                 _%message157717%_
                 _%stx157718%_
                 _%details157719%_))))
    (define gxc#verbose
      (lambda _%args157714%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157934
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157714%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157934))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157696%_)
        (let* ((_%str157698%_
                (if (symbol? _%id157696%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157696%_))
                    _%id157696%_))
               (_%len157700%_ (string-length _%str157698%_))
               (_%res157702%_
                (let () (declare (not safe)) (##make-string _%len157700%_))))
          (let _%lp157705%_ ((_%i157707%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157707%_ _%len157700%_))
                (let* ((_%char157709%_ (string-ref _%str157698%_ _%i157707%_))
                       (_%xchar157711%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157709%_))
                            '#\_
                            _%char157709%_)))
                  (string-set! _%res157702%_ _%i157707%_ _%xchar157711%_)
                  (_%lp157705%_
                   (let () (declare (not safe)) (##fx+ _%i157707%_ '1))))
                _%res157702%_)))))
    (define gxc#map*
      (lambda (_%proc157638%_ _%maybe-improper-list157639%_)
        (let _%recur157641%_ ((_%rest157643%_ _%maybe-improper-list157639%_))
          (let* ((_%rest157644157655%_ _%rest157643%_)
                 (_%E157648157659%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157644157655%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157651157684%_
                   (lambda (_%rest157681%_ _%hd157682%_)
                     (cons (_%proc157638%_ _%hd157682%_)
                           (_%recur157641%_ _%rest157681%_))))
                  (_%K157650157675%_ (lambda () '()))
                  (_%K157649157665%_
                   (lambda (_%tail157663%_) (_%proc157638%_ _%tail157663%_))))
              (let ((_%try-match157646157678%_
                     (lambda ()
                       (if (null? _%rest157644157655%_)
                           (_%K157650157675%_)
                           (let ((_%tail157668%_ _%rest157644157655%_))
                             (declare (not safe))
                             (_%proc157638%_ _%tail157668%_))))))
                (if (pair? _%rest157644157655%_)
                    (let ((_%tl157653157689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157644157655%_)))
                          (_%hd157652157687%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157644157655%_))))
                      (let ((_%hd157692%_ _%hd157652157687%_)
                            (_%rest157694%_ _%tl157653157689%_))
                        (_%K157651157684%_ _%rest157694%_ _%hd157692%_)))
                    (_%try-match157646157678%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157633%_)
        (let ((_%$e157635%_ (not (gxc#gensym-reference? _%sym157633%_))))
          (if _%$e157635%_
              _%$e157635%_
              (memq _%sym157633%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157629%_)
        (let ((_%str157631%_ (symbol->string _%sym157629%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157631%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157631%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157600%_)
        (let ((_%$e157602%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157600%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157600%_))
                   '#f)))
          (if _%$e157602%_
              ((lambda (_%bind157605%_)
                 (let ((_%eid157607%_
                        (##structure-ref _%bind157605%_ '1 gx#binding::t '#f))
                       (_%ht157608%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157607%_))
                       _%eid157607%_
                       (let ((_%$e157611%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157608%_ _%eid157607%_))))
                         (if _%$e157611%_
                             _%$e157611%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157605%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157615%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157607%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157608%_
                                      _%eid157607%_
                                      _%gid157615%_))
                                   _%gid157615%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157605%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157624%_
                                            (let ((_%$e157618%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157605%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157618%_
                                                  ((lambda (_%ns157621%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157621%_
                                                        '"#"
                                                        _%eid157607%_)))
                                                   _%$e157618%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157607%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157608%_
                                          _%eid157607%_
                                          _%gid157624%_))
                                       _%gid157624%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157600%_
                                      _%eid157607%_
                                      _%bind157605%_))))))))
               _%$e157602%_)
              (if (let ((__tmp157935
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157600%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157935))
                  (let () (declare (not safe)) (gx#stx-e _%id157600%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157600%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157598%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157598%_))
            (gxc#generate-runtime-binding-id _%id157598%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157585%_)
        (if _%top157585%_
            (let ((_%ns157587%_
                   (##structure-ref
                    (let ((__tmp157936
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157936))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157588%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157587%_
                  (if (fxpositive? _%phi157588%_)
                      (let ((__tmp157938 (number->string _%phi157588%_))
                            (__tmp157937
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157587%_
                         '"["
                         __tmp157938
                         '"]#_"
                         __tmp157937
                         '"_"))
                      (let ((__tmp157939
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157587%_ '"#_" __tmp157939 '"_")))
                  (if (fxpositive? _%phi157588%_)
                      (let ((__tmp157941 (number->string _%phi157588%_))
                            (__tmp157940
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157941
                         '"]#_"
                         __tmp157940
                         '"_"))
                      (let ((__tmp157942
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157942 '"_")))))
            (let ((__tmp157943 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157943 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157594%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157594%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157944_
        (let ((_g157945_ (let () (declare (not safe)) (##length _g157944_))))
          (cond ((let () (declare (not safe)) (##fx= _g157945_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157944_))
                ((let () (declare (not safe)) (##fx= _g157945_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157944_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157563%_ _%quote?157564%_)
        (let* ((_%ht157566%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157568%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157566%_ _%sym157563%_))))
          (if _%$e157568%_
              _%$e157568%_
              (let ((_%g157572%_
                     (if _%quote?157564%_
                         (let ((__tmp157946
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157563%_
                            '"__"
                            __tmp157946))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157563%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157566%_ _%sym157563%_ _%g157572%_))
                _%g157572%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157577%_)
        (let ((_%quote?157579%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157577%_
           _%quote?157579%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157947_
        (let ((_g157948_ (let () (declare (not safe)) (##length _g157947_))))
          (cond ((let () (declare (not safe)) (##fx= _g157948_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157947_))
                ((let () (declare (not safe)) (##fx= _g157948_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157947_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id157560%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id157560%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key157515%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key157515%_))
            _%key157515%_
            (if (uninterned-symbol? _%key157515%_)
                (gxc#generate-runtime-gensym-reference__0 _%key157515%_)
                (let* ((_%key157519157526%_ _%key157515%_)
                       (_%E157521157530%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key157519157526%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K157522157548%_
                        (lambda (_%mark157533%_ _%eid157534%_)
                          (let ((_%$e157536%_
                                 (##structure-ref
                                  _%mark157533%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e157536%_
                                ((lambda (_%ht157539%_)
                                   (let ((_%$e157541%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht157539%_
                                             _%eid157534%_))))
                                     (if _%$e157541%_
                                         ((lambda (_%id157544%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id157544%_))
                                                _%id157544%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id157544%_)))
                                          _%$e157541%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid157534%_))))
                                 _%$e157536%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid157534%_))))))
                  (if (pair? _%key157519157526%_)
                      (let ((_%hd157523157551%_
                             (let ()
                               (declare (not safe))
                               (##car _%key157519157526%_)))
                            (_%tl157524157553%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key157519157526%_))))
                        (let* ((_%eid157556%_ _%hd157523157551%_)
                               (_%mark157558%_ _%tl157524157553%_))
                          (_%K157522157548%_ _%mark157558%_ _%eid157556%_)))
                      (_%E157521157530%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157508%_ _%id2157509%_)
        (letrec ((_%symbol-e157511%_
                  (lambda (_%id157513%_)
                    (if (symbol? _%id157513%_)
                        _%id157513%_
                        (gxc#generate-runtime-binding-id _%id157513%_)))))
          (eq? (_%symbol-e157511%_ _%id1157508%_)
               (_%symbol-e157511%_ _%id2157509%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157506%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157506%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157506%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157506%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157422%_)
        (let* ((_%bind157424%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157422%_)))
               (_%runtime-props157459%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157424%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157439%_
                            (let ((_%$e157427%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157424%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e157427%_
                                  ((lambda (_%macro-id157430%_)
                                     (let ((_%$e157432%_
                                            (let ((__tmp157949
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-identifiers))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp157949
                                               _%id157422%_))))
                                       (if _%$e157432%_
                                           ((lambda (_%stxq157435%_)
                                              (cons 'macro:
                                                    (cons _%stxq157435%_ '())))
                                            _%$e157432%_)
                                           (gxc#raise-compile-error
                                            '"no syntax quote object for macro"
                                            _%id157422%_
                                            _%macro-id157430%_))))
                                   _%$e157427%_)
                                  '())))
                           (_%props157455%_
                            (let ((_%$e157441%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157424%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157441%_
                                  ((lambda (_%type157444%_)
                                     (let ((_%$e157446%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157444%_
                                               ':repr))))
                                       (if _%$e157446%_
                                           ((lambda (_%method157449%_)
                                              (let ((_%repr157451%_
                                                     (_%method157449%_
                                                      _%type157444%_)))
                                                (cons 'type:
                                                      (cons _%repr157451%_
                                                            _%props157439%_))))
                                            _%$e157446%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157422%_
                                            _%type157444%_))))
                                   _%$e157441%_)
                                  _%props157439%_))))
                      _%props157455%_)
                    '()))
               (_%$e157462%_
                (##structure-ref _%bind157424%_ '4 gx#binding::t '#f)))
          (if _%$e157462%_
              ((lambda (_%props157465%_)
                 (let ((__tmp157950
                        (lambda (_%prop157467%_ _%props157468%_)
                          (let* ((_%prop157469157476%_ _%prop157467%_)
                                 (_%E157471157479%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157469157476%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157472157493%_
                                  (lambda (_%value157482%_ _%key157483%_)
                                    (let ((_%$e157485%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157482%_
                                              ':repr))))
                                      (if _%$e157485%_
                                          ((lambda (_%method157488%_)
                                             (let ((_%repr157490%_
                                                    (_%method157488%_
                                                     _%value157482%_)))
                                               (cons _%key157483%_
                                                     (cons _%repr157490%_
                                                           _%props157468%_))))
                                           _%$e157485%_)
                                          (cons _%key157483%_
                                                (cons (cons 'quote
                                                            (cons _%value157482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157469157476%_)
                                (let ((_%hd157473157496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157469157476%_)))
                                      (_%tl157474157498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157469157476%_))))
                                  (let* ((_%key157501%_ _%hd157473157496%_)
                                         (_%value157503%_ _%tl157474157498%_))
                                    (_%K157472157493%_
                                     _%value157503%_
                                     _%key157501%_)))
                                (_%E157471157479%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157950
                    _%runtime-props157459%_
                    _%props157465%_)))
               _%$e157462%_)
              _%runtime-props157459%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157407%_ _%name157408%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157410%_
               (gxc#make-compile-job _%thunk157407%_ _%name157408%_)))
          (set! gxc#__compile-jobs (cons _%job157410%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157415%_)
        (let ((_%name157417%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157415%_ _%name157417%_))))
    (define gxc#add-compile-job!
      (lambda _g157951_
        (let ((_g157952_ (let () (declare (not safe)) (##length _g157951_))))
          (cond ((let () (declare (not safe)) (##fx= _g157952_ 1))
                 (apply gxc#add-compile-job!__0 _g157951_))
                ((let () (declare (not safe)) (##fx= _g157952_ 2))
                 (apply gxc#add-compile-job!__% _g157951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157951_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157404%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157404%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157398%_ ()
          (let ((_%pending157401%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157401%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157401%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157401%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157387%_ _%name157388%_)
        (make-thread
         (lambda ()
           (let _%loop157391%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157953
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157388%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157953))
                   (let ((__tmp157955 (lambda () (_%thunk157387%_)))
                         (__tmp157954
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157955 __tmp157954)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157391%_)))))
         _%name157388%_)))
    (define gxc#join!
      (lambda (_%thread157382%_)
        (let ((__tmp157957
               (lambda (_%exn157384%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157384%_))
                     (let ((__tmp157958
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157384%_))))
                       (declare (not safe))
                       (raise __tmp157958))
                     (let () (declare (not safe)) (raise _%exn157384%_)))))
              (__tmp157956 (lambda () (thread-join! _%thread157382%_))))
          (declare (not safe))
          (__with-catch __tmp157957 __tmp157956))))))
